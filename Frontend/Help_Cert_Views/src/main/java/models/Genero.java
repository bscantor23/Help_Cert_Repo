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
public class Genero {

    private int idGenero;
    private String nombreGenero;
    private String abreviatura;
    private Timestamp createdAt;
    private Timestamp updatedAt;

    public Genero() {
    }

    public Genero(int idGenero, String nombreGenero, String abreviatura) {
        this.idGenero = idGenero;
        this.nombreGenero = nombreGenero;
        this.abreviatura = abreviatura;
    }

    public int getIdGenero() {
        return idGenero;
    }

    public void setIdGenero(int idGenero) {
        this.idGenero = idGenero;
    }

    public String getNombreGenero() {
        return nombreGenero;
    }

    public void setNombreGenero(String nombreGenero) {
        this.nombreGenero = nombreGenero;
    }

    public String getAbreviatura() {
        return abreviatura;
    }

    public void setAbreviatura(String abreviatura) {
        this.abreviatura = abreviatura;
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

    @Override
    public String toString() {
        return "Genero{" + "idGenero=" + idGenero + ", nombreGenero=" + nombreGenero + ", abreviatura=" + abreviatura + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + '}';
    }
  
}
