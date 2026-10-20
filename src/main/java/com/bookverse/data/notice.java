/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bookverse.data;

import com.bookverse.dto.noticeDTO;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 *
 * @author USER
 */
public class notice {

    Map<Integer, noticeDTO> noticeList = new LinkedHashMap<>();

    public notice() {
        noticeList.put(
                1, new noticeDTO(1, "Library closed on Poya day", "important",
                        "The library will be closed on 2026-10-26. Online renewals and reservations will keep working as normal.",
                        "admin", LocalDate.of(2026, 10, 16), null, true));

        noticeList.put(
                2, new noticeDTO(2, "Scheduled system maintenance", "important",
                        "The online portal will be unavailable on 2026-10-24 from 11:00 PM to 2:00 AM while we upgrade the catalogue. Please plan renewals and reservations around this window.",
                        "admin", LocalDate.of(2026, 10, 18), null, false));

        noticeList.put(
                3, new noticeDTO(3, "New arrivals in Programming and Databases", "news",
                        "Forty new titles have been added to the Programming and Databases shelves, including new editions of Effective Java and Designing Data-Intensive Applications.",
                        "kasun", LocalDate.of(2026, 10, 14), null, false));

        noticeList.put(
                4, new noticeDTO(4, "Late fee change from November", "update",
                        "From 2026-11-01, late fees will apply after a 2-day grace period. Renew your books before the due date to avoid any charge.",
                        "admin", LocalDate.of(2026, 10, 10), null, false));

        noticeList.put(
                5, new noticeDTO(5, "Tech book club: Clean Code discussion", "event",
                        "Join us on 2026-10-29 at 4:00 PM in the reading room to discuss the first half of Clean Code. Everyone is welcome, and copies are available at the desk.",
                        "nimali", LocalDate.of(2026, 10, 8), LocalDate.of(2026, 10, 29), false));

        noticeList.put(
                6, new noticeDTO(6, "Reservation pickup window is now 3 days", "update",
                        "Reserved books that are ready will be held for 3 days. After that the reservation expires and the book goes to the next member in the queue.",
                        "admin", LocalDate.of(2026, 10, 5), null, false));

        noticeList.put(
                7, new noticeDTO(7, "Extended hours during exam weeks", "news",
                        "The reading room will stay open until 9:00 PM on weekdays from 2026-11-02 to 2026-11-20.",
                        "kasun", LocalDate.of(2026, 9, 28), null, false));

        noticeList.put(
                8, new noticeDTO(8, "Book donation drive", "event",
                        "Bring technical books you no longer need to the front desk during the first week of November. Donated books in good condition will be added to the catalogue.",
                        "nimali", LocalDate.of(2026, 9, 20), LocalDate.of(2026, 11, 2), false));

        noticeList.put(
                9, new noticeDTO(9, "Overdue books must be returned by month end", "important",
                        "Members with overdue books will not be able to borrow or reserve until the items are returned. Check the My Books page to see what is due.",
                        "admin", LocalDate.of(2026, 9, 15), null, false));

    }
    
    public  ArrayList<noticeDTO> getNotice(){
        return new  ArrayList<>(noticeList.values());
    }

}
