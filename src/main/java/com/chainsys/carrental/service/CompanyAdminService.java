package com.chainsys.carrental.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.carrental.model.CompanyAdmin;
import com.chainsys.carrental.repository.CompanyAdminRepository;

@Service
public class CompanyAdminService {
	@Autowired
	private CompanyAdminRepository  companyAdminRepository;

	public List<CompanyAdmin> getCompanyAdmins() {
		return companyAdminRepository.findAll();
	}

	public CompanyAdmin save(CompanyAdmin cr) {

		return companyAdminRepository.save(cr);
	}

	public CompanyAdmin findById(int id) {
		return companyAdminRepository.findById(id);
	}

//	@Transactional
	public void deleteById(int id) {
		companyAdminRepository.deleteById(id);
	}
	public CompanyAdmin getUserIdAndUserPassword(int userId,String userPassword) {
		return companyAdminRepository.findByUserIdAndUserPassword(userId, userPassword);    //login method 
	}
}
