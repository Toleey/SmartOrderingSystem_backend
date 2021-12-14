package com.toleey.smartorderingsystem.controller;

import com.toleey.smartorderingsystem.dao.ItemMapper;
import com.toleey.smartorderingsystem.pojo.Item;
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
@RequestMapping("/item")
@CrossOrigin
public class ItemController {

    @Autowired(required = false)
    private ItemMapper itemMapper;

    //查询全部的商品
    @ResponseBody
    @RequestMapping("/getAllItems")
    public List<Item> getAllItems(){
        return itemMapper.getAllItems();
    }

    //查询特定种类的商品
    @ResponseBody
    @RequestMapping("/getTypeItem")
    public List<Item> getTypeItem(Integer typeId){
        return itemMapper.getTypeItem(typeId);
    }

    //查询特定商品价格
    @ResponseBody
    @RequestMapping("/getItemPrice")
    public int getItemPrice(Integer itemId){
        return itemMapper.getItemPrice(itemId);
    }

}
