package com.bookverse.dto;

import java.io.Serializable;

public class bookDTO implements Serializable {

    private int id;
    private String title;
    private String author;
    private String category;
    private String publisher;
    private int publishedYear;
    private int totalCopies;
    private int availableCopies;
    private double rating;
    private String description;
    private String coverColor = "#2c3e70";


    public bookDTO() {
    }

    public bookDTO(int id, String title, String author, String category,
                String publisher, int publishedYear, int totalCopies,
                int availableCopies, double rating, String description, String coverColor) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.category = category;
        this.publisher = publisher;
        this.publishedYear = publishedYear;
        this.totalCopies = totalCopies;
        this.availableCopies = availableCopies;
        this.rating = rating;
        this.description = description;
        this.coverColor = coverColor;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getAuthor() { return author; }
    public void setAuthor(String author) { this.author = author; }

    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }

    public String getPublisher() { return publisher; }
    public void setPublisher(String publisher) { this.publisher = publisher; }

    public int getPublishedYear() { return publishedYear; }
    public void setPublishedYear(int publishedYear) { this.publishedYear = publishedYear; }

    public int getTotalCopies() { return totalCopies; }
    public void setTotalCopies(int totalCopies) { this.totalCopies = totalCopies; }

    public int getAvailableCopies() { return availableCopies; }
    public void setAvailableCopies(int availableCopies) { this.availableCopies = availableCopies; }

    public double getRating() { return rating; }
    public void setRating(double rating) { this.rating = rating; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public String getCoverColor() { return coverColor; }
    public void setCoverColor(String coverColor) { this.coverColor = coverColor; }

    public boolean isAvailable() {
        return availableCopies > 0;
    }

    public String getAvailabilityLabel() {
        return isAvailable() ? "Available" : "All Copies Out";
    }

  
    public String getInitial() {
        return (title == null || title.isEmpty()) ? "?" : title.substring(0, 1).toUpperCase();
    }

    @Override
    public String toString() {
        return "Book{id=" + id + ", title='" + title + "'}";
    }
}
