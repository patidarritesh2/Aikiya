package com.pz.aikiya.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

import com.pzip.common.service.DBCommonService;
import com.pzip.common.service.EncryptDecryptService;

public class DBCommandServiceImpl  implements DBCommonService {

	  private final DataSource dataSource;

	    @Autowired
	    public DBCommandServiceImpl(DataSource dataSource) {
	        this.dataSource = dataSource;
	    }
	@Override
	public Connection connect(String arg0, String arg1) {
		 Connection connection = null;
	        try {
	            connection = dataSource.getConnection();
	            System.out.println("Connection established successfully!");
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	
		return connection;
	}
	
	

}
