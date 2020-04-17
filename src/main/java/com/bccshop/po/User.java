package com.bccshop.po;

import java.io.Serializable;
import java.util.List;

public class User implements Serializable{
	
private static final long serialVersionUID = 1L;

private int id;//用户ID
private String userName;//用户名
private String password;//密码
private String identity;//身份
private String sex;//性别
private String realName;//真实姓名
private String idCard;//身份证号码
private String mobile;//手机号码
private List<Address> address;//收货地址
public User() {
	super();
	// TODO Auto-generated constructor stub
}
public User(int id, String userName, String password, String identity, String sex, String realName, String idCard,
		String mobile, List<Address> address) {
	super();
	this.id = id;
	this.userName = userName;
	this.password = password;
	this.identity = identity;
	this.sex = sex;
	this.realName = realName;
	this.idCard = idCard;
	this.mobile = mobile;
	this.address = address;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getIdentity() {
	return identity;
}
public void setIdentity(String identity) {
	this.identity = identity;
}
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
public String getRealName() {
	return realName;
}
public void setRealName(String realName) {
	this.realName = realName;
}
public String getIdCard() {
	return idCard;
}
public void setIdCard(String idCard) {
	this.idCard = idCard;
}
public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
public List<Address> getAddress() {
	return address;
}
public void setAddress(List<Address> address) {
	this.address = address;
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + ((address == null) ? 0 : address.hashCode());
	result = prime * result + id;
	result = prime * result + ((idCard == null) ? 0 : idCard.hashCode());
	result = prime * result + ((identity == null) ? 0 : identity.hashCode());
	result = prime * result + ((mobile == null) ? 0 : mobile.hashCode());
	result = prime * result + ((password == null) ? 0 : password.hashCode());
	result = prime * result + ((realName == null) ? 0 : realName.hashCode());
	result = prime * result + ((sex == null) ? 0 : sex.hashCode());
	result = prime * result + ((userName == null) ? 0 : userName.hashCode());
	return result;
}
@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	User other = (User) obj;
	if (address == null) {
		if (other.address != null)
			return false;
	} else if (!address.equals(other.address))
		return false;
	if (id != other.id)
		return false;
	if (idCard == null) {
		if (other.idCard != null)
			return false;
	} else if (!idCard.equals(other.idCard))
		return false;
	if (identity == null) {
		if (other.identity != null)
			return false;
	} else if (!identity.equals(other.identity))
		return false;
	if (mobile == null) {
		if (other.mobile != null)
			return false;
	} else if (!mobile.equals(other.mobile))
		return false;
	if (password == null) {
		if (other.password != null)
			return false;
	} else if (!password.equals(other.password))
		return false;
	if (realName == null) {
		if (other.realName != null)
			return false;
	} else if (!realName.equals(other.realName))
		return false;
	if (sex == null) {
		if (other.sex != null)
			return false;
	} else if (!sex.equals(other.sex))
		return false;
	if (userName == null) {
		if (other.userName != null)
			return false;
	} else if (!userName.equals(other.userName))
		return false;
	return true;
}
@Override
public String toString() {
	return "User [id=" + id + ", userName=" + userName + ", password=" + password + ", identity=" + identity + ", sex="
			+ sex + ", realName=" + realName + ", idCard=" + idCard + ", mobile=" + mobile + ", address=" + address
			+ "]";
}

}