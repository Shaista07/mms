package com.service;

import java.util.List;

import com.entity.AdminLogin;
import com.entity.BranchAdmin;
import com.entity.BranchAdminRequest;
import com.entity.Login;
import com.entity.Medicine;
import com.entity.MedicineRequest;
import com.entity.Request;
import com.entity.Stock;


public interface AdminService {

	public void addAdmin(AdminLogin admin);
	public String loginAdmin(Login login);
	public List<BranchAdmin> getAllBranchAdmin();
	public void removeBranchAdmin(String id);
	public BranchAdmin getBranchAdminById(String id);
	public void addBranchAdmin(BranchAdmin c);
	public void updateBranchAdmin(BranchAdmin c);
	public List<Medicine> getAllMedicine();
	public void removeMedicine(Integer id);
	public Medicine getMedicineById(Integer id);
	public void updateMedicine(Medicine m);
	public void addMedicine(Medicine m);
	public List<Stock> getAllStock();
	public Stock getStockById(Integer id);
	public void updateStock(Stock st);
	public List<BranchAdminRequest> getAllBranchAdminRequest();
	public List<MedicineRequest> getAllMedicineRequest();
	public BranchAdminRequest getBranchAdminRequestById(Integer id);
	public void updateRequest(BranchAdminRequest br);
	public List<MedicineRequest> getMedicineRequestById(Integer id);
	public AdminLogin fetchAdminById(String adminId);
	public void addRequest(Request rA);
	public boolean checkEmail(String email);
	
	
}
