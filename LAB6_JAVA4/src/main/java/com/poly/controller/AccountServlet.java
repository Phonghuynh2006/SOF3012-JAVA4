package com.poly.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet({
    "/account/sign-up",
    "/account/change-password",
    "/account/edit-profile"
})
public class AccountServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setAttribute("message", "Bạn đang ở AccountServlet");
        req.getRequestDispatcher("/page.jsp").forward(req, resp);
    }
}

//<!-- _____  _    _  ____  _   _  _____ _    _ _    ___     ___   _ _    _ 
//|  __ \| |  | |/ __ \| \ | |/ ____| |  | | |  | \ \   / / \ | | |  | |
//| |__) | |__| | |  | |  \| | |  __| |__| | |  | |\ \_/ /|  \| | |__| |
//|  ___/|  __  | |  | | . ` | | |_ |  __  | |  | | \   / | . ` |  __  |
//| |    | |  | | |__| | |\  | |__| | |  | | |__| |  | |  | |\  | |  | |
//|_|    |_|  |_|\____/|_| \_|\_____|_|  |_|\____/   |_|  |_| \_|_|  |_|
//                                                                       -->
                                                                      