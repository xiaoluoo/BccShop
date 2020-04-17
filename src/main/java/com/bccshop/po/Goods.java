package com.bccshop.po;

import java.io.Serializable;
import java.util.List;

public class Goods implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private int goodsId;//商品ID
	private String goodsName;//商品名称
	private String goodsPhoto;//商品图片
	private Float originalPrice;//商品原价
	private Float goodsPrice;//商品价格
	private String goodsDescribe;//商品描述
	private List<GoodsCategory> goodsCategory;//商品类别
	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Goods(int goodsId, String goodsName, String goodsPhoto, Float originalPrice, Float goodsPrice,
			String goodsDescribe, List<GoodsCategory> goodsCategory) {
		super();
		this.goodsId = goodsId;
		this.goodsName = goodsName;
		this.goodsPhoto = goodsPhoto;
		this.originalPrice = originalPrice;
		this.goodsPrice = goodsPrice;
		this.goodsDescribe = goodsDescribe;
		this.goodsCategory = goodsCategory;
	}
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getGoodsPhoto() {
		return goodsPhoto;
	}
	public void setGoodsPhoto(String goodsPhoto) {
		this.goodsPhoto = goodsPhoto;
	}
	public Float getOriginalPrice() {
		return originalPrice;
	}
	public void setOriginalPrice(Float originalPrice) {
		this.originalPrice = originalPrice;
	}
	public Float getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(Float goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public String getGoodsDescribe() {
		return goodsDescribe;
	}
	public void setGoodsDescribe(String goodsDescribe) {
		this.goodsDescribe = goodsDescribe;
	}
	public List<GoodsCategory> getGoodsCategory() {
		return goodsCategory;
	}
	public void setGoodsCategory(List<GoodsCategory> goodsCategory) {
		this.goodsCategory = goodsCategory;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((goodsCategory == null) ? 0 : goodsCategory.hashCode());
		result = prime * result + ((goodsDescribe == null) ? 0 : goodsDescribe.hashCode());
		result = prime * result + goodsId;
		result = prime * result + ((goodsName == null) ? 0 : goodsName.hashCode());
		result = prime * result + ((goodsPhoto == null) ? 0 : goodsPhoto.hashCode());
		result = prime * result + ((goodsPrice == null) ? 0 : goodsPrice.hashCode());
		result = prime * result + ((originalPrice == null) ? 0 : originalPrice.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Goods other = (Goods) obj;
		if (goodsCategory == null) {
			if (other.goodsCategory != null)
				return false;
		} else if (!goodsCategory.equals(other.goodsCategory))
			return false;
		if (goodsDescribe == null) {
			if (other.goodsDescribe != null)
				return false;
		} else if (!goodsDescribe.equals(other.goodsDescribe))
			return false;
		if (goodsId != other.goodsId)
			return false;
		if (goodsName == null) {
			if (other.goodsName != null)
				return false;
		} else if (!goodsName.equals(other.goodsName))
			return false;
		if (goodsPhoto == null) {
			if (other.goodsPhoto != null)
				return false;
		} else if (!goodsPhoto.equals(other.goodsPhoto))
			return false;
		if (goodsPrice == null) {
			if (other.goodsPrice != null)
				return false;
		} else if (!goodsPrice.equals(other.goodsPrice))
			return false;
		if (originalPrice == null) {
			if (other.originalPrice != null)
				return false;
		} else if (!originalPrice.equals(other.originalPrice))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Goods [goodsId=" + goodsId + ", goodsName=" + goodsName + ", goodsPhoto=" + goodsPhoto
				+ ", originalPrice=" + originalPrice + ", goodsPrice=" + goodsPrice + ", goodsDescribe=" + goodsDescribe
				+ ", goodsCategory=" + goodsCategory + "]";
	}
	
	
}
