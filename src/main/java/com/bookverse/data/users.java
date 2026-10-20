/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bookverse.data;

import com.bookverse.dto.userDTO;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author USER
 */
public class users {

    private final Map<String, userDTO> usersList = new HashMap<>();

    public users() {
        // Admins
        usersList.put("admin", new userDTO("admin", "admin12345", "admin", "admin@example.com", "0771234567"));
        usersList.put("kasun", new userDTO("kasun", "kasun12345", "admin", "kasun@example.com", "0712345678"));
        usersList.put("nimali", new userDTO("nimali", "nimali12345", "admin", "nimali@example.com", "0763456789"));

// Members
        usersList.put("imesh", new userDTO("imesh", "imesh12345", "member", "imesh@example.com", "0777777777"));
        usersList.put("sachini", new userDTO("sachini", "sachini12345", "member", "sachini@example.com", "0701234567"));
        usersList.put("tharindu", new userDTO("tharindu", "tharindu12345", "member", "tharindu@example.com", "0723456789"));
        usersList.put("dilani", new userDTO("dilani", "dilani12345", "member", "dilani@example.com", "0754567890"));
        usersList.put("ruwan", new userDTO("ruwan", "ruwan12345", "member", "ruwan@example.com", "0785678901"));
        usersList.put("hasini", new userDTO("hasini", "hasini12345", "member", "hasini@example.com", "0716789012"));
        usersList.put("chamara", new userDTO("chamara", "chamara12345", "member", "chamara@example.com", "0747890123"));
    }

    public userDTO findUser(String username) {
        return usersList.get(username);
    }

}
