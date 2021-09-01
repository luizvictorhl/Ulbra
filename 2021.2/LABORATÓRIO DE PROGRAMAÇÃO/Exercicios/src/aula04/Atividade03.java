package aula04;

import jdk.swing.interop.SwingInterOpUtils;

public class Atividade03 {

    public static void main(String[] args) {
        final int MAIOR=6;
        int sorteio;
        String senha = "";

        sorteio =(int) (Math.random()*MAIOR+5);
        System.out.println("Número gerado:" +sorteio);

        for(int i=0; i <sorteio; i++){
        senha += Integer.toString((int)(Math.random()*10));
        }

        System.out.println("Senha gerada:" +senha);
    }
}
