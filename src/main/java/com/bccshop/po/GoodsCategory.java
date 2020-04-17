package com.bccshop.po;

public class GoodsCategory {
private int categoryId;//类别ID
private String categoryName;//类别名称
public GoodsCategory() {
	super();
	// TODO Auto-generated constructor stub
}
public GoodsCategory(int categoryId, String categoryName) {
	super();
	this.categoryId = categoryId;
	this.categoryName = categoryName;
}
public int getCategoryId() {
	return categoryId;
}
public void setCategoryId(int categoryId) {
	this.categoryId = categoryId;
}
public String getCategoryName() {
	return categoryName;
}
public void setCategoryName(String categoryName) {
	this.categoryName = categoryName;
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + categoryId;
	result = prime * result + ((categoryName == null) ? 0 : categoryName.hashCode());
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
	GoodsCategory other = (GoodsCategory) obj;
	if (categoryId != other.categoryId)
		return false;
	if (categoryName == null) {
		if (other.categoryName != null)
			return false;
	} else if (!categoryName.equals(other.categoryName))
		return false;
	return true;
}
@Override
public String toString() {
	return "GoodsCategory [categoryId=" + categoryId + ", categoryName=" + categoryName + "]";
}

}
