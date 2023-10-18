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

<body>
	<div class="menu">
		<div class="logo">
			<a href="#"><span>Fresh</span>BYE</a>
		</div>

	</div>
	<div id="HoleCard">

		<div id="form">
			<form action="create" id="form_container" class="container"
				method="POST">
				<h2 id="titleofForm">
					User <span>Sign UP</span>
				</h2>
				<input type="text" id="Username" value="Ravi" name="UserName"
					placeholder="Enter User Name" pattern="[A-Za-z]{3,32}" required>
				<input type="text" value="Ravi@gmail.com" name="email"
					placeholder="Enter Your Email" id="email"
					pattern="^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,6}$" required>

				<input type="text" value="8270852018"
					placeholder="Enter Your Whatsapp Number" id="number"
					name="mobileno" pattern="^[789]\d{9}$" required>
					
					<input
					type="password" 
					title="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number"
					value="@Veeramuthu12" placeholder="Enter Password" id="password"
					name="password" minlength="8" required
					pattern="/^[a-zA-Z0-9!@#\$%\^\&*_=+-]{8,12}$/g"
					id="password"> 
					
				<button>Login Now</button>
				<small id="createacc">I Already Have a Account <span><a
						href="<%=request.getContextPath()%>/login.jsp">Login Now</a></span></small>
			</form>
		</div>
	</div>

</body>

</html>