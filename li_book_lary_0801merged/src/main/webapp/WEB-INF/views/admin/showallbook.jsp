<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/top.jsp"%>
<!-- index.jsp -->

<style>
details > summary {
  padding: 4px;
  left:47%;
  background-color: #eeeeee;
  border: none;
  box-shadow: 1px 1px 2px #bbbbbb;
  cursor: pointer;
}

details > p {
  background-color: #eeeeee;
  padding: 4px;
  margin: 0;
  box-shadow: 1px 1px 2px #bbbbbb;
}
form{
	
        top: 40px;
}
a {

display: block;

text-align: center;

}
div.range-slider {
  position: absolute;
  margin:0 auto;
  float: left;
  text-align: center;
}
div.range-slider input[type=range] {
  pointer-events: none;
  position: absolute;
  -webkit-appearance: none;
  -webkit-tap-highlight-color: rgba(255, 255, 255, 0);
  border: none;
  border-radius: 14px;
  background: #F1EFEF;
  box-shadow: inset 0 1px 0 0 #cdc6c6, inset 0 -1px 0 0 #d9d4d4;
  -webkit-box-shadow: inset 0 1px 0 0 #cdc6c6, inset 0 -1px 0 0 #d9d4d4;
  overflow: hidden;
  left: 0;
  top: 50px;
  width: 300px;
  outline: none;
  height: 20px;
  margin: 0;
  padding: 0;
}
div.range-slider input[type=range]::-webkit-slider-thumb {
  pointer-events: all;
  position: relative;
  z-index: 1;
  outline: 0;
  -webkit-appearance: none;
  width: 20px;
  height: 20px;
  border: none;
  border-radius: 14px;
  background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #dad8da), color-stop(100%, #413F41));
  /* android <= 2.2 */
  background-image: -webkit-linear-gradient(top, #dad8da 0, #413F41 100%);
  /* older mobile safari and android > 2.2 */
  background-image: linear-gradient(to bottom, #dad8da 0, #413F41 100%);
  /* W3C */
}
div.range-slider input[type=range]::-moz-range-thumb {
  pointer-events: all;
  position: relative;
  z-index: 10;
  -moz-appearance: none;
  width: 20px;
  height: 20px;
  border: none;
  border-radius: 14px;
  background-image: linear-gradient(to bottom, #dad8da 0, #413F41 100%);
  /* W3C */
}
div.range-slider input[type=range]::-ms-thumb {
  pointer-events: all;
  position: relative;
  z-index: 10;
  -ms-appearance: none;
  width: 20px;
  height: 20px;
  border-radius: 14px;
  border: 0;
  background-image: linear-gradient(to bottom, #dad8da 0, #413F41 100%);
  /* W3C */
}
div.range-slider input[type=range]::-moz-range-track {
  position: relative;
  z-index: -1;
  background-color: black;
  border: 0;
}
div.range-slider input[type=range]:last-of-type::-moz-range-track {
  -moz-appearance: none;
  background: none transparent;
  border: 0;
}
div.range-slider input[type=range]::-moz-focus-outer {
  border: 0;
}
</style>

	<h1 align="center">모든책</h1>
	
	
	<!-- <script type="text/javascript" src="sc.js"></script> -->
	<script>
	function getVals(){
		  // Get slider values
		  var parent = this.parentNode;
		  var slides = parent.getElementsByTagName("input");
		    var slide1 = parseFloat( slides[0].value );
		    var slide2 = parseFloat( slides[1].value );
		  // Neither slider will clip the other, so make sure we determine which is larger
		  if( slide1 > slide2 ){ var tmp = slide2; slide2 = slide1; slide1 = tmp; }
		  
		  var displayElement = parent.getElementsByClassName("rangeValues")[0];
		      displayElement.innerHTML = "최소" + slide1 + "won - 최대" + slide2 + "won";
		}

		window.onload = function(){
		  // Initialize Sliders
		  var sliderdivs = document.getElementsByClassName("range-slider");
		      for( var x = 0; x < sliderdivs.length; x++ ){
		        var sliders = sliderdivs[x].getElementsByTagName("input");
		        for( var y = 0; y < sliders.length; y++ ){
		          if( sliders[y].type ==="range" ){
		            sliders[y].oninput = getVals;
		        
		            sliders[y].oninput();
		          }
		        }
		      }
		}
	</script>
	
	<details>
    <summary>검색기능 켜기</summary>
    <p style="text-align:center">
	    <form action="testsc.do" method="post">
			<div class="range-slider">
			 	<span class="rangeValues"></span>
			 	<input value="15500" min="8000" max="38000" step="500" type="range" name="sc1">
			  	<input value="30500" min="8000" max="38000" step="500" type="range" name="sc2">
			</div>
			<br><br><br><br>
			<input type="submit" value="가격대 검색">
		</form>
		<br>
	
		<form action="searchbook.do" method="post" align="center">
			도서명 검색<br>
			<input type="text" name="book_name">
			<input type="submit" value="검색하기">
		</form>
		<br>
		<form action="searchwriter.do" method="post" align="center">
			작가명 검색<br>
			<input type="text" name="book_writer">
			<input type="submit" value="검색하기">
		</form>
    </p>
	</details>
	
	
	<br><br><br><br>
	<br>
	<table border="2" align="center" style="width:80%;">
	<thead>	
		<tr>
			<td><a href="orderbynumdesc.do?">번호▼</a></td>
			<td><a href="orderbynumasc.do?">번호▲</a></td>
			<td><a href="orderbynamedesc.do">도서명▼</a></td>
			<td><a href="orderbynameasc.do">도서명▲</a></td>
			<td colspan="2"><a href="#">작가</a></td>
			<td><a href="orderbypricedesc.do">가격▼</a></td>
			<td><a href="orederbypriceacs.do">가격▲</a></td>
			<td><a href="#">재고▼</a></td>
			<td><a href="#">재고▲</a></td>
		</tr>
	
	</thead>
	<tbody> 
	  <c:forEach var="imsi" items="${alist}">
		  <tr>
			<td colspan="2"><a>${imsi.book_isbn}</a></td>
			<td colspan="2"><a href="getBookInfo.do?book_name=${imsi.book_name}">${imsi.book_name}</a></td>
			<td colspan="2"><a>${imsi.book_writer}</a></td>
			<td colspan="2"><a>${imsi.book_price}</a></td>
			<%-- <td>${imsi.book_img}</td>
			<td>${imsi.BOOK_CATEGORY}</td> --%>
			<td colspan="2"><a>${imsi.book_qry}</a></td>
			<%-- <td>${imsi.BOOK_POINT}</td> --%>
		  </tr>
	  </c:forEach>
	</tbody>
	</table>
	

<%@ include file="/WEB-INF/views/bottom.jsp"%>

<!-- private String isbn;
	private String name;
	private String author;
	private int price;
	private String pub;
	private String sub;
	private String cate;
	private int qry; -->
