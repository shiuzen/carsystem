package com.car.carsystem.dao;

import com.car.carsystem.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserMapper {
    User userLogin(@Param(value = "user") User user);
}