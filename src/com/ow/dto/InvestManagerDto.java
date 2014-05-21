package com.ow.dto;

/**
 * 表示投资经理的类
 * @author cht
 *
 */
public class InvestManagerDto {
	
	public String getName(){
		
		return _name;
	}
	
	public void setName(String name){
		
		_name=name;
	}
	
	public String getInfo(){
		
		return _info;
	}
	
	public void setInfo(String info){
		
		_info=info;
	}
	
	private String _name;
	private String _info;
}
