package com.s5.sand5rang.sein.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.s5.sand5rang.sein.service.SeinService;

@Controller
public class SeinController {

	@Autowired
	private SeinService seinService;
}