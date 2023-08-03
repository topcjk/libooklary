<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- index.jsp -->
<%@ include file="top.jsp"%>

<hr>
<div id="map" style="width:100%;height:350px;"></div>
<!-- <p>
    <button onclick="zoomIn()">확대</button>
    <button onclick="zoomOut()">축소</button>
    <span id="maplevel"></span>
    37.57097047586023, 126.99252617841164
</p> -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4045841291beea9629c8a77168d12cce"></script>
<script>
// 이미지 지도에 표시할 마커입니다


var staticMapContainer  = document.getElementById('map'), // 이미지 지도를 표시할 div
    staticMapOption = { 
        center: new kakao.maps.LatLng(37.57097047586023, 126.99252617841164), // 이미지 지도의 중심좌표
        level: 3 // 이미지 지도의 확대 레벨
    };

// 이미지 지도를 생성합니다
var map = new kakao.maps.Map(staticMapContainer, staticMapOption);

var marker = {
	    position: new kakao.maps.LatLng(37.57097047586023, 126.99252617841164), 
	    text: '텍스트를 표시할 수 있어요!', // text 옵션을 설정하면 마커 위에 텍스트를 함께 표시할 수 있습니다
		map:map
};
</script>
<%@ include file="bottom.jsp"%>
