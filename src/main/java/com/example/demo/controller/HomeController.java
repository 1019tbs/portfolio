package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

//	main画面を表示させるマッピング
    @GetMapping("/")
    public String showIndex() {
        return "index";
    }
    
    //Aboutを表示
    @GetMapping("/about")
    public String showAbout() {
    	return "about";
    }
    
    //Workページを表示
    @GetMapping("/work")
    public String showWork() {
    	return "work";
    }
    
    //Contactページ表示
    @GetMapping("/contact")
    public String showContact() {
    	return "contact";
    }
}