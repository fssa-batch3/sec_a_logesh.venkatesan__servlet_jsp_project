package com.fssa.freshbye;

import com.fssa.freshbye.model.Post;
import com.fssa.freshbye.utils.*;
import com.fssa.freshbye.service.PostService;
import com.fssa.freshbye.service.exception.ServiceException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {
	/**
	 * 
	 */
	Logger logger = new Logger();
	private static final long serialVersionUID = 1L;
	private PostService postService = new PostService();
	

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			String userEmail = (String) session.getAttribute(SessionConstants.LOGGED_IN_EMAIL);
			String adminMail = "Admin@gmail.com";
			boolean isAdmin = false;
			if (userEmail != null && userEmail.equals(adminMail)) {
				isAdmin = true;
			}
			session.setAttribute(SessionConstants.IS_ADMIN, Boolean.valueOf(isAdmin));

			logger.debug("LoggedIn  user isAdmin : " + isAdmin);

			// Fetch all posts
			List<Post> posts = postService.viewPost();

			// Add posts to request attributes
			request.setAttribute("posts", posts);
			
			// Forward the request to home.jsp
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Home.jsp");
			dispatcher.forward(request, response);
		

		} catch (ServiceException e) {
			e.printStackTrace();
			System.out.print(e);
			throw new ServletException("Error fetching posts", e);
		}
	}
}	
