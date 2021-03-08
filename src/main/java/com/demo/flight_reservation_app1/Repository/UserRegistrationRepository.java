package com.demo.flight_reservation_app1.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.demo.flight_reservation_app1.entity.UserRegistration;

public interface UserRegistrationRepository extends JpaRepository<UserRegistration, Long> {
	
	@Query()
	UserRegistration findByUserName(String user);

}
