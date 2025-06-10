package com.sagar.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sagar.Entity.StudentEntity;

public interface StudentRepository  extends JpaRepository<StudentEntity,Integer>{

	

	StudentEntity findByEmail(String email);

	boolean existsByEmail(String email);

}
