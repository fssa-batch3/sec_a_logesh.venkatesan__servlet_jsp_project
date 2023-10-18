package com.fssa.freshbye;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.fssa.freshbye.dao.exceptions.DAOException;
import com.fssa.freshbye.model.User;
import com.fssa.freshbye.service.UserService;
import com.fssa.freshbye.service.exception.ServiceException;
import com.fssa.freshbye.utils.Logger;

@WebServlet("/userlist")
public class UserList extends HttpServlet {
	/**
	 * 
	 */
	Logger logger = new Logger();
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			List<User> User = UserService.getAllUsers();
			request.setAttribute("Users", User);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Home.jsp");
			dispatcher.forward(request, response);

		} catch (ServiceException e) {
			e.printStackTrace();
			System.out.print(e);
			throw new ServletException("Error fetching posts", e);
		} catch (DAOException e) {

			e.printStackTrace();
		}
	}
}
