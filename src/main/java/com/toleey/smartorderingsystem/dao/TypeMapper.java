package com.toleey.smartorderingsystem.dao;

import com.toleey.smartorderingsystem.pojo.Type;

import java.util.List;

public interface TypeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sos_type
     *
     * @mbggenerated
     */
    int insert(Type record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sos_type
     *
     * @mbggenerated
     */
    int insertSelective(Type record);


    //查询全部的商品种类
    public List<Type> getAllTypes();

}