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

import com.ow.dto.InvestManagerDto;
import com.ow.dto.NewsInfoDto;
import com.ow.dto.ProductInfoDto;
import com.ow.dto.ProductManagerDto;
import com.ow.dto.RecommendInfo2Dto;
import com.ow.dto.RecommendInfoDto;
import com.ow.dto.ViewPointDto;

public class DBDao {

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


/*	public void init() {
		logger.debug("DBDao:: init -----------begin ");

		try {
		
			String dbDriver = "com.mysql.jdbc.Driver";
			String dbUrl = "jdbc:mysql://localhost:8888/owdb";
			String dbUser = "cht";
			String dbPwd = "cht";

			Class.forName(dbDriver);
			conn = java.sql.DriverManager.getConnection(dbUrl, dbUser, dbPwd);

		} catch (Exception e) {
			logger.error(e, e);
		}

		logger.debug("DBDao:: init -----------end ");
	}*/
	
	public void init() {
		logger.debug("DBDao:: init -----------begin ");

		try {
			Properties props = new Properties();
			InputStream in = new BufferedInputStream(new FileInputStream(
					"config.properties"));
			props.load(in);

			String dbDriver = props.getProperty("database.driverClassName");
			String dbUrl = props.getProperty("database.url");
			String dbUser = props.getProperty("database.username");
			String dbPwd = props.getProperty("database.password");

			Class.forName(dbDriver);
			conn = java.sql.DriverManager.getConnection(dbUrl, dbUser, dbPwd);

		} catch (Exception e) {
			logger.error(e, e);
		}

		logger.debug("DBDao:: init -----------end ");
	}
	
	public void close() {
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

	/**
	 * ----------------------------------------- 
	 * RecommendInfoDto操作
	 * -----------------------------------------
	 */
	
	/**
	 * 获取recommendinfo表的记录
	 * @param recId				记录ID	
	 * @param maxShowPageNum	当前页面最大显示个数
	 * @return
	 */
	public List<RecommendInfo2Dto> getRecommendInfoDtos(int recId,
			int maxShowPageNum) {

		PreparedStatement stmt = null;
		ResultSet rs = null;
		List<RecommendInfo2Dto> recommendInfoDtos = null;
		try {

			stmt = conn
					.prepareStatement("select recId,recTitle,recTime from recommendinfo where recId >= ? limit ?");

			stmt.setInt(1, recId);
			stmt.setInt(2, maxShowPageNum);

			rs = stmt.executeQuery();

			String title = "";
			String dateString = "";
			String id = "";

			recommendInfoDtos = new ArrayList<RecommendInfo2Dto>();
			
			while (rs.next()) {

				id = rs.getInt(1) + "";
				title = rs.getString(2);
				dateString = rs.getDate(3).toString();

				RecommendInfo2Dto recommendInfoDto = new RecommendInfo2Dto();
				recommendInfoDto.setId(id);
				recommendInfoDto.setDate(dateString);
				recommendInfoDto.setTitle(title);

				recommendInfoDtos.add(recommendInfoDto);

			}

			if (stmt != null)
				stmt.close();
			if (rs != null)
				rs.close();

		} catch (Exception e) {
			// TODO: handle exception
			
			logger.debug(e.getMessage());
		}
		
		return recommendInfoDtos;
	}
	
	public RecommendInfo2Dto getRecommendInfoDto(int recId) {

		PreparedStatement stmt = null;
		ResultSet rs = null;
		RecommendInfo2Dto recommendInfoDto = null;
		try {

			stmt = conn
					.prepareStatement("select recAuthor,recTitle,recInfo,recTime from recommendinfo where recId = ? ");

			stmt.setInt(1, recId);

			rs = stmt.executeQuery();

			String title = "";
			String dateString = "";
			String author = "";
			String infoString="";

			if(rs.next()) {

				recommendInfoDto=new RecommendInfo2Dto();
				
				author = rs.getString(1);
				title = rs.getString(2);
				infoString=rs.getString(3);
				dateString = rs.getDate(4).toString();

				recommendInfoDto.setAuthor(author);
				recommendInfoDto.setDate(dateString);
				recommendInfoDto.setTitle(title);
				recommendInfoDto.setInfo(infoString);

			}

			if (stmt != null)
				stmt.close();
			if (rs != null)
				rs.close();

		} catch (Exception e) {
			// TODO: handle exception
			
			logger.debug(e.getMessage());
		}
		
		return recommendInfoDto;
	}
	
	/**
	 * 获取RecommendInfo表的记录总数
	 * @return
	 */
	public int getTotalRecommendCount(){
		
		PreparedStatement stmt = null;
		ResultSet rs = null;
		int count=0;
		
		try {

			stmt = conn
					.prepareStatement("select count(1) from recommendinfo");

			rs = stmt.executeQuery();

			if (rs.next()) {

				count=rs.getInt(1);
			}

			if (stmt != null)
				stmt.close();
			if (rs != null)
				rs.close();

		} catch (Exception e) {
			// TODO: handle exception
			
			logger.debug(e.getMessage());
		}
		
		return count;
	}
	
	/**
	 * ----------------------------------------- ProductInfo操作
	 * -----------------------------------------
	 */
	public List<ProductInfoDto> getProductInfos(){
		
		List<ProductInfoDto> productInfos=null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {

			stmt = conn
					.prepareStatement("select proName,investManager,proInfo from ProductInfo");

			rs = stmt.executeQuery();

			String proName = "";
			String investManager = "";
			String proInfo = "";

			productInfos = new ArrayList<ProductInfoDto>();
			
			while (rs.next()) {

				proName = rs.getString(1);
				investManager = rs.getString(2);
				proInfo = rs.getString(3);

				ProductInfoDto proInfoDto = new ProductInfoDto();
				
				proInfoDto.setName(proName);
				proInfoDto.setInvestManager(investManager);
				proInfoDto.setInfo(proInfo);

				productInfos.add(proInfoDto);

			}

			if (stmt != null)
				stmt.close();
			if (rs != null)
				rs.close();

		} catch (Exception e) {
			// TODO: handle exception
			
			logger.debug(e.getMessage());
		}
		
		return productInfos;
		
	}
	
	public InvestManagerDto getInvestManagerDto(String mgrName){
		


		PreparedStatement stmt = null;
		ResultSet rs = null;
		InvestManagerDto investManagerDto = null;
		try {

			stmt = conn
					.prepareStatement("select mgrName,mgrInfo from InvestManager where mgrName = ? ");

			stmt.setString(1, mgrName);

			rs = stmt.executeQuery();

			String name = "";
			String info="";

			if(rs.next()) {

				investManagerDto=new InvestManagerDto();				
				name = rs.getString(1);
				info = rs.getString(2);
				investManagerDto.setName(name);
				investManagerDto.setInfo(info);
			}

			if (stmt != null)
				stmt.close();
			if (rs != null)
				rs.close();

		} catch (Exception e) {
			// TODO: handle exception
			
			logger.debug(e.getMessage());
		}
		
		return investManagerDto;
	
	}
	
	public List<ProductManagerDto> getProductManagerDtos(){
		
		List<ProductManagerDto> productManagerDtos=null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {

			stmt = conn
					.prepareStatement("select mgrName,phoneNumber from ProductManager");

			rs = stmt.executeQuery();

			String mgrName = "";
			String phoneNumber = "";

			productManagerDtos = new ArrayList<ProductManagerDto>();
			
			while (rs.next()) {

				mgrName = rs.getString(1);
				phoneNumber = rs.getString(2);

				ProductManagerDto productManagerDto = new ProductManagerDto();
				productManagerDto.setName(mgrName);
				productManagerDto.setPhoneNumber(phoneNumber);
				productManagerDtos.add(productManagerDto);
			}

			if (stmt != null)
				stmt.close();
			if (rs != null)
				rs.close();

		} catch (Exception e) {
			// TODO: handle exception
			
			logger.debug(e.getMessage());
		}
		
		return productManagerDtos;
		
	}
	
	/**
	 * 根据产品经理名称获取产品名称
	 * @param proMgrName
	 * @return
	 */
	public List<String> getProductNames(String proMgrName){
		
		PreparedStatement stmt = null;
		ResultSet rs = null;
		List<String> proNames=null;
		
		try {

			stmt = conn
					.prepareStatement("select proName from ProductInfo where productManager = ? ");

			stmt.setString(1, proMgrName);
			
			rs = stmt.executeQuery();
			
			String name="";

			proNames=new ArrayList<String>();
			
			while (rs.next()) {

				name=rs.getString(1);
				proNames.add(name);
				
			}

			if (stmt != null)
				stmt.close();
			if (rs != null)
				rs.close();

		} catch (Exception e) {
			// TODO: handle exception
			logger.debug(e.getMessage());
		}
		
		return proNames;
		
	}

	/**
	 * ----------------------------------------- NewsInfo操作
	 * -----------------------------------------
	 */

	/*
	 * 根据页面控制数返回记录
	 */
	public List<NewsInfoDto> getNewsInfoByPage(int pageIndex, int pageSize) {
		logger.debug("DBDao:: getNewsInfoByPage -----------begin ");
		logger.debug("pageIndex=" + pageIndex + ",pageSize=" + pageSize);
		List<NewsInfoDto> newsInfos = new ArrayList<NewsInfoDto>();
		try {
			int firstIndex = (pageIndex - 1) * pageSize;
			PreparedStatement pstmt = conn
					.prepareStatement("select id,title,creatTime from NewsInfo order by creatTime desc limit ?,?");

			pstmt.setInt(1, firstIndex);
			pstmt.setInt(2, pageSize);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				NewsInfoDto newsInfo = new NewsInfoDto();
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

	/*
	 * 返回最新的五条记录
	 */
	public List<NewsInfoDto> getTheNewestFiveNewsInfo() {
		logger.debug("DBDao:: getTheNewestFiveNewsInfo -----------begin ");
		List<NewsInfoDto> newsInfos = new ArrayList<NewsInfoDto>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt
					.executeQuery("select id,title,creatTime from NewsInfo order by creatTime desc limit 5");

			if (rs.next()) {
				NewsInfoDto newsInfo = new NewsInfoDto();
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

	/*
	 * 返回记录根据id
	 */
	public NewsInfoDto getNewsInfoById(int id) {
		logger.debug("DBDao:: getNewsInfoById -----------begin ");
		logger.debug("id = " + id);
		NewsInfoDto newsInfo = new NewsInfoDto();
		try {
			PreparedStatement pstmt = conn
					.prepareStatement("select title,content,creatTime from NewsInfo where id = ?");
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
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

	/**
	 * ----------------------------------------- ViewPoint操作
	 * -----------------------------------------
	 */
	public int getViewPointTotalNum() {
		logger.debug("DBDao:: getViewPointTotalNum -----------begin ");
		int totalNum = 0;
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select count(1) from ViewPoint");
			if (rs.next()) {
				totalNum = rs.getInt(1);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			logger.error(e, e);
		}
		logger.debug("DBDao:: getViewPointTotalNum totalNum=" + totalNum
				+ "-----------end ");
		return totalNum;
	}

	public List<ViewPointDto> getViewPointByPage(int pageIndex, int pageSize) {
		logger.debug("DBDao:: getViewPointByPage -----------begin ");
		logger.debug("pageIndex=" + pageIndex + ",pageSize=" + pageSize);
		List<ViewPointDto> viewPoints = new ArrayList<ViewPointDto>();
		try {
			// 本页起始行
			int firstIndex = (pageIndex - 1) * pageSize;
			PreparedStatement pstmt = conn
					.prepareStatement("select id,title,creatTime from ViewPoint order by creatTime desc limit ?,?");
			pstmt.setInt(1, firstIndex);
			pstmt.setInt(2, pageSize);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				ViewPointDto viewPoint = new ViewPointDto();
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

	public List<ViewPointDto> getTheNewestFiveViewPoint() {
		logger.debug("DBDao:: getTheNewestFiveViewPoint -----------begin ");
		List<ViewPointDto> viewPoints = new ArrayList<ViewPointDto>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt
					.executeQuery("select id,content,creatTime from ViewPoint order by creatTime desc limit 5");

			while (rs.next()) {
				ViewPointDto viewPoint = new ViewPointDto();
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

	public ViewPointDto getViewPointById(int id) {
		logger.debug("DBDao:: getViewPointById -----------begin ");
		logger.debug("id = " + id);
		ViewPointDto viewPoint = new ViewPointDto();
		try {
			PreparedStatement pstmt = conn
					.prepareStatement("select title,content,creatTime from ViewPoint where id = ?");
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
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
	
	/**-----------------------------------------
	 * RecommendInfo操作
	 * -----------------------------------------
	 */
	public int getRecommendInfoTotalNum(){
		logger.debug("DBDao:: getRecommendInfoTotalNum -----------begin ");
		int totalNum=0;
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select count(1) from RecommendInfo");
			if (rs.next()){
				totalNum = rs.getInt(1);
			}
		} catch (SQLException e) {
			logger.error(e, e);
		} 
		logger.debug("DBDao:: getRecommendInfoTotalNum totalNum="+totalNum+"-----------end ");
		return totalNum;
	}
	
	/*根据页面控制数返回记录 
	 */
	public List<RecommendInfoDto> getRecommendInfoByPage(int pageIndex,int pageSize){
		logger.debug("DBDao:: getRecommendInfoByPage -----------begin ");
		logger.debug("pageIndex="+pageIndex+",pageSize="+pageSize);
		List<RecommendInfoDto> recommendInfos=new ArrayList<RecommendInfoDto>();
		try {
			int firstIndex=(pageIndex-1)*pageSize;
			PreparedStatement pstmt = conn.prepareStatement("select id,title,creatTime from RecommendInfo order by creatTime desc limit ?,?");	
			
			pstmt.setInt(1, firstIndex);
			pstmt.setInt(2, pageSize);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()){
				RecommendInfoDto recommendInfo=new RecommendInfoDto();
				recommendInfo.setId(rs.getInt(1));
				recommendInfo.setTitle(rs.getString(2));
				recommendInfo.setCreateTime(rs.getDate(3));
				
				recommendInfos.add(recommendInfo);
			}			
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			logger.error(e, e);
		} 
		logger.debug("DBDao:: getRecommendInfoByPage -----------end ");
		return recommendInfos;
	}
	
	/*返回最新的五条记录 
	 */
	public List<RecommendInfoDto> getTheNewestFiveRecommendInfo(){
		logger.debug("DBDao:: getTheNewestFiveRecommendInfo -----------begin ");
		List<RecommendInfoDto> RecommendInfos=new ArrayList<RecommendInfoDto>();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select id,title,creatTime from RecommendInfo order by creatTime desc limit 5");
			
			if (rs.next()){
				RecommendInfoDto RecommendInfo=new RecommendInfoDto();
				RecommendInfo.setId(rs.getInt(1));
				RecommendInfo.setTitle(rs.getString(2));
				RecommendInfo.setCreateTime(rs.getDate(3));
				
				RecommendInfos.add(RecommendInfo);
			}			
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			logger.error(e, e);
		} 
		logger.debug("DBDao:: getTheNewestFiveRecommendInfo -----------end ");
		return RecommendInfos;
	}
	
	/*返回记录根据id 
	 */
	public RecommendInfoDto getRecommendInfoById(int id){
		logger.debug("DBDao:: getRecommendInfoById -----------begin ");
		logger.debug("id = "+id);
		RecommendInfoDto RecommendInfo=new RecommendInfoDto();
		try {
			PreparedStatement pstmt = conn.prepareStatement("select title,content,creatTime from RecommendInfo where id = ?");				
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()){
				RecommendInfo.setTitle(rs.getString(1));
				RecommendInfo.setContent(rs.getString(2));
				RecommendInfo.setCreateTime(rs.getDate(3));				
			}			
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			logger.error(e, e);
		} 
		logger.debug("DBDao:: getTheNewestFiveRecommendInfo -----------end ");
		return RecommendInfo;
	}
}
