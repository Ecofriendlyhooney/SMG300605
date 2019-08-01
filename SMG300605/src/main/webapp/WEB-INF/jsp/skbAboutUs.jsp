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
    
<title>we are</title>
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
			<div class="fontSize_150 text_align_center">SKB badminton</div>
		</div>
		<div class="bpHeadSecondLine"> 
			<div class="r33 left menubutton bgWhite">
				<a href="entrance">Home</a></div>
			<div class="r33 left menubutton bgGrey">
				<a href="skbweare">About us</a></div>
			<div class="r33 left menubutton bgWhite">
				<a href="skbmap">Map</a></div>
		</div>
	</div>
	
	<div class="space ">EcofriendlyHooney</div>
	SKB 活動
	<div class="content__wrapper">
					<video width=100% height=auto loading="lazy" controls>
						<source
							src="https://storage.googleapis.com/skb-bucket/03_contents_gallery/03_about_us/about_us_practice_movie_01.mp4"
							type="video/mp4">
					</video>
					<image
						src="https://storage.googleapis.com/skb-bucket/03_contents_gallery/03_about_us/about_us_01.jpg"
						width=100% height=auto loading="lazy" /> <image
						src="https://storage.googleapis.com/skb-bucket/03_contents_gallery/03_about_us/about_us_02.jpg"
						width=100% height=auto loading="lazy" /> <image
						src="https://storage.googleapis.com/skb-bucket/03_contents_gallery/03_about_us/about_us_03.jpg"
						width=100% height=auto loading="lazy" /> <image
						src="https://storage.googleapis.com/skb-bucket/03_contents_gallery/03_about_us/about_us_04.jpg"
						width=100% height=auto loading="lazy" /> <image
						src="https://storage.googleapis.com/skb-bucket/03_contents_gallery/03_about_us/about_us_05.jpg"
						width=100% height=auto loading="lazy" /> 
	</div>

	
</body>

</html>