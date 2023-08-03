package com.itbank.libook.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import com.itbank.libook.vo.BasketVO;
import com.itbank.libook.vo.MemberVO;
import com.itbank.libook.vo.OrderVO;

public interface OrderService {

	public int insertOrder(OrderVO orderVO) throws IOException;

	public int deleteBasket(String member_num);

	public int updateBookQrt(ArrayList<BasketVO> listBasket);

	public int updateMemberPoint(String member_num, int saving_point);

	public MemberVO getOneMember(String member_num);

	// 우림
	public ArrayList<OrderVO> orderList(OrderVO orderVO);

	ArrayList<OrderVO> everyOrder() throws Exception;

	void orderChange(OrderVO orderVO) throws Exception;
}
