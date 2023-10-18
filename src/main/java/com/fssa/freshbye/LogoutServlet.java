package com.fssa.freshbye;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.freshbye.service.UserService;
import com.fssa.freshbye.service.exception.ServiceException;

import java.io.IOException;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session == null) {
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			return;
		}

		String email = (String) session.getAttribute(SessionConstants.LOGGED_IN_EMAIL);
		System.out.println("User ID is " + email);

		try {
			int userId = UserService.getIdByEmailService(email);
			boolean deleted = UserService.logoutAccount(userId);

			if(deleted) {
				session.removeAttribute(SessionConstants.LOGGED_IN_EMAIL);
				System.out.println("Logout Successfully, Welcome anytime");
				System.out.println("Existing Session ID:" + session.getId());
				session.invalidate();
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("/home").forward(request, response);
			}
		} catch (ServiceException e) {
			e.printStackTrace();
			request.getRequestDispatcher("/Error.jsp").forward(request, response);
		}
	}
}
