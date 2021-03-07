/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logics;

import java.io.IOException;
import java.util.LinkedList;
import models.RolUsuario;
import models.TipoDocumento;
import models.Usuario;
import org.json.JSONObject;
import logics.ServiceFactory;
import java.util.List;
import org.json.JSONObject;
import org.json.JSONObject;
import org.json.JSONObject;

import models.HomeInfo;
import org.json.JSONArray;

/**
 *
 * @author genyu
 */
public class UsuarioDao {

    private final String URLServer = new ServiceFactory().getBackendURLServer();

    private final String urlLogin = URLServer + "/auth/login";
    private final String urlCredentials = URLServer + "/auth/credentials";
    private final String urlProfile = URLServer + "/auth/profile";

    private final String urlUsers = URLServer + "/users";

    public UsuarioDao() {
    }

    public Usuario login(String correo, String clave) throws IOException {

        String body = "{\"correo\":\"" + correo + "\",\"clave\":\"" + clave + "\"}";

        HttpConnection apiConnection = new HttpConnection();
        String responseApi = apiConnection.doPost(urlLogin, body);

        if (responseApi == "") {
            return new Usuario();
        }

        JSONObject userJSON = new JSONObject(responseApi);

        if (userJSON.getInt("estado") == 0) {
            return new Usuario();
        }

        Usuario usuario = new Usuario(
                userJSON.getInt("id_usuario"),
                new TipoDocumento(
                        userJSON.getInt("id_tipo_documento"),
                        userJSON.getString("nombre_documento"),
                        userJSON.getString("abreviatura")
                ),
                new RolUsuario(
                        userJSON.getInt("id_rol_usuario"),
                        userJSON.getString("nombre_rol")
                ),
                userJSON.getString("nombres"),
                userJSON.getString("apellidos"),
                userJSON.getInt("numero_documento"),
                userJSON.getString("correo"),
                userJSON.getString("clave"),
                userJSON.getString("cargo"),
                userJSON.getString("ciudad"),
                userJSON.getString("direccion"),
                userJSON.getString("telefono"),
                userJSON.getInt("estado"),
                userJSON.getString("genero")
        );

        return usuario;
    }

    public boolean updateClave(int idUsuario, String claveReg, String claveNue) throws IOException {
        String body = "{\"currentPassword\":\"" + claveNue + "\",\"oldPassword\":\"" + claveReg + "\"}";

        HttpConnection apiConnection = new HttpConnection();
        String responseApi = apiConnection.doPut(urlCredentials + "/" + idUsuario, body);

        return (responseApi.contains("Contraseña actualizada"));
    }

    public boolean updatePerfil(Usuario usuario) throws IOException {
        String body = "{\"ciudad\":\"" + usuario.getCiudad() + "\",\"telefono\":\"" + usuario.getTelefono() + "\",\"direccion\":\"" + usuario.getDireccion() + "\",\"correo\":\"" + usuario.getCorreo() + "\"}";

        System.out.println(body);

        HttpConnection apiConnection = new HttpConnection();
        String responseApi = apiConnection.doPut(urlProfile + "/" + usuario.getIdUsuario(), body);

        return (responseApi.contains("Perfil Actualizado"));
    }

    public boolean update(Usuario usuario, int idUser) throws IOException {

        String body = "{\"fk_tipo_documento\":\"" + usuario.getObjTipoDocumento().getIdTipoDocumento()
                + "\",\"nombres\":\"" + usuario.getNombres()
                + "\",\"apellidos\":\"" + usuario.getApellidos()
                + "\",\"numero_documento\":\"" + usuario.getNumeroDocumento()
                + "\",\"ciudad\":\"" + usuario.getCiudad()
                + "\",\"correo\":\"" + usuario.getCorreo()
                + "\",\"cargo\":\"" + usuario.getCargo()
                + "\",\"direccion\":\"" + usuario.getDireccion()
                + "\",\"telefono\":\"" + usuario.getTelefono()
                + "\",\"genero\":\"" + usuario.getGenero()
                + "\"}";

        System.out.println(body);

        HttpConnection apiConnection = new HttpConnection();
        String responseApi = apiConnection.doPut(urlUsers + "/" + idUser, body);

        System.out.println(responseApi);

        return (responseApi.contains("Se actualizó un registro en la base de datos"));
    }

    public boolean insert(Usuario usuario) throws IOException {
        String body = "{\"fk_tipo_documento\":\"" + usuario.getObjTipoDocumento().getIdTipoDocumento()
                + "\",\"fk_rol_usuario\":\"" + usuario.getObjRolUsuario().getIdRolUsuario()
                + "\",\"nombres\":\"" + usuario.getNombres()
                + "\",\"apellidos\":\"" + usuario.getApellidos()
                + "\",\"numero_documento\":\"" + usuario.getNumeroDocumento()
                + "\",\"ciudad\":\"" + usuario.getCiudad()
                + "\",\"correo\":\"" + usuario.getCorreo()
                + "\",\"cargo\":\"" + usuario.getCargo()
                + "\",\"direccion\":\"" + usuario.getDireccion()
                + "\",\"telefono\":\"" + usuario.getTelefono()
                + "\",\"genero\":\"" + usuario.getGenero()
                + "\"}";

        System.out.println(body);

        HttpConnection apiConnection = new HttpConnection();
        String responseApi = apiConnection.doPost(urlUsers, body);

        return (responseApi.contains("Se creó un nuevo registro en la base de datos"));
    }

    public List<Object> seeAll(String rol) throws IOException {
        HttpConnection apiConnection = new HttpConnection();

        String responseApi = apiConnection.doGet(urlUsers + "/" + rol);

        JSONArray arrayUsers = new JSONObject(responseApi).getJSONArray(rol);
        List<Object> list = new LinkedList<>();

        for (int i = 0; i < arrayUsers.length(); i++) {
            JSONObject userJSON = (JSONObject) arrayUsers.get(i);

            Usuario usuario = new Usuario(
                    userJSON.getInt("id_usuario"),
                    new TipoDocumento(
                            userJSON.getInt("fk_tipo_documento"),
                            userJSON.getString("nombre_documento"),
                            userJSON.getString("abreviatura")
                    ),
                    new RolUsuario(
                            userJSON.getInt("fk_rol_usuario"),
                            userJSON.getString("nombre_rol")
                    ),
                    userJSON.getString("nombres"),
                    userJSON.getString("apellidos"),
                    userJSON.getInt("numero_documento"),
                    userJSON.getString("correo"),
                    userJSON.getString("clave"),
                    userJSON.getString("cargo"),
                    userJSON.getString("ciudad"),
                    userJSON.getString("direccion"),
                    userJSON.getString("telefono"),
                    userJSON.getInt("estado"),
                    userJSON.getString("genero")
            );

            list.add(usuario);
        }
        return list;
    }

    public Usuario getById(int idUser) throws IOException {
        HttpConnection apiConnection = new HttpConnection();

        String responseApi = apiConnection.doGet(urlUsers + "/" + idUser);

        JSONObject userJSON = new JSONObject(responseApi).getJSONObject("user");

        Usuario usuario = new Usuario(
                userJSON.getInt("id_usuario"),
                new TipoDocumento(
                        userJSON.getInt("fk_tipo_documento"),
                        userJSON.getString("nombre_documento"),
                        userJSON.getString("abreviatura")
                ),
                new RolUsuario(
                        userJSON.getInt("fk_rol_usuario"),
                        userJSON.getString("nombre_rol")
                ),
                userJSON.getString("nombres"),
                userJSON.getString("apellidos"),
                userJSON.getInt("numero_documento"),
                userJSON.getString("correo"),
                userJSON.getString("clave"),
                userJSON.getString("cargo"),
                userJSON.getString("ciudad"),
                userJSON.getString("direccion"),
                userJSON.getString("telefono"),
                userJSON.getInt("estado"),
                userJSON.getString("genero")
        );

        return usuario;
    }

    public boolean cambioEstado(int idUsuario, int estado) throws IOException {
        HttpConnection apiConnection = new HttpConnection();
        String body = "";
        String method = "";
        if (estado == 1) {
            method = "deshabilitar";
        } else {
            method = "habilitar";
        }
        
        System.out.println(urlUsers + "/" + method + "/" + idUsuario);
        String responseApi = apiConnection.doPut(urlUsers + "/" + method + "/" + idUsuario, body);

        if(estado == 0){
            return (responseApi.contains("Se habilitó un registro en la base de datos"));
        }else{
            return (responseApi.contains("Se deshabilitó un registro en la base de datos"));
        }
    }
    /*
    public int delete(int idUsuario) {
        try {
            String sql = "DELETE FROM usuarios WHERE id_usuario=?";
            PreparedStatement ps = conn.getConnection().prepareStatement(sql);
            ps.setInt(1, idUsuario);
            int rows = ps.executeUpdate();
            return rows;
        } catch (SQLException e) {
            System.out.println("Error UsuarioDao.eliminar: " + e.getMessage());
            return 0;
        }
    }*/
}
