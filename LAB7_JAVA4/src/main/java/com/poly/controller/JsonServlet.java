package com.poly.controller;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;
import java.io.IOException;
import jakarta.servlet.http.HttpServletRequest;

@WebServlet("/json")
public class JsonServlet {

protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    resp.setContentType("application/json");
	    resp.setCharacterEncoding("UTF-8");
	    String json = "{ \"manv\": \"TeoNV\", \"hoTen\": \"Nguyễn Văn Tèo\", \"gioiTinh\": true, \"luong\": 950.5 }";
	    resp.getWriter().print(json);
	}
}
