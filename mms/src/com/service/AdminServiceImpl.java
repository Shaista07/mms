package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.AdminDao;
import com.entity.AdminLogin;
import com.entity.BranchAdmin;
import com.entity.BranchAdminRequest;
import com.entity.Login;
import com.entity.Medicine;
import com.entity.MedicineRequest;
import com.entity.Request;
import com.entity.Stock;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
    private AdminDao adminDao;
	
	
	@Override
	@Transactional
	public void addAdmin(AdminLogin admin) {
		// TODO Auto-generated method stub
		adminDao.addAdmin(admin);
	}


	@Override
	@Transactional
	public String loginAdmin(Login login) {
		// TODO Auto-generated method stub
		String l = null;
		l=adminDao.loginAdmin(login);
		return l;
	}


	@Override
	@Transactional
	public List<BranchAdmin> getAllBranchAdmin() {
		// TODO Auto-generated method stub
		return adminDao.getAllBranchAdmin();
	}


	@Override
	@Transactional
	public void removeBranchAdmin(String id) {
		// TODO Auto-generated method stub
		adminDao.removeBranchAdmin(id);
	}


	@Override
	@Transactional
	public BranchAdmin getBranchAdminById(String id) {
		// TODO Auto-generated method stub
		return adminDao.getBranchAdminById(id);
	}


	@Override
	@Transactional
	public void addBranchAdmin(BranchAdmin c) {
		// TODO Auto-generated method stub
		adminDao.addBranchAdmin(c);
	}


	@Override
	@Transactional
	public void updateBranchAdmin(BranchAdmin c) {
		// TODO Auto-generated method stub
		adminDao.updateBranchAdmin(c);
	}


	@Override
	@Transactional
	public List<Medicine> getAllMedicine() {
		// TODO Auto-generated method stub
		return adminDao.getAllMedicine();
	}


	@Override
	@Transactional
	public void removeMedicine(Integer id) {
		// TODO Auto-generated method stub
		adminDao.removeMedicine(id);
	}


	@Override
	@Transactional
	public Medicine getMedicineById(Integer id) {
		// TODO Auto-generated method stub
		return adminDao.getMedicineById(id);
	}


	@Override
	@Transactional
	public void updateMedicine(Medicine m) {
		// TODO Auto-generated method stub
		adminDao.updateMedicine(m);
	}


	@Override
	@Transactional
	public void addMedicine(Medicine m) {
		// TODO Auto-generated method stub
		adminDao.addMedicine(m);
	}


	@Override
	@Transactional
	public List<Stock> getAllStock() {
		// TODO Auto-generated method stub
		return adminDao.getAllStock();
	}


	@Override
	@Transactional
	public Stock getStockById(Integer id) {
		// TODO Auto-generated method stub
		return adminDao.getStockById(id);
	}


	@Override
	@Transactional
	public void updateStock(Stock st) {
		// TODO Auto-generated method stub
		adminDao.updateStock(st);
	}


	@Override
	@Transactional
	public List<BranchAdminRequest> getAllBranchAdminRequest() {
		// TODO Auto-generated method stub
		return adminDao.getAllBranchAdminRequest();
	}


	@Override
	@Transactional
	public List<MedicineRequest> getAllMedicineRequest() {
		// TODO Auto-generated method stub
		return adminDao.getAllMedicineRequest();
	}


	@Override
	@Transactional
	public BranchAdminRequest getBranchAdminRequestById(Integer id) {
		// TODO Auto-generated method stub
		return adminDao.getBranchAdminRequestById(id);
	}


	@Override
	@Transactional
	public void updateRequest(BranchAdminRequest br) {
		// TODO Auto-generated method stub
		adminDao.updateRequest(br);
	}


	@Override
	@Transactional
	public List<MedicineRequest> getMedicineRequestById(Integer id) {
		// TODO Auto-generated method stub
		return adminDao.getMedicineRequestById(id);
	}


	@Override
	@Transactional
	public AdminLogin fetchAdminById(String adminId) {
		// TODO Auto-generated method stub
		AdminLogin u=adminDao.fetchAdminById(adminId);
		return u;
	}

	@Override
	@Transactional
	public void addRequest(Request rA) {
		// TODO Auto-generated method stub
		adminDao.addRequest(rA);
	}


	@Override
	@Transactional
	public boolean checkEmail(String email) {
		// TODO Auto-generated method stub
		return adminDao.checkEmail(email);
	}

	
}
