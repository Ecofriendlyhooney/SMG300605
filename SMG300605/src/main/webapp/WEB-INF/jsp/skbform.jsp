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
			<div class="fontSize_150 text_align_center">Syusei Admin Create</div>
		</div>
		<div class="bpHeadSecondLine"> 
			<div class="r33 left menubutton bgGrey">
				<a href="">Create</a></div>
			<div class="r33 left menubutton bgWhite">
				<a href="">====</a></div>
			<div class="r33 left menubutton bgWhite">
				<a href="">====</a></div>
		</div>
	</div>
	<div class="space ">EcofriendlyHooney</div>

		<form action="save" method="post">
			<div class="">
				 <input type="text" name="skb_event_title" /><p>&nbsp;</p>
			</div>
			<div class="">
				 <input type="text" name="skb_event_text_01" /><p>&nbsp;</p>
			</div>
			<div class="">
				 <input type="text" name="skb_event_text_02" /> <p>&nbsp;</p>
			</div>
			<div class="">
				<input type="text" name="skb_event_text_03" /><p>&nbsp;</p>
			</div>
			
			<button class="button bgGreen left" name="cancel" onnclick="document.hisstory.back();">Cancel</button>
			<button class="button bgGreen">Save</button>
		</form>
		
		
<!-- 	<div class="bpbody left"> 
		<button class="accordionSizeCreateNewEvent ">
			<div class="r33 left menubutton bgWhite">
				<a href="/HooneyCRUD/badminton/skb/admin"> Cancel </a></div>
		</button>
	</div>

	<div class="bpbody left"> 
		<button class="accordionSizeCreateNewEvent">
			<div class="r33 left menubutton bgWhite">
				<a href="/HooneyCRUD/badminton/skb/admin"> Delete </a></div>
		</button>
	</div> -->
	
	
	
	<div class="space">EcofriendlyHooney</div>
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