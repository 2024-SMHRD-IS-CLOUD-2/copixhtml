package com.smhrd3.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd3.model.DAO;
import com.smhrd3.model.MemberDTO;

@WebServlet("/signUp")
public class signUp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String nickname = request.getParameter("nickname");
		String gender = request.getParameter("gender");
		String brith = request.getParameter("birth");
		MemberDTO dto = new MemberDTO();
		dto.setEmail(email);
		dto.setPw(pw);
		dto.setNickname(nickname);
		dto.setGender(gender);
		dto.setBirth(brith);
		DAO dao = new DAO();
		int row = dao.signUp(dto);
		if(row>0) {
			request.setAttribute("member", dto);
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			
		}
		else {
			response.sendRedirect("sign.jsp");
		}
	}

}
