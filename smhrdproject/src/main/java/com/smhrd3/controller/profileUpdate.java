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

@WebServlet("/profileUpdate")
public class profileUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String profile = request.getParameter("profile");
		MemberDTO dto = new MemberDTO();
		HttpSession session = request.getSession();
		MemberDTO signindto = (MemberDTO)session.getAttribute("result");
		String email = signindto.getMb_Email();
		dto.setMb_Profile(profile);
		dto.setMb_Email(email);
		DAO dao = new DAO();
		int row = dao.profileUpdate(dto);
		if(row>0) {
			session.setAttribute("result2", dto);
			response.sendRedirect("index_mypage.jsp");
		}
		
		
		
		
	}

}
