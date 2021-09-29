package aula06;

public class ex01 {
    public static void main(String[] args) {
        int[] date = {1, 2, 3, 4, 5};
        String dataString="";

        dataString="{";
        for(int i = 0; i < date.length; i++) {
            dataString=dataString+date[i];
            if(i!=date.length-1) {
                dataString = dataString + ",";
            }
        }
        dataString=dataString+"}";
        System.out.println(dataString);
    }
}
