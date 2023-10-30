package com.fssa.freshbye;

import java.io.IOException;

import com.fssa.freshbye.model.*;
import com.fssa.freshbye.service.*;
import com.fssa.freshbye.service.exception.ServiceException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
System.out.println("Login page Reached..");
		String email = request.getParameter("email");
		String Password = request.getParameter("password");
		User user1 = new User();
		user1.setMail(email);
		user1.setPassword(Password);

		try {
			UserService service = new UserService();
			service.loginUser(email,Password);

			HttpSession session = request.getSession();
			session.setAttribute(SessionConstants.LOGGED_IN_EMAIL, email);
			System.out.println("Storing loggedUser email:" + email);
			
	
			response.sendRedirect(request.getContextPath()+"/home");
		} catch (ServiceException e) {
			e.printStackTrace();
			response.sendRedirect(request.getContextPath()+"/login.jsp?errorMessage=" + e.getMessage());
		}
	}
}