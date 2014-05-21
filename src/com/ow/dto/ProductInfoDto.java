package com.ow.dto;

/**
 * 表示产品信息的类
 * @author cht
 *
 */
public class ProductInfoDto {

	public String getName(){
		
		return _name;
	}
	
	public void setName(String name){
		
		_name=name;
	}
	
	public String getInvestManager(){
		
		return _investManager;
	}
	
	public void setInvestManager(String investManager){
		
		_investManager=investManager;
	}
	
	public String getProductManager(){
		
		return _productManager;
	}
	
	public void setProductManager(String productManager){
		
		_productManager=productManager;
	}
	
	public String getInfo(){
		
		return _info;
	}
	
	public void setInfo(String info){
	
		_info=info;
	}
	
	private String _name;
	private String _investManager;
	private String _productManager;
	private String _info;

}
