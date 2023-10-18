package com.fssa.freshbye;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.freshbye.model.User;
import com.fssa.freshbye.service.UserService;
import com.fssa.freshbye.service.exception.ServiceException;

@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserService userService = new UserService();
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute(SessionConstants.LOGGED_IN_EMAIL);
		String password = (String) session.getAttribute("Password");
		   System.out.println("Here is your User Password is "+password);
		String name = request.getParameter("Username");
		String phoneNumber = request.getParameter("UserMobile");
		String ProfileUrl = request.getParameter("UserProfile");
	

		User updatedUser = new User();
		updatedUser.setProfileImage(ProfileUrl);
		updatedUser.setMobileno(phoneNumber);
		updatedUser.setUsername(name);
		updatedUser.setMail(email);
		updatedUser.setPassword(password);

		try {
			userService.updateUser(updatedUser);
			request.setAttribute("userProfile", updatedUser);
			
		} catch (ServiceException e) {

			e.printStackTrace();
		}
		response.sendRedirect("UserProfile");

	}
}
