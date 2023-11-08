package com.fssa.freshbye;

import java.io.IOException;
import com.fssa.freshbye.model.*;
import com.fssa.freshbye.service.*;
import com.fssa.freshbye.service.exception.ServiceException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/create")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		User user = new User();
		String Username = request.getParameter("UserName");

		String contextPath = request.getContextPath();
		String firstLetter = Character.toString(Username.charAt(0)).toUpperCase();
		String profilePicUrl = contextPath + "/assest/images/profilepics/" + firstLetter + ".png";
		user.setProfileImage(profilePicUrl);

		user.setMail(request.getParameter("email"));
		user.setUsername(Username);
		user.setMobileno(request.getParameter("mobileno"));

		String Password = request.getParameter("password");
		// PasswordEncryptAndDecryptService encryption = new
		// PasswordEncryptAndDecryptService();
		// String password =encryption.Encrypt(Password);
		user.setPassword(Password);
		UserService userService = new UserService();
		try {

			if (userService.registerUser(user)) {
				String email = request.getParameter("email");
				System.out.println("Registered User email : " + email);
				HttpSession session = request.getSession();
				request.setAttribute("infoMessage", "Successfully Registered");
				session.setAttribute(SessionConstants.LOGGED_IN_EMAIL, email);
				response.sendRedirect(request.getContextPath() + "/home");
			} else {
				request.setAttribute("errorMessage", "Signup failed");
				RequestDispatcher dispatcher = request.getRequestDispatcher("/Signup.jsp");
				dispatcher.forward(request, response);
			}

		} catch (ServiceException e) {
			e.printStackTrace();
			request.setAttribute("errorMessage", e.getMessage());
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Signup.jsp");
			dispatcher.forward(request, response);
		}
	}
}
