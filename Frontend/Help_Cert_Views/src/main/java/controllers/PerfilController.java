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
import models.Usuario;

/**
 *
 * @author genyu
 */
public class PerfilController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        Usuario usuario = new Usuario();
        usuario = (Usuario) session.getAttribute("usuario");

        String action = request.getParameter("action");

        RequestDispatcher rd;

        if (session.getAttribute("usuario") == null) {
            response.sendRedirect(request.getContextPath() + "/homepage");
        } else {

            switch (usuario.getObjRolUsuario().getNombreRol()) {

                case "Funcionario":
                    request.setAttribute("componente", "funcionario");
                    break;

                case "Admin de Admin":
                    request.setAttribute("componente", "admin");
                    break;

                case "Team Controller":
                    request.setAttribute("componente", "team");
                    break;
            }

            switch (action) {

                case "profile":
                    rd = request.getRequestDispatcher("app/modulos/1_perfil/profile.jsp");
                    rd.forward(request, response);
                    break;

                case "credentials":
                    rd = request.getRequestDispatcher("app/modulos/1_perfil/credentials.jsp");
                    rd.forward(request, response);
                    break;

            }

        }

    }
}
