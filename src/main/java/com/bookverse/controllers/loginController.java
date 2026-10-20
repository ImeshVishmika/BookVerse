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

import  com.bookverse.service.userService;
import javax.servlet.http.HttpSession;
public class loginController extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        HttpSession session = req.getSession(false);

        String password =req.getParameter("password");
        String username = req.getParameter("username");

        userService userService = new userService();
        boolean success = userService.login(username,password,session);
        
        if(success){
            resp.sendRedirect(req.getContextPath()+"/dashboard.jsp");
        }else{
            resp.sendRedirect(req.getContextPath()+"/login.jsp");
        }
    }
    
}
