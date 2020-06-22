<%@page import="com.kh.finalpj.map.common.Code"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js" lang="en">
<%@ include file="../include/head.jsp"%>
<!-- map CSS -->
<link rel="stylesheet" href="<%= request.getContextPath()%>/resources/map/css/Map.css"/>  

<body>
	<!--  cdn -->
<script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous"></script>

	<!-- Preloader -->
	<%@ include file="../include/preloader.jsp"%>

	<!-- Header -->
	<%@ include file="../include/header.jsp"%>
	<main>

		<!-- Breadcrumb Area Start -->
		<section class="breadcrumb-wrapper purple-bg">
			<div class="breadcrumb-virus-shape breadcrumb-shape-1">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="">
			</div>
			<div class="breadcrumb-virus-shape breadcrumb-shape-2">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="">
			</div>
			<div class="breadcrumb-virus-shape breadcrumb-shape-3">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="">
			</div>
			<div class="breadcrumb-virus-shape breadcrumb-shape-4">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="">
			</div>
			<div class="container">
				<div class="row">
					<div class="col-xl-6 col-lg-6 col-md-6 my-auto">
						<div class="breadcrumb-content">
							<h2 class="breadcrumb-main-title">Mask Map</h2>
							<ul>
								<li><a href="<%=request.getContextPath()%>/product/productlist.do">Online-Shop</a></li>
							</ul>
						</div>
					</div>
					<div
						class="col-xl-6 col-lg-6 col-md-6 text-right breadcrumb-unvisible">
						<div class="breadcrumb-image-wrapper">
							<div class="breadcrumb-image">
								<img
									src="<%=request.getContextPath()%>/resources/assets/img/woman-towel.png"
									alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Breadcrumb Area End -->


		<!-- Contact Form Area Start -->
		<div class="contact-form-wrapper section-padding">
			<div class="container">
				<div class="contact-form-inner">
					<div class="row justify-content-center">
						<!-- map start -->
						<div id="menu_wrap" class="bg_white">
					        <div class="option">
					               <span><b>주소 검색</b></span><br>
					               <input type="text" id="keyword" class="keyword" size="15" placeholder="키워드를 입력하세요."> 
					               <button id="pSearchBnt" onclick="searchPlaces()">검색하기</button> 
					        </div>
					        <ul id="placesList" class="placesList"></ul>
				 	   		<div id="pagination" class="pagination"></div>
				   		</div>
						
						<label class="switch" id="mapSwitch">
						  <input type="checkbox" id="mapSelector" onchange="switchTest()">
						  <span class="slider round"></span>
						</label>
						<br>
						<div id="map" class="kakaoMap"></div>
						<div id="favorate" class="favorate"></div>
						
						
				   		
						<!-- map end -->	

					</div>
				</div>
			</div>
		</div>
		<!-- Contact Form Area End -->
		
	</main>

	<!-- footer -->
	<%@ include file="../include/footer.jsp"%>

	<!-- Modal -->
	<%@ include file="../include/modal.jsp"%>

	<!-- default JS -->
	<%@ include file="../include/defaultJS.jsp"%>



	<!-- jQuery JS -->
	<script src="<%= request.getContextPath() %>/resources/assets/js/jquery-1.12.4.min.js"></script>

	<!-- Popper JS -->
	<script src="<%= request.getContextPath() %>/resources/assets/js/popper.min.js"></script>

	<!-- Boostrap JS -->
	<script src="<%= request.getContextPath() %>/resources/assets/js/bootstrap.min.js"></script>

	<!-- Owl-Carousel JS -->
	<script src="<%= request.getContextPath() %>/resources/assets/js/owl.carousel.min.js"></script>

	<!-- Meanmenu JS -->
	<script src="<%= request.getContextPath() %>/resources/assets/js/jquery.meanmenu.js"></script>

	<!-- Wow JS -->
	<script src="<%= request.getContextPath() %>/resources/assets/js/wow.min.js"></script>

	<!-- ScrollUp JS -->
	<script src="<%= request.getContextPath() %>/resources/assets/js/jquery.scrollUp.min.js"></script>

	<!-- Magnific-Popup JS -->
	<script src="<%= request.getContextPath() %>/resources/assets/js/jquery.magnific-popup.min.js"></script>

	<!-- Theme-Main JS -->
	<script src="<%= request.getContextPath() %>/resources/assets/js/main.js"></script>
	
	<script>
		sessionStorage.setItem("userId", "${loginUser.F_EMAIL}");
		sessionStorage.setItem("userAddr", "${loginUser.F_ROADADDRESS}");
	</script>

<!-- kakao map apiCDN -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ac955fe2801d2050db1a02ed1fe41b64&libraries=services"></script>

	<script>
	
	const path = '${Code.PATH}';
	
	var level = 3;
	var sessionFlag = false;
	var switchFlag = true;
	var pharmacy = null;
	var fCount = 0; // 사용자 데이터 받을 것 
	var userId = sessionStorage.getItem("userId");
	var favorate = null;
	var userAddr = sessionStorage.getItem("userAddr");
			
	$(function(){
		coordFlag();// lat, lon 초기 설정 
		
	});

	function validateFavorate(){
		$.ajax({
			url:path+"/map/getfavorate.do",
			type:"POST",
			data:{"userId" : userId},
			async:false,
			success:function(data){
				favorate = data;
				fCount = data.length;
				
			}
		});
	}

	function coordFlag(){

		if(userAddr != ''){
			sessionFlag = true;
		}
		
		if(sessionFlag && switchFlag){
			// 카카오 api 활성화 
			validateFavorate();//즐겨찾기 조회 
		
		
			$.ajax({
			
				url : path+"/map/getcoords.do",
				type : "post",  
				data : {'addr':userAddr},
				dataType:"json",
//				async:false,
				success : function(data) {
					lat = data.lat;
					lon = data.lon;
					getPharmacy(lat,lon,level);
				}
			});
			
		// 비로그인 지도 로딩 	
		}else {
			navigator.geolocation.getCurrentPosition(function(pos) {
				lat = pos.coords.latitude;
				lon = pos.coords.longitude;
				getPharmacy(lat,lon,level);
			});
		}
		
	}

	function getPharmacy(lat,lon,level){
		
		var coords = {"lat" : lat, "lon" : lon,"level":level}; 
		$.ajax({
			
			url:path+"/map/getpharmacy.do",
			data:coords,
			type:"post",
			dataType:"json",
			success:function(data){
				
				var stores = JSON.parse(data.stores);
				pharmacy = stores.stores;
				createMap(lat,lon,pharmacy);
				  
			}
			
		});
	}
	function createMap(lat,lon,pharmacy){
		
		var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
		var mapOption = { 
			center: new kakao.maps.LatLng(lat, lon), // 지도의 중심좌표
			level: level // 지도의 확대 레벨 
		}; 
		$("#map").html('');
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		map.setMaxLevel(4);

		map.relayout();
		kakao.maps.event.addListener(map, 'dragend', function() {        
		    
			$("#map").html('');
		    var latlng = map.getCenter(); 
		    lat = latlng.getLat();
		    lon = latlng.getLng();
		    level = map.getLevel();
		    getPharmacy(lat,lon,level);
		    
		});
		
		 createMarker(map);
	}

	function switchTest(){
		
		if(userAddr == ''){
			alert("주소지 기반 지도 서비스는 로그인 이후 가능합니다.");
			return;
		}
		
		switchFlag = !switchFlag;
		coordFlag();
	}

	function createMarker(map){
		
		for (var i = 0; i < pharmacy.length; i++) {
		    
			var lathing = new kakao.maps.LatLng(pharmacy[i].lat,pharmacy[i].lng);
			// 마커를 생성합니다
			var marker = set_marker(pharmacy[i],lathing,map);
			// 오버레이 생성
			var overlay = set_overlay(pharmacy[i],lathing,map);
			
			
			 
		    // 이벤트 등록용 클로저 메서드 
		    kakao.maps.event.addListener(marker, 'click', makeOverListener(map, marker,lathing,overlay));
		    
		}
		if(userId != '' && favorate.length > 0){
			set_fOverlay(map);
		}
	}



	function makeOverListener(map,marker,lathing,overlay){
		 
		 return function(){
	   		overlay.setMap(map);
	   		map.panTo(lathing);
	   	}
	}

	function set_marker(data,lahting,map){
		
		// 지도에 표시될 마커 변수 
		var selecMarker = "";
		// 각 마커 좌표 입력할 것
		var greenMarker = path+"/resources/map/img/plentiful.png";
		var yellowMarker = path+"/resources/map/img/some.png";
		var redMarker = path+"/resources/map/img/few.png";
		var grayMarker = path+"/resources/map/img/empty.png";
		var notInfoMarker = path+"/resources/map/img/noinfo.png";

		switch(data.remain_stat){
			case "plenty" : selecMarker =  greenMarker;
				break;
			case "some" : selecMarker =  yellowMarker; 
				break;
			case "few" : selecMarker =  redMarker; 
				break;
			case "empty" : selecMarker =  grayMarker; 
				break;
			case "break" :selecMarker =  grayMarker; 
				break;
				default : selecMarker =  notInfoMarker;
		}

		var imageSrc = selecMarker, // 마커이미지의 주소입니다    
	    imageSize = new kakao.maps.Size(30, 20);// 마커이미지의 크기입니다
		
		// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize),
		    markerPosition = lahting // 마커가 표시될 위치입니다
		
		var marker = new kakao.maps.Marker({
	        map: map, // 마커를 표시할 지도
	        position: markerPosition, // 마커의 위치
	        image: markerImage
	    });
		
		return marker;
	}

	function set_overlay(data,lathing){
		
		var overlay = new kakao.maps.CustomOverlay({
	        position: lathing,
	        clickable:true,
	        zIndex: 1,
	        xAnchor: 0.5,
	        yAnchor: 1
	    });
		// overlay 기본 html 뼈대 생성
		var wrap = document.createElement("div");
		wrap.className = "wrap";
		
		var info = document.createElement("div");
		info.className = "info";
		
		var title = document.createElement("div");
		title.className = "title";
		title.innerHTML = data.name;
		
		var closeBtn = document.createElement("button");
		closeBtn.className = "close";
		closeBtn.onclick = function(){
			overlay.setMap(null);
		}
		
		var body = document.createElement("div");
		body.className = "body";
		
		// overlay 형태 생성
		wrap.appendChild(info);
		info.appendChild(title);
		info.appendChild(body);
		title.appendChild(closeBtn);
		// body에 들어갈 정보 입력
		var stock = document.createElement("div");
		stock.className = "stock";
		switch(data.remain_stat){
			case "plenty" : stock.innerHTML = "재고수랑  : 100개 이상";
				break;
			case "some" : stock.innerHTML = "재고수랑  : 30개 이상 100개 미만";
				break;
			case "few" : stock.innerHTML = "재고수랑  : 2개 이상 30개 미만";
				break;
			case "empty" : stock.innerHTML = "재고수랑  : 1개 이하";
				break;
			case "break" :stock.innerHTML = "재고수랑  : 판매중지";
				break;
			default : stock.innerHTML = "재고수랑  : 정보없음";
		}
		body.appendChild(stock);
		
		var addr = document.createElement("div");
		addr.className = "addr";
		addr.innerHTML = "주소 : "+data.addr;
		body.appendChild(addr);
		
		var create_at = document.createElement("div");
		create_at.className = "create_at";
		create_at.innerHTML = "갱신일자 : "+data.created_at;
		body.appendChild(create_at);
		
		
		var stock_at = document.createElement("div");
		stock_at.className = "stock_at";
		stock_at.innerHTML = "입고일자 : "+data.stock_at;
		
		body.appendChild(stock_at);
		
		var favorate = document.createElement("button");
		favorate.className = "favorateBnt";
		favorate.innerHTML = "즐겨찾기 등록";
		favorate.onclick =  function(){
				if(userId != '' && fCount > 4){
					alert("최대 5개까지 가능합니다");
					return;
				}else if(userId == ''){
					alert("즐겨찾기 기능은 로그인 이후 가능합니다");
					return;
				}else{
					insertFavorate(data);
				}
			};
		
		body.appendChild(favorate);
		
		overlay.setContent(wrap);
		return overlay;
	}

	function set_fOverlay(map){
		
		$("#favorate").html(""); //전체 wrap
		var fWrap = document.createElement("div");
		fWrap.className = "fWrap";
		fWrap.innerHTML = "***즐겨찾기 목록***";
		
		for(var i = 0; i < favorate.length; i++){
			var ffWrap = document.createElement("div");
			ffWrap.className = "ffWrap";

			var fName = document.createElement("div");
			fName.className = "fName";
			fName.innerHTML = favorate[i].name;
			
			
			var fAddr = document.createElement("div");
			fAddr.className = "fAddr";
			fAddr.innerHTML = favorate[i].addr;
		
			var fLat = document.createElement("input");
			fLat.id = "fLat"+i;
			fLat.type="hidden";
			fLat.value=parseFloat(favorate[i].lat);
			
			var fLon = document.createElement("input");
			fLon.id = "fLon"+i;
			fLon.type="hidden";
			fLon.value=parseFloat(favorate[i].lon);
			
			var fCode = document.createElement("input");
			fCode.className = "fCode";
			fCode.type="hidden";
			fCode.value = favorate[i].code;
			
			var fDelete = document.createElement("button");
			fDelete.className = "fDelete";
			fDelete.innerHTML = "즐겨찾기 삭제";
			fDelete.onclick = deleteFavorate(fCode.value,userId);
			
			ffWrap.appendChild(fName);
			ffWrap.appendChild(fAddr);
			ffWrap.appendChild(fLat);
			ffWrap.appendChild(fLon);
			ffWrap.appendChild(fDelete);
			
			fName.addEventListener("click",addFavorClo(map,fLat.value,fLon.value));
		
			fWrap.appendChild(ffWrap)
		}

		$("#favorate").append(fWrap);
	}

	function deleteFavorate(fCode,userId){
		return function(){
			$.ajax({
				url:path+"/map/deletefavor.do",
				data:{"fCode" : fCode, "userId":userId},
				type:"POST",
				success:function(data){
					if(data == "true"){
						alert("삭제 완료");
						location.reload();
					}else{
						alert("삭제 실패");
					}
				}
			})
		}
	};

	function addFavorClo(map,fLat,fLon){
		
		return function(){
			var fLathing = new kakao.maps.LatLng(fLat,fLon);
			map.panTo(fLathing);
			getPharmacy(fLat,fLon,level);
		}
	}

	function insertFavorate(data){
		
		if(favorate.length != 0){
			for(var i = 0; i < favorate.length; i++){
				if(favorate[i].code == data.code){
					alert("이미 즐겨찾기 추가된 약국입니다.");
					return;
				}
			}
		}

		var datas = {
	 
				"userId" : userId,
				"name" : data.name,
				"addr" : data.addr,
				"lat" : data.lat,
				"lng" : data.lng,
				"code" : data.code
		};
		
		$.ajax({
			url:path+"/map/insertfavorate.do",
			async:false,
			type:"get",
			data:datas,
			success:function(data){
				if(data == "true"){
					alert("즐겨찾기 등록 성공");
					location.reload();
				}else{
					alert("즐겨찾기 등록 실패");
				}
			}
		});
		
	}

	function searchPlaces(){

		var ps = new kakao.maps.services.Places();  
		var searchValue = $("#keyword").val();
		
		if(searchValue == '') {
		   alert('키워드를 입력해주세요!');
		   return false;
		 }
		 ps.keywordSearch(searchValue, placesSearchCB, {"size" : 6}); 
	}

	// 검색 성공시 실행하는 함수 
	function placesSearchCB(data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {
	        // 정상적으로 검색이 완료됐으면
	        // 검색 목록과 마커를 표출합니다
	    	$("#placesList").html('');
	        displayPlaces(data);
	        // 페이지 번호를 표출합니다
	        displayPagination(pagination);
	    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
	        alert('검색 결과가 존재하지 않습니다.');
	        return;
	    } else if (status === kakao.maps.services.Status.ERROR) {
	        alert('검색 결과 중 오류가 발생했습니다.');
	        return;
	    }
	}

	function displayPlaces(data){
		
		for(var i = 0; i < data.length; i++){
			var pLi = document.createElement("li");
			pLi.className = "pLi";
			
			var pLon = document.createElement("input");
			pLon.type="hidden";
			pLon.value = data[i].x;
			
			var pLat = document.createElement("input");
			pLat.type="hidden";
			pLat.value = data[i].y;
				
			pLi.innerHTML = data[i].place_name+"<br>";
			pLi.innerHTML += data[i].address_name;
			
			pLi.addEventListener("click", placeClosure(pLon.value,pLat.value));
			
			pLi.appendChild = pLat;
			pLi.appendChild = pLon;
			$("#placesList").append(pLi);
		}
		
	}

	function placeClosure(lon, lat){
		
		return function(){
			getPharmacy(lat,lon,level);
		}
		
	}

	function displayPagination(pagination){
		
		var paging = document.getElementById("pagination"),
			fragment = document.createDocumentFragment(),
			i; 
		
		 while (paging.hasChildNodes()) {
			 paging.removeChild (paging.lastChild);
		 }
		 
		 for (i=1; i<=pagination.last; i++) {
		        var el = document.createElement('a');
		        el.href = "#";
		        el.innerHTML = i;
		        
		        if (i===pagination.current) {
		            el.className = 'on';
		        } else {
		        	el.className = "off";
		            el.onclick = (function(i) {
		                return function() {
		                    pagination.gotoPage(i);
		                }
		            })(i);
		        }

		        fragment.appendChild(el);
		    }
		 paging.appendChild(fragment);
	}

	$("#keyword").keyup(function(e){

		if(e.which == 13){
			$("#pSearchBnt").click();
		}
		
	});

	$("#mapSwitch").mouseover(function(){
		
		var content = "";
		var switchSpan = document.createElement("span");
		
		
		if(switchFlag === true){
			content = "접속위치 기준 지도 로딩을 원하시면 클릭하세요.";
			switchSpan.className = "switchSpan";
		}else{
			content = "등록된 주소지 기준으로 지도 로딩을 원하시면 클릭하세요.";
			switchSpan.className = "switchSpan2";
		}
		switchSpan.innerHTML = content;
		switchSpan.id = "switchSpan";
		$("#map").append(switchSpan);
	});

	$("#mapSwitch").mouseout(function(){
		$("#switchSpan").remove();
	});


	
	</script>

	<!-- <!-- kakao map apiCDN -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ac955fe2801d2050db1a02ed1fe41b64&libraries=services"></script>

 -->	<%-- <!-- map JS -->						
	<script src="${pageContext.request.contextPath}/resources/map/js/map.js"></script>     --%>
					

</body>
</html>
