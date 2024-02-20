package com.smhrd3.postcontroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.smhrd3.model.DAO;
import com.smhrd3.model.MemberDTO;
import com.smhrd3.postmodel.PostDAO;
import com.smhrd3.postmodel.PostDTO;

@WebServlet("/upLoad")
public class upLoad extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String postFile = request.getParameter("postFile");
		String postContent = request.getParameter("postContent");
		String email = request.getParameter("emailtoken");
		PostDTO dto = new PostDTO();
//		MemberDTO uploaddto = (MemberDTO)session.getAttribute("result");
//		String mb_Email = uploaddto.getMb_Email();
//		dto.setMb_Email(mb_Email);
		dto.setMb_Email(email);
		dto.setPost_File(postFile);
		dto.setPost_Content(postContent);
		System.out.println(dto);
		PostDAO dao = new PostDAO();
		int row = dao.upLoad(dto);
		if(row>0) {
			System.out.println(dto);
			session.setAttribute("upload", dto);
		}
		response.sendRedirect("index.jsp");
		
		
		
	}

}
