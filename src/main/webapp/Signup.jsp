<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assest/Styles/DR_signup.css">

<link rel="stylesheet" href="/library/notify.js">
<title>User Login | FreshBYE</title>

</head>
<style>
p {
	position: fixed;
	right: 0;
	width: 20em;
	margin-right: 12px;
	padding: 10px;
	border-radius: 5px;
}

p.error {
	color: #D8000C;
	background-color: #FFD2D2;
	border: 1px solid #D8000C;
}

p.Success {
	color: Green;
	background-color: #d1f1de;
	border: 1px solid #D8000C;
}

img.failed {
	height: 13px;
	width: 14px;
}
</style>
<body>
	<div class="menu">
		<div class="logo">
			<a href="#"><span>Fresh</span>BYE</a>
		</div>

		<%
		if (request.getAttribute("errorMessage") != null) {
		%>
		<p class="error">
			<img class="failed"
				src="https://clipart-library.com/images/gTe5bLznc.gif"><%=request.getAttribute("errorMessage")%></p>
		<%
		}
		%>
		<%
		if (request.getAttribute("infoMessage") != null) {
		%>
		<p class="Success">
			<%
			request.getAttribute("infoMessage");
			%>
		</p>
		<%
		}
		%>
	</div>
	<div id="HoleCard">

		<div id="form">
			<form action="create" id="form_container" class="container"
				method="POST">
				<h2 id="titleofForm">
					User <span>Sign UP</span>
				</h2>
				<input type="text" id="Username" value="Ravi" name="UserName"
					pattern="[a-zA-Z0-9_]{3,20}"
					title="Username should only contain alphanumeric characters and underscores. Length should be 5-20 characters."
					required> <input type="text" value="Ravi@gmail.com"
					name="email" placeholder="Enter Your Email" id="email"
					pattern="^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,6}$" required>

				<input type="text" value="8270852018"
					placeholder="Enter Your Whatsapp Number" id="number"
					name="mobileno" pattern="^[789]\d{9}$" required> <input
					type="password"
					title="Password must contain: Minimum 8 characters, at least 1 uppercase letter, 1 lowercase letter, 1 number, and 1 special character"
					placeholder="Enter password: @Example12" name="password" required
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#\$%\^&*_=+-]).{8,}"
					id="password">


				<button>Login Now</button>
				<small id="createacc">I Already Have a Account <span><a
						href="<%=request.getContextPath()%>/login.jsp">Login Now</a></span></small>
			</form>
		</div>
	</div>

</body>

</html>