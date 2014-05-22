package com.ow.dto;

import java.io.Serializable;
import java.util.Date;

/**
 * 配置信息，如公司地址、公司理念、公司荣誉等公共信息
 * @author xuj
 *
 */
public class ConfigInfoDto  implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 546303019534504284L;
	/**
	 * 
	 */	
	private int id;
	private String name;
	private String detail;
	private Date createTime;
	private Date modifyTime;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getModifyTime() {
		return modifyTime;
	}
	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	

}
