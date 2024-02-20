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

@WebServlet("/update")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				request.setCharacterEncoding("utf-8");
				String pw = request.getParameter("pw");
				String email = request.getParameter("email");
				String nickname = request.getParameter("nickname");
				String pwcheck = request.getParameter("pwcheck");
				HttpSession session = request.getSession();
				MemberDTO dto = new MemberDTO();
				dto.setMb_Email(email);
				dto.setMb_Pw(pw);
				dto.setMb_Nickname(nickname);
				dto.setMb_Pwcheck(pwcheck);
				DAO dao = new DAO();
				int row = dao.update(dto);
				if(row>0) {
					session.setAttribute("result", dto);
					response.sendRedirect("index_mypage.jsp");
				}
				else {
					response.sendRedirect("index_mypage.jsp");
				}
		
				
				
	}

}