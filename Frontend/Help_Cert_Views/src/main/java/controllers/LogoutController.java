/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logics.GlobalInfoDao;

/**
 *
 * @author genyu
 */
public class LogoutController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        session.invalidate();

        String method = (String) request.getAttribute("method");

        if (method == null || method == "") {
            new GlobalInfoDao().useAlerts("info", "Sesión finalizada.", "top", request);
        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("pages/inicio.jsp");
        requestDispatcher.forward(request, response);
    }
}
