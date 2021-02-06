
package UDDI;

public class Verificar {
    
    public static boolean primo(int n){
        
            int a =0;
    
    int contador = 2;
    
    boolean primo =true;
    
    while ((primo) && (contador !=n )){
        if(n % contador == 0 ){
            primo = false;
        }
        contador++;    
    
}
    return primo;
    }
    
    
}
