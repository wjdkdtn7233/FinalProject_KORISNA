<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Korisna Corona Virus Prevention HTML Website</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="manifest" href="site.webmanifest">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/css/bootstrap.min.css">

<!-- Owl-Carousel CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/css/owl.carousel.min.css">

<!-- Animate CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/css/animate.min.css">

<!-- Magnific-Popup CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/css/magnific-popup.css">

<!-- Flaticon CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/css/icofont.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/css/fontawesome.min.css">

<!-- Meanmenu CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/css/meanmenu.css">

<!-- Theme Main CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/style.css">

<!-- Responsive CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/css/responsive.css">

<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@1,100&family=Sunflower:wght@500&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;500&display=swap"
	rel="stylesheet">
<style type="text/css">
.sunflower {
	font-family: 'Roboto', sans-serif;
	font-family: 'Sunflower', sans-serif;
	font-size: 20px;
}

.NotoSansKR {
	font-family: 'Noto Sans KR', sans-serif;
}

.nationwideinfo-title {
	color: #293f73;
	font-weight: 600;
	margin-bottom: 30px;
	font-size: 30px;
}

.nationwideinfo-contant {
	color: #7d52cc;
	font-size: 20px;
}

.nationwideinfo-contant2 {
	color: #293f73;
	font-size: 20px;
}

.chack-button {
	outline: none;
	display: inline-flex;
	align-items: center;
	justify-content: center;
	border-radius: 7px;
	background: none;
	border: 1px solid #7d52cc;
	color: #7d52cc;
	font-Size: 1rem;
	cursor: pointer;
	height: 2.5rem;
	padding-left: 1rem;
	padding-right: 1rem;
}

.chack-button:hover {
	background: #7d52cc;
	color: white;
}

.chack-button:active {
	background: #6741d9;
}

.single-case-item .cases-title {
	color: #7d52cc;
	font-size: 25px;
	font-weight: 500;
	margin-bottom: 8px;
}

.single-case-item:before {
	position: absolute;
	content: '';
	height: 90px;
	width: 90px;
	bottom: -35px;
	right: -35px;
	background-image: none;
	opacity: .5;
	-webkit-transition: .3s;
	transition: .3s;
}
</style>
</head>