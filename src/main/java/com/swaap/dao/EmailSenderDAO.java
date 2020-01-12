package com.swaap.dao;

public interface EmailSenderDAO {

    boolean sendMail(String toEmail, String subject, String msg);

}
