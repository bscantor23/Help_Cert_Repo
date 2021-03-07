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
import logics.GlobalInfoDao;
import logics.UsuarioDao;
import models.Genero;
import models.TipoDocumento;
import models.Usuario;

/**
 *
 * @author genyu
 */
public class CrearUsuarioController extends HttpServlet {
    
    private String lastType;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        RequestDispatcher rd;
        
        System.out.println("entra");

        GlobalInfoDao globalInfo = new GlobalInfoDao();

        String nombresParam = request.getParameter("nombres");
        String apellidosParam = request.getParameter("apellidos");

        int tipoDocumentoParam = Integer.parseInt(request.getParameter("tipo_documento"));
        int numeroDocumentoParam = Integer.parseInt(request.getParameter("numero_documento"));

        int rolParam = 0;
        switch (request.getParameter("rol")) {
            case "funcionario":
                rolParam = 3;
                break;
            case "team":
                rolParam = 2;
                break;
        }

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
            Boolean status = usuarioDao.insert(usuario);
            System.out.println(status);
            if (status == true) {
                globalInfo.useAlerts("success", "Usuario registrado.", "top", request);

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

                rd = request.getRequestDispatcher("app/modulos/3_usuarios/details-user.jsp");
                rd.forward(request, response);
            }
        } else {
            globalInfo.useAlerts("danger", "Sesión Invalidada", "top", request);

            rd = getServletContext().getRequestDispatcher("pages/index.jsp");
            rd.forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String type = "";
        
        if (request.getParameter("type") == null) {
            type = lastType;
        } else {
            type = request.getParameter("type");
            lastType = type;
        }
        
        HttpSession session = request.getSession();
        Usuario currentUser = new Usuario();
        currentUser = (Usuario) session.getAttribute("usuario");
 
        if (type.equals("") || (!(type.equals("funcionario")) && !(type.equals("team")))) {
            type = "usuario";
        }
        
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

        session.setAttribute("userInfo", null);
        session.setAttribute("tipo_docs", (new GlobalInfoDao().getDocsInfo()));
        session.setAttribute("typeUser", type);
        session.setAttribute("title", "crear " + type);
        session.setAttribute("method", "POST");
        session.setAttribute("action", "crearusuario?type=" + type);

        RequestDispatcher rd;

        rd = request.getRequestDispatcher("app/modulos/3_usuarios/details-user.jsp");
        rd.forward(request, response);
    }

}
