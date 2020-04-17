package com.bccshop.service.impl;

import java.util.List;

import com.bccshop.dao.GoodsDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bccshop.po.Goods;
import com.bccshop.po.GoodsCategory;
import com.bccshop.service.GoodsService;

@Service("goodsService")
@Transactional
public class GoodsServiceImpl implements GoodsService{
	@Autowired
	private GoodsDao dao;
	
	@Override
	public List<Goods> findByName(String name) {
		// TODO Auto-generated method stub
		
		List<Goods> goods = (List<Goods>) this.dao.findByName(name);
		
		System.out.println(goods);
		return goods;
	}

	@Override
	public int insert(Goods goods) {
		// TODO Auto-generated method stub
		int row = this.dao.insert(goods);
		return row;
	}

	@Override
	public Goods findId(Goods goods) {
		// TODO Auto-generated method stub
		Goods g =this.dao.findId(goods);
		return g;
	}

	@Override
	public int insertCategory(GoodsCategory goodsCategory) {
		// TODO Auto-generated method stub
		int row = this.dao.insertCategory(goodsCategory);
		return row;
	}
	//显示
	@Override
	public List<Goods> list() {
		// TODO Auto-generated method stub
		List<Goods> goods = (List<Goods>) this.dao.list();
		
		System.out.println(goods);
		return goods;
	}

	@Override
	public int deleteGoods(int goodsId) {
		// TODO Auto-generated method stub
		int row = this.dao.deleteGoods(goodsId);
		return row;
	}

	@Override
	public int deleteGoodsCategory(int goodsId) {
		// TODO Auto-generated method stub
		int row = this.dao.deleteGoodsCategory(goodsId);
		return row;
	}

	@Override
	public Goods selectById(int goodsId) {
		// TODO Auto-generated method stub
		Goods g =this.dao.selectById(goodsId);
		return g;
	}

	@Override
	public int update(Goods goods) {
		// TODO Auto-generated method stub
		int row =this.dao.update(goods);
		return row;
	}

	@Override
	public int updateCategory(GoodsCategory goodsCategory) {
		// TODO Auto-generated method stub
		return 0;
	}


}
