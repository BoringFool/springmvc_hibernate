package com.zm.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zm.dao.IConpanyDAO;
import com.zm.model.Conpany;
import com.zm.service.IConpanyService;

@Service
@Transactional
public class ConpanyService implements IConpanyService {

	@Resource
	private IConpanyDAO conpanydao;
	
	public IConpanyDAO getConpanydao() {
		return conpanydao;
	}

	public void setConpanydao(IConpanyDAO conpanydao) {
		this.conpanydao = conpanydao;
	}

	@Override
	public void save(Conpany con) {
		conpanydao.add(con);
		
	}

}
