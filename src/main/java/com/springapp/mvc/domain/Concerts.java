package com.springapp.mvc.domain;

import javax.persistence.*;

@Entity
@Table(name = "concerts")
public class Concerts {
    @Id
    @Column(name = "id")
    @GeneratedValue
    private Integer id;

    @Column(name = "info")
    private String info;

    @Column(name = "date")
    private String date;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
