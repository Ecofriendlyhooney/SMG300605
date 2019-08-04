<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ include file="/WEB-INF/css/style.css"%> --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>

<html class="bg-color" xmlns:og="http://ogp.me/ns#">

<head>

<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<title>SKB 2019年</title>

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
				src="https://storage.googleapis.com/skb-bucket/03_contents_gallery/01_icon/badminton.png"
				alt="" style="width: 35px; height: 35px;">
			<div class="fontSize_150 text_align_center">Syusei Admin Create</div>
		</div>
		<!-- 		<div class="bpHeadSecondLine"> 
			<div class="r33 left menubutton bgGrey">
				<a href="">Create</a></div>
			<div class="r33 left menubutton bgWhite">
				<a href="">====</a></div>
			<div class="r33 left menubutton bgWhite">
				<a href="">====</a></div>
		</div> -->
	</div>

	<div class="space ">EcofriendlyHooney</div>

	<!-- TODO Roll Select Button -->

	<!-- <button class="accordionSizeCreateNewEvent">	
				<div class="oneUnit r90 left">
					<div class="r20  left">
						<div class=" ">
							<nav> 
							  <select> 
							    <option value="" selected="selected">08/01</option> 
							    <option value="">08/01</option> 
							    <option value="">08/02</option> 
							    <option value="">08/03</option> 
							    <option value="">08/04</option> 
							    <option value="">08/05</option> 
							    <option value="">08/06</option> 
							    <option value="">08/07</option> 
							    <option value="">08/08</option> 
							    <option value="">08/09</option> 
							    <option value="">08/10</option> 
							    <option value="">08/11</option> 
							    <option value="">08/12</option> 
							    <option value="">08/13</option> 
							    <option value="">08/14</option> 
							    <option value="">08/15</option> 
							    <option value="">08/16</option> 
							    <option value="">08/17</option> 
							    <option value="">08/18</option> 
							    <option value="">08/19</option> 
							    <option value="">08/20</option> 
							    <option value="">08/21</option> 
							    <option value="">08/22</option> 
							    
							  </select> 
							</nav>
							
						</div>
						<div class=" ">Sun</div>
					</div>
					<div class= " r70">
						<div class=" ">
							<div class="r40 left ">
								<nav> 
								  <select> 
								    <option value="" selected="selected">18:30</option> 
								    <option value="">18:00</option> 
								    <option value="">18:30</option> 
								    <option value="">19:00</option> 
								    <option value="">19:30</option> 
								    <option value="">20:00</option> 
								    <option value="">18:00</option> 
								    <option value="">18:30</option> 
								    <option value="">19:00</option> 
								    <option value="">19:30</option> 
								    <option value="">20:00</option> 
								    <option value="">18:00</option> 
								    <option value="">18:30</option> 
								    <option value="">19:00</option> 
								    <option value="">19:30</option> 
								    <option value="">20:00</option> 
								    <option value="">18:00</option> 
								    <option value="">18:30</option> 
								    <option value="">19:00</option> 
								    <option value="">19:30</option> 
								    <option value="">20:00</option> 
								    <option value="">18:00</option> 
								    <option value="">18:30</option> 
								    <option value="">19:00</option> 
								    <option value="">19:30</option> 
								    <option value="">20:00</option> 
								  </select> 
								</nav>
							</div>
							<div class="r10 left "> ~ </div>
							<div class="r35 left ">
								<nav> 
								  <select> 
								    <option value="" selected="selected">21:30</option> 
								    <option value="">21:00</option> 
								    <option value="">21:30</option> 
								    <option value="">22:00</option> 
								    <option value="">22:30</option> 
								    <option value="">23:00</option> 
								  </select> 
								</nav>
							</div> 
						</div>
						<div class=" "> 
							<div class="r40 left " >
									SKB-title-default
							</div>
							<div class="r10 left "> ~ </div>
							<div class="r35 left ">empty block</div> 
					    </div>
					</div>
				</div>
			 </button> -->

	<div class=" left r90" style="padding-left: 2rem; padding-right: 3rem">

		<div class="r50  left">
			<form:form method="POST"
				action="/300605.com/badminton/skb/admin/save">
				<div class="fontSize_100">
					<input type="text" name="skb_event_title" value="title" maxlength="18" placeholder="Required"/>
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_date" value="date" maxlength="18" placeholder="08/01"/>
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_day" value="mon" maxlength="5" placeholder="Mon"/>
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_start_time" value="19:00" maxlength="3" placeholder="18:30"/>
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_end_time" value="21:30" maxlength="5" placeholder="21:30"/>
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_01" value="text01" maxlength="5" placeholder="Text Input 01"/>
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_02" value="text02" maxlength="20" placeholder="Text Input 02"/>
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_03" value="text03" maxlength="20" placeholder="Text Input 03" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_04" value="text04" maxlength="20" placeholder="Text Input 04" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_05" value="text05" maxlength="20" placeholder="Text Input 05" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_06" value="text06" maxlength="20" placeholder="Text Input 06" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_07" value="text07" maxlength="20" placeholder="Text Input 07" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_08" value="text08" maxlength="20" placeholder="Text Input 08" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_09" value="text09" maxlength="20" placeholder="Text Input 09" />
				</div>
				<div class="inputBorder">
					<input type="text" name="skb_event_text_10" value="text10" maxlength="20" placeholder="Text Input 10" />
				</div>
				<button class="button bgGreen">Save</button>
			</form:form>
		</div>
		<div class="r40  left fontSize_100">
			<div>title</div>
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