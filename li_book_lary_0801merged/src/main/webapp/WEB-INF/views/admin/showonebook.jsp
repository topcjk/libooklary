<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- index.jsp -->
<style>
input[type=text]{
	
  font-size: 15px;
  border: 0;
  border-radius: 15px;
  outline: none;
  padding-left: 10px;
  background-color: rgb(233, 233, 233);
}
</style>
<%@ include file="/WEB-INF/views/top.jsp"%>
	<h1 align="center">모든책</h1>
	<form action="updatebook.do" method="post">
	<table border="2" align="center" style="width:80%;">
	
	  <%-- <c:forEach var="imsi" items="${blist}">
		  <tr align="center">
			<td>isbn번호</td><td><input type="text" style="color:white;" style="background-color:gray;" name="book_isbn"  value="${imsi.book_isbn}" readonly></td>
		  </tr>
		
		<tr align="center">
			<td>도서명</td><td><input type="text" style="color:white;" style="background-color:gray;" name="book_name" value="${imsi.book_name}" readonly></td>
		  </tr>
		  
		  <tr align="center">
			<td>저자</td><td><input type="text" style="color:white;" style="background-color:gray;" name="book_writer" value="${imsi.book_writer}" readonly></td>
		  </tr>
		  
		 <tr align="center">
			<td>가격</td><td><input type="text" style="color:white;" style="background-color:gray;" name="book_price" value="${imsi.book_price}" readonly></td>
		  </tr>
		  
		  <tr align="center">
			<td>재고</td><td><input type="text" name="book_qry" value="${imsi.book_qry}"></td>
		  </tr>
			<tr>
				<td><input type="submit" value="업데이트">
			</tr>
			
			
			<td>${imsi.book_img}</td>
			<td>${imsi.BOOK_CATEGORY}</td>
			
			<td>${imsi.BOOK_POINT}</td>
		  
	  </c:forEach> --%>
	  	
		  <tr align="center">
			<td>isbn번호</td><td><input type="text"  name="book_isbn"  value="${a}" readonly></td>
		  </tr>
		
		<tr align="center">
			<td>도서명</td><td><input type="text"  name="book_name" value="${b}" readonly></td>
		  </tr>
		  
		  <tr align="center">
			<td>저자</td><td><input type="text" name="book_writer" value="${c}" readonly></td>
		  </tr>
		  
		 <tr align="center">
			<td>가격</td><td><input type="text"  name="book_price" value="${d}" readonly></td>
		  </tr>
		  
		  <tr align="center">
			<td>재고</td><td><input type="text" name="book_qry" value="${e}"></td>
		  </tr>
			<tr>
				<td><input type="submit" value="업데이트">
			</tr>
			
			
			<%-- <td>${imsi.book_img}</td>
			<td>${imsi.BOOK_CATEGORY}</td> --%>
			
			<%-- <td>${imsi.BOOK_POINT}</td> --%>
	</tbody>
	</table>
	</form>

<%@ include file="/WEB-INF/views/bottom.jsp"%>

<!-- private String isbn;
	private String name;
	private String author;
	private int price;
	private String pub;
	private String sub;
	private String cate;
	private int qry; -->
