/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logics.GlobalInfoDao;
import logics.UsuarioDao;
import models.Usuario;

/**
 *
 * @author genyu
 */
public class LoginController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        Usuario usuario = new Usuario();
        usuario = (Usuario) session.getAttribute("usuario");

        session.setAttribute("homeinfo", new GlobalInfoDao().getGlobalInfo());

        RequestDispatcher rd;

        if (session.getAttribute("usuario") == null) {
            response.sendRedirect(request.getContextPath() + "/homepage");
            new GlobalInfoDao().useAlerts("info", "Sesión finalizada.", "top", request);
        } else {
            new GlobalInfoDao().useAlerts("info", "¡Bienvenido a Help_Cert!.", "top", request);
            switch (usuario.getObjRolUsuario().getNombreRol()) {
                case "Funcionario":
                    rd = request.getRequestDispatcher("app/index_funcionario.jsp");
                    rd.forward(request, response);
                    break;

                case "Admin de Admin":
                    rd = request.getRequestDispatcher("app/index_admin.jsp");
                    rd.forward(request, response);
                    break;

                case "Team Controller":
                    rd = request.getRequestDispatcher("app/index_team.jsp");
                    rd.forward(request, response);
                    break;
            }

        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        session.setMaxInactiveInterval(60 * 20);
        String userParam = request.getParameter("correo");
        String passParam = request.getParameter("clave");

        UsuarioDao usuarioDao = new UsuarioDao();
        Usuario usuario = usuarioDao.login(userParam, passParam);

        RequestDispatcher rd;

        if (usuario.getIdUsuario() != 0) {

            session.setAttribute("usuario", usuario);
            session.setAttribute("homeinfo", new GlobalInfoDao().getGlobalInfo());
            new GlobalInfoDao().useAlerts("info", "¡Bienvenido a Help_Cert!", "top", request);
            switch (usuario.getObjRolUsuario().getNombreRol()) {

                case "Funcionario":
                    rd = request.getRequestDispatcher("app/index_funcionario.jsp");
                    rd.forward(request, response);
                    break;

                case "Admin de Admin":
                    rd = request.getRequestDispatcher("app/index_admin.jsp");
                    rd.forward(request, response);
                    break;

                case "Team Controller":
                    rd = request.getRequestDispatcher("app/index_team.jsp");
                    rd.forward(request, response);
                    break;
            }

        } else {
            new GlobalInfoDao().useAlerts("danger", "Creedenciales Inválidas.", "top", request);
            rd = request.getRequestDispatcher("pages/inicio.jsp");
            rd.forward(request, response);
        }

    }

}
