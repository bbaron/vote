package com.springsource.vote.web;

import com.springsource.vote.domain.Vote;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RooWebScaffold(path = "votes", formBackingObject = Vote.class)
@RequestMapping("/votes")
@Controller
public class VoteController {

	@RequestMapping(method = RequestMethod.POST)
    public String create(@Valid Vote vote, BindingResult result, Model model, HttpServletRequest request) {
        if (result.hasErrors()) {
            model.addAttribute("vote", vote);
            addDateTimeFormatPatterns(model);
            return "votes/create";
        }
        vote.persist(request.getRemoteAddr());
        return "redirect:/votes/" + encodeUrlPathSegment(vote.getId().toString(), request);
    }
}
