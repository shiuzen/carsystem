package com.car.carsystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @ClassName HelloWordController
 * @Deacription TODO
 * @Author Administrator
 * @Date 2020/11/8 14:27
 * @Version 1.0
 **/
@Controller
@RequestMapping(value = "/")
public class InitController {

    @GetMapping("/")
    public String login(){
        // 地址指向login.html
        return "login";
    }
}