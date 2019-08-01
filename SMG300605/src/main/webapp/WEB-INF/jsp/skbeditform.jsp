<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ include file="/WEB-INF/css/style.css"%> --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>

<html class="bg-color" xmlns:og="http://ogp.me/ns#">

<head>
<%--    <link  href="<c:url value="/resources/css/main.css" />" rel="stylesheet"> --%>
   <link  href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<%--    <script src="<c:url value="/resources/js/main.js" />"></script> --%>
   <%-- <script src="<c:url value="/resources/js/jquery-3.4.1.js" />"></script> --%>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
<title>SKB 2019年</title>
<%-- <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/WEB-INF/css/style.css">  --%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta property=”og:title” content=”SKB Badminton” />
<meta property=”og:image”
	content=”https://storage.googleapis.com/skb_files/badminton.png“ />
<meta property=”og:image:width” content="200" />
<meta property=”og:image:height” content="100" />
<meta property=”og:description” content=”schedule” />

</head>

<body>
	<div class="menu bpHead">
		<div class="bpHeadFirstLine"> 
			<img class="left"
			src="https://storage.googleapis.com/skb-bucket/03_contents_gallery/01_icon/badminton.png" alt=""
			style="width: 35px; height: 35px;">
			<div class="fontSize_200 text_align_center">Syusei Admin Edit</div>
		</div>
<!-- 		<div class="bpHeadSecondLine"> 
			<div class="r33 left menubutton bgWhite">
				<a>Create</a></div>
			<div class="r33 left menubutton bgGrey">
				<a>Edit</a></div>
			<div class="r33 left menubutton bgWhite">
				<a>View</a></div>
		</div> -->
	</div>
	<div class="space" >EcofriendlyHooney</div>
	
	<div class=" left r90" style="padding-left:2rem; padding-right:3rem">
		
		<div class="r50  left">
			<form:form method="POST" action="/HooneyCRUD/badminton/skb/admin/editsave">
				<div class="fontSize_100">
					 <input type="hidden" name="skb_event_id" value="${skb.skb_event_id}" /> 
				</div>
				<div class="fontSize_100">
					 <input type="text" name="skb_event_title" value="${skb.skb_event_title}"/>
				</div>
				<div class="inputBorder">
					 <input type="text" name="skb_event_date" value="${skb.skb_event_date}"/>
				</div>
				<div class="inputBorder">
					 <input type="text" name="skb_event_day" value="${skb.skb_event_day}"/>
				</div>
				<div class="inputBorder">
					 <input type="text" name="skb_event_start_time" value="${skb.skb_event_start_time}"/>
				</div>
				<div class="inputBorder">
					 <input type="text" name="skb_event_end_time" value="${skb.skb_event_end_time}"/>
				</div>
				<div class="inputBorder">
					 <input type="text" name="skb_event_text_01" value="${skb.skb_event_text_01}"/>
				</div>
				<div class="inputBorder">
					 <input type="text" name="skb_event_text_02" value="${skb.skb_event_text_02}"/> 
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_03" value="${skb.skb_event_text_03}"/>
				</div>
				<div class="inputBorder">
					 <input type="text" name="skb_event_text_04" value="${skb.skb_event_text_04}"/>
				</div>
				<div class="inputBorder">
					 <input type="text" name="skb_event_text_05" value="${skb.skb_event_text_05}"/> 
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_06" value="${skb.skb_event_text_06}"/>
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_07" value="${skb.skb_event_text_07}"/>
				</div>
				<div class="inputBorder">
					 <input type="text" name="skb_event_text_08" value="${skb.skb_event_text_08}"/>
				</div>
				<div class="inputBorder">
					 <input type="text" name="skb_event_text_09" value="${skb.skb_event_text_09}"/> 
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_10" value="${skb.skb_event_text_10}"/>
				</div>
				<button class="button bgGreen">Edit Save</button>
			</form:form>
		</div>
		<div class="r40  left fontSize_100">
		  <div >title</div>
		  <div>日付</div>
		  <div>何曜日</div>
		  <div>start_time</div>
		  <div>end_time</div>
		  <div>text_01</div>
		  <div>text_02</div>
		  <div>text_03</div>
		  <div>text_04</div>
		  <div>text_05</div>
		  <div>text_06</div>
		  <div>text_07</div>
		  <div>text_08</div>
		  <div>text_09</div>
		  <div>text_10</div>
		</div>
		<!-- <div class="r20"></div> -->
	</div>
	
	<div class=" left r90" style="padding-left:2rem; padding-right:3rem; padding-bottom:10rem">
		<div>
			<form action="/HooneyCRUD/badminton/skb/admin" method="get">
				<button class="button bgGreen left ">Cancel</button>
			</form>
		</div>
		<div>
			<button class="button bgGreen left">
				<a href="/HooneyCRUD/badminton/skb/admin/deleteskb/${skb.skb_event_id}">Delete</a>	
			</button>
		</div>
	</div>
	
	
	
<!-- 	<div class="space">EcofriendlyHooney</div>  -->
	<div class="copyright">Powered by EcofriendlyHooney</div>
	<div class="copyright">© 2019 300605.com All rights reserved.</div>
	
	<script>
	var acc = document.getElementsByClassName("accordion");
	var i;
	
	for (i = 0; i < acc.length; i++) {
	  acc[i].addEventListener("click", function() {
	    this.classList.toggle("active");
	    var panel = this.nextElementSibling;
	    if (panel.style.maxHeight){
	      panel.style.maxHeight = null;
	    } else {
	      panel.style.maxHeight = panel.scrollHeight + "px";
	    } 
	  });
	}
	</script>
</body>

</html>