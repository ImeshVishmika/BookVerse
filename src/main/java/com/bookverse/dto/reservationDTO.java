/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bookverse.dto;

import java.time.LocalDate;

public class reservationDTO {
    private int id;
    private String username;
    private int bookId;
    private String title;
    private String author;
    private LocalDate reservedDate;
    private LocalDate pickupDeadline; // only set when status is "READY"
    private LocalDate closedDate;     // null while the reservation is active
    private String status;            // "WAITING", "READY", "BORROWED", "EXPIRED", "CANCELLED"

    public reservationDTO(int id, String username, int bookId, String title, String author,
                          LocalDate reservedDate, LocalDate pickupDeadline,
                          LocalDate closedDate, String status) {
        this.id = id;
        this.username = username;
        this.bookId = bookId;
        this.title = title;
        this.author = author;
        this.reservedDate = reservedDate;
        this.pickupDeadline = pickupDeadline;
        this.closedDate = closedDate;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public LocalDate getReservedDate() {
        return reservedDate;
    }

    public void setReservedDate(LocalDate reservedDate) {
        this.reservedDate = reservedDate;
    }

    public LocalDate getPickupDeadline() {
        return pickupDeadline;
    }

    public void setPickupDeadline(LocalDate pickupDeadline) {
        this.pickupDeadline = pickupDeadline;
    }

    public LocalDate getClosedDate() {
        return closedDate;
    }

    public void setClosedDate(LocalDate closedDate) {
        this.closedDate = closedDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    


    public boolean isActive() {
        return "WAITING".equals(status) || "READY".equals(status);
    }

}
