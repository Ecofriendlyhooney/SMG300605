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
<!-- <style></style> -->

</head>

<body>
	<div class="menu bpHead clearfix">
		<div class="bpHeadFirstLine"> 
			<img class="left"
			src="https://storage.googleapis.com/skb-bucket/03_contents_gallery/01_icon/badminton.png" alt=""
			style="width: 50px; height: 45px;">
			<div class="fontSize_150">SKB badminton</div>
		</div>
		<div class="bpHeadSecondLine"> 
			<div>
				<div class="r20 left menubutton">
					<a href="entrance">Home</a></div>
				<div class="r20 left menubutton">
					<a href="entrance">We are</a></div>
				<div class="r20 left menubutton">
					<a href="entrance">Map</a></div>
			</div>
		</div>
	</div>
	
	<!-- 	One Unit START -->
	<!-- <div class="bpbody space">
		<div class="oneUnit">
			<div class="r20 yellow left">
				<div class="red ">07/27</div>
				<div class="grey ">sun</div>
			</div>
			<div class= "brown ">
				<div class="red">d
					<div class="r40 left bgYellow">19:30</div>
					<div class="r10 left bgBlue"> ~ </div>
					<div class="r35 left bgYellow">21:30</div> 
				</div>
				<div class="grey "> -blank
					<div class="r40 left bgYellow">19:30</div>
					<div class="r10 left bgBlue"> ~ </div>
					<div class="r35 left bgYellow">21:30</div> 
					<div class="r40 left">19:30</div>
					<div class="r20 left">~</div>
					<div class="r40 left">21:30</div>
			    </div>
			</div>
		</div>
	</div> -->
<!-- 	One Unit END -->
	<div class="bpbody space"> </div>
		
		
	<c:forEach var="skb" items="${list}">
	<%-- 	<div>${tse.id}</div>
		<div>${tse.name}</div> --%>
			
	<!-- 	One Unit START -->
	 <button class="accordion">
	  	
			<div class="oneUnit r90 left">
				<div class="r20 yellow left">
					<div class="red ">{skb.event_date}</div>
					<div class="grey ">TBD</div>
				</div>
				<div class= "brown r70">
					<div class="red">
						<div class="r40 left bgYellow">{skb.event_time_start}</div>
						<div class="r10 left bgBlue"> ~ </div>
						<div class="r35 left bgYellow">{skb.event_time_end}</div> 
					</div>
					<div class="grey "> -blank
						<div class="r40 left bgYellow">${skb.event_place_id}</div>
						<div class="r10 left bgBlue"> ~ </div>
						<div class="r35 left bgYellow">TBD</div> 
				    </div>
				</div>
			</div>
<!-- 			<div class="oneUnit r5 center">
				+
			</div> -->
			
	 </button>
	<div class="panel">
  		${tse.name}
	</div> 
	

<!-- 	One Unit END -->
	</c:forEach>

	<div class="copyright space">Powered by EcofriendlyHooney</div>
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