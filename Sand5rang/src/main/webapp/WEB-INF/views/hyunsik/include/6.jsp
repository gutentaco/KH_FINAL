<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400&display=swap" rel="stylesheet">
<style>
body{
	font-family: 'Noto Sans KR', sans-serif;
}
.td-actions>span:hover {
	cursor: pointer;
}
.td-actions>span {
    text-decoration: underline;
}
.hyunsik-table td, .hyunsik-table th, .hyunsik-table td{
	text-align: center;
}
.whyunsik{
	background-color: rgb(205, 205, 205);
}
.news-item-detail>div>a>mark{
  background-color: white;
}
.news-item-preview>a>mark{
  background-color: white;
}
.news-item-detail>div>a{
	font-weight: bolder;
  background-color: white;
}
.news-item-preview>a{
  background-color: white;
}
.news-item-date{
padding-right:20px;
}
.gustlr{
padding-bottom:10px;
}
#micheuri{
width:250px; margin:auto; margin-top:30px; font-size:15px; color:red;
}
.aTag:hover{
text-decoration:none;
}
</style>
</head>
<body>
<script src="/sand5rang/resources/member/hyunsik/js/jquery-1.7.2.min.js"></script> 
<script src="/sand5rang/resources/member/hyunsik/js/excanvas.min.js"></script> 
<script src="/sand5rang/resources/member/hyunsik/js/chart.min.js" type="text/javascript"></script> 
<script src="/sand5rang/resources/member/hyunsik/js/bootstrap.js"></script>
<script language="javascript" type="text/javascript" src="/sand5rang/resources/member/hyunsik/js/full-calendar/fullcalendar.min.js"></script>
 
<script src="/sand5rang/resources/member/hyunsik/js/base.js"></script> 

<script>

function adCusApp(){
	if(!confirm("승인하시겠습니까?")){
		return false;
	}else{
		return true;
	}
}

function adCusDis(){
	if(!confirm("반려하시겠습니까?")){
		return false;
	}else{
		return true;
	}
}


</script>
</body>
</html>