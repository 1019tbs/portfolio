package com.example.demo.controller;

import jakarta.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dao.AdminDAO;

@Controller
public class AdminLoginController {

	private final AdminDAO adminDAO;


	public AdminLoginController(
			AdminDAO adminDAO) {

		this.adminDAO = adminDAO;
	}


	// ================================
	// 管理者ログイン画面表示
	// ================================

	@GetMapping("/admin/login")
	public String showLogin() {

		return "adminLogin";
	}


	// ================================
	// 管理者ログイン処理
	// ================================

	@PostMapping("/admin/login")
	public String login(

			@RequestParam("username")
			String username,

			@RequestParam("password")
			String password,

			HttpSession session,

			Model model) {


		// 前後の空白を削除
		username = username.trim();


		// 未入力チェック
		if (username.isEmpty()
				|| password.isEmpty()) {

			model.addAttribute(
					"errorMsg",
					"管理者IDとパスワードを入力してください。");

			return "adminLogin";
		}


		// DBでログイン判定
		boolean loginResult =
				adminDAO.login(
						username,
						password);


		// ログイン失敗
		if (!loginResult) {

			model.addAttribute(
					"errorMsg",
					"管理者IDまたはパスワードが正しくありません。");

			return "adminLogin";
		}


		// ログイン成功
		// Sessionに管理者IDを保存
		session.setAttribute(
				"loginAdmin",
				username);


		// お問い合わせ一覧画面へ
		return "redirect:/admin/contact";
	}


	// ================================
	// ログアウト処理
	// ================================

	@GetMapping("/admin/logout")
	public String logout(
			HttpSession session) {


		// Sessionを破棄
		session.invalidate();


		// ログイン画面へ戻る
		return "redirect:/admin/login";
	}
}