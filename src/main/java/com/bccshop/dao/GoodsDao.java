package com.bccshop.dao;

import java.util.List;

import com.bccshop.po.Goods;
import com.bccshop.po.GoodsCategory;

public interface GoodsDao {
	public List<Goods> list();
	
	public int update(Goods goods);
	
	public int updateCategory(GoodsCategory goodsCategory);
	
	public Goods selectById(int goodsId);
	
	public int deleteGoods(int goodsId);
	
	public int deleteGoodsCategory(int goodsId);
	
	public List<Goods> findByName(String name);
	
	public Goods findId(Goods goods);
	
	public int insert(Goods goods);
	
	public int insertCategory(GoodsCategory goodsCategory);
}
