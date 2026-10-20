/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bookverse.data;

import java.util.LinkedHashMap;
import java.util.Map;
import com.bookverse.dto.borrowDTO;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 *
 * @author USER
 */
public class borrow {

    private final Map<String, List<borrowDTO>> borrowedList;

    public borrow() {
        borrowedList = new LinkedHashMap<>();

        borrowedList.put("imesh", new ArrayList<>(Arrays.asList(
                new borrowDTO(1, "imesh", 6, "The Rust Programming Language", "Steve Klabnik and Carol Nichols", LocalDate.of(2026, 10, 1), LocalDate.of(2026, 10, 15), null, "BORROWED"),
                new borrowDTO(2, "imesh", 1, "Clean Code", "Robert C. Martin", LocalDate.of(2026, 10, 6), LocalDate.of(2026, 10, 20), null, "BORROWED"),
                new borrowDTO(3, "imesh", 2, "Effective Java", "Joshua Bloch", LocalDate.of(2026, 10, 14), LocalDate.of(2026, 10, 28), null, "BORROWED"),
                new borrowDTO(4, "imesh", 3, "Head First Java", "Kathy Sierra and Bert Bates", LocalDate.of(2026, 9, 2), LocalDate.of(2026, 9, 16), LocalDate.of(2026, 9, 15), "RETURNED"),
                new borrowDTO(5, "imesh", 8, "Learning SQL", "Alan Beaulieu", LocalDate.of(2026, 8, 10), LocalDate.of(2026, 8, 24), LocalDate.of(2026, 8, 27), "RETURNED"),
                new borrowDTO(6, "imesh", 14, "The Mythical Man-Month", "Frederick P. Brooks Jr.", LocalDate.of(2026, 7, 5), LocalDate.of(2026, 7, 19), LocalDate.of(2026, 7, 18), "RETURNED")
        )));

        borrowedList.put("sachini", new ArrayList<>(Arrays.asList(
                new borrowDTO(7, "sachini", 9, "High Performance MySQL", "Baron Schwartz", LocalDate.of(2026, 10, 10), LocalDate.of(2026, 10, 24), null, "BORROWED"),
                new borrowDTO(8, "sachini", 10, "Designing Data-Intensive Applications", "Martin Kleppmann", LocalDate.of(2026, 10, 12), LocalDate.of(2026, 10, 26), null, "BORROWED")
        )));

        borrowedList.put("tharindu", new ArrayList<>(Arrays.asList(
                new borrowDTO(9, "tharindu", 4, "The Pragmatic Programmer", "Andrew Hunt and David Thomas", LocalDate.of(2026, 10, 3), LocalDate.of(2026, 10, 17), null, "BORROWED")
        )));

        borrowedList.put("dilani", new ArrayList<>(Arrays.asList(
                new borrowDTO(10, "dilani", 4, "The Pragmatic Programmer", "Andrew Hunt and David Thomas", LocalDate.of(2026, 10, 8), LocalDate.of(2026, 10, 22), null, "BORROWED"),
                new borrowDTO(16, "dilani", 11, "Computer Networking: A Top-Down Approach", "James Kurose and Keith Ross", LocalDate.of(2026, 9, 1), LocalDate.of(2026, 9, 15), LocalDate.of(2026, 9, 14), "RETURNED")
        )));

        borrowedList.put("ruwan", new ArrayList<>(Arrays.asList(
                new borrowDTO(11, "ruwan", 4, "The Pragmatic Programmer", "Andrew Hunt and David Thomas", LocalDate.of(2026, 10, 15), LocalDate.of(2026, 10, 29), null, "BORROWED")
        )));

        borrowedList.put("hasini", new ArrayList<>(Arrays.asList(
                new borrowDTO(12, "hasini", 9, "High Performance MySQL", "Baron Schwartz", LocalDate.of(2026, 10, 17), LocalDate.of(2026, 10, 31), null, "BORROWED"),
                new borrowDTO(13, "hasini", 5, "Refactoring", "Martin Fowler", LocalDate.of(2026, 9, 20), LocalDate.of(2026, 10, 4), LocalDate.of(2026, 10, 3), "RETURNED")
        )));

        borrowedList.put("chamara", new ArrayList<>(Arrays.asList(
                new borrowDTO(14, "chamara", 7, "Database System Concepts", "Abraham Silberschatz", LocalDate.of(2026, 9, 25), LocalDate.of(2026, 10, 9), LocalDate.of(2026, 10, 12), "RETURNED"),
                new borrowDTO(15, "chamara", 13, "Network Security Essentials", "William Stallings", LocalDate.of(2026, 10, 16), LocalDate.of(2026, 10, 30), null, "BORROWED")
        )));
    }

    public List<borrowDTO> borrwedBooks(String userName) {
        return borrowedList.get(userName);
    }

}
