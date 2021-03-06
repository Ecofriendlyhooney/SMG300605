<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.js">
	
</script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">

<script>
	$(function() {
		$("#datepicker").datepicker();
		$.datepicker.setDefaults({
			showOn : "both",
			buttonImageOnly : true,
			buttonImage : "calender.gif",
			buttonText : "Calendar",
			dateFormat : "yy-mm-dd",
			minDate : 0,
			maxDate : +30
		});
	});

	$(function() {
		$("#timepicker1").timepicker({
			timeFormat : 'HH:mm',
			interval : 30,
			defaultTime : '18:30',
			minTime : '09:00',
			maxTime : '23:30',
			dynamic : true,
			dropdown : true,
			scrollbar : true
		});
	});

	$(function() {
		$("#timepicker2").timepicker({
			timeFormat : 'HH:mm',
			interval : 30,
			defaultTime : '21:30',
			minTime : '09:00',
			maxTime : '23:30',
			dynamic : true,
			dropdown : true,
			scrollbar : true
		});
	});
</script>

<script
	src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<title>SKB</title>
</head>
<body>
	<div class="menu bpHead">
		<div class="bpHeadFirstLine">
			<img class="left"
				src="https://storage.googleapis.com/skb_bucket/03_contents_gallery/syuusei_picture_01.jpg"
				alt="" style="width: 4rem; height: 4rem;">
			<div class="fontSize_150"
				style="padding-top: 1rem; padding-bottom: 1rem; background-color: lightgreen; text-align:center">Syusei
				Admin 編集</div>
		</div>
	</div>

	<div class="space">EcofriendlyHooney</div>

	<div class=" left r90" style="padding-left: 2rem; padding-right: 3rem">

		<div class="r50  left">
			<form:form method="POST" action="/badminton/skb/admin/editsave">
				<div class="fontSize_100">
					<input type="hidden" name="skb_event_id"
						value="${skb.skb_event_id}" />
				</div>
				<div class="fontSize_100">
					<input type="text" name="skb_event_title" maxlength="18"
						value="${skb.skb_event_title}" placeholder="Event Title" />
				</div>
				<div class="inputBorder">
					<input type="text" id="datepicker" name="skb_event_date"
						value="${skb.skb_event_date}" maxlength="" placeholder="click " />
				</div>

				<div class="inputBorder">
					<input type="text" id="timepicker1" name="skb_event_start_time"
						value="${skb.skb_event_start_time}" maxlength="8"
						placeholder="click (start Time)" />
				</div>
				<div class="inputBorder">
					<input type="text" id="timepicker2" name="skb_event_end_time"
						value="${skb.skb_event_end_time}" maxlength="8"
						placeholder="click (finish Time)" />
				</div>

				<div class="inputBorder">
					<input type="text" name="skb_event_text_01" maxlength="20"
						value="${skb.skb_event_text_01}" placeholder="Text Input 01" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_02" maxlength="20"
						value="${skb.skb_event_text_02}" placeholder="Text Input 02" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_03" maxlength="20"
						value="${skb.skb_event_text_03}" placeholder="Text Input 03" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_04" maxlength="20"
						value="${skb.skb_event_text_04}" placeholder="Text Input 04" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_05" maxlength="20"
						value="${skb.skb_event_text_05}" placeholder="Text Input 05" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_06" maxlength="20"
						value="${skb.skb_event_text_06}" placeholder="Text Input 06" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_07" maxlength="20"
						value="${skb.skb_event_text_07}" placeholder="Text Input 07" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_08" maxlength="20"
						value="${skb.skb_event_text_08}" placeholder="Text Input 08" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_09" maxlength="20"
						value="${skb.skb_event_text_09}" placeholder="Text Input 09" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_10" maxlength="20"
						value="${skb.skb_event_text_10}" placeholder="Text Input 10" />
				</div>
				<button class=" bgLightGreen left">
					<img
						src="https://storage.googleapis.com/skb_bucket/03_contents_gallery/01_icon/icons8-ok-48.png"
						style="width: 5rem; height: 5rem;"> 
						<div>Edit Save</div>
				</button>
			</form:form>
			<form:form method="POST"
				action="/badminton/skb/admin/logicDeleteskb/${skb.skb_event_id}">
				<button class="left bgWhite">
					<img
						src="https://storage.googleapis.com/skb_bucket/03_contents_gallery/01_icon/icons8-delete-bin-48.png"
						style="width: 5rem; height: 5rem;">
						<div >Delete</div> 
				</button>
				<div>
					<input type="hidden" name="skb_event_id"
						value="${skb.skb_event_id}" />
				</div>
			</form:form>
		</div>
		<div class="r40  left fontSize_100">
			<div>title </div>
			<div>日付 </div>
			<div>start_time </div>
			<div>end_time </div>
		</div>
	</div>

	<div class=" left r90"
		style="padding-left: 2rem; padding-right: 3rem; padding-bottom: 10rem">
		<div>
			<form action="/badminton/skb/admin" method="get">
				<button class="left bgWhite">
					<img
						src="https://storage.googleapis.com/skb_bucket/03_contents_gallery/01_icon/icons8-cancel-48.png"
						style="width: 5rem; height: 5rem;">
						<div>Cancel</div> 				
				</button>
			</form>
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