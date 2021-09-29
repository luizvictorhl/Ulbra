package aula06;

public class Data{

    public static int getDia(String data){
        int dia = 0;
        if(isDate(data, "dd/mm/yyyy")){
            String[] date = data.split("/");
            return (Integer.parseInt(date[0]));
        }

        return dia;
    }

    public static int getMes(String data){
        int Mes = 0;
        if(isDate(data, "dd/mm/yyyy")){
            String[] date = data.split("/");
            return (Integer.parseInt(date[1]));
        }

        return Mes;
    }

    public static int getAno(String data){
        int ano = 0;
        if(isDate(data, "dd/mm/yyyy")){
            String[] date = data.split("/");
            return (Integer.parseInt(date[2]));
        }

        return ano;
    }

    public static boolean isDate(String date, String format){
        String[] data = date.split("/");
        String[] formato = format.split("/");

        int check = 0;
        for(int i = 0; i < formato.length; i++){
            if(formato[i].length() == data[i].length()){
                check++;
            }
        }

        if(check == formato.length){
            return true;
        }

        return false;
    }


}