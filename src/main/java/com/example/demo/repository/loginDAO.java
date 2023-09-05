package com.example.demo.repository;

 

import org.springframework.data.jpa.repository.JpaRepository;


import com.example.demo.model.Login;

public interface loginDAO  extends JpaRepository<Login,Integer>
{

}

 
