/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bookverse.data;

import com.bookverse.dto.reservationDTO;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author USER
 */
public class reservations {

    private final Map<String, List<reservationDTO>>reservedList;

    public reservations() {
        reservedList = new LinkedHashMap();

        reservedList.put("imesh", new ArrayList<>(Arrays.asList(
                new reservationDTO(1, "imesh", 10, "Designing Data-Intensive Applications", "Martin Kleppmann", LocalDate.of(2026, 10, 9), LocalDate.of(2026, 10, 22), null, "READY"),
                new reservationDTO(2, "imesh", 9, "High Performance MySQL", "Baron Schwartz", LocalDate.of(2026, 10, 14), null, null, "WAITING"),
                new reservationDTO(3, "imesh", 4, "The Pragmatic Programmer", "Andrew Hunt and David Thomas", LocalDate.of(2026, 10, 16), null, null, "WAITING"),
                new reservationDTO(4, "imesh", 5, "Refactoring", "Martin Fowler", LocalDate.of(2026, 9, 12), null, LocalDate.of(2026, 9, 20), "BORROWED"),
                new reservationDTO(5, "imesh", 11, "Computer Networking: A Top-Down Approach", "James Kurose and Keith Ross", LocalDate.of(2026, 8, 25), null, LocalDate.of(2026, 9, 1), "BORROWED"),
                new reservationDTO(6, "imesh", 7, "Database System Concepts", "Abraham Silberschatz", LocalDate.of(2026, 8, 2), LocalDate.of(2026, 8, 9), LocalDate.of(2026, 8, 9), "EXPIRED"),
                new reservationDTO(7, "imesh", 15, "Scrum: The Art of Doing Twice the Work in Half the Time", "Jeff Sutherland", LocalDate.of(2026, 7, 20), null, LocalDate.of(2026, 7, 22), "CANCELLED")
        )));

        reservedList.put("dilani", new ArrayList<>(Arrays.asList(
                new reservationDTO(8, "dilani", 9, "High Performance MySQL", "Baron Schwartz", LocalDate.of(2026, 10, 12), null, null, "WAITING")
        )));

        reservedList.put("ruwan", new ArrayList<>(Arrays.asList(
                new reservationDTO(9, "ruwan", 9, "High Performance MySQL", "Baron Schwartz", LocalDate.of(2026, 10, 18), null, null, "WAITING")
        )));

        reservedList.put("sachini", new ArrayList<>(Arrays.asList(
                new reservationDTO(10, "sachini", 4, "The Pragmatic Programmer", "Andrew Hunt and David Thomas", LocalDate.of(2026, 10, 11), null, null, "WAITING")
        )));

        reservedList.put("chamara", new ArrayList<>(Arrays.asList(
                new reservationDTO(11, "chamara", 4, "The Pragmatic Programmer", "Andrew Hunt and David Thomas", LocalDate.of(2026, 10, 13), null, null, "WAITING")
        )));
    }
    
    public List<reservationDTO> getReservations(String userName){
        return reservedList.get(userName);
    }

}
