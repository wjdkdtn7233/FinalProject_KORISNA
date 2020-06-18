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


function searchinfo(){

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


