/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logics;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.json.JSONObject;
import logics.ServiceFactory;
import models.HomeInfo;
import models.TipoDocumento;
import org.json.JSONArray;

/**
 *
 * @author genyu
 */
public class GlobalInfoDao {

    private String URLServer = new ServiceFactory().getBackendURLServer();
    private String urlHomeInfo = URLServer + "/infoForm/homeInfo";
    private String urlDocInfo = URLServer + "/infoForm/tipo-documentos";

    public GlobalInfoDao() {
    }

    public HomeInfo getGlobalInfo() throws IOException {
        HttpConnection apiConnection = new HttpConnection();
        String responseApi = apiConnection.doGet(urlHomeInfo);

        JSONObject HomeInfoJSON = new JSONObject(responseApi);

        HomeInfo results = new HomeInfo(
                HomeInfoJSON.getInt("certificados"),
                HomeInfoJSON.getInt("funcionarios"),
                HomeInfoJSON.getInt("contratos")
        );

        return results;
    }
    
    public List<TipoDocumento> getDocsInfo() throws IOException {
        HttpConnection apiConnection = new HttpConnection();
        String responseApi = apiConnection.doGet(urlDocInfo);

        JSONObject InfoJSON = new JSONObject(responseApi);
        JSONArray DocsInfoJSON = InfoJSON.getJSONArray("tipoDocumentos");
        
        List<TipoDocumento> list = new LinkedList<>();
        
        for(int i=0; i<DocsInfoJSON.length(); i++){
            
            JSONObject docJSON = (JSONObject) DocsInfoJSON.get(i);
            
            TipoDocumento objDoc = new TipoDocumento(
                docJSON.getInt("id_tipo_documento"),
                docJSON.getString("nombre_documento"),
                docJSON.getString("abreviatura")
            );
            list.add(objDoc);
        }
        return list;
    }

    public void useAlerts(String method, String msg, String location, HttpServletRequest request) {

        request.setAttribute("method_message", msg);
        request.setAttribute("method", method);
        request.setAttribute("location", location);

        switch (method) {
            case "danger":
                request.setAttribute("icon", "bxs-x-circle");
                break;
            case "success":
                request.setAttribute("icon", "bxs-badge-check");
                break;
            case "warning":
                request.setAttribute("icon", "bxs-error");
                break;
            case "info":
                request.setAttribute("icon", "bxs-info-circle");
                break;
            case "dark":
                request.setAttribute("icon", "bxs-info-circle");
                break;
        }
    }

}
