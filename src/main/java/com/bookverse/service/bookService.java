/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bookverse.service;

import com.bookverse.data.books;
import com.bookverse.dto.bookDTO;
import java.util.Map;

/**
 *
 * @author USER
 */
public class bookService {
    
    private final books books = new books();
    
    public bookDTO getBook(int id){
        return books.getBook(id);
    }
    
    public Map loadBooks(){
        return books.getBooks();
    }
    
}
