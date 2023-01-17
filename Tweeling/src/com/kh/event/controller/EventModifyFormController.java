package com.kh.event.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.event.model.service.EventService;
import com.kh.event.model.vo.Event;

@WebServlet("/eventModifyForm.event")
public class EventModifyFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EventModifyFormController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EventService eService = new EventService();
		int eventNo = Integer.parseInt(request.getParameter("eventNo"));
		Event ev = eService.selectDetailedEvent(eventNo);
		response.setContentType("application/json; charset=UTF-8");
        new Gson().toJson(ev, response.getWriter());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
