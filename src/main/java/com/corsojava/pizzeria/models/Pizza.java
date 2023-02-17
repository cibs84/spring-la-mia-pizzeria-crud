package com.corsojava.pizzeria.models;

import java.math.BigDecimal;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.DecimalMax;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "pizza")
public class Pizza {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@NotNull(message = "Il campo Nome deve essere compilato")
	@NotEmpty(message = "Il campo Nome deve essere compilato")
	@Size(max = 30, message = "Inserire massimo 30 caratteri")
	@Column(nullable=false, length=30)
	private String name;
	
	@NotNull(message = "Il campo Descrizione deve essere compilato")
	@NotEmpty(message = "Il campo Descrizione deve essere compilato")
	@Size(max = 100, message = "Inserire massimo 100 caratteri")
	@Column(nullable=false, length=100)
	private String description;
	
	@NotNull(message = "Il campo Immagine deve essere compilato")
	@NotEmpty(message = "Il campo Immagine deve essere compilato")
	@Size(max = 200, message = "Inserire massimo 200 caratteri")
	@Column(nullable=false, length=200)
	private String photo;
	
	@NotNull(message = "Il campo Prezzo deve essere compilato")
	@DecimalMax(value = "99.99", message = "Il prezzo massimo è €99.99")
	@DecimalMin(value = "1.00", message = "Il prezzo minimo è €1")
	@Column(nullable=false, precision=4, scale=2)
	private BigDecimal price;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
}
