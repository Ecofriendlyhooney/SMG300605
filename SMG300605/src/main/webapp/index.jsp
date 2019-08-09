<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>

<style>
.button {
	
	border: none;
	color: white;
	padding: 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 5rem;
	margin: 4px 2px;
	cursor: pointer;
}
.bgGreen {
	background-color: #4CAF50; /* Green */
}

.bgRed {
	background-color: ##FF0000; /* Red */ 
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
	<form action="/badminton/skb/entrance" method="get"
		target="_blank">
		<button class="button button4" style="background-color: #4CAF50; margin:2rem; padding:5rem ">SKB Public entrance</button>
	</form>
</body>
</html>



