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
 * @author genyu
 */
public class ContratoController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String action = request.getParameter("action");
        RequestDispatcher rd;

        switch (action) {

            case "crearcontrato":
                rd = request.getRequestDispatcher("app/modulos/2_contratos/contrato_create.jsp");
                rd.forward(request, response);
                break;

            case "contratovisualizar":
                rd = request.getRequestDispatcher("app/modulos/2_contratos/contrato_visualizar.jsp");
                rd.forward(request, response);
                break;

            case "escaneo":
                rd = request.getRequestDispatcher("app/modulos/2_contratos/escaneo.jsp");
                rd.forward(request, response);
                break;

            case "escaneo2":
                rd = request.getRequestDispatcher("app/modulos/2_contratos/escaneo2.jsp");
                rd.forward(request, response);
                break;

            case "otrosi":
                rd = request.getRequestDispatcher("app/modulos/2_contratos/otrosi.jsp");
                rd.forward(request, response);
                break;
        }

    }
}
