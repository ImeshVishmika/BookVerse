/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.bookverse.controllers;

import com.bookverse.dto.userDTO;
import com.bookverse.service.userService;
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
public class profileController extends HttpServlet {

    private final userService userService = new userService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            HttpSession session = req.getSession(false);
            if (session == null || session.getAttribute("user") == null) {
                req.setAttribute("error", "Please logIn....!");
                req.getRequestDispatcher("/login.jsp").forward(req, resp);
                return;
            }

            userDTO userName = (userDTO) session.getAttribute("user");
            userDTO userDetails = userService.getUserdetails(userName.getUserName());
            req.setAttribute("userDetails", userDetails);
            req.getRequestDispatcher("/profile.jsp").forward(req, resp);
        } catch (Exception e) {
            req.setAttribute("error", "Something went wrong. Try again...!");
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }

    }
}
