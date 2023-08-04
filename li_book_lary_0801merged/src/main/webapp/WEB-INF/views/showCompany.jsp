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
</p> -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=여기에 카카오 api번호"></script>
<script>

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.57097047586023, 126.99252617841164); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition,
    text:'여기로 오시면 됩니다'
});
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.57097047586023, 126.99252617841164 ), // 지도의 중심좌표
        level: 3	// 지도의 확대 레벨
        
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다



// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new kakao.maps.MapTypeControl();

// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
/* function zoomIn() {        
    // 현재 지도의 레벨을 얻어옵니다
    var level = map.getLevel();
    
    // 지도를 1레벨 내립니다 (지도가 확대됩니다)
    map.setLevel(level - 1);
    
    // 지도 레벨을 표시합니다
    displayLevel();
}    

function zoomOut() {    
    // 현재 지도의 레벨을 얻어옵니다
    var level = map.getLevel(); 
    
    // 지도를 1레벨 올립니다 (지도가 축소됩니다)
    map.setLevel(level + 1);
    
    // 지도 레벨을 표시합니다
    displayLevel(); 
}    */
// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>
<%@ include file="bottom.jsp"%>
