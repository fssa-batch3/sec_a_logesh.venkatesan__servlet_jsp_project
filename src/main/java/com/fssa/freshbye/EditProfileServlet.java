package com.fssa.freshbye;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.fssa.freshbye.model.User;

@WebServlet("/EditProfile")
public class EditProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        User userProfile = (User) session.getAttribute("userProfile");
        System.out.println("Here is your User Object Data is "+userProfile);

        if (userProfile != null) {
            String userName = userProfile.getUsername();
            String userMobile = userProfile.getMobileno();
            String profileImgUrl =userProfile.getProfileImage();
String Password = userProfile.getPassword();
System.out.println("Here is your User password is "+Password);
            try {
            	 request.setAttribute("userName", userName);
                 request.setAttribute("userMobile", userMobile);
                 request.setAttribute("userProfile", profileImgUrl);
                 session.setAttribute("Password", Password);
				request.getRequestDispatcher("/editProfile.jsp").forward(request, response);
			} catch (ServletException e) {
				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
                   } else {
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
        }
    }
}
