package com.car.carsystem.service;

import com.car.carsystem.model.User;
import org.springframework.stereotype.Service;

/**
 * @ClassName LoginController
 * @Deacription TODO
 * @Author Administrator
 * @Date 2020/11/8 14:53
 * @Version 1.0
 **/
public interface UserService {

    User login(User user);
}