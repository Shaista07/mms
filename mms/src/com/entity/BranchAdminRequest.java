package com.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "branch_admin_request")
public class BranchAdminRequest {

	@Id
	private Integer request_id;
	private String branch_admin_id;
	private String request_date;
	private String other_info;
	private String admin_process_date;
	private String admin_response;
	private String admin_remarks;

	public Integer getRequest_id() {
		return request_id;
	}

	public void setRequest_id(Integer request_id) {
		this.request_id = request_id;
	}

	public String getBranch_admin_id() {
		return branch_admin_id;
	}

	public void setBranch_admin_id(String branch_admin_id) {
		this.branch_admin_id = branch_admin_id;
	}

	public String getRequest_date() {
		return request_date;
	}

	public void setRequest_date(String request_date) {
		this.request_date = request_date;
	}

	public String getOther_info() {
		return other_info;
	}

	public void setOther_info(String other_info) {
		this.other_info = other_info;
	}

	public String getAdmin_process_date() {
		return admin_process_date;
	}

	public void setAdmin_process_date(String admin_process_date) {
		this.admin_process_date = admin_process_date;
	}

	public String getAdmin_response() {
		return admin_response;
	}

	public void setAdmin_response(String admin_response) {
		this.admin_response = admin_response;
	}

	public String getAdmin_remarks() {
		return admin_remarks;
	}

	public void setAdmin_remarks(String admin_remarks) {
		this.admin_remarks = admin_remarks;
	}

}
