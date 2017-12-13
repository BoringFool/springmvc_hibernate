package com.zm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zm.dao.IConpanyDAO;
import com.zm.model.Conpany;
import com.zm.service.IConpanyService;

@Service("conpanyservice")
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

	public void save(Conpany con) {
		conpanydao.add(con);

	}

	public Conpany look(Long id) {
		return conpanydao.getById(id);

	}

	@Override
	public List<Conpany> findall() {
		return conpanydao.findall();
	}

	@Override
	public void delet(Long id) {
		conpanydao.delet(id);
		
	}

	@Override
	public void update(Conpany con) {
		conpanydao.update(con);
		
	}

	@Override
	public List<Conpany> getByIds(Long[] ids) {
		return conpanydao.getByIds(ids);
	}

}
