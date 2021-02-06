
package clienteservicead;


public class ClienteServiceAD {


    public static void main(String[] args) {
                
        int y = 19;
        System.out.println(primo(y));
    }

    private static String primo(int primo) {
        uddi.ServicioPrimo_Service service = new uddi.ServicioPrimo_Service();
        uddi.ServicioPrimo port = service.getServicioPrimoPort();
        return port.primo(primo);
    }
    
    
}
