package com.corsojava.pizzeria.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.corsojava.pizzeria.models.Pizza;
import com.corsojava.pizzeria.repository.PizzaRepository;

@Controller
@RequestMapping("/pizze")
public class PizzaController {
	
	@Autowired
	private PizzaRepository pizzaRepository;
	
	@GetMapping()
	public String index(
			@RequestParam(name = "keyword", required = false) String keyword, 
			Model model) {	// GET /pizze  OPPURE  /pizze?keyword=xxx
		
		List<Pizza> elencoPizze;
		
		if (keyword!=null && !keyword.isEmpty()) {
			elencoPizze = pizzaRepository.findByNameLike(keyword + "%");
		} else {
			elencoPizze = pizzaRepository.findAll();
		}
		
		// List<Pizza> elencoPizze = pizzaRepository.findByNameLike("Ma%"); // ritorna tutte le pizze che iniziano con 'Ma'
		// List<Pizza> elencoPizze = pizzaRepository.findByDescriptionLike("%mozz%"); // Ritorna tutte le pizze con la mozzarella
		model.addAttribute("pizze", elencoPizze);
		return "pizze/index";
	}
	
	@GetMapping("{id}") // GET /pizze/{id}
	public String show(@PathVariable("id") Integer id, Model model) {
		Optional<Pizza> pizza = pizzaRepository.findById(id);
		if (pizza.isEmpty()) {
			return "pizze/notfound";
		} else {
			model.addAttribute("pizza", pizza.get());
		}
		return "pizze/show";
	}
}
