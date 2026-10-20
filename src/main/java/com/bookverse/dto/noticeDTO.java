/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bookverse.dto;

/**
 *
 * @author USER
 */
import java.time.LocalDate;

public class noticeDTO {
    private int id;
    private String title;
    private String type;          // "important", "news", "update", "event"
    private String message;
    private String postedBy;      // matches a key in usersList (an admin)
    private LocalDate postedDate;
    private LocalDate eventDate;  // only for events, otherwise null
    private boolean pinned;

    public noticeDTO(int id, String title, String type, String message, String postedBy,
                     LocalDate postedDate, LocalDate eventDate, boolean pinned) {
        this.id = id;
        this.title = title;
        this.type = type;
        this.message = message;
        this.postedBy = postedBy;
        this.postedDate = postedDate;
        this.eventDate = eventDate;
        this.pinned = pinned;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getPostedBy() {
        return postedBy;
    }

    public void setPostedBy(String postedBy) {
        this.postedBy = postedBy;
    }

    public LocalDate getPostedDate() {
        return postedDate;
    }

    public void setPostedDate(LocalDate postedDate) {
        this.postedDate = postedDate;
    }

    public LocalDate getEventDate() {
        return eventDate;
    }

    public void setEventDate(LocalDate eventDate) {
        this.eventDate = eventDate;
    }

    public boolean isPinned() {
        return pinned;
    }

    public void setPinned(boolean pinned) {
        this.pinned = pinned;
    }

   
}
