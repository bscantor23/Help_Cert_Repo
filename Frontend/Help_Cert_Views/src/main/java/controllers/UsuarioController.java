/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
public class UsuarioController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");

        HttpSession session = request.getSession();
        Usuario currentUser = new Usuario();
        currentUser = (Usuario) session.getAttribute("usuario");

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
        session.setAttribute("typeUsers", type);

        UsuarioDao usuarioDao = new UsuarioDao();
        RequestDispatcher rd;

        session.setAttribute("users", (usuarioDao.seeAll(type)));
        rd = request.getRequestDispatcher("app/modulos/3_usuarios/lista-usuario.jsp");
        rd.forward(request, response);
    }

}
