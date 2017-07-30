package pe.fap.hospital.citamedica.service;

import java.util.List;

import pe.fap.hospital.citamedica.model.Account;

public interface CitaService {

	
	public int insertAccount(Account account) throws Exception;

	public Account findAccountById(int i);
	
	public List<Account> findAccountsById(int i);
	
	public void updateAccount(Account account);
	
	public void deleteByPrimaryKey(int id);
}
