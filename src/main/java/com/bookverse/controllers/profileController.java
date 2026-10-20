/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.bookverse.controllers;

import com.bookverse.dto.userDTO;
import com.bookverse.service.userService;
import java.io.IOException;
import java.io.PrintWriter;
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
        HttpSession session= req.getSession(false);
        if(session==null || session.getAttribute("user")==null){
            resp.sendRedirect(req.getContextPath()+"/login.jsp");
            return;
        }
        
        userDTO userName = (userDTO)session.getAttribute("user");
        userDTO userDetails = userService.getUserdetails(userName.getUserName());
        req.setAttribute("userDetails", userDetails);
        req.getRequestDispatcher("/profile.jsp").forward(req, resp);
        
    }

}
