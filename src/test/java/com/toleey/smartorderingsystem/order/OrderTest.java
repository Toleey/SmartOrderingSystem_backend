package com.toleey.smartorderingsystem.order;

import org.junit.jupiter.api.Test;

import java.sql.Timestamp;
import java.util.Date;

public class OrderTest {

    @Test
    public void test(){
        Timestamp timestamp = new Timestamp((new Date()).getTime());
        System.out.println(timestamp);
    }

}
