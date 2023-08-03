package com.itbank.libook.service.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.itbank.libook.vo.BasketVO;
import com.itbank.libook.vo.MemberVO;
import com.itbank.libook.vo.OrderVO;

public interface OrderDAO {

	public int insertOrder(OrderVO orderVO);

	public int deleteBasket(String member_num);

	public void updateBookQrt(BasketVO basketVO);

	public void updateMemberPoint(@Param("member_num") String member_num, @Param("saving_point") int saving_point);

	public MemberVO getOneMember(@Param("member_num") String member_num);

	// 우림
	// 회원 번호를 기준으로 해당 회원의 모든 주문 목록을 가져오는 메서드
	public ArrayList<OrderVO> orderList(OrderVO orderVO);

	ArrayList<OrderVO> everyOrder();

	void orderChange(OrderVO orderVO);
}
