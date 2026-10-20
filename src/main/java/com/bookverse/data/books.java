/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bookverse.data;

import java.util.HashMap;
import java.util.Map;
import com.bookverse.dto.bookDTO;

/**
 *
 * @author USER
 */
public class books {

    private final Map<Integer, bookDTO> booksList;

    public books() {
        this.booksList = new HashMap<>();
        // Programming
        booksList.put(1, new bookDTO(1, "Clean Code", "Robert C. Martin", "Programming", "Prentice Hall", 2008, 5, 3, 4.7, "A handbook of agile software craftsmanship with practical advice on writing readable, maintainable code.", "#2f6b5b"));
        booksList.put(2, new bookDTO(2, "Effective Java", "Joshua Bloch", "Programming", "Addison-Wesley", 2018, 4, 2, 4.8, "Best practices for the Java platform, covering generics, lambdas, streams, and API design.", "#b8923f"));
        booksList.put(3, new bookDTO(3, "Head First Java", "Kathy Sierra and Bert Bates", "Programming", "O'Reilly Media", 2005, 6, 4, 4.5, "A visual, beginner-friendly introduction to Java and object-oriented programming.", "#7a3b3b"));
        booksList.put(4, new bookDTO(4, "The Pragmatic Programmer", "Andrew Hunt and David Thomas", "Programming", "Addison-Wesley", 2019, 3, 0, 4.6, "Practical tips and habits for becoming a more effective and adaptable developer.", "#3d5a80"));
        booksList.put(5, new bookDTO(5, "Refactoring", "Martin Fowler", "Programming", "Addison-Wesley", 2018, 3, 2, 4.6, "A catalogue of techniques for improving the design of existing code without changing its behaviour.", "#4a3f5f"));
        booksList.put(6, new bookDTO(6, "The Rust Programming Language", "Steve Klabnik and Carol Nichols", "Programming", "No Starch Press", 2019, 3, 3, 4.7, "The official guide to Rust, from ownership and borrowing to concurrency.", "#8c6d2f"));

// Databases
        booksList.put(7, new bookDTO(7, "Database System Concepts", "Abraham Silberschatz", "Databases", "McGraw Hill", 2019, 4, 2, 4.3, "A thorough textbook on relational databases, SQL, transactions, and storage.", "#5f7f73"));
        booksList.put(8, new bookDTO(8, "Learning SQL", "Alan Beaulieu", "Databases", "O'Reilly Media", 2020, 5, 3, 4.4, "A hands-on introduction to writing SQL queries and designing simple schemas.", "#2f6b5b"));
        booksList.put(9, new bookDTO(9, "High Performance MySQL", "Baron Schwartz", "Databases", "O'Reilly Media", 2012, 2, 0, 4.5, "Optimisation, replication, and backup strategies for running MySQL at scale.", "#b8923f"));
        booksList.put(10, new bookDTO(10, "Designing Data-Intensive Applications", "Martin Kleppmann", "Databases", "O'Reilly Media", 2017, 4, 1, 4.8, "The principles behind reliable, scalable, and maintainable data systems.", "#3d5a80"));

// Networking
        booksList.put(11, new bookDTO(11, "Computer Networking: A Top-Down Approach", "James Kurose and Keith Ross", "Networking", "Pearson", 2021, 4, 2, 4.5, "Teaches networking by starting at the application layer and working down the protocol stack.", "#7a3b3b"));
        booksList.put(12, new bookDTO(12, "TCP/IP Illustrated, Volume 1", "W. Richard Stevens and Kevin Fall", "Networking", "Addison-Wesley", 2011, 2, 1, 4.7, "A detailed look at how the TCP/IP protocols work, with packet traces.", "#4a3f5f"));
        booksList.put(13, new bookDTO(13, "Network Security Essentials", "William Stallings", "Networking", "Pearson", 2016, 3, 3, 4.2, "Core applications and standards for securing networks and internet communication.", "#5f7f73"));

// Project Management
        booksList.put(14, new bookDTO(14, "The Mythical Man-Month", "Frederick P. Brooks Jr.", "Project Management", "Addison-Wesley", 1995, 3, 2, 4.4, "Classic essays on software project management and why adding people to a late project makes it later.", "#8c6d2f"));
        booksList.put(15, new bookDTO(15, "Scrum: The Art of Doing Twice the Work in Half the Time", "Jeff Sutherland", "Project Management", "Crown Business", 2014, 4, 3, 4.3, "An introduction to Scrum by one of its co-creators.", "#2f6b5b"));
        booksList.put(16, new bookDTO(16, "Peopleware", "Tom DeMarco and Tim Lister", "Project Management", "Addison-Wesley", 2013, 2, 1, 4.5, "Why the human side of software teams matters more than tools and process.", "#b8923f"));
    }
    
    public bookDTO getBook(int id){
        return booksList.get(id);
    }
    
    public Map getBooks(){
        return booksList;
    }

}
