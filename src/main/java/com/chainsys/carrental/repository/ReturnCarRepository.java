package com.chainsys.carrental.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.carrental.compositekey.ReturnCarCompositekey;
import com.chainsys.carrental.model.ReturnCar;

@Repository
public interface ReturnCarRepository extends CrudRepository<ReturnCar, ReturnCarCompositekey> {
	Optional<ReturnCar> findById(ReturnCarCompositekey id);

	ReturnCar save(ReturnCar car);

	void deleteById(ReturnCarCompositekey carId);

	List<ReturnCar> findAll();

	 List<ReturnCar> findByCustomerId(int id);
}
