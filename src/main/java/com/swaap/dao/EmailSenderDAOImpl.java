package com.swaap.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Repository;

@Repository
public class EmailSenderDAOImpl implements EmailSenderDAO{

    @Autowired
    private JavaMailSender javaMailSender;

    @Override
    public boolean sendMail(String toEmail, String subject, String msg) {
        try{
            SimpleMailMessage mailMsg = new SimpleMailMessage();
            mailMsg.setTo(toEmail);
            mailMsg.setSubject(subject);
            mailMsg.setText(msg);
            javaMailSender.send(mailMsg);
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return true;
    }
}
