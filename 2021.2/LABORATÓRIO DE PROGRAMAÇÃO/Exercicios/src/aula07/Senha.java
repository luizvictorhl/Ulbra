package aula07;

import java.util.Random;

public class Senha {
    public static String gerar(){
        String pass = "";
        Random aleatorio = new Random();
        int num = 0;
        for(int i = 0; i < 8; i++){
            num = aleatorio.nextInt(9);
            pass += num;
        }
        return pass;
    }
}
