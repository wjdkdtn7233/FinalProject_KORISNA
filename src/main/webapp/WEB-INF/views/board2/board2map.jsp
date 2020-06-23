<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
.wrap {
    position: absolute;
    bottom: 28px;
    left: -150px;
    width: 300px;
}

.info {
    position: relative;
    width: 100%;
    border-radius: 4px;
    background: #fff;
    padding: 12px 16px 16px 16px;
    padding-right: 32px;
    margin-bottom: 12px;
}

.info .title {
    display: block;
    font-size: 16px;
    line-height: 24px;
    font-weight: 500;
    color: #00348c;
    padding-bottom: 4px;
    word-break: break-all;
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
}

.info .body .desc .ellipsis {
    display: block;
    cursor: default;
    font-size: 12px;
    line-height: 20px;
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
}

.info .body .desc .btnmap {
    display: block;
    padding: 5px 8px;
    border: 1px solid #ddd;
    border-radius: 1px;
    position: absolute;
    right: 12px;
    bottom: 12px;
}

span {
    display: block;
    font-size: 12px;
    line-height: 12px;
    color : blue;
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
}


</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="map" style="width: 1000px; height: 1000px;"></div>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1c4f80bf9112747caf6c6fd5086db6f6"></script>
	<script>
		var container = document.getElementById('map');
		var Xpos = ${mapmap.xpos};
		var Ypos = ${mapmap.ypos};
		var options = {
			center : new kakao.maps.LatLng(Ypos,Xpos),
			level : 3
		};
		
		var map = new kakao.maps.Map(container, options);
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(Ypos,Xpos); 

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
		
		var content = '<div class="wrap">' + 
        '    <div class="info">' + 
        '        <div class="title">' + 
        '           ${mapmap.name}' + 
        '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
        '        </div>' + 
        '        <div class="body">' + 
        '            <div class="desc">' + 
        '                <div class="ellipsis">${mapmap.addr}</div>' + 
        '                <div class="ellipsis">${mapmap.telno}</div>' + 
        '                <div class="btnmap"><a href="https://map.kakao.com/link/to/${mapmap.name},${mapmap.ypos},${mapmap.xpos}"  target="_blank" title="${mapmap.name}" onclick="btn();"><span>길 찾기</span></a></div>' + 
        '            </div>' + 
        '        </div>' + 
        '    </div>' +    
        '</div>';
        
      /*  function btn(){
        	
        	var url = "https://map.kakao.com/link/to/${mapmap.name},${mapmap.ypos},${mapmap.xpos}";
            window.open(url,"width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
            
            
        } */
        
        
        var overlay = new kakao.maps.CustomOverlay({
            content: content,
            map: map,
            position: marker.getPosition()       
        });

        // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
        kakao.maps.event.addListener(marker, 'click', function() {
            overlay.setMap(map);
        });

        // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
        function closeOverlay() {
            overlay.setMap(null);     
        }
		
		
		
		
		
	</script>
</body>
</html>