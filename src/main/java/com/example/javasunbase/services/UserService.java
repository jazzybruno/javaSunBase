package com.example.javasunbase.services;

import java.util.Collection;

public interface UserService {
    Collection<Object> getUsersAll();
    Object createUser();
    Object authenticateUser();
}
