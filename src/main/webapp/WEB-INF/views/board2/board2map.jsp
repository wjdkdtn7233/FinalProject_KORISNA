<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="map" style="width: 800px; height: 800px;"></div>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1c4f80bf9112747caf6c6fd5086db6f6"></script>
	<script>
		var container = document.getElementById('map');
		var Xpos = ${mapmap.xpos},
			Ypos = ${mapmap.ypos};
		var options = {
			center : new kakao.maps.LatLng(Ypos,Xpos),
			level : 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>
</body>
</html>