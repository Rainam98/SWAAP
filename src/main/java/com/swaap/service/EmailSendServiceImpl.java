package com.swaap.service;

import com.swaap.dao.EmailSenderDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmailSendServiceImpl implements EmailSendService{

    @Autowired
    EmailSenderDAO emailSenderDAO;

    @Override
    public boolean sendMail(String toEmail, String subject, String msg) {
        return emailSenderDAO.sendMail(toEmail, subject, msg);
    }
}
