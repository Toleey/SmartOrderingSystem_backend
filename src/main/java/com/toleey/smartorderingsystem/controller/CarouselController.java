package com.toleey.smartorderingsystem.controller;

import com.toleey.smartorderingsystem.dao.CarouselMapper;
import com.toleey.smartorderingsystem.dao.UserMapper;
import com.toleey.smartorderingsystem.pojo.Carousel;
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
@RequestMapping("/carsousel")
@CrossOrigin
public class CarouselController {

    @Autowired(required = false)
    private CarouselMapper carouselMapper;

    @ResponseBody
    @RequestMapping("/getAllCarsousels")
    public List<Carousel> getAllCarsousels(){
        return carouselMapper.getAlllCarousels();
    }



}
