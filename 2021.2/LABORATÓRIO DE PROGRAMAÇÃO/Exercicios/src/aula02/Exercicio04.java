package aula02;

import java.util.Scanner;

public class Exercicio04 {

    public static void main(String[] args) {
        int idade, tempodecontribuicao, aposentadoria;
        String sexo;


        Scanner entrada = new Scanner(System.in);
        System.out.println("Informe a sua idade:");
        idade = entrada.nextInt();

        System.out.println("Informe o seu sexo(M ou F):");
        sexo = entrada.next();

        System.out.println("Informe o tempo de sua contribuição:");
        tempodecontribuicao = entrada.nextInt();

        if (sexo.equalsIgnoreCase("m") && (idade >= 65) && (tempodecontribuicao >=35)){
            System.out.println("Voce já têm direito a aposentadoria!");
        }
        else if (sexo.equalsIgnoreCase("m") && (tempodecontribuicao <35)) {
            aposentadoria = 35 - tempodecontribuicao;
            System.out.println("Para sua aposentadoria faltam:" + aposentadoria + " anos de contribuição");
        }
        if (sexo.equalsIgnoreCase("f") && (idade >= 60) && (tempodecontribuicao >=30)){
            System.out.println("Voce já têm direito a aposentadoria por tempo de contribuição!");
        }
        else if (sexo.equalsIgnoreCase("f") && (tempodecontribuicao <30)){
            aposentadoria = 30 - tempodecontribuicao;
            System.out.println("Para sua aposentadoria faltam:" +aposentadoria + " anos de contribuição");
        }
    }
}
