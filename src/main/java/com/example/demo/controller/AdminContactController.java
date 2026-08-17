package com.example.demo.controller;

import java.util.List;

import jakarta.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.dao.ContactMessageDAO;
import com.example.demo.model.ContactMessage;

@Controller
public class AdminContactController {

	private final ContactMessageDAO contactMessageDAO;


	public AdminContactController(
			ContactMessageDAO contactMessageDAO) {

		this.contactMessageDAO = contactMessageDAO;
	}


	@GetMapping("/admin/contact")
	public String showContactList(
			HttpSession session,
			Model model) {


		// 管理者としてログインしているか確認
		Object loginAdmin =
				session.getAttribute("loginAdmin");


		// 未ログインの場合はログイン画面へ戻す
		if (loginAdmin == null) {

			return "redirect:/admin/login";
		}


		// DBからお問い合わせ一覧を取得
		List<ContactMessage> contactList =
				contactMessageDAO.findAll();


		// JSPへ渡す
		model.addAttribute(
				"contactList",
				contactList);


		// adminContactList.jspを表示
		return "adminContactList";
	}
}