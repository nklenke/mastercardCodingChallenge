package com.klenke.mccodingchallenge;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class MccodingchallengeApplication {

	@Autowired
	AddressRepository repository;
	
	@RequestMapping("/")
    String home() {
        return "Hello World Spring Boot!";
    }
	
	@RequestMapping("/{country}")
    String getMessage(@PathVariable("country") String country) {
		List<Address> addresses = repository.findByCountryIgnoreCase(country);
		if (addresses.size() > 0) {
			return addresses.get(0).getAddress();
		}
		
        return "Address not found for " + country;
    }
	
	public static void main(String[] args) {
		SpringApplication.run(MccodingchallengeApplication.class, args);
	}

}
