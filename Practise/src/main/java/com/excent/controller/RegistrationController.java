package com.excent.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.excent.entity.RegistrationEntity;
import com.excent.repository.RegistrationRepository;


@Controller
public class RegistrationController {
	@RequestMapping("/CardDetailsForm")
	
	public String carddetailsform()
	{
		return "static/js/CardDetailsForm.jsp";
		
	}
@RequestMapping("/listpage")
	
	public String listpage()
	{
		return "static/js/ListPage.jsp";
		
	}
@RequestMapping("/single_id")
@ResponseBody
public List<RegistrationEntity> userpass(@RequestParam("id")long id){
	
	return (List<RegistrationEntity>)regrepo.findById(id);
}


@RequestMapping("/updateform")

public String updateform()
{
	return "static/js/updateform.jsp";
	
}
	@RequestMapping("/carddetails_save")
	@ResponseBody
	public String save(@RequestParam("card_holder_name")String choldername,
			@RequestParam("account_no")long accnum,
			@RequestParam("pincode")long pincode,
			@RequestParam("credit_card_no")long ccno,
			@RequestParam("cvv")int cvv)
	{
		
		System.out.println("IN controller");
		System.out.println(choldername);
		System.out.println(accnum);
		System.out.println(pincode);
		System.out.println(ccno);
		System.out.println(cvv);
		
		RegistrationEntity re=new RegistrationEntity(accnum,choldername,pincode,ccno,cvv);
		regrepo.save(re);
		
		
return "Registred";	
}
	
	// update 
			@RequestMapping("/data_upadate")
			@ResponseBody
			public String update(@RequestParam("editid")long id,
					@RequestParam("card_holder_name")String choldername,
					@RequestParam("account_no")long accno,
					@RequestParam("pincode")long pincode,
					@RequestParam("credit_card_no")long ccno,
					@RequestParam("cvv")int cvv) 
			{
				
				System.out.println("IN controller");
				System.out.println(id);
				System.out.println(choldername);
				System.out.println(accno);
				System.out.println(pincode);
				System.out.println(ccno);
		
				
				RegistrationEntity up= regrepo.findOne(id);
				up.setAcc_card_holder_name(choldername);
				up.setAcc_no(ccno);
				up.setPincode(pincode);
				up.setCredit_card_no(ccno);
				up.setCvv(cvv);
				System.out.println("updated");
				regrepo.save(up);
				
		return "Updated";	
		}
			@RequestMapping("/data_delete")
			@ResponseBody
			public String delete(@RequestParam("id")long id){
				RegistrationEntity delete= regrepo.findOne(id);
				regrepo.delete(id);
				return "delete";
			}
	@RequestMapping("/carduserlist")
	@ResponseBody
	public List<RegistrationEntity> all() {
		return (List<RegistrationEntity>) regrepo.findAll();
	}
	@Autowired
	private RegistrationRepository regrepo;
	
}
