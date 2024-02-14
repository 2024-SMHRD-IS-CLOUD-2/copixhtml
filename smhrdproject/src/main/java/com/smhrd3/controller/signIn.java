package com.smhrd3.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd3.model.DAO;
import com.smhrd3.model.MemberDTO;

@WebServlet("/Login")
public class signIn extends HttpServlet {
	private static final long serialVersionUID = 1L; 

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	request.setCharacterEncoding("utf-8");
	String email = request.getParameter("email");
	String pw = request.getParameter("pw");
	MemberDTO dto = new MemberDTO();
	dto.setEmail(email);
	dto.setPw(pw);
	DAO dao = new DAO();
	MemberDTO result = dao.login(dto);
	if(result != null) {
		HttpSession session = request.getSession();
		session.setAttribute("result",result);
	}
	response.sendRedirect("index.jsp");
	
	
	
	}

}
