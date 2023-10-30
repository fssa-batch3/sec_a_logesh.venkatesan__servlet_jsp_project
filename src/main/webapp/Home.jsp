<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com -->
<%@page import="com.fssa.freshbye.SessionConstants"%>
<%@page import="com.fssa.freshbye.model.Post"%>
<%@page import="com.fssa.freshbye.model.User"%>
<%@page import="com.fssa.freshbye.service.LikeService"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.util.Collections, java.util.List"%>
<%@page import="java.util.List"%>

<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home |FreshBYE</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assest/Styles/Home.css">

<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>

<style>
#Fixed-position-section {

	height: 47em;
	width: 50em;
	margin:auto;
	
	overflow-y: scroll;
}

#post-section {
	
	height: 51em;
	width: 45em;
	margin-left: 2em;
	
}

.Likes {
	display: inline-block;
	padding: 10px 20px;
	font-size: 16px;
	margin-left: 0.4em;
	border-radius: 5px;
	text-decoration: none;
	background-color: #ff0000;
	color: white;
	border: none;
	transition: background-color 0.3s ease;
}

.Likes:hover {
	background-color: #cc0000;
}

a.Block {
	display: inline-block;
	padding: 10px 20px;
	font-size: 16px;
	margin-left: 1em;
	border-radius: 5px;
	text-decoration: none;
	background-color: #ff0000;
	color: white;
	border: none;
	transition: background-color 0.3s ease;
}

a.Block:hover {
	background-color: #cc0000;
}
</style>
</head>

<body>
	<%
	@SuppressWarnings("unchecked")
	List<Post> listOfPost = (List<Post>) request.getAttribute("posts");
	List<Post> reversedListOfPost = new ArrayList<>(listOfPost);
	Collections.reverse(reversedListOfPost);
	System.out.println();
	System.out.println(listOfPost);

	boolean isAdmin = (boolean) session.getAttribute(SessionConstants.IS_ADMIN);
	%>


	<div id="Home" class="Home">
		<div id="title" class="text">Posts</div>
		<div id="Fixed-position-section">
			<div id="post-section">


				<%
				LikeService likeService = new LikeService();
				System.out.println();
				System.out.println("Post's Likes retrive from Data belw");
				System.out.println();
				System.out.println("     ---------------------------------");
				System.out.println("     |   PostId     |  No.Of.Likes   |");
				System.out.println("     ---------------------------------");
				for (Post post : reversedListOfPost) {
					int postId = post.getpostId();
					String s = post.getUserProfile();
					int likeCount = likeService.getLikeCount(postId);
					System.out.println("     |      " + postId + "       |       " + likeCount + "        |");
				%>


				<div id="solo-post">
					<div id="profile-post">
						<img src="<%= s %>"
							alt="Profile">
						<h2 id="profile-name"><%=post.getUsername()%></h2>
					</div>
					<img alt="post" id="Post" class="profile-post"
						src="<%=post.getPostImage()%>">
					<h2 id="discription_title"><%=post.getTitle()%></h2>
					<p id="description">
						<%=post.getDescription()%>
					</p>
					<div>

						<a class="Likes"
							href="<%=request.getContextPath()%>/addLike?postId=<%=post.getpostId()%>"><span><%=likeCount%></span>
							Likes</a> 
						<%
						if (isAdmin == true) {
						%>
						<a class="Block"
							href="<%=request.getContextPath()%>/Block?postId=<%=post.getpostId()%>&postUserEmail=<%=post.getUserMail()%>">Block</a>

						<%
						}
						%>
					</div>
				</div>
				<%
				}
				%>
				<%
				System.out.println("     --------------------------------");
				%>
			</div>
		</div>
		
		
		<div class="appointment" id="appointpage"></div>

		<div class="Add_post">
			<a href="<%=request.getContextPath()%>/NewPost.jsp"><button
					class="post">New Post</button></a>
		</div>

	</div>
	
	

	<div id="commentholecontainer">
		<div id="comprof">
			<h2 id="title">Comments</h2>
			<p id="cancel12">Cancel</p>
		</div>

		<div id="commentcontainer"></div>

		<div id="containeer">
			<input type="textarea" id="contentpost"
				placeholder=" write something here...">
			<button id="sent">Send</button>
		</div>
	</div>
	
	<!-- Here sidebar starts -->
	<nav class="sidebar close">
		<header>
			<div class="image-text">
				<div class="text logo-text">
					<img
						src="./assest/images/Images/logos/new_logo.png"
						alt="logo" class="logo"> <span class="name">FreshBYE</span>
					<span class="profession">Fresh BY Entertainment</span>
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
						href="<%=request.getContextPath()%>/home">
							<i class="bx bx-home-alt icon"></i> <span class="text nav-text">Home</span>
					</a></li>
			
					<li class="nav-link"><a
						href="<%=request.getContextPath()%>/UserProfile"> <i
							class="bx bx-user icon"></i> <span class="text nav-text">Profile</span>
					</a></li>
					<li class="nav-link"><a href="<%=request.getContextPath()%>/logout"> <i
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

// Check if mode is stored in localStorage
const storedMode = localStorage.getItem("mode");

// Apply the stored mode or default to light mode
if (storedMode === "dark") {
    body.classList.add("dark");
    section.classList.add("dark");
    modeText.innerText = "Light mode";
} else {
    modeText.innerText = "Dark mode";
}

toggle.addEventListener("click", () => {
    sidebar.classList.toggle("close");
});

searchBtn.addEventListener("click", () => {
    sidebar.classList.remove("close");
});

modeSwitch.addEventListener("click", () => {
    body.classList.toggle("dark");
    section.classList.toggle("dark");

    // Update mode in localStorage
    const currentMode = body.classList.contains("dark") ? "dark" : "light";
    localStorage.setItem("mode", currentMode);

    // Update mode text
    if (body.classList.contains("dark")) {
        modeText.innerText = "Light mode";
    } else {
        modeText.innerText = "Dark mode";
    }
});
    </script>
	<%-- <script src="<%=request.getContextPath()%>/library/Sidebar.js"></script> --%>

</body>

</html>