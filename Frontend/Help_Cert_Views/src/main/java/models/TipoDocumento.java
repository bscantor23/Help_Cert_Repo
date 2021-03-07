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

public class TipoDocumento {
    
    private int idTipoDocumento;
    private String nombreDocumento;
    private String abreviatura;

    public TipoDocumento() {
    }

    public TipoDocumento(int idTipoDocumento, String nombreDocumento, String abreviatura) {
        this.idTipoDocumento = idTipoDocumento;
        this.nombreDocumento = nombreDocumento;
        this.abreviatura = abreviatura;
    }

    public int getIdTipoDocumento() {
        return idTipoDocumento;
    }

    public void setIdTipoDocumento(int idTipoDocumento) {
        this.idTipoDocumento = idTipoDocumento;
    }

    public String getNombreDocumento() {
        return nombreDocumento;
    }

    public void setNombreDocumento(String nombreDocumento) {
        this.nombreDocumento = nombreDocumento;
    }

    public String getAbreviatura() {
        return abreviatura;
    }

    public void setAbreviatura(String abreviatura) {
        this.abreviatura = abreviatura;
    }

    @Override
    public String toString() {
        return "TipoDocumento{" + "idTipoDocumento=" + idTipoDocumento + ", nombreDocumento=" + nombreDocumento + ", abreviatura=" + abreviatura + '}';
    }

}
