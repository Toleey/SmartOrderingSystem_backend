package com.toleey.smartorderingsystem;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.toleey.smartorderingsystem.dao")
public class SmartorderingsystemApplication {

    public static void main(String[] args) {
        SpringApplication.run(SmartorderingsystemApplication.class, args);
    }

}
