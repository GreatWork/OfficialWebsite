package com.ow;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import org.apache.log4j.Logger;

import com.ow.dto.NewsInfoDto;
import com.ow.dto.ViewPointDto;

public class DBDao{

	private static final Logger logger = Logger.getLogger("com.ow.DBDao");

	private Connection conn = null;

	/* 时间格式化 */
	public String formatTime(final Date time) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
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
	
	public void close(){
		logger.debug("DBDao:: close -----------begin ");
		try {
			if (conn != null && !conn.isClosed()) {
				conn.close();
			}
		} catch (Exception e) {
			logger.error(e, e);
		}
		logger.debug("DBDao:: close -----------end ");
	}

	/**-----------------------------------------
	 * NewsInfo操作
	 * -----------------------------------------
	 */
	
	public int getNewsInfoTotalNum(){
		logger.debug("DBDao:: getNewsInfoTotalNum -----------begin ");
		int totalNum=0;
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select count(1) from NewsInfo");
			if (rs.next()){
				totalNum = rs.getInt(1);
			}
		} catch (SQLException e) {
			logger.error(e, e);
		} 
		logger.debug("DBDao:: getNewsInfoTotalNum totalNum="+totalNum+"-----------end ");
		return totalNum;
	}
	
	/*根据页面控制数返回记录 
	 */
	public List<NewsInfoDto> getNewsInfoByPage(int pageIndex,int pageSize){
		logger.debug("DBDao:: getNewsInfoByPage -----------begin ");
		logger.debug("pageIndex="+pageIndex+",pageSize="+pageSize);
		List<NewsInfoDto> newsInfos=new ArrayList<NewsInfoDto>();
		try {
			int firstIndex=(pageIndex-1)*pageSize;
			PreparedStatement pstmt = conn.prepareStatement("select id,title,creatTime from NewsInfo order by creatTime desc limit ?,?");	
			
			pstmt.setInt(1, firstIndex);
			pstmt.setInt(2, pageSize);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()){
				NewsInfoDto newsInfo=new NewsInfoDto();
				newsInfo.setId(rs.getInt(1));
				newsInfo.setTitle(rs.getString(2));
				newsInfo.setCreateTime(rs.getDate(3));
				
				newsInfos.add(newsInfo);
			}			
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			logger.error(e, e);
		} 
		logger.debug("DBDao:: getNewsInfoByPage -----------end ");
		return newsInfos;
	}
	
	/*返回最新的五条记录 
	 */
	public List<NewsInfoDto> getTheNewestFiveNewsInfo(){
		logger.debug("DBDao:: getTheNewestFiveNewsInfo -----------begin ");
		List<NewsInfoDto> newsInfos=new ArrayList<NewsInfoDto>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select id,title,creatTime from NewsInfo order by creatTime desc limit 5");
			
			if (rs.next()){
				NewsInfoDto newsInfo=new NewsInfoDto();
				newsInfo.setId(rs.getInt(1));
				newsInfo.setTitle(rs.getString(2));
				newsInfo.setCreateTime(rs.getDate(3));
				
				newsInfos.add(newsInfo);
			}			
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			logger.error(e, e);
		} 
		logger.debug("DBDao:: getTheNewestFiveNewsInfo -----------end ");
		return newsInfos;
	}
	
	/*返回记录根据id 
	 */
	public NewsInfoDto getNewsInfoById(int id){
		logger.debug("DBDao:: getNewsInfoById -----------begin ");
		logger.debug("id = "+id);
		NewsInfoDto newsInfo=new NewsInfoDto();
		try {
			PreparedStatement pstmt = conn.prepareStatement("select title,content,creatTime from NewsInfo where id = ?");				
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()){
				newsInfo.setTitle(rs.getString(1));
				newsInfo.setContent(rs.getString(2));
				newsInfo.setCreateTime(rs.getDate(3));				
			}			
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			logger.error(e, e);
		} 
		logger.debug("DBDao:: getTheNewestFiveNewsInfo -----------end ");
		return newsInfo;
	}
	
	/**-----------------------------------------
	 * ViewPoint操作
	 * -----------------------------------------
	 */
	public int getViewPointTotalNum(){
		logger.debug("DBDao:: getViewPointTotalNum -----------begin ");
		int totalNum=0;
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select count(1) from ViewPoint");
			if (rs.next()){
				totalNum = rs.getInt(1);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			logger.error(e, e);
		}
		logger.debug("DBDao:: getViewPointTotalNum totalNum="+totalNum+"-----------end ");
		return totalNum;		
	}
	
	public List<ViewPointDto> getViewPointByPage(int pageIndex,int pageSize){
		logger.debug("DBDao:: getViewPointByPage -----------begin ");
		logger.debug("pageIndex="+pageIndex+",pageSize="+pageSize);
		List<ViewPointDto> viewPoints=new ArrayList<ViewPointDto>();
		try {
			//本页起始行
			int firstIndex=(pageIndex-1)*pageSize;
			PreparedStatement pstmt = conn.prepareStatement("select id,title,creatTime from ViewPoint order by creatTime desc limit ?,?");				
			pstmt.setInt(1, firstIndex);
			pstmt.setInt(2, pageSize);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()){
				ViewPointDto viewPoint=new ViewPointDto();
				viewPoint.setId(rs.getInt(1));
				viewPoint.setTitle(rs.getString(2));
				viewPoint.setCreateTime(rs.getDate(3));
				
				viewPoints.add(viewPoint);
			}			
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			logger.error(e, e);
		} 
		logger.debug("DBDao:: getViewPointByPage -----------end ");
		return viewPoints;
	}

	
	public List<ViewPointDto> getTheNewestFiveViewPoint(){
		logger.debug("DBDao:: getTheNewestFiveViewPoint -----------begin ");
		List<ViewPointDto> viewPoints=new ArrayList<ViewPointDto>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select id,content,creatTime from ViewPoint order by creatTime desc limit 5");
			
			while (rs.next()){
				ViewPointDto viewPoint=new ViewPointDto();
				viewPoint.setId(rs.getInt(1));
				viewPoint.setContent(rs.getString(2));
				viewPoint.setCreateTime(rs.getDate(3));
				
				viewPoints.add(viewPoint);
			}			
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			logger.error(e, e);
		} 
		logger.debug("DBDao:: getTheNewestFiveViewPoint -----------end ");
		return viewPoints;
		
	}
	
	public ViewPointDto getViewPointById(int id){
		logger.debug("DBDao:: getViewPointById -----------begin ");
		logger.debug("id = "+id);
		ViewPointDto viewPoint=new ViewPointDto();
		try {
			PreparedStatement pstmt = conn.prepareStatement("select title,content,creatTime from ViewPoint where id = ?");				
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()){
				viewPoint.setTitle(rs.getString(1));
				viewPoint.setContent(rs.getString(2));
				viewPoint.setCreateTime(rs.getDate(3));				
			}			
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			logger.error(e, e);
		} 
		logger.debug("DBDao:: getViewPointById -----------end ");
		return viewPoint;
	}
}
