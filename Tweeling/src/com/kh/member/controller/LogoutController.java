package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutController
 */
@WebServlet("/logout.me")
public class LogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogoutController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//로그아웃 처리 - session 만료시키기 또는 session에 loginUser 정보 삭제하기
		
		//세션 정리 후 메인페이지 응답하기 
		HttpSession session = request.getSession();
		
		//방법1) 세션 만료 (초기화)
//		session.invalidate();
		
		//방법2) 세션에 해당 유저 정보만 삭제 removeAttribute 사용
		session.removeAttribute("loginUser");
		
		//재요청 방식으로 응답 /jsp
		response.sendRedirect(request.getContextPath());
		//보고있던 페이지로 돌아가기
//		response.sendRedirect(request.getHeader("referer"));
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
