package com.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "medicine_request")
public class MedicineRequest {
	@Id
	private Integer medicine_id;
	private Integer request_id;
	private int quantity;

	public Integer getRequest_id() {
		return request_id;
	}

	public void setRequest_id(Integer request_id) {
		this.request_id = request_id;
	}

	public Integer getMedicine_id() {
		return medicine_id;
	}

	public void setMedicine_id(Integer medicine_id) {
		this.medicine_id = medicine_id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}
