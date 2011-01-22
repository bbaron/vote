// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.vote.web;

import com.springsource.vote.domain.Choice;
import com.springsource.vote.domain.Vote;
import java.lang.String;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    Converter<Vote, String> ApplicationConversionServiceFactoryBean.getVoteConverter() {
        return new Converter<Vote, String>() {
            public String convert(Vote source) {
                return new StringBuilder().append(source.getIp()).append(" ").append(source.getRegistered()).toString();
            }
        };
    }
    
    Converter<Choice, String> ApplicationConversionServiceFactoryBean.getChoiceConverter() {
        return new Converter<Choice, String>() {
            public String convert(Choice source) {
                return new StringBuilder().append(source.getNamingChoice()).append(" ").append(source.getDescription()).toString();
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getVoteConverter());
        registry.addConverter(getChoiceConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
