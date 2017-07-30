package pe.fap.hospital.citamedica.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import pe.fap.hospital.citamedica.dao.CitaDAO;
import pe.fap.hospital.citamedica.model.Account;
import pe.fap.hospital.citamedica.service.CitaService;

@Service("citaService")
public class CitaServiceImpl implements CitaService {

	Logger logger = LoggerFactory.getLogger(CitaServiceImpl.class);

	@Resource
	private CitaDAO citaDAO;

	public int insertAccount(Account account){
		return this.citaDAO.insertAccount(account);
	}

	public Account findAccountById(int i) {
		return this.citaDAO.getAccountById(i);
	}

	public List<Account> findAccountsById(int i) {
		List<Account> accounts = this.citaDAO.findAccountsById(i);
		return accounts;
	}
	
	public void updateAccount(Account account){
		this.citaDAO.updateAccount(account);
	}
	
	public void deleteByPrimaryKey(int id){
		this.citaDAO.deleteByPrimaryKey(id);
	}

}