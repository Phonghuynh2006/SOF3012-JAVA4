package poly.com.controller;


import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import poly.com.dao.ShareDAO;
import poly.com.dao.impl.ShareDAOImpl;

@WebServlet("/share-summary")
public class ShareSummaryServlet extends HttpServlet {

    private ShareDAO shareDAO = new ShareDAOImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        List<Object[]> list = shareDAO.shareSummary();
        req.setAttribute("summaries", list);

        req.getRequestDispatcher("/views/share-summary.jsp").forward(req, resp);
    }
}
