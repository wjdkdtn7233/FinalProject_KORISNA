<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test</title>
</head>
<body>

<c:out value="${data}"/>

<script type="text/javascript">
	console.log(${data}.countryEnName);
	console.log(${data}.countryName);
	console.log(${data}.id);
	console.log(${data}.wrtDt);
	console.log(${data}.title);

	
	
	
	var datas = JSON.parse(${data});
	
	console.log(datas);

</script>

</body>
</html>