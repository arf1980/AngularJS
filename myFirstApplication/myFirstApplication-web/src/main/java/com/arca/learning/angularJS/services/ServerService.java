package com.arca.learning.angularJS.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.arca.learning.angularJS.dao.ServerDao;
import com.arca.learning.angularJS.dto.Server;

@Service
public class ServerService {

	@Autowired private ServerDao dao;
	
	public List<Server> getServers(){
		return dao.getServers();
	}
}
