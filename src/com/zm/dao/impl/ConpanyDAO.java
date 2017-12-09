package com.zm.dao.impl;

import org.springframework.stereotype.Component;

import com.zm.dao.IConpanyDAO;
import com.zm.model.Conpany;

@Component("conpanydao")
public class ConpanyDAO extends BaseDAO<Conpany> implements IConpanyDAO {

}
