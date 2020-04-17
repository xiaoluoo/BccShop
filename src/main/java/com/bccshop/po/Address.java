package com.bccshop.po;

public class Address {
private int a_id;
private int a_name;
public Address() {
	super();
	// TODO Auto-generated constructor stub
}
public Address(int a_id, int a_name) {
	super();
	this.a_id = a_id;
	this.a_name = a_name;
}
public int getA_id() {
	return a_id;
}
public void setA_id(int a_id) {
	this.a_id = a_id;
}
public int getA_name() {
	return a_name;
}
public void setA_name(int a_name) {
	this.a_name = a_name;
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + a_id;
	result = prime * result + a_name;
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
	Address other = (Address) obj;
	if (a_id != other.a_id)
		return false;
	if (a_name != other.a_name)
		return false;
	return true;
}
@Override
public String toString() {
	return "Address [a_id=" + a_id + ", a_name=" + a_name + "]";
}

}
