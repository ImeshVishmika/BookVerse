/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bookverse.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookverse.service.userService;
import javax.servlet.http.HttpSession;

public class loginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {

            HttpSession session = req.getSession();

            String password = req.getParameter("password");
            String username = req.getParameter("username");

            userService userService = new userService();
            boolean success = userService.login(username, password, session);

            if (success) {
                resp.sendRedirect(req.getContextPath() + "/dashboard.jsp");
            } else {
                req.setAttribute("error", "Please check you user name and passoword...!");
                req.getRequestDispatcher(req.getContextPath() + "/login.jsp").forward(req, resp);
            }
            
        } catch (IOException | ServletException e) {
            req.setAttribute("error", "Something went wrong. Try again...!");
            req.getRequestDispatcher( "/login.jsp").forward(req, resp);
        }
    }

}
