<%@page import="com.fssa.freshbye.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User List</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>User List</h1>
    <%
        // Get the list of users from the session
        @SuppressWarnings("unchecked")
        List<User> users = (List<User>) session.getAttribute("User");
        for (User user : users) {
            // Don't display the current user
            if (!user.getMail().equals(session.getAttribute("SessionConstants.LOGGED_IN_EMAIL"))) {
    %>
        <div class="user">
            <img src="<%= User.getProfileImage() %>" alt="Profile Picture" class="profile-picture">
            <span class="username"><%= user.getUsername() %></span>
            <button class="follow-button">Follow</button>
            <button class="cancel-button">Cancel</button>
        </div>
    <% 
            }
        } 
    %>

  
</body>
</html>
