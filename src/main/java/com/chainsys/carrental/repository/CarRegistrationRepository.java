package com.chainsys.carrental.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.carrental.model.Car;

@Repository
public interface CarRegistrationRepository extends CrudRepository<Car, String> {
	Optional<Car> findById(String id);

	Car save(Car car);

	void deleteById(String carId);

	List<Car> findAll();

}
