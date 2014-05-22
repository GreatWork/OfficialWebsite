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
		List<NewsInfoDto> newsInfos=dbDao.getTheNewestFiveNewsInfo();
		List<RecommendInfoDto> recommendInfos=dbDao.getTheNewestFiveRecommendInfo();
		System.out.println(dbDao.getNewsInfoTotalNum());
		dbDao.close();
	}

}
