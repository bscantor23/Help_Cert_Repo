/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author genyu
 */
public class HomeInfo {

    private int certificados;
    private int funcionarios;
    private int contratos;

    public HomeInfo() {
    }

    public HomeInfo(int certificados, int funcionarios, int contratos) {
        this.certificados = certificados;
        this.funcionarios = funcionarios;
        this.contratos = contratos;
    }

    public int getCertificados() {
        return certificados;
    }

    public void setCertificados(int certificados) {
        this.certificados = certificados;
    }

    public int getFuncionarios() {
        return funcionarios;
    }

    public void setFuncionarios(int funcionarios) {
        this.funcionarios = funcionarios;
    }

    public int getContratos() {
        return contratos;
    }

    public void setContratos(int contratos) {
        this.contratos = contratos;
    }

    @Override
    public String toString() {
        return "HomeInfo{" + "certificados=" + certificados + ", funcionarios=" + funcionarios + ", contratos=" + contratos + '}';
    }
    
}
