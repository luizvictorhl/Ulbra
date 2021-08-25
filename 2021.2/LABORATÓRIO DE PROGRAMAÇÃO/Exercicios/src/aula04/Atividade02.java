package aula04;

import java.util.Scanner;

public class Atividade02 {
    public static void main(String[] args) {
        double vProduto;
        double soma;
        double calculo;

        Scanner input = new Scanner(System.in);
        do {

            System.out.println("\n"+"Informe o valor do produto: ");
            vProduto = input.nextDouble();
            calculo = vProduto * 0.12;
            soma = vProduto + calculo;
            System.out.println("O valor do produto com o ajuste é: " + Math.round(soma));
        }

        while (vProduto > 0) ;
        System.out.println("Programa encerrado! "+"\n"+"Obrigado por utilizar nossa aplicação! :)");

    }
}
