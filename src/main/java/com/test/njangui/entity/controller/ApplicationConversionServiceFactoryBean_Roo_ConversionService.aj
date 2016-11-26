// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.test.njangui.entity.controller;

import com.test.njangui.entity.Comment;
import com.test.njangui.entity.controller.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Comment, String> ApplicationConversionServiceFactoryBean.getCommentToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.test.njangui.entity.Comment, java.lang.String>() {
            public String convert(Comment comment) {
                return new StringBuilder().append(comment.getTitle()).append(' ').append(comment.getComment()).append(' ').append(comment.getCommentDate()).append(' ').append(comment.getName()).toString();
            }
        };
    }
    
    public Converter<Long, Comment> ApplicationConversionServiceFactoryBean.getIdToCommentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.test.njangui.entity.Comment>() {
            public com.test.njangui.entity.Comment convert(java.lang.Long id) {
                return Comment.findComment(id);
            }
        };
    }
    
    public Converter<String, Comment> ApplicationConversionServiceFactoryBean.getStringToCommentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.test.njangui.entity.Comment>() {
            public com.test.njangui.entity.Comment convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Comment.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getCommentToStringConverter());
        registry.addConverter(getIdToCommentConverter());
        registry.addConverter(getStringToCommentConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}