package com.ow.dto;

/**
 * 表示产品经理的类
 * @author cht
 *
 */
public class ProductManagerDto {

	public String getName(){
		
		return _name;
	}
	
	public void setName(String name){
		
		_name=name;
	}
	
	public String getPhoneNumber(){
		
		return _phoneNumber;
	}
	
	public void setPhoneNumber(String phoneNumber){
		
		_phoneNumber=phoneNumber;
	}
	
	private String _name;
	private String _phoneNumber;
}
