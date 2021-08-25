package aula02e03;

import java.util.Scanner;

public class Exercicio06 {

    public static void main(String args[]) {

      double totalRes=0;
      double ValorLido;
      double maiorRes=0,menorRes=0;

        Scanner input = new Scanner(System.in);

        for (int i=0; i<4; i++){
            System.out.println("Digite o valor da resistência:");
            ValorLido=input.nextDouble();
            totalRes+=ValorLido;

            if (i==0){
                maiorRes=ValorLido;
                menorRes=ValorLido;
            }
            if(ValorLido>maiorRes){
                maiorRes=ValorLido;
            }
            if(ValorLido<menorRes){
                menorRes=ValorLido;
            }
        }
        System.out.println("O maior valor lido foi "+maiorRes);
        System.out.println("O menor valor lido foi "+menorRes);
        System.out.println("O total lido foi "+totalRes);
    }
}