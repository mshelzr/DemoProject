package pe.fap.hospital.citamedica.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import pe.fap.hospital.citamedica.model.Account;

@Repository("citaDAO")
public interface CitaDAO {

	public int addMoney(int userId, float money);
	
	public int minusMoney(int userId, float money);

//	@CacheEvict(value = {"indexCache"},allEntries = true,beforeInvocation = true)
	public int insertAccount(Account account);

//	@Cacheable(value = "indexCache",key = "'xmlgetAccountById'+#id")
	public Account getAccountById(int id);

//	@Cacheable(value = "indexCache",key = "'xmlfindAccountsById'+#id")
	public List<Account> findAccountsById(int id);
	
	public void updateAccount(Account account);
	
	public void deleteByPrimaryKey(int id);
}
