package com.ow;

public class RecommendPage {

	/**
	 * 总记录条数
	 */
	private  int _TotalRecordCount=0;
	/**
	 * 当前页面编号
	 */
	private int _CurPageNum=1;

	private int _startPageNum=1;
	
	private int _endPageNum=-1;

	/**
	 * 每个页面显示的记录条数
	 */
	public static final int PageRecord=3;
	
	/**
	 * 页面下最多显示的索引数
	 */
	public static final int MaxShowPageNum=3;
	
	
	public int getStartPageNum(){
		
		return _startPageNum;
	}
	
	public void setStartPageNum(int num){
		
		_startPageNum=num;
	}
	
	public int getEndPageNum(){
		
		return _endPageNum;
	}
	
	public void setEndPageNum(int num){
		
		_endPageNum=num;
	}
	
	/**
	 * 获取总页面数
	 * @return
	 */
	public int getPageCount(){
		
		if(getTotalRecordCount()%PageRecord==0){
			
			return getTotalRecordCount()/PageRecord;
		}
		
		return getTotalRecordCount()/PageRecord+1;
	}
	
	public int getTotalRecordCount(){
		
		return _TotalRecordCount;
	}
	
	public void setTotalRecordCount(int count){
		
		_TotalRecordCount=count;
	}

	public int getCurPageNum(){
		
		return _CurPageNum;
	}
	
	public void setCurPageNum(int num){
		
		_CurPageNum=num;
	}
}
