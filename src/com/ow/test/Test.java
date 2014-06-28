package com.ow.test;

import java.util.List;

import com.ow.DBDao;
import com.ow.dto.NewsInfoDto;
import com.ow.dto.RecommendInfoDto;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DBDao dbDao = new DBDao();
		dbDao.init();
//		List<NewsInfoDto> newsInfos=dbDao.getTheNewestFiveNewsInfo();
//		System.out.println(dbDao.getNewsInfoTotalNum());
//		System.out.println(dbDao.getNewsInfoByPage(1, 12).size());
//		System.out.println(dbDao.getNewsInfoById(2));
//		
//		System.out.println(dbDao.getViewPointTotalNum());
//		System.out.println(dbDao.getViewPointByPage(1, 12).size());
//		System.out.println(dbDao.getNewsInfoById(1));
		
//		List<RecommendInfoDto> recommendInfos=dbDao.getTheNewestFiveRecommendInfo();
//		System.out.println(recommendInfos.get(0).getCreateTime());
//		System.out.println(dbDao.getRecommendInfoTotalNum());
//		System.out.println(dbDao.getRecommendInfoByPage(1, 12).get(0).getCreateTime());
//		System.out.println(dbDao.getRecommendInfoByPage(1, 12).size());
//		System.out.println(dbDao.getRecommendInfoById(1).getContent());
//		System.out.println(dbDao.getRecommendInfoById(1).getAuthor());
		
		System.out.println(dbDao.getNewsInfoDto(1).getCreateTime());
		
		String investmentStrategy=dbDao.getConfigInfoByName("投资策略");
		System.out.println(investmentStrategy);
		String[] investmentStrategyParagraphs = investmentStrategy.split("\r\n|\n");
		for (String investmentStrategyParagraph:investmentStrategyParagraphs){
			System.out.println(">>>"+investmentStrategyParagraph);
		}
		dbDao.close();
	}

}
