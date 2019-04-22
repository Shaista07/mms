package com.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "medicine")
public class Medicine {
	@Id
	private Integer medicine_id;
	private String medicine_descrip;
	private Integer quantity;
	private String cure;
	private String manufacturing;
	private Integer dosage;
	private String prescribed_for;

	public Integer getMedicine_id() {
		return medicine_id;
	}

	public void setMedicine_id(Integer medicine_id) {
		this.medicine_id = medicine_id;
	}

	public String getMedicine_descrip() {
		return medicine_descrip;
	}

	public void setMedicine_descrip(String medicine_descrip) {
		this.medicine_descrip = medicine_descrip;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public String getCure() {
		return cure;
	}

	public void setCure(String cure) {
		this.cure = cure;
	}

	public String getManufacturing() {
		return manufacturing;
	}

	public void setManufacturing(String manufacturing) {
		this.manufacturing = manufacturing;
	}

	public Integer getDosage() {
		return dosage;
	}

	public void setDosage(Integer dosage) {
		this.dosage = dosage;
	}

	public String getPrescribed_for() {
		return prescribed_for;
	}

	public void setPrescribed_for(String prescribed_for) {
		this.prescribed_for = prescribed_for;
	}

}
