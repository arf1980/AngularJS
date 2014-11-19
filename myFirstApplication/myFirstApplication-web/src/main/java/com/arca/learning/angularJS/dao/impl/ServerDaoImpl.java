package com.arca.learning.angularJS.dao.impl;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;

import com.arca.learning.angularJS.dao.BaseDao;
import com.arca.learning.angularJS.dao.ServerDao;
import com.arca.learning.angularJS.dto.Server;

public class ServerDaoImpl extends BaseDao implements ServerDao {
	
	private final static String SQL = "SELECT * FROM SERVER";
	private final static String SQL_BY_ID = SQL + " WHERE ID = ? ";


	public Server getServer(int id) {
		return getJdbcTemplate().queryForObject(SQL_BY_ID, new Object[]{id}, Server.class);
	}

	public void insertServer(Server server) {
		// TODO Auto-generated method stub

	}

	public void updateServer(Server server) {
		// TODO Auto-generated method stub

	}

	public void deleteServer(int id) {
		// TODO Auto-generated method stub

	}

	public List<Server> getServers(int applId) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Server> getServers() {
		return getJdbcTemplate().query(SQL, new BeanPropertyRowMapper<Server>(Server.class));
	}

}
