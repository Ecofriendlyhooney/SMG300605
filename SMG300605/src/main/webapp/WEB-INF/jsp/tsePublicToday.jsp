<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

<link href="<c:url value="/resources/css/tseMain.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/common.css" />"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<title>300605 Salsa Tokyo</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta property="og:title" content="300605 Salsa Event" />
<meta property="og:image"
	content="https://storage.googleapis.com/salsa_tokyo_bucket/dance-icon-png-15.jpg" />
<meta property="og:image:width" content="200" />
<meta property="og:image:height" content="100" />
<meta property="og:description" content="Salsa for everyone" />

</head>

<body>
	<div class="menu ">
		<div class="width100percent ">
			<img class="floatLeft"
				src="https://storage.googleapis.com/salsa_tokyo_bucket/dance-icon-png-15.jpg"
				alt="" style="width: 1.5rem; height: 2.2rem;">
			<div class="fontSize200rem  textAlignCenter font_Arial">300605 Salsa</div>
		</div>

		<div class="width100percent ">
			<div
				class="width33percent floatLeft menubutton textAlignCenter fontSize200rem"
				id="bglightgoldenrodyellow">
				<a href="entrance"> <img
					src="https://storage.googleapis.com/salsa_tokyo_bucket/icons8-today-48.png"
					style="width: 4rem; height: 4rem;">
				</a>
			</div>
			<div
				class="width33percent floatLeft menubutton textAlignCenter fontSize200rem"
				id="bgWhite">
				<a href="thisweek"> <img
					src="https://storage.googleapis.com/salsa_tokyo_bucket/icons8-calendar-48.png"
					style="width: 4rem; height: 4rem;">
				</a> 
			</div>
			<div
				class="width33percent floatLeft menubutton textAlignCenter fontSize200rem"
				id="bgWhite">
				<a href=""> <img
					src="https://storage.googleapis.com/salsa_tokyo_bucket/icons8-add-48.png"
					style="width: 4rem; height: 4rem;">
				</a> 
			</div>
		</div>
	</div>

	<div class="space ">EcofriendlyHooney</div>

	<div>
		<c:forEach var="tse" items="${list}">
			<!-- 	One Unit START -->
			<button class="accordion ">
				<div class="width90percent floatLeft ">
					<div class="width15percent floatLeft ">
						<div class="fontSize130rem">${tse.tse_event_date}</div>
						<div class="fontSize130rem">${tse.tse_event_day}</div>
					</div>
					<div class=" width85percent floatLeft ">
						<div class=" ">
							<div
								class="width100percent floatLeft fontSize120rem textAlignLeft">&#160;&#160;&#160;&#160;${tse.tse_event_title}</div>
						</div>

						<div class="width20percent floatLeft fontSize130rem textAlignLeft">&#160;&#160;&#160;${tse.tse_event_start_time}</div>
						<div class="floatLeft textAlignLeft">&#160;&#160;&#160;&#160;&#160;&#160;~&#160;&#160;</div>
						<div class="width20percent floatLeft fontSize130rem textAlignLeft">${tse.tse_event_end_time}</div>
						<div class="width45percent floatLeft fontSize130rem">シゲとゆ</div>
					</div>
				</div>
			</button>

			<div class="panel">
				<div></div>
				<div class="fontSize200rem">${tse.tse_event_text_01}</div>
				<div class="fontSize200rem">${tse.tse_event_text_02}</div>
				<div class="fontSize200rem">${tse.tse_event_text_03}</div>
				<div class="fontSize200rem">${tse.tse_event_text_04}</div>
				<div class="fontSize200rem">${tse.tse_event_text_05}</div>
				<div class="fontSize200rem">${tse.tse_event_text_06}</div>
				<div class="fontSize200rem">${tse.tse_event_text_07}</div>
				<div class="fontSize200rem">${tse.tse_event_text_08}</div>
				<div class="fontSize200rem">${tse.tse_event_text_09}</div>
				<div class="fontSize200rem">${tse.tse_event_text_10}</div>
				<br />
			</div>
			<!-- 	One Unit END -->
		</c:forEach>
	</div>

	<div class="space">EcofriendlyHooney</div>
	<div class="copyright">Powered by Ecofriendly Hooney</div>
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