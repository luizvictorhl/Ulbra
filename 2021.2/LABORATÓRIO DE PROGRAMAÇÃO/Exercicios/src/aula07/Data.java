package aula07;

public class Data{
    int dia;
    int mes;
    int ano;
   public static int getDia(String data) {
       if (valide(data)) {
           int dia;
           return dia = Integer.parseInt(data.substring(0, 2));

       }
       return 0;
   }
    public static int getMes(String data) {
        if (valide(data)) {
            int mes;
            return mes = Integer.parseInt(data.substring(3, 5));

        }
        return 0;
    }
    public static int getAno(String data) {
        if (valide(data)) {
            int ano;
            return ano = Integer.parseInt(data.substring(6, 10));

        }
        return 0;
    }

    public static boolean valide(String data){
       if(data.length()==10){
           if((data.charAt(2)=='/') && ((data.charAt(5)=='/'))){
               return true;
           }else{
               return false;
           }
       }else{
           return false;
       }
    }

}