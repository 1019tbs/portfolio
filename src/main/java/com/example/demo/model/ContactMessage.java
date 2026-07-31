package com.example.demo.model;

import java.time.LocalDateTime;

public class ContactMessage {

	private long contactId;
	private String name;
	private String email;
	private String subject;
	private String category;
	private String message;
	private LocalDateTime createdAt;

	public ContactMessage() {
	}

	public ContactMessage(
			String name,
			String email,
			String subject,
			String category,
			String message) {

		this.name = name;
		this.email = email;
		this.subject = subject;
		this.category = category;
		this.message = message;
	}

	public long getContactId() {
		return contactId;
	}

	public void setContactId(long contactId) {
		this.contactId = contactId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public LocalDateTime getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(LocalDateTime createdAt) {
		this.createdAt = createdAt;
	}
}