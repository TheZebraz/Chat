package com.springapp.mvc.domain;

import javax.persistence.*;
import java.sql.Time;

@Entity
@Table(name = "comment")
public class Comment {
    @Id
    @Column(name = "idcomment")
    @GeneratedValue
    private Integer idcomment;

    @Column(name = "text")
    private String text;

    @Column(name = "commentDate")
    @GeneratedValue
    private java.util.Date commentDate;

    @Column(name = "trackName")
    private String trackName;

    public Integer getIdcomment() {
        return idcomment;
    }

    public void setIdcomment(Integer idcomment) {
        this.idcomment = idcomment;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public java.util.Date getCommentDate() {
        return commentDate;
    }

    public void setCommentDate(java.util.Date commentDate) {
        this.commentDate = commentDate;
    }

    public String getTrackName() {
        return trackName;
    }

    public void setTrackName(String trackName) {
        this.trackName = trackName;
    }
}
