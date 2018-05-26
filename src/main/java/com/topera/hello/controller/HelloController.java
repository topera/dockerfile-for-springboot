package com.topera.hello.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
class HelloController {

    @RequestMapping("/test")
    public String test() {
        return "working!";
    }

}