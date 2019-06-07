package com.example.demo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.bean.UserBean;
import com.example.demo.repository.UserRepository;
import com.example.demo.service.UserService;
@Service
public class UserServiceImpl implements UserService{
@Autowired
UserRepository userRepository;

@Override
public void save(UserBean userBean) {
	userRepository.save(userBean);
	
}

@Override
public UserBean update(UserBean userBean) {
	return userRepository.save(userBean);
}

@Override
public void deleteById(Long id) {
	userRepository.deleteById(id);
}

@Override
public List<UserBean> findAll() {
	return userRepository.findAll();
}

@Override
public UserBean get(Long id) {
	return userRepository.getOne(id);
}


}
