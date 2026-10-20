package com.bookverse.controllers;

import com.bookverse.service.bookService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author USER
 */
public class bookController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            int id = Integer.parseInt(req.getParameter("id"));
            bookService bookService = new bookService();
            req.setAttribute("book", bookService.getBook(id));
            req.getRequestDispatcher("/book.jsp").forward(req, resp);
        } catch (Exception e) {
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }
    }

}
