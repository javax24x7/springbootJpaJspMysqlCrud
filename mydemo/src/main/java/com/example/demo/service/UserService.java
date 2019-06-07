package com.example.demo.service;

import java.util.List;

import com.example.demo.bean.UserBean;

public interface UserService {
	
public void save(UserBean userBean);

public UserBean update(UserBean userBean);

public void deleteById(Long id);

public List<UserBean> findAll();

public UserBean get(Long id);

}
