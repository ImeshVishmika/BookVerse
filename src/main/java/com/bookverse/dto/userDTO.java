/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bookverse.dto;

public class userDTO {

    private String userName;
    private String password;
    private String email;
    private String mobile;
    private String role;
    
    public userDTO(){
    }

    public userDTO(String userName) {
        this.userName = userName;
    };
    
    public userDTO(String userName, String password, String role, String email, String mobile) {
        this.userName = userName;
        this.password = password;
        this.role = role;
        this.email = email;
        this.mobile = mobile;
    };

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

}
