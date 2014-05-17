package com.ow.dto;

/**
 * 控制页面显示数据
 * @author xuj
 *
 */
public class PageDto {
	
	/**
	 * 每个页面显示的最大记录条数
	 */
	public static final int MAX_RECORD_PER_PAGE=12;
	
	/**
	 * 页面下最多显示的页面索引数
	 */
	public static final int MAX_SHOW_PAGE_NUM=10;

	/**
	 * 本页面显示内容的总记录条数
	 */
	private  int totalRecordCount=0;
	/**
	 * 当前页面编号
	 */
	private int curPageNum=1;
	
	/**
	 * 获取总页面数
	 * @return
	 */
	public int getPageCount(){
		
		if(getTotalRecordCount()%MAX_RECORD_PER_PAGE==0){
			
			return getTotalRecordCount()/MAX_RECORD_PER_PAGE;
		}
		
		return getTotalRecordCount()/MAX_RECORD_PER_PAGE+1;
	}
	
	public int getTotalRecordCount(){
		
		return totalRecordCount;
	}
	
	public void setTotalRecordCount(int count){
		
		totalRecordCount=count;
	}

	public int getCurPageNum(){
		
		return curPageNum;
	}
	
	public void setCurPageNum(int num){
		
		curPageNum=num;
	}
}
