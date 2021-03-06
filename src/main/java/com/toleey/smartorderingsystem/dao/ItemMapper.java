package com.toleey.smartorderingsystem.dao;

import com.toleey.smartorderingsystem.pojo.Item;

import java.util.List;

public interface ItemMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sos_item
     *
     * @mbggenerated
     */
    int insert(Item record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sos_item
     *
     * @mbggenerated
     */
    int insertSelective(Item record);

    public List<Item> getAllItems();

    public List<Item> getTypeItem(Integer typeId);

    public Integer getItemPrice(Integer itemId);

}