<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/top.jsp"%>
<style>
.btn1 {
	border: 1px solid skyblue;
	background-color: rgba(0, 0, 0, 0);
	color: skyblue;
	padding: 5px;
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	margin-left: 3px;
	margin-right: 0px;
}

.btn2 {
	border: 1px solid skyblue;
	background-color: rgba(0, 0, 0, 0);
	color: skyblue;
	padding: 5px;
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	margin-left: 0px;
	margin-right: 4px;
}

table {
	width: 1500px;
	border-collapse: separate;
	border-spacing: 1px;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	margin: 20px 10px;
}

table th {
	
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #efefef;
}

.box {
	width: 10%;
	padding: 10px;
}

table td {

	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
} 
#title{margin-bottom:20px; margin-top: 30px; color:#9BE8D8;} 
</style>
<div align=center>
    <h2 id=title>주문 목록</h2>
    <table border="1">
        <thead>
            <tr>
                <th>주문 번호</th>
                <th>유저 번호</th>
                <th>주문 정보</th>
                <th>가격</th>
                <th>주문 타입</th>
                <th>주문 포인트</th>
                <th>주문 컨텐츠</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${orderList}" var="order">
                <tr>
                    <td>${order.order_number}</td>
                    <td>${order.member_num}</td>
                    <td>${order.order_info}</td>
                    <td>${order.order_price}</td>
                    <td>${order.order_type}</td>
                    <td>${order.order_point}</td>
                    <td>${order.order_content}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<%@ include file="/WEB-INF/views/bottom.jsp"%>
