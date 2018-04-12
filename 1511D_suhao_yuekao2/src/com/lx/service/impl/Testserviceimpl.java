package com.lx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lx.beans.kec;
import com.lx.beans.student;
import com.lx.dao.GoodsDao;
import com.lx.service.Testservice;

@Service
public class Testserviceimpl implements Testservice{
	
	@Autowired
	private GoodsDao dao;

	@Override
	public List<student> getlist() {
		// TODO Auto-generated method stub
		return dao.getlist();
	}

	@Override
	public int getcount() {
		// TODO Auto-generated method stub
		return dao.getcount();
	}

	@Override
	public student huoquid(int id) {
		// TODO Auto-generated method stub
		return dao.huoquid(id);
	}

	@Override
	public void addjia(kec k) {
		// TODO Auto-generated method stub
		dao.addjia(k);
	}

	@Override
	public List<kec> getkec() {
		// TODO Auto-generated method stub
		return dao.getkec();
	}
	
}
