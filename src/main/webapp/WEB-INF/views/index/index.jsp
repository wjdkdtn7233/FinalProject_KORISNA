<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js" lang="en">
<!-- HAED -->
<%@ include file="../include/head.jsp"%>
<body>
	<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

	<!-- Preloader -->
	<%@ include file="../include/preloader.jsp"%>

	<!-- Header -->
	<%@ include file="../include/header.jsp"%>

	<main class="NotoSansKR">
	
		<div class="current-cases-wrapper section-padding">
            <div class="current-cases-shape current-cases-shape-1">
                <img src="<%=request.getContextPath()%>/resources/assets/img/purple-virus-shape.png" alt="">
            </div>
            <div class="current-cases-shape current-cases-shape-2">
                <img src="<%=request.getContextPath()%>/resources/assets/img/purple-virus-shape.png" alt="">
            </div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-12 col-lg-12">
                        <div class="section-title text-center semi-blue-section-title">
                            <h5 class="section-single-subtitle" id="createDt">${data.createDt}</h5>
                            <h2 class="section-heading-title">확진자 현황</h2>
                            <span class="bottom-border"></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-3 col-lg-6 col-md-6">
                        <div class="single-case-item">
                            <h3 class="cases-title">확진환자</h3>
                            <h2 class="cases-number" id="decideCnt">${data.decideCnt}</h2>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-md-6">
                        <div class="single-case-item">
                            <h3 class="cases-title">완치</h3>
                            <h2 class="cases-number"id="clearCnt">${data.clearCnt}</h2>
                        </div>
                    </div>

                    <div class="col-xl-3 col-lg-6 col-md-6">
                        <div class="single-case-item">
                            <h3 class="cases-title">치료중</h3>
                            <h2 class="cases-number" id="careCnt">${data.careCnt}</h2>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-md-6">
                        <div class="single-case-item">
                            <h3 class="cases-title">사망</h3>
                            <h2 class="cases-number" id="deathCnt">${data.deathCnt}</h2>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-7">
                        <div class="single-case-item">
                            <div id="map"></div>
                            <div class="text-center">
                                <input class="chack-button" type="button" id="Lazaretto" value="검역확인"></input>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="single-case-item" style="padding-bottom: 160px">
                            <h3 class="nationwideinfo-title" id="gubun">${data2.gubun}</h3>
                            <hr>
                            <div class="row">
                                <div class="nationwideinfo-contant col-lg-5">
                                    <div>누적 확진환자</div>
                                </div>
                                <div class="cases-number col-lg-5 text-right" id="defCnt" style="font-size: 20px;">${data2.defCnt} </div>
                                <div class="nationwideinfo-contant col-lg-1 text-right">명</div>
                            </div>
                            <div class="row nationwideinfo-contant2">
                                <div class="col-lg-5">
                                    <div>전일 대비 증감</div>
                                </div>
                                <div class="cases-number col-lg-5 text-right" id="incDec" style="font-size: 20px;">${data2.incDec} </div>
                                <div class="col-lg-1 text-right">+</div>
                            </div>
                            <div class="row">
                                <div class="nationwideinfo-contant col-lg-5">
                                    <div>격리중</div>
                                </div>
                                <div class="cases-number col-lg-5 text-right" id="isolIngCnt" style="font-size: 20px;">${data2.isolIngCnt} </div>
                                <div class="nationwideinfo-contant col-lg-1 text-right">명</div>
                            </div>
                            <div class="row">
                                <div class="nationwideinfo-contant col-lg-5">
                                    <div>누적 격리해제</div>
                                </div>
                                <div class="cases-number col-lg-5 text-right" id="isolClearCnt" style="font-size: 20px;">${data2.isolClearCnt} </div>
                                <div class="nationwideinfo-contant col-lg-1 text-right">명</div>
                            </div>
                            <div class="row">
                                <div class="nationwideinfo-contant col-lg-5">
                                    <div>사망자</div>
                                </div>
                                <div class="cases-number col-lg-5 text-right" id="deathCnt2" style="font-size: 20px;">${data2.deathCnt} </div>
                                <div class="nationwideinfo-contant col-lg-1 text-right">명</div>
                            </div>
                            <div class="row">
                                <div class="nationwideinfo-contant col-lg-5">
                                    <div>10만명당 발생율</div>
                                </div>
                                <div class="cases-number col-lg-5 text-right" id="qurRate" style="font-size: 20px;">${data2.qurRate} </div>
                                <div class="nationwideinfo-contant col-lg-1 text-right">명</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<!-- Home Banner Area Start -->
		<section class="home-banner-wrapper">
			<div class="container">
				<div class="row">
					<div class="col-xl-6 col-lg-6 col-md-12 my-auto">
						<div class="small-virus-shape">
							<div class="small-virus-shape small-shape-1">
								<img
									src="<%=request.getContextPath()%>/resources/assets/img/mini-shape-1.png"
									alt="mini-shape-1">
							</div>
							<div class="small-virus-shape small-shape-2">
								<img
									src="<%=request.getContextPath()%>/resources/assets/img/mini-shape-1.png"
									alt="mini-shape-1">
							</div>
							<div class="small-virus-shape small-shape-3">
								<img
									src="<%=request.getContextPath()%>/resources/assets/img/mini-shape-1.png"
									alt="mini-shape-1">
							</div>
						</div>
						<div class="home-banner-content">
							<h4 class="banner-subtitle">
								Novel Coronavirus <span class="purple-text">(Covid-19)</span>
							</h4>
							<h1 class="banner-main-title">
								Stay Home, And <span class="semiblue-text">Prayer For
									Victim</span> <span class="purple-text">Of Coronavirus.</span>
							</h1>
							<p class="banner-short-text">The coronavirus COVID-19 is
								affecting 210 countries & territories around the world and 2
								international conveyances.</p>
							<div class="banner-btn-wrappper">
								<a href="<%=request.getContextPath()%>/board/board.do" class="common-btn btn common-hover-3">More
									Info <i class="icofont-arrow-right"></i>
								</a> <a href="https://www.youtube.com/watch?v=hUy-Eu7Gfm4"
									class="play-btn popup-video common-hover-1"><i
									class="icofont-ui-play"></i></a>
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-12">
						<div class="home-banner-right-content">
							<div class="large-man-shape">
								<img
									src="<%=request.getContextPath()%>/resources/assets/img/home-slider-man-shape.png"
									alt="">
							</div>
						</div>
						<div class="small-virus-shape">
							<div class="small-virus-shape small-shape-4">
								<img
									src="<%=request.getContextPath()%>/resources/assets/img/mini-shape-1.png"
									alt="mini-shape-1">
							</div>
							<div class="small-virus-shape small-shape-5">
								<img
									src="<%=request.getContextPath()%>/resources/assets/img/mini-shape-1.png"
									alt="mini-shape-1">
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Home Banner Area End -->
	</main>

	<!-- footer -->
	<%@ include file="../include/footer.jsp"%>

	<!-- Modal -->
	<%@ include file="../include/modal.jsp"%>

	<!-- default JS -->
	<%@ include file="../include/defaultJS.jsp"%>
	
	<!-- hightMaps JS -->
	<script src="http://code.highcharts.com/maps/highmaps.js"></script>
    <script src="http://code.highcharts.com/maps/modules/drilldown.js"></script>
    <script>
    /*
     *  - Highmaps
     * 	Example : http://www.highcharts.com/maps/demo/map-drilldown
     *  Document : http://api.highcharts.com/highmaps
     * */
     
    $('#Lazaretto').click(function(){
        $.ajax({
            url:"<%=request.getContextPath()%>/index/selectLocationList.do",
										type : "post",
										dataType : "json",
										data : {
											locationNum : 99
										},
										success : function(data) {
									        $('#gubun').text('검역');
                                            $('#defCnt').text(data.defCnt);
                                            $('#incDec').text(data.incDec);
                                            $('#isolIngCnt').text(data.isolIngCnt);
                                            $('#isolClearCnt').text(data.isolClearCnt);
                                            $('#deathCnt2').text(data.deathCnt2);
                                            $('#qurRate').text(data.qurRate);
										},
										error : function(data) {
                                            $('#gubun').text('검역');
                                            $('#defCnt').text(0);
                                            $('#incDec').text(0);
                                            $('#isolIngCnt').text(0);
                                            $('#isolClearCnt').text(0);
                                            $('#deathCnt2').text(0);
                                            $('#qurRate').text(0);
										}
									});

						})


    
    function highMaps() {

        var me = this;

        me.chart = null;
        me.selected = '0';
        me.event = {
            select: function () {

            },
            unselect: function () {

            },
            drillup: function () {

            }
        };

        me.init();
    };
    highMaps.prototype.init = function () {
        var me = this;
        var path = "<%=request.getContextPath()%>/resources/json/0.json";
        // 전국단위 지도 로드
        $.getJSON(path, function (geojson) {
            var data = Highcharts.geojson(geojson, 'map');
            $.each(data, function () {
                this.drilldown = this.properties['code'];
            });
            $('#map').highcharts('Map', {
                credits: { enabled: false },
                chart: {
                    events: {
                    	click: function(e){
                    		$.ajax({
                                url:"<%=request.getContextPath()%>/index/selectLocationList.do",
                    										type : "post",
                    										dataType : "json",
                    										data : {
                    											locationNum : 80
                    										},
                    										success : function(data) {
                    									        $('#gubun').text(data.gubun);
                                                                $('#defCnt').text(data.defCnt);
                                                                $('#incDec').text(data.incDec);
                                                                $('#isolIngCnt').text(data.isolIngCnt);
                                                                $('#isolClearCnt').text(data.isolClearCnt);
                                                                $('#deathCnt2').text(data.deathCnt2);
                                                                $('#qurRate').text(data.qurRate);
                    										},
                    										error : function(data) {
                                                                $('#gubun').text('알수없음');
                                                                $('#defCnt').text(0);
                                                                $('#incDec').text(0);
                                                                $('#isolIngCnt').text(0);
                                                                $('#isolClearCnt').text(0);
                                                                $('#deathCnt2').text(0);
                                                                $('#qurRate').text(0);
                    										}
                    									});
                    	},
                    	/* 지역 버튼 클릭시 이벤트 발생 */
                        drilldown: function (e) {
                            if (!e.seriesOptions) {
                                mapKey = e.point.drilldown
                                $.ajax({
                                    url:"<%=request.getContextPath()%>/index/selectLocationList.do",
                        										type : "post",
                        										dataType : "json",
                        										data : {
                        											locationNum : mapKey
                        										},
                        										success : function(data) {
                        									        $('#gubun').text(data.gubun);
                                                                    $('#defCnt').text(data.defCnt);
                                                                    $('#incDec').text(data.incDec);
                                                                    $('#isolIngCnt').text(data.isolIngCnt);
                                                                    $('#isolClearCnt').text(data.isolClearCnt);
                                                                    $('#deathCnt2').text(data.deathCnt2);
                                                                    $('#qurRate').text(data.qurRate);
                        										},
                        										error : function(data) {
                                                                    $('#gubun').text('알수없음');
                                                                    $('#defCnt').text(0);
                                                                    $('#incDec').text(0);
                                                                    $('#isolIngCnt').text(0);
                                                                    $('#isolClearCnt').text(0);
                                                                    $('#deathCnt2').text(0);
                                                                    $('#qurRate').text(0);
                        										}
                        									});
                                
                            }
                        }
                    }
                },
                series: [{
                    data: data,
                    showInLegend: false,
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: true,
                        allowOverlap: false,
                        shadow: false,
                        format: '{point.properties.name}'
                    },
                    states: {
                        // 상위 지도 hover 스타일 설정
                        hover: {
                            color: '#464196',
                            borderColor: 'black'
                        }
                    },
                    tooltip: {
                        headerFormat: '',
                        pointFormat: '{point.properties.name}'
                    }
                }],
                // 제목 제거
                title: null,
                // 부제목 제거
                subtitle: null,
                // 줌 설정
                mapNavigation: {
                    enableMouseWheelZoom: false,
                    enableTouchZoom: false
                },
                // 지역 선택시 하위 지도 띄우는 기능 설정
                drilldown: {
                    // 상위 지도 레이블 스타일 설정
                    activeDataLabelStyle: {
                        color: '#000',
                        shadow: false,
                        textShadow: '0 0 0px #000000',
                        fontWeight: "none",
                        textDecoration: 'none'
                    },
                    // 상위 지도 버튼 스타일 설정
                    drillUpButton: {
                        relativeTo: 'spacingBox'
                    }
                },
            });
            me.chart = $("#map").highcharts();
        });
    };

    </script>
    <script type="text/javascript">
        var highMap = new highMaps();
        highMap.init();
        
    </script>
	

</body>
</html>
