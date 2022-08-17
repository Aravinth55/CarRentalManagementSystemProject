package com.chainsys.carrental.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.carrental.compositekey.CarRentalCompositekey;
import com.chainsys.carrental.model.CarRental;

@Repository
public interface CarRentalRepository extends CrudRepository<CarRental, CarRentalCompositekey> {
	Optional<CarRental> findById(CarRentalCompositekey id);

	CarRental save(CarRental car);

	void deleteById(CarRentalCompositekey carId);

	List<CarRental> findAll();

 List<CarRental> findByCustomerId(int id);
 List<CarRental> findByCustomerIdAndCarRegnoOrderByFromDateDesc(int customerId,String carRegNo);
}
