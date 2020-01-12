package com.swaap.service;

public interface EmailSendService {

    boolean sendMail(String toEmail, String subject, String msg);

}
