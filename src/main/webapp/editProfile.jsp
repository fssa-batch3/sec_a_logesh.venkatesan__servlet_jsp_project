<!DOCTYPE html>
<%@page import="com.fssa.freshbye.model.User"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assest/Styles/notify.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assest/Styles/EditProfile.css">
<title>Edit Profile | FreshBYE</title>
</head>

<body>
	<div class="menu">
		<div class="logo">
			<a href="#"><span>Fresh</span>BYE</a>
		</div>
	
	</div>
	<div id="HoleCard">
		<div id="ImageContainer">
			<img src="${userProfile}" alt="UserImg"
				id="LoginImg">
		</div>
		<div id="form">
			<form action="<%=request.getContextPath()%>/UpdateProfileServlet" id="form_container" class="container" method="Post">
				<h2 id="titleofForm">
					Edit <span>Profile</span>
				</h2>
				<input type="text" id="Username" name="Username" value="${userName}"
					title="User Must Fill All Credential" placeholder="Enter User Name"
					pattern="[A-Za-z]{3,32}" required> <input type="url"
					name="UserProfile" title="User Must Fill All Credential"
					id="Profile" placeholder="Enter profile URL" value="${userProfile}" required> <input
					type="tel" name="UserMobile" placeholder="Enter Your Mobile Number " value="${userMobile}"
					title="User Must Fill All Credential" 
                    id="number" pattern="^\[789]\d{9}$"
					required>


				<button id="edited">Save</button>
				<small id="createacc">I want to<span><a
						href="<%=request.getContextPath()%>/UserProfile"> Go Back</a></span></small>
			</form>
		</div>
	</div>
	<script src="/library/notify.js"></script>
	<script>
		
	</script>

</body>

</html>