package com.example.javasunbase.serviceImpl;

import java.util.List;

public class UserServiceImpl {
    public List<Object> getAllUsers(){
        return List.of(
                new String("Hello World")
        );
    }
}
