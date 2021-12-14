package com.toleey.smartorderingsystem.controller;

import com.toleey.smartorderingsystem.dao.OrderMapper;
import com.toleey.smartorderingsystem.pojo.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@SpringBootApplication
@RequestMapping("/show")
public class showController {

    @Autowired(required = false)
    private OrderMapper orderMapper;

    @RequestMapping("/food")
    public String toSignUp(HttpSession session){
        List<Order> orderList = orderMapper.getAllOrders();
        session.setAttribute("orderList",orderList);
        return "showFood";
    }

}
