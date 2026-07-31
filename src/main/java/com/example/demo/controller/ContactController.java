package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.dao.ContactMessageDAO;
import com.example.demo.model.ContactMessage;

@Controller
public class ContactController {

	private final ContactMessageDAO contactMessageDAO;

	public ContactController(
			ContactMessageDAO contactMessageDAO) {

		this.contactMessageDAO = contactMessageDAO;
	}

	@GetMapping("/contact")
	public String showContact() {

		return "contact";
	}

	@PostMapping("/contact/submit")
	public String submitContact(

			@RequestParam("name")
			String name,

			@RequestParam("email")
			String email,

			@RequestParam("subject")
			String subject,

			@RequestParam(
					value = "category",
					required = false)
			String category,

			@RequestParam("message")
			String message,

			@RequestParam(
					value = "agreement",
					required = false)
			Boolean agreement,

			Model model,

			RedirectAttributes redirectAttributes) {

		name = name.trim();
		email = email.trim();
		subject = subject.trim();
		message = message.trim();

		if (category != null) {
			category = category.trim();
		}

		if (name.isEmpty()
				|| email.isEmpty()
				|| subject.isEmpty()
				|| message.isEmpty()) {

			setFormValues(
					model,
					name,
					email,
					subject,
					category,
					message);

			model.addAttribute(
					"errorMsg",
					"必須項目をすべて入力してください。");

			return "contact";
		}

		if (agreement == null || !agreement) {

			setFormValues(
					model,
					name,
					email,
					subject,
					category,
					message);

			model.addAttribute(
					"errorMsg",
					"内容をご確認のうえ、送信に同意してください。");

			return "contact";
		}

		ContactMessage contactMessage =
				new ContactMessage(
						name,
						email,
						subject,
						category,
						message);

		boolean result =
				contactMessageDAO.insert(contactMessage);

		if (!result) {

			setFormValues(
					model,
					name,
					email,
					subject,
					category,
					message);

			model.addAttribute(
					"errorMsg",
					"お問い合わせの送信に失敗しました。");

			return "contact";
		}

		redirectAttributes.addFlashAttribute(
				"successMsg",
				"お問い合わせを送信しました。ありがとうございます。");

		return "redirect:/contact";
	}

	private void setFormValues(
			Model model,
			String name,
			String email,
			String subject,
			String category,
			String message) {

		model.addAttribute("name", name);
		model.addAttribute("email", email);
		model.addAttribute("subject", subject);
		model.addAttribute("category", category);
		model.addAttribute("message", message);
	}
}