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
import logics.DbConnection;
import logics.GlobalInfoDao;
import logics.UsuarioDao;
import models.Usuario;

/**
 *
 * @author genyu
 */
public class ActualizarClave extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        GlobalInfoDao globalInfo = new GlobalInfoDao();

        RequestDispatcher rd;

        int idParam = Integer.parseInt(request.getParameter("id"));
        String claveRegParam = request.getParameter("claveReg");
        String claveNueParam = request.getParameter("claveNue");

        HttpSession session = request.getSession();
        Usuario currentUser = new Usuario();
        currentUser = (Usuario) session.getAttribute("usuario");

        if (currentUser != null) {

            UsuarioDao usuarioDao = new UsuarioDao();
            boolean status = usuarioDao.updateClave(currentUser.getIdUsuario(), claveRegParam, claveNueParam);

            if (status == true) {
                globalInfo.useAlerts("info", "Información actualizada.", "top", request);
                LogoutController objLog = new LogoutController();
                objLog.doGet(request, response);
            } else {
                switch (currentUser.getObjRolUsuario().getNombreRol()) {

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

                globalInfo.useAlerts("danger", "Validación Fallida, intente nuevamente.", "bottom", request);

                rd = request.getRequestDispatcher("app/modulos/1_perfil/credentials.jsp");
                rd.forward(request, response);
            }
        } else {
            globalInfo.useAlerts("danger", "Sesión Invalidada", "top", request);

            rd = getServletContext().getRequestDispatcher("pages/index.jsp");
            rd.forward(request, response);
        }

    }
}
