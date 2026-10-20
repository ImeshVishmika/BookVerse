/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bookverse.service;

import com.bookverse.data.notice;
import com.bookverse.dto.noticeDTO;
import java.util.ArrayList;

/**
 *
 * @author USER
 */
public class noticeService {
    
    private final notice notice = new notice();
    
    public ArrayList<noticeDTO> getNotice(){
        return notice.getNotice();
    }
    
}
