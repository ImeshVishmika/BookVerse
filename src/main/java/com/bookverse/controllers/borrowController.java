/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bookverse.controllers;

import com.bookverse.dto.userDTO;
import com.bookverse.service.borrowService;
import java.io.IOException;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class borrowController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            HttpSession session = req.getSession(false);
            if (session == null || session.getAttribute("user") == null) {
                req.setAttribute("error", "Please logIn....!");
                req.getRequestDispatcher("/login.jsp").forward(req, resp);
                return; 
            }
            
            userDTO userDTO = (userDTO) session.getAttribute("user");
            borrowService borrowService = new borrowService();
            req.setAttribute("now", LocalDate.now());
            req.setAttribute("borrowed", borrowService.getBorrowed(userDTO.getUserName()));
            req.getRequestDispatcher("/borrowed.jsp").forward(req, resp);
            
        } catch (IOException | ServletException e) {
            req.setAttribute("error", "Something went wrong. Try again...!");
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }
    }

}
