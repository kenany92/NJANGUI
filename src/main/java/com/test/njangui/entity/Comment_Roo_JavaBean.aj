// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.test.njangui.entity;

import com.test.njangui.entity.Comment;
import java.util.Date;

privileged aspect Comment_Roo_JavaBean {
    
    public String Comment.getTitle() {
        return this.title;
    }
    
    public void Comment.setTitle(String title) {
        this.title = title;
    }
    
    public String Comment.getComment() {
        return this.comment;
    }
    
    public void Comment.setComment(String comment) {
        this.comment = comment;
    }
    
    public Date Comment.getCommentDate() {
        return this.commentDate;
    }
    
    public void Comment.setCommentDate(Date commentDate) {
        this.commentDate = commentDate;
    }
    
    public String Comment.getName() {
        return this.name;
    }
    
    public void Comment.setName(String name) {
        this.name = name;
    }
    
}