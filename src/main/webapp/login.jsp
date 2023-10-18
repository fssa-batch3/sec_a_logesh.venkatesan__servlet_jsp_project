<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assest/Styles/Styles/Style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assest/Styles/notify.css">

<title>User Login | FreshBYE</title>
<style>
body {
	background-image:
		url("<%=request.getContextPath()%>/assest/images/Images/Banner Image/logbg.jpg");
}
</style>
<script>
	function handleFormSubmit(event) {

		event.preventDefault();
		var emailInput = document.getElementById("email");
		sessionStorage.setItem("email", emailInput.value);
		event.target.submit();
	}
</script>
</head>

<body>
	<div class="menu">
		<div class="logo">
			<a href="#"><span>Fresh</span>BYE</a>
		</div>

	</div>
	<div id="HoleCard">

		<div id="form">
			<form action="<%=request.getContextPath()%>/login"
				id="form_container" method="Post" class="container"
				onsubmit="handleFormSubmit(event)">
				<h2 id="titleofForm">
					User's <span>Login</span>
				</h2>
				<input type="email" value="Murugha@gmail.com"
					placeholder="Enter Your Email" id="email" name="email" required>
				<input type="password" name="password" value="Murugha@1234"
					placeholder="Enter Password" id="password" required>

				<button>Login Now</button>
				<small id="createacc">I Don't Have any Account? <span><a
						href="<%=request.getContextPath()%>/Signup.jsp">Create an
							Account</a></span></small>
			</form>
		</div>
	</div>

</body>

</html>
