package com.fssa.freshbye;

import java.io.IOException;
import javax.servlet.ServletException;
import com.fssa.freshbye.service.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.freshbye.service.exception.ServiceException;

/**
 * Servlet implementation class Block
 */
@WebServlet("/Block")
public class BlockServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userEmail = (String) session.getAttribute(SessionConstants.LOGGED_IN_EMAIL);
		System.out.println("session retreive loggedUser email: " + userEmail);
		int postId = Integer.parseInt(request.getParameter("postId"));
		System.out.println("request retreive POstID: " + postId);
		PostService PostService = new PostService();

		try {
			PostService.blockPost(userEmail, postId);
			response.sendRedirect(request.getContextPath() + "/home");
		} catch (ServiceException e) {
			response.sendRedirect(request.getContextPath() + "/home");
			e.printStackTrace();
		}
	}
}
