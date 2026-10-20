/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bookverse.controllers;

import com.bookverse.data.reservations;
import com.bookverse.dto.userDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author USER
 */
public class reservationsController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            reservations reservation = new reservations();
            HttpSession session = req.getSession(false);
            if (session == null || session.getAttribute("user") == null) {
                req.setAttribute("error", "Please logIn....!");
                req.getRequestDispatcher("/login.jsp").forward(req, resp);
                return;
            }
            userDTO userDTO = (userDTO) session.getAttribute("user");
            req.setAttribute("reservations", reservation.getReservations(userDTO.getUserName()));
            req.getRequestDispatcher("/reservations.jsp").forward(req, resp);
        } catch (Exception e) {
            req.setAttribute("error", "Something went wrong. Try again...!");
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }
    }

}
