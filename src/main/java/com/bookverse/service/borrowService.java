/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bookverse.service;

import com.bookverse.dto.borrowDTO;
import com.bookverse.data.borrow;
import java.util.List;


public class borrowService {
    
    private final borrow borrow = new borrow();
    
    public List<borrowDTO> getBorrowed(String userName){
        return borrow.borrwedBooks(userName);
    };
    
}
