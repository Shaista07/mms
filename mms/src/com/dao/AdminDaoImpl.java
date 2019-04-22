package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.entity.AdminLogin;
import com.entity.BranchAdmin;
import com.entity.BranchAdminRequest;
import com.entity.Login;
import com.entity.Medicine;
import com.entity.MedicineRequest;
import com.entity.Request;
import com.entity.Stock;

@Repository
public class AdminDaoImpl implements AdminDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addAdmin(AdminLogin admin) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().save(admin);
	}

	@Override
	public String loginAdmin(Login login) {
		// TODO Auto-generated method stub
		String page = null;
		Session s = this.sessionFactory.openSession();
		Transaction t = s.beginTransaction();
		Query q = s.createQuery("from AdminLogin l where l.admin_id=:adminId and l.password=:password");
		q.setParameter("adminId", login.getAdminId());
		q.setParameter("password", login.getPassword());
		AdminLogin l1 = (AdminLogin) q.uniqueResult();
		if (l1 != null)
			page = "branchAdmin";
		else
			page = "denied";
		return page;
	}

	@Override
	public List<BranchAdmin> getAllBranchAdmin() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("From BranchAdmin").list();
	}

	@Override
	public void removeBranchAdmin(String id) {
		// TODO Auto-generated method stub
		Session s = sessionFactory.getCurrentSession();
		BranchAdmin bA = (BranchAdmin) s.get(BranchAdmin.class, id);
		if (bA != null) {
			s.delete(bA);
		}
	}

	@Override
	public BranchAdmin getBranchAdminById(String id) {
		// TODO Auto-generated method stub
		Session s = sessionFactory.getCurrentSession();
		BranchAdmin c = (BranchAdmin) s.get(BranchAdmin.class, id);
		return c;
	}

	@Override
	public void addBranchAdmin(BranchAdmin c) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().save(c);
	}

	@Override
	public void updateBranchAdmin(BranchAdmin c) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().update(c);
	}

	@Override
	public List<Medicine> getAllMedicine() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("From Medicine").list();
	}

	@Override
	public void removeMedicine(Integer id) {
		// TODO Auto-generated method stub
		Session s = sessionFactory.getCurrentSession();
		Medicine m = (Medicine) s.get(Medicine.class, id);
		if (m != null) {
			s.delete(m);
		}
	}

	@Override
	public Medicine getMedicineById(Integer id) {
		// TODO Auto-generated method stub
		Session s = sessionFactory.getCurrentSession();
		Medicine m = (Medicine) s.get(Medicine.class, id);
		return m;
	}

	@Override
	public void updateMedicine(Medicine m) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().update(m);
	}

	@Override
	public void addMedicine(Medicine m) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().save(m);
	}

	@Override
	public List<Stock> getAllStock() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession()
				.createQuery("Select m.medicine_id, m.medicine_descrip, m.quantity from Medicine m").list();
	}

	@Override
	public Stock getStockById(Integer id) {
		// TODO Auto-generated method stub
		Session s = sessionFactory.getCurrentSession();
		Medicine m = (Medicine) s.get(Medicine.class, id);
		Stock s1 = new Stock();
		s1.setMedid(m.getMedicine_id());
		s1.setName(m.getMedicine_descrip());
		s1.setQuantity(m.getQuantity());
		return s1;
	}

	@Override
	public void updateStock(Stock st) {
		// TODO Auto-generated method stub
		Session s = sessionFactory.getCurrentSession();
		Medicine m = (Medicine) s.get(Medicine.class, st.getMedid());
		m.setQuantity(st.getQuantity());
		s.update(m);
	}

	@Override
	public List<BranchAdminRequest> getAllBranchAdminRequest() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("From BranchAdminRequest").list();
	}

	@Override
	public List<MedicineRequest> getAllMedicineRequest() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("From MedicineRequest").list();
	}

	@Override
	public BranchAdminRequest getBranchAdminRequestById(Integer id) {
		// TODO Auto-generated method stub
		Session s = sessionFactory.getCurrentSession();
		BranchAdminRequest br = (BranchAdminRequest) s.get(BranchAdminRequest.class, id);
		return br;
	}

	@Override
	public void updateRequest(BranchAdminRequest br) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().update(br);
	}

	@Override
	public List<MedicineRequest> getMedicineRequestById(Integer id) {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("From MedicineRequest m where m.request_id=:uid")
				.setParameter("uid", id).list();
	}

	@Override
	public AdminLogin fetchAdminById(String adminId) {
		// TODO Auto-generated method stub
		return (AdminLogin) this.sessionFactory.getCurrentSession().get(AdminLogin.class, adminId);
	}

	@Override
	public void addRequest(Request rA) {
		// TODO Auto-generated method stub
		BranchAdminRequest b = new BranchAdminRequest();
		b.setRequest_id(rA.getRequest_id());
		b.setRequest_date(rA.getRequest_date());
		b.setOther_info(rA.getOther_info());
		b.setBranch_admin_id(rA.getBranch_admin_id());
		b.setAdmin_response(rA.getAdmin_response());
		b.setAdmin_remarks(rA.getAdmin_remarks());
		b.setAdmin_process_date(rA.getAdmin_process_date());
		MedicineRequest m = new MedicineRequest();
		m.setRequest_id(rA.getRequest_id());
		m.setQuantity(rA.getQuantity());
		m.setMedicine_id(rA.getMedicine_id());
		Session s = sessionFactory.getCurrentSession();
		s.save(b);
		s.save(m);
	}

	@Override
	public boolean checkEmail(String email) {
		// TODO Auto-generated method stub
		System.out.println("-------" + email);
		boolean bool;
		AdminLogin a = null;
		Session s = this.sessionFactory.openSession();
		
		
			String hql = "from AdminLogin l where l.email=:email";
			Query q = s.createQuery(hql);
			q.setParameter("email", email);
			a = (AdminLogin) q.uniqueResult();
			s.close();
		if (a==null)
			bool = true;
		else
			bool = false;
		System.out.println(bool);
		return bool;
		
	}

	
	

}
