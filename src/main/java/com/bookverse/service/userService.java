package com.bookverse.service;

import com.bookverse.data.users;
import com.bookverse.dto.userDTO;
import javax.servlet.http.HttpSession;

public class userService {
    
     private final users users = new users();

    public boolean login(String userName, String password,HttpSession session) {

        if(users.findUser(userName)!=null && users.findUser(userName).getPassword().equals(password)){
            session.setAttribute("user",new userDTO(userName));
            return true;
        }

        return false;
    }
    
    public userDTO getUserdetails(String userName){
         userDTO userDTO = users.findUser(userName);
         return userDTO;
    }

}
