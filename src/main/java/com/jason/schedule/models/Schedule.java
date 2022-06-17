package com.jason.schedule.models;


import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="schedules")
public class Schedule {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String homeTeam;
    private String visitTeam;
    private String homeStartingPitcher;
    private String visitStartingPitcher;
    private String ballpark;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
     private Date gameDate;

    @Column(updatable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createdAt;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date updatedAt;

    public Schedule() {}

    public Schedule(String homeTeam, String visitTeam, String homeStartingPitcher, String visitStartingPitcher, String ballpark, Date gameDate) {
        this.homeTeam = homeTeam;
        this.visitTeam = visitTeam;
        this.homeStartingPitcher = homeStartingPitcher;
        this.visitStartingPitcher = visitStartingPitcher;
        this.ballpark = ballpark;
        this.gameDate = gameDate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getHomeTeam() {
        return homeTeam;
    }

    public void setHomeTeam(String homeTeam) {
        this.homeTeam = homeTeam;
    }

    public String getVisitTeam() {
        return visitTeam;
    }

    public void setVisitTeam(String visitTeam) {
        this.visitTeam = visitTeam;
    }

    public String getHomeStartingPitcher() {
        return homeStartingPitcher;
    }

    public void setHomeStartingPitcher(String homeStartingPitcher) {
        this.homeStartingPitcher = homeStartingPitcher;
    }

    public String getVisitStartingPitcher() {
        return visitStartingPitcher;
    }

    public void setVisitStartingPitcher(String visitStartingPitcher) {
        this.visitStartingPitcher = visitStartingPitcher;
    }

    public String getBallpark() {
        return ballpark;
    }

    public void setBallpark(String ballpark) {
        this.ballpark = ballpark;
    }

    public Date getGameDate() {
        return gameDate;
    }

    public void setGameDate(Date gameDate) {
        this.gameDate = gameDate;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }
}
