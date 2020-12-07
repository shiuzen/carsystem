package com.car.carsystem.controller.login;

import com.car.carsystem.model.User;
import com.car.carsystem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ClassName UserController
 * @Deacription TODO
 * @Author Administrator
 * @Date 2020/11/9 15:39
 * @Version 1.0
 **/
@Controller
@RequestMapping(value = "")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/loginPage")
    public String loginPage(){
        return "login";
    }
}