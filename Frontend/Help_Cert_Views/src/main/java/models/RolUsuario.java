/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.Timestamp;

/**
 *
 * @author genyu
 */
public class RolUsuario {
    
    
    private int idRolUsuario;
    private String nombreRol;

    public RolUsuario() {
    }

    public RolUsuario(int idRolUsuario, String nombreRol) {
        this.idRolUsuario = idRolUsuario;
        this.nombreRol = nombreRol;
    }

    public int getIdRolUsuario() {
        return idRolUsuario;
    }

    public void setIdRolUsuario(int idRolUsuario) {
        this.idRolUsuario = idRolUsuario;
    }

    public String getNombreRol() {
        return nombreRol;
    }

    public void setNombreRol(String nombreRol) {
        this.nombreRol = nombreRol;
    }

    @Override
    public String toString() {
        return "RolUsuario{" + "idRolUsuario=" + idRolUsuario + ", nombreRol=" + nombreRol + '}';
    }

}
