package com.lx.service;

import java.util.List;

import com.lx.beans.kec;
import com.lx.beans.student;

public interface Testservice {

	List<student> getlist();

	int getcount();

	student huoquid(int id);

	void addjia(kec k);

	List<kec> getkec();

}
