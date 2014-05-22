package com.ow.dto;

import java.io.Serializable;
import java.util.Date;

/**
 * 招聘信息类，描述招聘信息岗位、职责、要求、类型、招聘人数等信息
 * @author xuj
 *
 */
public class RecruitInfoDto  implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 5130353324326678713L;
	
	private int id;
	private String department;
	private String position;
	private String positionType;		//岗位类型，实习生还是什么
	private int positionNumber;	    //招聘人数
	private String positionStatement;  //岗位职责
	private String positionRequirement;  //岗位要求
	private int isValid;	    		//招聘是否还有效,0表示有效，1表示无效
	private Date createTime;
	private Date modifyTime;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getPositionType() {
		return positionType;
	}
	public void setPositionType(String positionType) {
		this.positionType = positionType;
	}
	public int getPositionNumber() {
		return positionNumber;
	}
	public void setPositionNumber(int positionNumber) {
		this.positionNumber = positionNumber;
	}
	public String getPositionStatement() {
		return positionStatement;
	}
	public void setPositionStatement(String positionStatement) {
		this.positionStatement = positionStatement;
	}
	public String getPositionRequirement() {
		return positionRequirement;
	}
	public void setPositionRequirement(String positionRequirement) {
		this.positionRequirement = positionRequirement;
	}
	public int getIsValid() {
		return isValid;
	}
	public void setIsValid(int isValid) {
		this.isValid = isValid;
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
}
