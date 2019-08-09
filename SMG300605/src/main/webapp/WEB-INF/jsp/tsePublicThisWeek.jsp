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


<link href="<c:url value="/resources/css/main.css" />"
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


	<div class="menu bpHead">
		<div class="bpHeadFirstLine">
			<img class="left"
				src="https://storage.googleapis.com/salsa_tokyo_bucket/dance-icon-png-15.jpg"
				alt="" style="width: 25px; height: 35px;">
			<div class="fontSize_200 text_align_center">300605 Salsa Event</div>
		</div>

		<div class="bpHeadSecondLine">
			<div class="r33 left menubutton bgWhite">
				<a href="entrance">Today</a>
			</div>
			<div class="r33 left menubutton bgGrey">
				<a href="thisweek">this week</a>
			</div>
			<div class="r33 left menubutton bgWhite">
				<a>blank</a>
			</div>
		</div>
	</div>


	<div class="space ">EcofriendlyHooney</div>



	<div>
		<c:forEach var="tse" items="${list}">
			<!-- 	One Unit START -->
			<button class="accordion">
				<div class="r90 left">
					<div class="r20  left">
						<div class=" ">${tse.tse_event_date}</div>
						<div class=" ">${tse.tse_event_day}</div>
					</div>
					<div class=" r70">
						<div class=" ">
							<div class="r80 left " style="text-align: left;">${tse.tse_event_title}</div>
							
						</div>
						<div class=" ">
							<div class="r30 left " style="text-align: left;" >${tse.tse_event_start_time}</div>
							<div class="left " style="text-align: left;" >&#160;~&#160;</div>
							<div class="r35 left " style="text-align: left;" >${tse.tse_event_end_time}</div>
						</div>
					</div>
				</div>
			</button>

			<div class="panel">
				<div></div>
				<div>${tse.tse_event_text_01}</div>
				<div>${tse.tse_event_text_02}</div>
				<div>${tse.tse_event_text_03}</div>
				<div>${tse.tse_event_text_04}</div>
				<div>${tse.tse_event_text_05}</div>
				<div>${tse.tse_event_text_06}</div>
				<div>${tse.tse_event_text_07}</div>
				<div>${tse.tse_event_text_08}</div>
				<div>${tse.tse_event_text_09}</div>
				<div>${tse.tse_event_text_10}</div>
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