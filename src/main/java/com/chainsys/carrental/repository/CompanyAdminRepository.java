package com.chainsys.carrental.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.carrental.model.CarRental;
import com.chainsys.carrental.model.CompanyAdmin;

@Repository
public interface CompanyAdminRepository extends CrudRepository<CompanyAdmin, Integer> {
	CompanyAdmin findById(int id);

	CompanyAdmin save(CarRental car);

	void deleteById(int carId);

	List<CompanyAdmin> findAll();

	
	CompanyAdmin findByUserIdAndUserPassword(int id,String str); //login user
}
