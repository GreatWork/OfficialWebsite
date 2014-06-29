package com.ow;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.ow.dto.InvestManagerDto;
import com.ow.dto.NewsInfoDto;
import com.ow.dto.ProductInfoDto;
import com.ow.dto.ProductManagerDto;
import com.ow.dto.RecommendInfoDto;
import com.ow.dto.RecruitInfoDto;

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
			String dbDriver = "com.mysql.jdbc.Driver";
			String dbUrl = "jdbc:mysql://127.0.0.1:3306/owdb?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull";
			String dbUser = "anhong";
			String dbPwd = "anhongmgr";

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
	 * NewsInfoDto操作
	 * -----------------------------------------
	 */
	
	/**
	 * 获取NewsInfo表的记录
	 * @param recId				记录ID	
	 * @param maxShowPageNum	当前页面最大显示个数
	 * @return
	 */
	public List<NewsInfoDto> getNewsInfoDtos(int id,
			int maxShowPageNum) {

		PreparedStatement stmt = null;
		ResultSet rs = null;
		List<NewsInfoDto> newsInfoDtos = null;
		try {

			stmt = conn
					.prepareStatement("select id,title,creatTime from NewsInfo where id >= ? limit ?");

			stmt.setInt(1, id);
			stmt.setInt(2, maxShowPageNum);

			rs = stmt.executeQuery();

			String title = "";
			Date date=null;
			int newsId = 0;

			newsInfoDtos = new ArrayList<NewsInfoDto>();
			
			while (rs.next()) {

				newsId = rs.getInt(1);
				title = rs.getString(2);
				date = rs.getDate(3);

				NewsInfoDto newsInfoDto = new NewsInfoDto();
				newsInfoDto.setId(newsId);
				newsInfoDto.setCreateTime(date);
				newsInfoDto.setTitle(title);

				newsInfoDtos.add(newsInfoDto);

			}

			if (stmt != null)
				stmt.close();
			if (rs != null)
				rs.close();

		} catch (Exception e) {
			// TODO: handle exception
			
			logger.debug(e.getMessage());
		}
		
		return newsInfoDtos;
	}
	
	public NewsInfoDto getNewsInfoDto(int id) {

		PreparedStatement stmt = null;
		ResultSet rs = null;
		NewsInfoDto newsInfoDto = null;
		try {

			stmt = conn
					.prepareStatement("select author,title,content,creatTime from NewsInfo where id = ? ");

			stmt.setInt(1, id);

			rs = stmt.executeQuery();

			String title = "";
			Date date=null;
			String author = "";
			String infoString="";

			if(rs.next()) {

				newsInfoDto=new NewsInfoDto();
				
				author = rs.getString(1);
				title = rs.getString(2);
				infoString=rs.getString(3);
				date = new Date(rs.getTimestamp(4).getTime());

				newsInfoDto.setAuthor(author);
				newsInfoDto.setCreateTime(date);
				newsInfoDto.setTitle(title);
				newsInfoDto.setContent(infoString);

			}

			if (stmt != null)
				stmt.close();
			if (rs != null)
				rs.close();

		} catch (Exception e) {
			// TODO: handle exception
			
			logger.debug(e.getMessage());
		}
		
		return newsInfoDto;
	}
	
	/**
	 * 获取NewsInfo表的记录总数
	 * @return
	 */
	public int getTotalNewsCount(){
		
		PreparedStatement stmt = null;
		ResultSet rs = null;
		int count=0;
		
		try {

			stmt = conn
					.prepareStatement("select count(1) from NewsInfo");

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
	
	public List<InvestManagerDto> getInvestManagers(){
		logger.debug("DBDao:: getInvestManagers -----------begin ");
		List<InvestManagerDto> investManagers=new ArrayList<InvestManagerDto>();		
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select mgrName,mgrInfo from InvestManager");
			
			while (rs.next()){
				InvestManagerDto investManager=new InvestManagerDto(); 
				investManager.setName(rs.getString(1));
				investManager.setInfo(rs.getString(2));
				
				investManagers.add(investManager);
			}			
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			logger.error(e, e);
		} 
		logger.debug("DBDao:: getInvestManagers -----------end ");
		return investManagers;		
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
	public int getNewsInfoTotalNum() {
		logger.debug("DBDao:: getNewsInfoTotalNum -----------begin ");
		int totalNum = 0;
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select count(1) from NewsInfo");
			if (rs.next()) {
				totalNum = rs.getInt(1);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			logger.error(e, e);
		}
		logger.debug("DBDao:: getNewsInfoTotalNum totalNum=" + totalNum
				+ "-----------end ");
		return totalNum;
	}
	
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
			ResultSet rs = stmt.executeQuery("select id,title,creatTime from NewsInfo order by creatTime desc limit 5");

			while (rs.next()) {
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
					.prepareStatement("select author,title,content,creatTime from NewsInfo where id = ?");
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				newsInfo.setAuthor(rs.getString(1));
				newsInfo.setTitle(rs.getString(2));
				newsInfo.setContent(rs.getString(3));
				newsInfo.setCreateTime(new Date(rs.getTimestamp(4).getTime()));
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
			PreparedStatement pstmt = conn.prepareStatement("select recId,recTitle,recTime from RecommendInfo order by recTime desc limit ?,?");	
			
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
			ResultSet rs = stmt.executeQuery("select recId,recTitle,recTime from RecommendInfo order by recTime desc limit 5");
			
			while (rs.next()){
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
		RecommendInfoDto recommendInfo=new RecommendInfoDto();
		try {
			PreparedStatement pstmt = conn.prepareStatement("select recAuthor,recTitle,recInfo,recTime from RecommendInfo where recId = ?");				
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()){
				recommendInfo.setAuthor(rs.getString(1));
				recommendInfo.setTitle(rs.getString(2));
				recommendInfo.setContent(rs.getString(3));
				recommendInfo.setCreateTime(new Date(rs.getTimestamp(4).getTime()));				
			}			
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			logger.error(e, e);
		} 
		logger.debug("DBDao:: getTheNewestFiveRecommendInfo -----------end ");
		return recommendInfo;
	}
	
	public List<RecruitInfoDto> getVaildRecruitInfoDtos(){
		logger.debug("DBDao:: getVaildRecruitInfoDtos -----------begin ");
		List<RecruitInfoDto> recruitInfos=new ArrayList<RecruitInfoDto>();
		
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select id,department,position,positionType,positionNumber,positionStatement,positionRequirement,creatTime from RecruitInfo while isValid=1");
			
			while (rs.next()){
				RecruitInfoDto recruitInfo=new RecruitInfoDto(); 
				recruitInfo.setId(rs.getInt(1));
				recruitInfo.setDepartment(rs.getString(2));
				recruitInfo.setPosition(rs.getString(3));
				recruitInfo.setPositionType(rs.getString(4));				
				recruitInfo.setPositionNumber(rs.getInt(5));
				recruitInfo.setPositionStatement(rs.getString(6));
				recruitInfo.setPositionRequirement(rs.getString(7));
				recruitInfo.setCreateTime(rs.getDate(8));
				
				recruitInfos.add(recruitInfo);
			}			
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			logger.error(e, e);
		} 
		logger.debug("DBDao:: getVaildRecruitInfoDtos -----------end ");
		return recruitInfos;
	}
	
	public String getConfigInfoByName(String name){
		logger.debug("DBDao:: getConfigInfoByName -----------begin ");
		logger.debug("name = "+name);
		String detail="";
		try {
			PreparedStatement pstmt = conn.prepareStatement("select VVALUE from CONFIG where NNAME = ?");				
			pstmt.setString(1, name);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()){
				detail=rs.getString(1);
			}			
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			logger.error(e, e);
		} 
		logger.debug("DBDao:: getConfigInfoByName -----------end ");
		return detail;
	}
}
