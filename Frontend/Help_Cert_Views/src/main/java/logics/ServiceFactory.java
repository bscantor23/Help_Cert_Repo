/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logics;

/**
 *
 * @author genyu
 */
public class ServiceFactory {

    private String BackendURLServer = "https://help-cert-services.herokuapp.com/api/v1";

    public String getBackendURLServer() {
        return BackendURLServer;
    }

    public void setBackendURLServer(String BackendURLServer) {
        this.BackendURLServer = BackendURLServer;
    }

}
