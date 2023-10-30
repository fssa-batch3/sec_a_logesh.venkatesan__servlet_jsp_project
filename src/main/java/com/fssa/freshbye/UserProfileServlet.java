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

@WebServlet("/UserProfile")
public class UserProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userEmail = (String) session.getAttribute(SessionConstants.LOGGED_IN_EMAIL);
		System.out.print(userEmail);
		UserService userService = new UserService();

		try {
			User userProfile = userService.getUserProfile(userEmail);
			System.out.println("Userm profile"+userProfile);
			if (userProfile != null) {
			session.setAttribute("userProfile", userProfile);

				
		
				request.getRequestDispatcher("/profile.jsp").forward(request, response);
			} else {
				response.sendError(HttpServletResponse.SC_NOT_FOUND, "User profile not found");
			}
		} catch (ServiceException e) {
			e.printStackTrace();
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error retrieving user profile");
		}
	}
}
