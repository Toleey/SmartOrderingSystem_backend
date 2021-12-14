package com.toleey.smartorderingsystem.controller;

import com.toleey.smartorderingsystem.dao.OrderMapper;
import com.toleey.smartorderingsystem.dao.TypeMapper;
import com.toleey.smartorderingsystem.pojo.Item;
import com.toleey.smartorderingsystem.pojo.Order;
import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@Controller
@ResponseBody
@SpringBootApplication
@RequestMapping("/order")
@CrossOrigin

public class OrderController {

    @Autowired(required = false)
    private OrderMapper orderMapper;
//    Integer fetchMealCode = 0;
    Integer fetchMealCode = (int)((Math.random()*9+1)*1000);

    //提交购买商品
    @ResponseBody
    @RequestMapping(value = "/submitItems",method = RequestMethod.POST)
    public Integer submitItems(HttpServletRequest request){
        String items = request.getParameter("items");
        List<String> itemList= Arrays.asList(items);
        System.out.println(itemList);
//        System.out.println(itemList.get(0));


        //1.创建订单
        ++fetchMealCode;

        Integer line = orderMapper.selectFetchMealCode(fetchMealCode);
        if (line!=null){ //能查到值，已经有了
            ++fetchMealCode;
        }

        Order order = new Order();
        order.setUserId(1);
        order.setPrice(1.0);
        order.setFetchMealCode(fetchMealCode);
        order.setCreatedTime(new Timestamp((new Date()).getTime()));
        //order.setUpdateTIme();
        //2.写入订单商品
        orderMapper.submitAnOrder(order);

        return fetchMealCode;
    }

    @ResponseBody
    @RequestMapping("/getAllOrders")
    public List<Order> getAllOrders(){
        return orderMapper.getAllOrders();
    }


}
