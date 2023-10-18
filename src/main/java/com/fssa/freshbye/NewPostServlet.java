package com.fssa.freshbye;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.freshbye.model.Post;
import com.fssa.freshbye.service.PostService;
import com.fssa.freshbye.service.exception.ServiceException;
import com.fssa.freshbye.validation.exceptions.InvalidPostException;
import com.fssa.freshbye.validation.exceptions.InvalidUserException;

/**
 * Servlet implementation class NewPostServlet
 */
@WebServlet("/createPost")
public class NewPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userEmail = (String) session.getAttribute(SessionConstants.LOGGED_IN_EMAIL);
// here userMail is null and postId in 0 all time
		
	System.out.println("session retreive loggedUser email:" + userEmail);
	Post post = new Post();
	post.setPostImage(request.getParameter("postImgURL"));
	post.setTitle(request.getParameter("postTitle"));
	post.setDescription(request.getParameter("postDescription"));
	post.setUserMail(userEmail);
		
	PostService postservice = new PostService();
		System.out.print("Post_Img_URL : "+post.getPostImage()+" "+"Post_Img_getTitle : "+post.getTitle()+"  "+"Post_Img_Description : "+	post.getDescription()+" "+post.getUserMail());
		
		try {
			
			postservice.createPost(post);
			
			response.sendRedirect(request.getContextPath() + "/home");
		} catch (ServiceException e) {
			
			e.printStackTrace();
		} catch (InvalidPostException e) {
			
			e.printStackTrace();
		} catch (InvalidUserException e) {
		
			e.printStackTrace();
		}

	}

}
