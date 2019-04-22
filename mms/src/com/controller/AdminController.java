package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.AdminLogin;
import com.entity.BranchAdmin;
import com.entity.BranchAdminRequest;
import com.entity.Login;
import com.entity.Medicine;
import com.entity.MedicineRequest;
import com.entity.Request;
import com.entity.Stock;
import com.service.AdminService;
import javax.swing.JOptionPane;
@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	@RequestMapping(value = "/login")
	public String login(ModelMap model) {
		model.addAttribute("login", new Login());
		return "login";
	}

	@RequestMapping(value = "/register")
	public String registration(ModelMap model) {
		model.addAttribute("admin", new AdminLogin());
		return "registration";
	}

	@RequestMapping(value = "/addAdmin", method = RequestMethod.POST)
	public String addEmployee(@ModelAttribute(value = "admin") AdminLogin admin) {
		int num=0;
		if(admin.getAdmin_id()==null)
		{
			Random r = new Random();
			num = r.nextInt(9000000)+1000000;
			admin.setAdmin_id(admin.getFirstname().substring(0, 3).toUpperCase()+String.valueOf(num));
		}	
		JOptionPane.showMessageDialog(null, "Your Details are submitted successfully!!!!!!!!!\nKindly Note Down Your User ID !!!!!!!!!!!!!!!!!!\n"+admin.getAdmin_id());
		adminService.addAdmin(admin);
		return "redirect:/login";
	}

	@RequestMapping(value = "/loginAdmin", method = RequestMethod.POST)
	public String loginAdmin(@ModelAttribute(value = "login") Login login, ModelMap model,HttpSession session) {
		String l = null;
		l = adminService.loginAdmin(login);
		if (l.equals("branchAdmin")) {
			AdminLogin u=adminService.fetchAdminById(login.getAdminId());
			session.setAttribute("loginCheck",u);
			model.addAttribute("branchAdmin", new BranchAdmin());
			model.addAttribute("branchAdminList", adminService.getAllBranchAdmin());
		}
		return l;
	}

	@RequestMapping(value = "/branchAdmin")
	public String branchAdmin(ModelMap model) {

		model.addAttribute("branchAdmin", new BranchAdmin());
		model.addAttribute("branchAdminList", adminService.getAllBranchAdmin());
		return "branchAdmin";
	}
	
	@RequestMapping(value="/branchAdminDetails/{branch_admin_id}")
	public String branchAdminDetails(@PathVariable("branch_admin_id")String id , ModelMap model){
		model.addAttribute("branchAdmin",adminService.getBranchAdminById(id));
		return "branchAdminDetails";
	}

	@RequestMapping(value = "/deleteBranchAdmin/{branch_admin_id}")
	public String deleteBranchAdmin(@PathVariable("branch_admin_id") String id) {
		adminService.removeBranchAdmin(id);
		return "redirect:/branchAdmin";
	}

	@RequestMapping(value = "/editBranchAdmin/{id}")
	public String editBranchAdmin(@PathVariable("id") String id, ModelMap model) {
		BranchAdmin bA = adminService.getBranchAdminById(id);
		model.addAttribute("branchAdminEdit", bA);
		return "branchAdminEdit";
	}

	@RequestMapping(value = "/branchAdminAddForm")
	public String addBranchAdmin(ModelMap model) {
		model.addAttribute("branchAdminAdd", new BranchAdmin());
		return "branchAdminAdd";
	}

	@RequestMapping(value = "/branchAdminSave", method = RequestMethod.POST)
	public String branchAdminSave(@ModelAttribute(value = "branchAdminAdd") BranchAdmin bA) {
		if(bA.getBranch_admin_id()==null)
		{
			Random r = new Random();
			int num = r.nextInt(9000000)+1000000;
			bA.setBranch_admin_id(bA.getFirstname().substring(0, 3).toUpperCase()+String.valueOf(num));
		}	
		adminService.addBranchAdmin(bA);
		return "redirect:/branchAdmin";
	}

	@RequestMapping(value = "/editBranchAdmin/branchAdminUpdate", method = RequestMethod.POST)
	public String branchAdminUpdate(@ModelAttribute(value = "branchAdminEdit") BranchAdmin bA) {
		adminService.updateBranchAdmin(bA);
		return "redirect:/branchAdmin";
	}

	@RequestMapping(value = "/medicine")
	public String medicine(ModelMap model) {

		model.addAttribute("medicine", new Medicine());
		model.addAttribute("medicineList", adminService.getAllMedicine());
		return "medicine";
	}

	@RequestMapping(value = "/deleteMedicine/{id}")
	public String deleteMedicine(@PathVariable("id") Integer id) {
		adminService.removeMedicine(id);
		return "redirect:/medicine";
	}

	@RequestMapping(value = "/editMedicine/{id}")
	public String editMedicine(@PathVariable("id") Integer id, ModelMap model) {
		Medicine m = adminService.getMedicineById(id);
		model.addAttribute("medicineEdit", m);
		return "medicineEdit";
	}

	@RequestMapping(value = "/medicineDetails/{id}")
	public String medicineDetails(@PathVariable("id") Integer id, ModelMap model) {
		Medicine m=adminService.getMedicineById(id);
		model.addAttribute("medicine",m);
		return "medicineDetails";
	}


	
	
	@RequestMapping(value = "/editMedicine/medicineUpdate", method = RequestMethod.POST)
	public String medicineUpdate(@ModelAttribute(value = "medicineEdit") Medicine m) {
		adminService.updateMedicine(m);
		return "redirect:/medicine";
	}

	@RequestMapping(value = "/medicineAddForm")
	public String addMedicine(ModelMap model) {
		model.addAttribute("medicineAdd", new Medicine());
		return "medicineAdd";
	}

	@RequestMapping(value = "/medicineSave", method = RequestMethod.POST)
	public String medicineSave(@ModelAttribute(value = "medicineAdd") Medicine m) {
		if(m.getMedicine_id()==null)
		{
			Random r = new Random();
			int num = r.nextInt(90000000)+10000000;
			m.setMedicine_id(num);
		}	
		adminService.addMedicine(m);
		return "redirect:/medicine";
	}

	@RequestMapping(value = "/stock")
	public String stock(ModelMap model) {

		model.addAttribute("stock", new Medicine());
		model.addAttribute("stockList", adminService.getAllMedicine());
		return "stock";
	}

	@RequestMapping(value = "/editStock/{id}")
	public String editStock(@PathVariable("id") Integer id, ModelMap model) {
		Stock st = adminService.getStockById(id);
		model.addAttribute("stockEdit", st);
		return "stockEdit";
	}

	@RequestMapping(value = "/editStock/stockUpdate", method = RequestMethod.POST)
	public String medicineUpdate(@ModelAttribute(value = "stockEdit") Stock st) {
		adminService.updateStock(st);
		return "redirect:/stock";
	}

	@RequestMapping(value = "/request")
	public String request(ModelMap model) {

		model.addAttribute("bareq", new BranchAdminRequest());
		model.addAttribute("medreq", new MedicineRequest());
		model.addAttribute("bareqList", adminService.getAllBranchAdminRequest());
		model.addAttribute("medreqList", adminService.getAllMedicineRequest());
		return "request";
	}
	@RequestMapping(value = "/editRequest/{id}")
	public String editRequest(@PathVariable("id") Integer id, ModelMap model) {
		BranchAdminRequest br = adminService.getBranchAdminRequestById(id);
		model.addAttribute("requestEdit", br);
		return "requestEdit";
	}
	@RequestMapping(value = "/editRequest/requestUpdate", method = RequestMethod.POST)
	public String requestUpdate(@ModelAttribute(value = "requestEdit") BranchAdminRequest br) {
		adminService.updateRequest(br);
		return "redirect:/request";
	}
	@RequestMapping(value = "/editMRequest/{id}")
	public String editMRequest(@PathVariable("id") Integer id, ModelMap model) {
		
		model.addAttribute("medreq", new MedicineRequest());
	model.addAttribute("medreqList", adminService.getMedicineRequestById(id));	
		return "medicineRequest";
	}
	@RequestMapping(value = "/medicineRequestAddForm")
	public String addMedicineRequest(ModelMap model) {
		List<BranchAdmin> l = adminService.getAllBranchAdmin();
		List<Medicine> l1 = adminService.getAllMedicine();
		Map<String,String> m = new HashMap<String,String>();
		Map<Integer,String> m1 = new HashMap<Integer,String>();
		for(BranchAdmin br : l){
			m.put(br.getBranch_admin_id(), br.getBranch_admin_id() +" , "+ br.getFirstname() + " " + br.getLastname());
		}
		for(Medicine mr : l1){
			m1.put(mr.getMedicine_id(), mr.getMedicine_id()+" ");
		}
		model.addAttribute("requestAdd", new Request());
		model.addAttribute("brlist",m);
		model.addAttribute("mlist",m1);
		return "medicineRequestAdd";
	}
	
	@RequestMapping(value = "/requestSave", method = RequestMethod.POST)
	public String mrdicineRequestSave(@ModelAttribute(value = "requestAdd") Request rA) {
		if(rA.getRequest_id()==null)
		{
			Random r = new Random();
			int num = r.nextInt(90000000)+10000000;
			rA.setRequest_id(num);
		}	
		adminService.addRequest(rA);
		return "redirect:/request";
	}

	@RequestMapping(value = "/checkEmail")
	@ResponseBody
	public String checkEmail(@RequestParam String email){
		System.out.println("in ajax controller");
		System.out.println(String.valueOf(adminService.checkEmail(email)));
	if(adminService.checkEmail(email))
		
	return "Email id is Available";
	else
	return "Email id is taken";
	}

	 @RequestMapping(value="/logout")
     public String logout(){
         return "denied";
     }
	 
	 @RequestMapping(value = "/ajaxUpdate", method = RequestMethod.POST)
		@ResponseBody
		public String updateStockAjax(@RequestParam("qid") int id, @RequestParam("qty") int qty, HttpServletRequest req,
				HttpServletResponse res) {
			boolean success = false;
			System.err.println("inside ajax action");
			System.err.println("id = " + id + " qty " + qty);
			try {
				Stock stock = adminService.getStockById(id);
				stock.setQuantity(qty);
				adminService.updateStock(stock);
				success = true;
			} catch (Exception ex) {
				ex.printStackTrace();
				success = false;
			}
			return String.valueOf(success);
		}



 }

