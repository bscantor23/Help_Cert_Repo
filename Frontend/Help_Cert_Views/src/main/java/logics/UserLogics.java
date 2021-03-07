/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logics;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Usuario;

/**
 *
 * @author genyu
 */
public class UserLogics {
    
    /*protected void seeAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        DbConnection conn = new DbConnection();
        UsuarioDao usuarioDao = new UsuarioDao();

        HttpSession session = request.getSession();
        Usuario usuario = new Usuario();
        usuario = (Usuario) session.getAttribute("usuario");

        /*List<Usuario> lista = usuarioDao.getAll(usuario.getIdUsuario());
        conn.disconnect();

        request.setAttribute("users", lista);
        RequestDispatcher rd;
        rd = request.getRequestDispatcher("app/modulos/3_usuarios/consultar-usuario.jsp");
        rd.forward(request, response);

    }*/

    /*protected void updateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int idUsuario = Integer.parseInt(request.getParameter("id"));

        DbConnection conn = new DbConnection();
        UsuarioDao usuarioDao = new UsuarioDao(conn);
        Usuario usuario = usuarioDao.getById(idUsuario);

        conn.disconnect();

        request.setAttribute("usuario", usuario);
        RequestDispatcher rd;

        rd = request.getRequestDispatcher("app/modulos/2_vacantes/actualizar-usuario.jsp");
        rd.forward(request, response);

    }

    protected void deleteUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int idUsuario = Integer.parseInt(request.getParameter("id"));

        DbConnection conn = new DbConnection();
        UsuarioDao usuarioDao = new UsuarioDao();
        int respuesta = usuarioDao.delete(idUsuario);

        conn.disconnect();

        RequestDispatcher rd;

        rd = request.getRequestDispatcher("app/modulos/3_usuarios/consultar-usuario.jsp");
        rd.forward(request, response);

    }*/
}
