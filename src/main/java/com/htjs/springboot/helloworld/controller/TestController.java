package com.htjs.springboot.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Random;

@RestController
public class TestController {


    @GetMapping("test")
    public String test() throws Exception {
        Random random = new Random();
        int randomInt = random.nextInt(100);
        if(randomInt <= 10) {
            throw new Exception("random int 小于等于10");
        }
        return "Hello, world";
    }

}
