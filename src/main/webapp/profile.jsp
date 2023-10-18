<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com -->
<%@page import="com.fssa.freshbye.UserProfileServlet"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assest/Styles/notify.css">
<title>Profile | FreshBYE</title>
<!----======== CSS ======== -->

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/library/notify.js">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assest/Styles/Home.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assest/Styles/Styles/profile.css">
<!----===== Boxicons CSS ===== -->
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>


<style>
.main-flex{
display:flex;
flex-direction: column;
}

.ProfileCards{

height: 22em;
    width: 18em;
    border: 16px;
    border-radius: 9px;
    margin-left: 3em;
    margin-right: 3em;
    border: solid 2px yellow;

}
.CardsOfFeatures{
margin-top:20em;
display:flex;
flex-direction: row;
margin-left:12em;
margin-right: 3em;

}

</style>
<!--<title>Dashboard Sidebar Menu</title>-->
</head>

<body oncontextmenu="return false;">
	<div class="main-flex">
		<section id="home" class="home">
			<img
				src="${userProfile.profileImage}"
				alt="Profile" id="profimg">
			<div id="contentprof">
				<h1 class="title">
					<span class="sub-title"></span>
				</h1>
				<div id="div">
					<h2 class="key">UserName:</h2>
					<h2 class="value" id="name">${userProfile.username}</h2>

				</div>
				<div id="div">
					<h2 id="emailkey" class="key">Email:</h2>
					<h2 class="value" id="emailvalue">${userProfile.mail}</h2>

				</div>
				<div id="div">
					<h2 id="Numberkey" class="key">Number:</h2>
					<h2 class="value" id="Numbervalue">${userProfile.mobileno}</h2>

				</div>



				<a href="<%=request.getContextPath()%>/EditProfile">
					<button id="edit" class="edit">Edit</button>
				</a> <a href="<%=request.getContextPath()%>/DeleteUser">
					<button id="delete" class="delete">Delete</button>
				</a>
			</div>
			</section>
			<br>
<div class="CardsOfFeatures">
<a href="<%=request.getContextPath()%>/mypost"><img alt="MyPOst" class="ProfileCards" src="<%=request.getContextPath()%>/assest/images/MY POST.png"></a>
<a href="<%=request.getContextPath()%>/mypost"><img alt="MyPOst" class="ProfileCards"src="<%=request.getContextPath()%>/assest/images/Friends Posts.png"></a>
<a href="<%=request.getContextPath()%>/home"><img alt="MyPOst" class="ProfileCards"src="<%=request.getContextPath()%>/assest/images/Add Friends.png"></a>

</div>
		


	</div>
	<script src="<%=request.getContextPath()%>/library/notify.js"></script>
	<nav class="sidebar close">
		<header>
			<div class="image-text">
				<div class="text logo-text">
					<img src="./assest/images/Images/logos/new_logo.png" alt="logo"
						class="logo"> <span class="name">FreshBYE</span> <span
						class="profession">Fresh BY Entertainment</span>
				</div>
				<i class="bx bx-chevron-right toggle"></i>
			</div>
		</header>
		<div class="menu-bar">
			<div class="menu">
				<ul class="menu-links">
					<li class="search-box"><i class="bx bx-search icon"></i> <input
						type="text" placeholder="Search..."></li>
					<li class="nav-link"><a
						href="<%=request.getContextPath()%>/assest/pages/Home.html"> <i
							class="bx bx-home-alt icon"></i> <span class="text nav-text">Home</span>
					</a></li>
					<%-- <li class="nav-link"><a
						href="<%=request.getContextPath()%>/assest/pages/chatroom (2).html">
							<i class="bx bx-chat icon"></i> <span class="text nav-text">Chats</span>
					</a></li>
					<li class="nav-link"><a
						href="<%=request.getContextPath()%>/assest/pages/Byevideo.jsp">
							<i class="bx bx-play icon"></i> <span class="text nav-text">Videos</span>
					</a></li>
					<li class="nav-link"><a
						href="<%=request.getContextPath()%>/assest/pages/Invite_page.jsp">
							<i class="bx bx-plus icon"></i> <span class="text nav-text">Invite</span>
					</a></li> --%>
					<li class="nav-link"><a
						href="<%=request.getContextPath()%>/UserProfile"> <i
							class="bx bx-user icon"></i> <span class="text nav-text">Profile</span>
					</a></li>
					<li class="nav-link"><a href="<%=request.getContextPath()%>/LogoutServlet"> <i
							class="bx bx-exit icon"></i> <span class="text nav-text">Logout</span>
					</a></li>
				</ul>
			</div>
			<div class="bottom-content">
				<li class="mode">
					<div class="sun-moon">
						<i class="bx bx-moon icon moon"></i> <i class="bx bx-sun icon sun"></i>
					</div> <span class="mode-text text">Dark mode</span>
					<div class="toggle-switch">
						<span class="switch"></span>
					</div>
				</li>
			</div>
		</div>
	</nav>

	<section>
		<!-- Your JSP page content goes here -->
	</section>

	<script>
        // Your JavaScript code goes here
        const body = document.querySelector('body'),
            section = document.querySelector('section'),
            sidebar = body.querySelector('nav'),
            toggle = body.querySelector(".toggle"),
            searchBtn = body.querySelector(".search-box"),
            modeSwitch = body.querySelector(".toggle-switch"),
            modeText = body.querySelector(".mode-text");

        toggle.addEventListener("click", () => {
            sidebar.classList.toggle("close");
        });

        searchBtn.addEventListener("click", () => {
            sidebar.classList.remove("close");
        });

        modeSwitch.addEventListener("click", () => {
            body.classList.toggle("dark");
            section.classList.toggle("dark");

            if (body.classList.contains("dark")) {
                modeText.innerText = "Light mode";
            } else {
                modeText.innerText = "Dark mode";
            }
        });
    </script>
</body>

</html>