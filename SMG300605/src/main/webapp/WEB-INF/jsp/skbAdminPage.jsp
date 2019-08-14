<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>

<html class="bg-color" xmlns:og="http://ogp.me/ns#">

<head>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());
	gtag('config', 'UA-145004692-1');
</script>

<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!--  -->
<title>SKB Admin page</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta property="og:title" content="Syusei Admin" />
<meta property="og:image"
	content="https://storage.googleapis.com/skb_bucket/03_contents_gallery/syuusei_picture_01.jpg" />
<meta property="og:image:width" content="200" />
<meta property="og:image:height" content="100" />
<meta property="og:description" content="Syusei only" />
</head>

<body>
	<div class="menu bpHead">
		<div class="bpHeadFirstLine">
			<img class="left"
				src="https://storage.googleapis.com/skb_bucket/03_contents_gallery/syuusei_picture_01.jpg"
				alt="" style="width: 4rem; height: 4rem;">
			<div class="fontSize_150"
				style="padding-top: 1rem; padding-bottom: 1rem; background-color: lightgreen; text-align: center">Syusei
				Admin Main</div>
		</div>
	</div>
	<div class="space ">EcofriendlyHooney</div>
	<div class="bpbody">
		<c:forEach var="skb" items="${list}">
			<!-- 	One Unit START -->
			<button class="accordion">
				<div class="oneUnit r90 left">
					<div class="r20  left">
						<div class=" ">${skb.skb_event_date}</div>
						<div class=" ">${skb.skb_event_day}</div>
					</div>
					<div class=" r70">
						<div>
							<div class="r80 left ">${skb.skb_event_start_time}&#160;~&#160;${skb.skb_event_end_time}</div>
						</div>
						<div>
							<div class="r80 left " style="text-align: center;">${skb.skb_event_title}</div>
						</div>
					</div>
				</div>
			</button>

			<div class="panel">
				<div style="color: white;">
					<a href="admin/editskb/${skb.skb_event_id}"> <img
						src="https://storage.googleapis.com/salsa_tokyo_bucket/icons8-edit-48.png"
						style="width: 5rem; height: 5rem;">
						<div>Edit</div>
					</a>
				</div>
				<div>${skb.skb_event_text_01}</div>
				<div>${skb.skb_event_text_02}</div>
				<div>${skb.skb_event_text_03}</div>
				<div>${skb.skb_event_text_04}</div>
				<div>${skb.skb_event_text_05}</div>
				<div>${skb.skb_event_text_06}</div>
				<div>${skb.skb_event_text_07}</div>
				<div>${skb.skb_event_text_08}</div>
				<div>${skb.skb_event_text_09}</div>
				<div>${skb.skb_event_text_10}</div>
				<div>
					<a href="https://line.me/ti/p/m8cLZndgKg">https://line.me/ti/p/m8cLZndgKg</a>
				</div>
			</div>
			<!-- 	One Unit END -->
		</c:forEach>

		<button class="r33 left bgWhite">
			<div >
				<a href="admin/skbform"> <img 
					src="https://storage.googleapis.com/salsa_tokyo_bucket/icons8-add-48.png"
					style="width: 5rem; height: 5rem;">
				</a>
			</div>
		</button>
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
				if (panel.style.maxHeight) {
					panel.style.maxHeight = null;
				} else {
					panel.style.maxHeight = panel.scrollHeight + "px";
				}
			});
		}
	</script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-145004692-1"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
</body>

</html>