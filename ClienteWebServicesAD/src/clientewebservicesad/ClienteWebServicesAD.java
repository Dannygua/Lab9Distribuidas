
package clientewebservicesad;


public class ClienteWebServicesAD {

    public static void main(String[] args) {
        int y =19;
        int x=8;
        
        System.out.println(suma_1(x,y));
        System.out.println(resta(x,y));
        System.out.println(multiplicacion(x,y));

    }


    private static double suma_1(double a, double b) {
        uddi.ServicioOperaciones_Service service = new uddi.ServicioOperaciones_Service();
        uddi.ServicioOperaciones port = service.getServicioOperacionesPort();
        return port.suma(a, b);
    }

    private static double resta(double a, double b) {
        uddi.ServicioOperaciones_Service service = new uddi.ServicioOperaciones_Service();
        uddi.ServicioOperaciones port = service.getServicioOperacionesPort();
        return port.resta(a, b);
    }

    private static double multiplicacion(double a, double b) {
        uddi.ServicioOperaciones_Service service = new uddi.ServicioOperaciones_Service();
        uddi.ServicioOperaciones port = service.getServicioOperacionesPort();
        return port.multiplicacion(a, b);
    }
    
    
    
    
}
