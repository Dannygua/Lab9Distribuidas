package UDDI;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

@WebService(serviceName = "ServicioPrimo")
public class ServicioPrimo {


    @WebMethod(operationName = "Primo")

    public String primo(@WebParam(name = "primo") int a) {
        if(Verificar.primo(a)==true){
            return "EL NUMERO ES PRIMO";
        }else{
            return "EL NUMERO NO ES PRIMO";
        }
    }
}
