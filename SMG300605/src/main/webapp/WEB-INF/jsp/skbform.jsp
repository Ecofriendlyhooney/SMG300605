<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>

<html class="bg-color" xmlns:og="http://ogp.me/ns#">

<head>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">

<script>
	$(function() {
		$("#datepicker").datepicker();
	});
	
	$(function(){
	    $("#timepicker1").timepicker();
	});
	$(function(){
	    $("#timepicker2").timepicker();
	});
</script>

<script
	src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<script>
$('#timepicker1').timepicker({
    timeFormat: 'h:mm p',
    interval: 30,
    minTime: '09:00',
    maxTime: '23:30',
    defaultTime: '18:30',
    startTime: '09:00',
    dynamic: true,
    dropdown: true,
    scrollbar: true
});
$('#timepicker2').timepicker({
    timeFormat: 'h:mm p',
    interval: 30,
    minTime: '09:00',
    maxTime: '23:30',
    defaultTime: '18:30',
    startTime: '09:00',
    dynamic: true,
    dropdown: true,
    scrollbar: true
});
</script>	
<title>SKB Create</title>

<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<%@ page contentType="text/html; charset=UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<body>
	<div class="menu bpHead">
		<div class="bpHeadFirstLine">
			<img class="left"
				src="https://storage.googleapis.com/skb_bucket/03_contents_gallery/01_icon/badminton.png"
				alt="" style="width: 35px; height: 35px;">
			<div class="fontSize_150 text_align_center">Syusei Admin Create</div>
		</div>

	</div>

	<div class="space ">EcofriendlyHooney</div>

	<div class=" left r90" style="padding-left: 2rem; padding-right: 3rem">

		<div class="r50  left">
			<form:form method="POST"
				action="/300605.com/badminton/skb/admin/save">
				<div class="fontSize_100">
					<input type="text" name="skb_event_title" value="池袋" maxlength="18"
						placeholder="ex) Event Title" />
				</div>
				<div class="inputBorder">
					<input type="text" id="datepicker" name="skb_event_date" value=""
						maxlength="10" placeholder="click (Date)" />
				</div>
				<div class="inputBorder">
					<input type="text" id="timepicker1" name="skb_event_start_time" value="start" 
						maxlength="5" placeholder="click (start Time)" /> 
				</div>
				<div class="inputBorder">
					<input type="text" id="timepicker2" name="skb_event_end_time" value="end"
						maxlength="5" placeholder="click (finish Time)" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_01" value="" maxlength="20"
						placeholder="Text Input 01" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_02" value="詳細はLINEお願いします。"
						maxlength="20" placeholder="Text Input 02" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_03"
						value="参加費は600円です(*^^*)" maxlength="20"
						placeholder="Text Input 03" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_04"
						value="参加費は600円です(*^^*)" maxlength="20"
						placeholder="Text Input 04" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_05"
						value="ご不明点あれば代表までご連絡ください" maxlength="20"
						placeholder="Text Input 05" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_06"
						value="よろしくお願いします(*^^)♪" maxlength="20"
						placeholder="Text Input 06" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_07" value="SKB代表 秀星(しゅうせい)"
						maxlength="20" placeholder="Text Input 07" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_08" value="09081174283"
						maxlength="20" placeholder="Text Input 08" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_09" value="" maxlength="20"
						placeholder="Text Input 09" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_10"
						value="LINEID: ma_ko_to_o" maxlength="20"
						placeholder="Text Input 10" />
				</div>
				<button class="button bgGreen">Save</button>
			</form:form>
		</div>
		<div class="r40  left fontSize_100">
			<div>title</div>
			<div>日付</div>
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
	</div>

	<div class=" left r90"
		style="padding-left: 2rem; padding-right: 3rem; padding-bottom: 10rem">
		<div>
			<form action="/300605.com/badminton/skb/admin" method="get">
				<button class="button bgGreen left ">Cancel</button>
			</form>
		</div>
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
</body>

</html>