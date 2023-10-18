<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.fssa.freshbye.SessionConstants"%>
<%@page import="com.fssa.freshbye.model.Post"%>
<%@page import="com.fssa.freshbye.service.LikeService"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.util.Collections, java.util.List"%>
<%@page import="java.util.List"%>

<html>
<head>
<title>Error Page</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assest/Styles/Home.css">

<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>

    <style>
        body {
            background-color: lightblue;
            font-family: Arial, sans-serif;
        }
        .error-container {
            text-align: center;
            padding: 50px;
        }
        .error-image {
            width: 200px;
            height: 200px;
            margin-bottom: 40px;
        }
        .error-text {
            color: #333;
            font-size: 24px;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <img src="path_to_your_image" alt="Error Image" class="error-image">
        <p class="error-text">Aaaah! Something went wrong. Brace yourself till we get the error fixed. You may also refresh the page or try again later.</p>
    </div>


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
						href="<%=request.getContextPath()%>/assest/pages/Home.html">
							<i class="bx bx-home-alt icon"></i> <span class="text nav-text">Home</span>
					</a></li>
					<li class="nav-link"><a
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
