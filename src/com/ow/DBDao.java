package com.ow;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.apache.log4j.Logger;

public class DBDao{

	private static final Logger logger = Logger.getLogger("com.ow.DBDao");

	private Connection conn = null;

	/* 时间格式化 */
	public String formatTime(final Date time) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if (time == null) {
			return null;
		}
		String result = sdf.format(time);
		return result;
	}

	public void init(){
		logger.debug("DBDao:: init -----------begin ");
	
		try {
			Properties props=new Properties();  
			InputStream in = new BufferedInputStream (new FileInputStream("config.properties")); 
			props.load(in);  
			
			String dbDriver = props.getProperty("database.driverClassName");
			String dbUrl = props.getProperty("database.url");
			String dbUser  = props.getProperty("database.username");
			String dbPwd  = props.getProperty("database.password");
			
			Class.forName(dbDriver);
			conn = java.sql.DriverManager.getConnection(dbUrl, dbUser, dbPwd);	
			
		} catch (Exception e) {
			logger.error(e, e);
		} 

		logger.debug("DBDao:: init -----------end ");
	}

	
	
	
}
