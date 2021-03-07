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
import logics.UsuarioDao;
import models.Usuario;

/**
 *
 * @author genyu
 */
public class HabilitarUsuarioController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        GlobalInfoDao globalInfo = new GlobalInfoDao();

        RequestDispatcher rd;

        HttpSession session = request.getSession();
        Usuario currentUser = new Usuario();
        currentUser = (Usuario) session.getAttribute("usuario");

        if (currentUser != null) {

            int estado = Integer.parseInt(request.getParameter("estado"));
            int idUserParam = Integer.parseInt(request.getParameter("idUser"));

            UsuarioDao usuarioDao = new UsuarioDao();
            Boolean status = usuarioDao.cambioEstado(idUserParam, estado);

            if (status == true) {
                globalInfo.useAlerts("success", "Novedad registrada.", "top", request);
            } else {
                globalInfo.useAlerts("danger", "Validación Fallida, intente nuevamente.", "top", request);
            }

            switch (currentUser.getObjRolUsuario().getNombreRol()) {

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
            response.sendRedirect(request.getContextPath() + "/homepage");
        }
    }
}
