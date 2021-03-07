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

/**
 *
 * @author User
 */
public class SitePagesController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        RequestDispatcher rd;
        switch (action) {

            case "inicio":  
                rd = request.getRequestDispatcher("pages/inicio.jsp");
                rd.forward(request, response);
                break;

            case "acercade":
                rd = request.getRequestDispatcher("pages/acerca_de.jsp");
                rd.forward(request, response);
                break;

            case "servicios":
                rd = request.getRequestDispatcher("pages/servicios.jsp");
                rd.forward(request, response);
                break;

            case "contacto":
                rd = request.getRequestDispatcher("pages/contacto.jsp");
                rd.forward(request, response);
                break;

        }

    }
}
