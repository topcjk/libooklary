package com.itbank.libook.service.impl;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.libook.service.OrderService;
import com.itbank.libook.service.dao.OrderDAO;
import com.itbank.libook.vo.BasketVO;
import com.itbank.libook.vo.MemberVO;
import com.itbank.libook.vo.OrderVO;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDAO orderDAO;

	@Override
	public int insertOrder(OrderVO orderVO) throws IOException {
		return orderDAO.insertOrder(orderVO);
	}

	@Override
	public int deleteBasket(String member_num) {

		return orderDAO.deleteBasket(member_num);
	}

	@Override
	public int updateBookQrt(ArrayList<BasketVO> listBasket) {

		for (BasketVO basketVO : listBasket) {
			orderDAO.updateBookQrt(basketVO);
		}

		return 1;
	}

	@Override
	public MemberVO getOneMember(String member_num) {
		return orderDAO.getOneMember(member_num);
	}

	@Override
	public int updateMemberPoint(String member_num, int saving_point) {
		orderDAO.updateMemberPoint(member_num, saving_point);
		return 1;
	}

	// 우림
	public ArrayList<OrderVO> orderList(OrderVO orderVO) {
		return orderDAO.orderList(orderVO);
	}
	@Override
    public ArrayList<OrderVO> everyOrder() {
        return orderDAO.everyOrder();
    }
    
    @Override
    public void orderChange(OrderVO orderVO) {
        orderDAO.orderChange(orderVO);
    }
}