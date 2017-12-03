package com.zm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Conpany {

	@Id
	@Column(name = "id", unique = false, nullable = false)
	private int id;
	private String name;
	private String description;
	private String num_jop;
	private String offer;
	private boolean ok;

	public String getOffer() {
		return offer;
	}

	public void setOffer(String offer) {
		this.offer = offer;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
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

	public String getNum_jop() {
		return num_jop;
	}

	public void setNum_jop(String num_jop) {
		this.num_jop = num_jop;
	}

	public boolean isOk() {
		return ok;
	}

	public void setOk(boolean ok) {
		this.ok = ok;
	}
}
