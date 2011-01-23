package com.springsource.vote.domain;

import java.util.Date;

import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.transaction.annotation.Transactional;

@RooJavaBean
@RooToString
@RooEntity
public class Vote {

    @ManyToOne
    private Choice choice;

    @Size(max = 20)
    private String ip;

    @Past
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date registered;

    private void persist0() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);        
    }
    
	@Transactional
    public void persist(String ip) {
        if (ip == null || ip.isEmpty()) {
            throw new IllegalArgumentException("ip is required");
        }
        this.ip = ip;
        this.registered = new Date();
        persist0();
    }

	@Transactional
    public void persist() {
	    persist0();
    }
}
