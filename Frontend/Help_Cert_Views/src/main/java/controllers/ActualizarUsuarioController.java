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
public class ActualizarUsuarioController extends HttpServlet {
    
    private int idUsuario=0;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        RequestDispatcher rd;

        GlobalInfoDao globalInfo = new GlobalInfoDao();

        int idUserParam = Integer.parseInt(request.getParameter("idUser"));
        String nombresParam = request.getParameter("nombres");
        String apellidosParam = request.getParameter("apellidos");

        int tipoDocumentoParam = Integer.parseInt(request.getParameter("tipo_documento"));
        int numeroDocumentoParam = Integer.parseInt(request.getParameter("numero_documento"));
        int rolParam = 0;

        String ciudadParam = request.getParameter("ciudad");
        String correoParam = request.getParameter("correo");
        String cargoParam = request.getParameter("cargo");
        String direccionParam = request.getParameter("direccion");
        String telefonoParam = request.getParameter("telefono");
        String generoParam = request.getParameter("genero");

        Usuario usuario = new Usuario(
                tipoDocumentoParam, rolParam, nombresParam,
                apellidosParam, numeroDocumentoParam, correoParam,
                cargoParam, ciudadParam, direccionParam,
                telefonoParam, generoParam
        );

        HttpSession session = request.getSession();
        Usuario currentUser = new Usuario();
        currentUser = (Usuario) session.getAttribute("usuario");

        if (currentUser != null) {

            UsuarioDao usuarioDao = new UsuarioDao();
            Boolean status = usuarioDao.update(usuario, idUserParam);

            if (status == true) {
                globalInfo.useAlerts("success", "Usuario actualizado.", "top", request);

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

                globalInfo.useAlerts("danger", "Validación fallida, intente nuevamente.", "bottom", request);
                request.setAttribute("idUser", idUserParam);
                this.doGet(request, response);
            }
        } else {
            globalInfo.useAlerts("danger", "Sesión Invalidada", "top", request);

            rd = getServletContext().getRequestDispatcher("pages/index.jsp");
            rd.forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println(request.getAttribute("idUser"));

        int idUser = 0;
        if (request.getParameter("idUser") == null) {
            idUser = idUsuario;
        } else {
            idUser = Integer.parseInt(request.getParameter("idUser"));
            idUsuario = idUser;
        }

        String type = request.getParameter("type");

        HttpSession session = request.getSession();
        Usuario currentUser = new Usuario();
        currentUser = (Usuario) session.getAttribute("usuario");

        UsuarioDao usuarioDao = new UsuarioDao();
        Usuario userInfo = usuarioDao.getById(idUser);

        session.setAttribute("tipo_docs", (new GlobalInfoDao().getDocsInfo()));
        session.setAttribute("userInfo", userInfo);
        session.setAttribute("type", "usuario");
        session.setAttribute("idUser", idUser);
        session.setAttribute("title", "actualizar usuario");
        session.setAttribute("method", "POST");
        session.setAttribute("action", "actualizarusuario?idUser=" + idUser);

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

        RequestDispatcher rd;

        rd = request.getRequestDispatcher("app/modulos/3_usuarios/details-user.jsp");
        rd.forward(request, response);
    }
}
