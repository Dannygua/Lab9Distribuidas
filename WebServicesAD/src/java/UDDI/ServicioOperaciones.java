
package UDDI;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;


@WebService(serviceName = "ServicioOperaciones")
public class ServicioOperaciones {

    @WebMethod(operationName = "hello")
    
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
   

    @WebMethod(operationName = "suma")

    public double suma(@WebParam(name = "a") double x1, @WebParam(name = "b") double x2) {
        return x1 + x2;
    }
    
    @WebMethod(operationName = "resta")

    public double resta(@WebParam(name = "a") double x1, @WebParam(name = "b") double x2) {
        return x1 - x2;
    }
    
    @WebMethod(operationName = "multiplicacion")

    public double multiplicacion(@WebParam(name = "a") double x1, @WebParam(name = "b") double x2) {
        return x1 * x2;
    }

    
}
