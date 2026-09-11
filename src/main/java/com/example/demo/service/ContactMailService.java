package com.example.demo.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.example.demo.model.ContactMessage;

@Service
public class ContactMailService {

    private final JavaMailSender mailSender;

    @Value("${contact.notification.to}")
    private String notificationTo;

    public ContactMailService(JavaMailSender mailSender) {
        this.mailSender = mailSender;
    }

    public void sendNotification(ContactMessage contactMessage) {

        SimpleMailMessage mail = new SimpleMailMessage();

        mail.setTo(notificationTo);

        mail.setReplyTo(contactMessage.getEmail());

        mail.setSubject(
                "【Portfolio】お問い合わせ："
                + contactMessage.getSubject());

        mail.setText(
                "ポートフォリオからお問い合わせがありました。\n\n"
                + "名前："
                + contactMessage.getName()
                + "\n"
                + "メールアドレス："
                + contactMessage.getEmail()
                + "\n"
                + "カテゴリ："
                + contactMessage.getCategory()
                + "\n"
                + "件名："
                + contactMessage.getSubject()
                + "\n\n"
                + "お問い合わせ内容\n"
                + "--------------------\n"
                + contactMessage.getMessage()
        );

        mailSender.send(mail);
    }
}