package com.ow.dto;

public class RecommendInfo2Dto {

	private String _id;
	private String _title;
	private String _date;
	private String _info;
	private String _author;
	
	public String getId(){
		return _id;
	}
	
	public void setId(String id){
		
		_id=id;
	}
	
	public String getAuthor(){
		
		return _author;
	}
	
	public void setAuthor(String author){
		
		_author=author;
	}
	
	public String getTitle(){
		
		return _title;
	}
	
	public void setTitle(String title){
		
		_title=title;
	}
	
	public String getDate(){
		
		return _date;
	}
	
	public void setDate(String date){
		
		_date=date;
	}
	
	public String getInfo(){
		
		return _info;
	}
	
	public void setInfo(String info){
		
		_info=info;
	}

}
