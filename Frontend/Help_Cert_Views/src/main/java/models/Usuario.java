/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.InputStream;
import java.sql.Timestamp;

/**
 *
 * @author genyu
 */
public class Usuario {

    private int idUsuario;
    private TipoDocumento objTipoDocumento;
    private RolUsuario objRolUsuario;
    private String nombres;
    private String apellidos;
    private int numeroDocumento;
    private String correo;
    private String clave;
    private String cargo;
    private String ciudad;
    private String direccion;
    private String telefono;
    private int estado;
    private String estadoLetters;
    private String estadoIcon;
    private String genero;
    private int contratos;

    private Timestamp createdAt;
    private Timestamp updatedAt;

    public Usuario() {
    }

    public Usuario(int idTipoDocumento, int idRolUsuario, String nombres, String apellidos, int numeroDocumento, String correo, String cargo, String ciudad, String direccion, String telefono, String genero) {
        this.objTipoDocumento = new TipoDocumento();
        this.objTipoDocumento.setIdTipoDocumento(idTipoDocumento);
        this.objRolUsuario = new RolUsuario();
        this.objRolUsuario.setIdRolUsuario(idRolUsuario);
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.numeroDocumento = numeroDocumento;
        this.correo = correo;
        this.cargo = cargo;
        this.ciudad = ciudad;
        this.direccion = direccion;
        this.telefono = telefono;
        this.genero = genero;
    }

    public Usuario(int idUsuario, TipoDocumento objTipoDocumento, RolUsuario objRolUsuario, String nombres, String apellidos, int numeroDocumento, String correo, String clave, String cargo, String ciudad, String direccion, String telefono, int estado, String genero) {
        this.idUsuario = idUsuario;
        this.objTipoDocumento = objTipoDocumento;
        this.objRolUsuario = objRolUsuario;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.numeroDocumento = numeroDocumento;
        this.correo = correo;
        this.clave = clave;
        this.cargo = cargo;
        this.ciudad = ciudad;
        this.direccion = direccion;
        this.telefono = telefono;
        this.estado = estado;
        this.genero = genero;
        this.estadoLetters = getEstadoLetters();
        this.estadoIcon = getEstadoIcon();
    }

    public String getEstadoLetters() {
        if (estado == 0) {
            return "Inactivo";
        } else {
            return "Activo";
        }
    }
    
    public String getEstadoIcon() {
        if (estado == 0) {
            return "left";
        } else {
            return "right";
        }
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public TipoDocumento getObjTipoDocumento() {
        return objTipoDocumento;
    }

    public void setObjTipoDocumento(TipoDocumento objTipoDocumento) {
        this.objTipoDocumento = objTipoDocumento;
    }

    public RolUsuario getObjRolUsuario() {
        return objRolUsuario;
    }

    public void setObjRolUsuario(RolUsuario objRolUsuario) {
        this.objRolUsuario = objRolUsuario;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public int getNumeroDocumento() {
        return numeroDocumento;
    }

    public void setNumeroDocumento(int numeroDocumento) {
        this.numeroDocumento = numeroDocumento;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public Timestamp getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Timestamp updatedAt) {
        this.updatedAt = updatedAt;
    }

    public int getContratos() {
        return contratos;
    }

    public void setContratos(int contratos) {
        this.contratos = contratos;
    }

    @Override
    public String toString() {
        return "Usuario{" + "idUsuario=" + idUsuario + ", objTipoDocumento=" + objTipoDocumento + ", objRolUsuario=" + objRolUsuario + ", nombres=" + nombres + ", apellidos=" + apellidos + ", numeroDocumento=" + numeroDocumento + ", correo=" + correo + ", clave=" + clave + ", cargo=" + cargo + ", ciudad=" + ciudad + ", direccion=" + direccion + ", telefono=" + telefono + ", estado=" + estado + ", genero=" + genero + ", contratos=" + contratos + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + '}';
    }

}
