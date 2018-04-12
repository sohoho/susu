package com.lx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lx.beans.kec;
import com.lx.beans.student;
import com.lx.service.Testservice;

@Controller
public class Testcontroller {
      
	@Autowired
	private Testservice service;
	
	//列表显示
	@RequestMapping("/hello")
	public String getlist(Model model) {
		List<student>list=service.getlist();
		int count=service.getcount();
		model.addAttribute("list",list);
		model.addAttribute("count",count);
		return "hello";
	}
	
	//查询的记录数
	@RequestMapping("/jilu")
	public String jilu(Model model,int id) {
		List<student>list=service.getlist();
		List<kec>kc=service.getkec();
		student s=service.huoquid(id);
		model.addAttribute("list",list);
		model.addAttribute("s",s);
		model.addAttribute("kc",kc);
		return "jilu";
	}
	
	//进入评论页面
	@RequestMapping("/pinglun")
	public String pinglun() {
		return "pinglun";
	}
	
	//点击添加评论
	@RequestMapping("/addjia")
	public String addjia(kec k) {
		service.addjia(k);
		return "redirect:hello";
	}
}
