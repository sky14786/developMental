package com.kh.workman.collabo.model.service;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.workman.collabo.model.dao.CollaboDao;
import com.kh.workman.collabo.model.vo.CollaboCard;
import com.kh.workman.collabo.model.vo.CollaboList;
import com.kh.workman.collabo.model.vo.DataPacket;

@Service
public class CollaboServiceImpl implements CollaboService {
	@Autowired
	CollaboDao dao;

	@Autowired
	SqlSessionTemplate session;

	@Override
	public int createList(DataPacket receive) {
		return dao.createList(session, receive);
	}

	@Override
	public CollaboList selectCollaboListOne(int target) {
		return dao.selectCollaboListOne(session, target);
	}

	@Override
	public List<HashMap> participation(int collaboNo) {
		return dao.participation(session, collaboNo);
	}

	@Override
	public int createCard(DataPacket receive) {
		return dao.createCard(session, receive);
	}

	@Override
	public List<CollaboList> selectCollaboLists(int collaboNo) {
		return dao.selectCollaboLists(session, collaboNo);
	}

	@Override
	public List<CollaboCard> selectCollaboCards(int collaboNo) {
		return dao.selectCollaboCards(session, collaboNo);
	}

	@Override
	public int moveCard(DataPacket receive) {
		return dao.moveCard(session, receive);
	}
}
