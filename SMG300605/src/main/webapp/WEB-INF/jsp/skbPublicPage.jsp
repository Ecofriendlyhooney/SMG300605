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
<meta property="og:url"
	content=" https://skb-test-cloud.appspot.com/skb_201907.html" />
<meta property=”og:description” content=”schedule” />

</head>

<body>
	<div class="menu bpHead">
		<div class="bpHeadFirstLine"> 
			<img class="left"
			src="https://storage.googleapis.com/skb-bucket/03_contents_gallery/01_icon/badminton.png" alt=""
			style="width: 35px; height: 35px;">
			<div class="fontSize_150 text_align_center">SKB badminton</div>
		</div>
		<div class="bpHeadSecondLine"> 
			<div class="r33 left menubutton bgGrey">
				<a href="entrance">Home</a></div>
			<div class="r33 left menubutton bgWhite">
				<a href="entrance">We are</a></div>
			<div class="r33 left menubutton bgWhite">
				<a href="entrance">Map</a></div>
		</div>
	</div>
	
	<div class="space ">EcofriendlyHooney</div>
	
	<div class="bpbody"> 
		<c:forEach var="skb" items="${list}">
		<!-- 	One Unit START -->
			 <button class="accordion">	
				<div class="oneUnit r90 left">
					<div class="r20  left">
						<div class=" ">${skb.skb_event_id}</div>
						<div class=" ">TBD</div>
					</div>
					<div class= " r70">
						<div class=" ">
							<div class="r40 left ">18:99</div>
							<div class="r10 left "> ~ </div>
							<div class="r35 left ">21:99</div> 
						</div>
						<div class=" "> -blank
							<div class="r40 left ">${skb.skb_event_title}</div>
							<div class="r10 left "> ~ </div>
							<div class="r35 left ">TBD</div> 
					    </div>
					</div>
				</div>
			 </button>
			<div class="panel">
				<div>${skb.skb_event_text_01}</div>
		  		<div>${skb.skb_event_text_02}</div>
		  		<div>${skb.skb_event_text_03}</div>
			</div> 
		<!-- 	One Unit END -->	
		</c:forEach>
	</div>
	
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