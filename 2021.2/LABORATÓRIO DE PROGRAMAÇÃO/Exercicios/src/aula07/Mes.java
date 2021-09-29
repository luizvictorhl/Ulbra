package aula07;


public class Mes {

    public  static   String meses [] = {"Janeiro","Fevereiro","Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"};
    public  static   String months [] = {"January","February","March","April","May","June","July","August","September","October","November","December"};


    public static String getMes(int m){
        m=m-1;
        if(m>=0 && m<=12){
            return meses[m];
        }
        else{
            return "Mês invalido";
        }
    }

    public static String getMonths(int m){
        m=m-1;
        if(m>=0 && m<=12){
            return months[m];
        }
        else{
            return "Mês invalido";
        }
    }

    public static String getMesPorExtenso(int i, int m) {
        if (i == 1) {
            return getMes(m);
        }
        if (i == 2) {
            return getMonths(m);
        }

        return "idioma não existe";
    }


}