package com.toleey.smartorderingsystem.controller;

import com.toleey.smartorderingsystem.dao.TypeMapper;
import com.toleey.smartorderingsystem.pojo.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@ResponseBody
@SpringBootApplication
@RequestMapping("/type")
@CrossOrigin
public class TypeController {

    @Autowired(required = false)
    private TypeMapper typeMapper;

    //查询全部的商品种类
    @ResponseBody
    @RequestMapping("/getAllTypes")
    public List<Type> getAllTypes(){
        return typeMapper.getAllTypes();
    }

}
