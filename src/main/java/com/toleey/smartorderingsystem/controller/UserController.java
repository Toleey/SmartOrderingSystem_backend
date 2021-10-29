package com.toleey.smartorderingsystem.controller;


import com.toleey.smartorderingsystem.dao.UserMapper;
import com.toleey.smartorderingsystem.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@ResponseBody
@SpringBootApplication
@RequestMapping("/user")
@CrossOrigin
public class UserController {

    @Autowired(required = false)
    private UserMapper userMapper;

    @ResponseBody
    @RequestMapping("/getAll")
    public List<User> test(){
        return userMapper.findAllUsers();
    }

    //临时换头像应付用
    @ResponseBody
    @RequestMapping(value = "/getAvatorSrc",method = RequestMethod.GET)
    @CrossOrigin
    public String provideAvatorSrc(){
        return userMapper.provideAvatorSrc();
    }
    @ResponseBody
    @RequestMapping(value = "/updateAvatorSrc",method = RequestMethod.GET)
    @CrossOrigin
    public Integer updateAvatorSrc(String src){
        return userMapper.updateAvatorSrc(src);
    }


    @RequestMapping("/hello")
    public String test2(){
        return "hello";
    }

}
