package pe.fap.hospital.citamedica.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pe.fap.hospital.citamedica.model.Account;
import pe.fap.hospital.citamedica.service.CitaService;
import pe.fap.hospital.citamedica.utils.AuthUtilImpl;

/**
 * Created by esilva on 20/07/2017.
 */
@Controller
@RequestMapping("/cita")
public class DemoController {

	private Logger _log = Logger.getLogger(DemoController.class);

	@Autowired
	private CitaService citaService;
	
	@RequestMapping("/list")
	public String UserList(Model model) {

		List<Account> accountList = this.citaService.findAccountsById(0);
		
        model.addAttribute("user", AuthUtilImpl.getUser());
        model.addAttribute("list", accountList);
		 
		return "itemsList";
	}

	@RequestMapping("/edit")
	public String Edit(Integer id, Model model) {

		Account account = this.citaService.findAccountById(id);
		
        model.addAttribute("user", AuthUtilImpl.getUser());
        model.addAttribute("item", account);
		
		return "editItem";
	}

	@RequestMapping(value = "/saveOrUpdate", method = RequestMethod.POST)
	public String saveOrUpdate(Account account) {

		System.out.println("account: " + account);
		this.citaService.updateAccount(account);

		return "redirect:list";
	}

	@RequestMapping("/deleteByID")
	public String deleteByID(Integer id) {

		this.citaService.deleteByPrimaryKey(id);
		
		return "redirect:list";
	}

	@RequestMapping("/add")
	public String Add(Model model) {
		
        model.addAttribute("user", AuthUtilImpl.getUser());
        
		return "AddUser";
	}

	@RequestMapping("/addUser")
	public String Insert(Account account) {
		
		try {
			
			this.citaService.insertAccount(account);
			
		} catch (Exception e) {
			
			_log.error("Surgio un error al agregar una cita", e);
		}
		
		return "redirect:list";
	}
	
}