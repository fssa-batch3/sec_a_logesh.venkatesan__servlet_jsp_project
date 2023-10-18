<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FreshBye</title>
</head>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-image:url("https://i.etsystatic.com/28315923/r/il/9220e0/3358645887/il_fullxfull.3358645887_nmt2.jpg");
 background-size: cover;
 

}
.Cont{
margin-top:16em;

height:20em;
width:25em;
backdrop-filter: blur(10px);


}

h1 {
	
	color: #333;
	text-align: center;
}

p {
	text-align: center;
}

button {
	background-color: #4CAF50;
	border: none;
	color: white;
	border-radius:10px;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	
	cursor: pointer;
}

div {
	margin-left: 600px;
}
</style>
<body>
<div class="Cont">
	<h1>Welcome to our FreshBye Website!</h1>
	<p>Join our community and share your photos with the world.</p>
	
		<button onclick="location.href='login.jsp'">Login</button>
		<button onclick="location.href='registration.jsp'">Register</button>
	
	
	</div>
</body>
</html>
