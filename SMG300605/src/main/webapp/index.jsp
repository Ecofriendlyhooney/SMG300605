<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>

<style>
.button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

.button1 {
	border-radius: 2px;
}

.button2 {
	border-radius: 4px;
}

.button3 {
	border-radius: 8px;
}

.button4 {
	border-radius: 12px;
}

.button5 {
	border-radius: 50%;
}
</style>
</head>

<body>
	<form action="/HooneyCRUD/badminton/skb/entrance" method="get"
		target="_blank">
		<button class="button button4">Public entrance</button>
	</form>
	<form action="/HooneyCRUD/badminton/skb/admin" method="get"
		target="_blank">
		<button class="button button4">Admin View</button>
	</form>
	<form action="/HooneyCRUD/badminton/skb/admin/skbform" method="get"
		target="_blank">
		<button class="button button4">Add SKB schedule</button>
	</form>
	<form action="/HooneyCRUD/dance/tse/entrance" method="get"
		target="_blank">
		<button class="button button4">TSE Public entrance</button>
	</form>
	<form action="/HooneyCRUD/dance/tse/admin" method="get" target="_blank">
		<button class="button button4">TSE Admin View</button>
	</form>
	<form action="/HooneyCRUD/dance/tse/admin/tseform" method="get"
		target="_blank">
		<button class="button button4">TSE add</button>
	</form>

</body>
</html>



