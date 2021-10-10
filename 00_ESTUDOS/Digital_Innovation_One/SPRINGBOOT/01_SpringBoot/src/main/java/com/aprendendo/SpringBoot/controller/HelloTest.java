package com.aprendendo.SpringBoot.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloTest {

        @GetMapping("/")
        public String helloMessage(){
            return "Hello!TESTE...";
        }
}
