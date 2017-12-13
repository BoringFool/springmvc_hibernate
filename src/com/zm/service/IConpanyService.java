package com.zm.service;

import java.util.List;

import com.zm.model.Conpany;

public interface IConpanyService {

	public void save(Conpany con);
	public Conpany look(Long id);
	public void delet(Long id);
	public void update(Conpany con);
	public List<Conpany> getByIds(Long[] ids);
	public List<Conpany> findall();
}
