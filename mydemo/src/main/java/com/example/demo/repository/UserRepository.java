package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.bean.UserBean;
@Repository
public interface UserRepository extends JpaRepository<UserBean, Long>{

}
