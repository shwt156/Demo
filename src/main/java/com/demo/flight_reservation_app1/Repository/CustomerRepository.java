package com.demo.flight_reservation_app1.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.flight_reservation_app1.entity.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long> {

}
