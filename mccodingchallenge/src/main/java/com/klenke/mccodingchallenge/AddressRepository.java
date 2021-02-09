package com.klenke.mccodingchallenge;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AddressRepository extends CrudRepository<Address, Long> {
	List<Address> findByCountryIgnoreCase(String country);
}