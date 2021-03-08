package com.demo.flight_reservation_app1.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.flight_reservation_app1.Repository.ListHotelRepository;
import com.demo.flight_reservation_app1.entity.ListHotel;

@Controller
public class ListHotelController {
	@Autowired
	ListHotelRepository hotelRepo;
	
	@RequestMapping("/showHotel")
	public String showReg() {
		return "hotel/saveHotel";
	}

	
	
	@RequestMapping(value="/saveHotel" , method=RequestMethod.POST)
	public String saveHotel(@ModelAttribute ListHotel listHotel, ModelMap modelMap) {
		hotelRepo.save(listHotel);
		modelMap.addAttribute("msg", "record saved");
		return "hotel/saveHotel";
	}

	
	@RequestMapping(value="/listHotel" , method=RequestMethod.GET)
	public String listHotel(@ModelAttribute ListHotel listHotell, ModelMap modelMap) {
		List<ListHotel> listHotel = hotelRepo.findAll();
		modelMap.addAttribute("listtHotel", listHotel);
		return "hotel/showHotel";
	}

	@RequestMapping("/deleteHotel")
	public String deleteHotel(@RequestParam("id") Long id, ModelMap modelMap) {
		hotelRepo.deleteById(id);
		List<ListHotel> listHotel = hotelRepo.findAll();
		modelMap.addAttribute("listtHotel", listHotel);
		return "hotel/showHotel";
	}
	
	@RequestMapping("updateHotel")
	public String updateHotel(@RequestParam("id") Long id, ModelMap modelMap) {
		Optional<ListHotel> findById = hotelRepo.findById(id);
		ListHotel listHotel = findById.get();
		modelMap.addAttribute("id", listHotel.getId());
		modelMap.addAttribute("hotelName", listHotel.getHotelName());
		modelMap.addAttribute("city", listHotel.getCity());
		modelMap.addAttribute("rating", listHotel.getRating());
		modelMap.addAttribute("roomsTotal", listHotel.getRoomsTotal());
		modelMap.addAttribute("roomsAvailable", listHotel.getRoomsAvailable());
		return "hotel/editHotel";
	}

	@RequestMapping("updateSaveHotel")
	public String updateSaveHotel(@ModelAttribute("listHotel") ListHotel listHotel, ModelMap modelMap) {
		hotelRepo.save(listHotel);
		modelMap.addAttribute("msg", "Hotel Details updated");
		
		List<ListHotel> listHotels = hotelRepo.findAll();
		modelMap.addAttribute("listtHotel", listHotels);
		
		return "hotel/showHotel";
	}
	
	@RequestMapping("/bookViewHotel")
	public String bookReg(ModelMap modelMap) {
		List<ListHotel> hotel = hotelRepo.findAll();
		modelMap.addAttribute("listtHotel", hotel);
		return "bookingHotel";
	}
	
	@RequestMapping("/bookHotel")
	public String bookHotel(@RequestParam("id") Long id, ModelMap modelMap) {
		Optional<ListHotel> findById = hotelRepo.findById(id);
		ListHotel hotel = findById.get();
		if(hotel.getRoomsAvailable()>=1) {
			return "success";
		}else{
		 modelMap.addAttribute("msg", "Room Not Available");
		 return "bookingHotel";
		}
	
	}
}
