package com.fssa.freshbye;

import java.io.IOException;
import com.fssa.freshbye.service.UserService;
import com.fssa.freshbye.service.exception.ServiceException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DeleteUser")
public class DeleteAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	

		UserService userService = new UserService();
	
		try {

			HttpSession session = request.getSession();
			String email = (String) session.getAttribute(SessionConstants.LOGGED_IN_EMAIL);
			System.out.println("Here is your UsrId is " +email);
			int UserId = userService.getIdByEmailService(email);
			boolean deleted = userService.deleteUser(UserId);

			if (deleted) {
				response.sendRedirect("/freshbye-web/login.jsp");
			} else {

				response.sendRedirect("/freshbye-web/profile.jsp");
			}
		} catch (ServiceException e) {

			e.printStackTrace();

			response.sendRedirect("/freshbye-web/profile.jsp");
		} 
	}
}