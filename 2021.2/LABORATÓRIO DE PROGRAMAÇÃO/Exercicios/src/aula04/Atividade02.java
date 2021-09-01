package aula04;

import java.text.DecimalFormat;
import java.util.Scanner;

public class Atividade02 {
    public static void main(String[] args) {
        double vProduto;
        double soma;
        double calculo;
        DecimalFormat df = new DecimalFormat();
        df.applyPattern("R$ #.00");

        Scanner input = new Scanner(System.in);
        do {

            System.out.println("\n"+"Informe o valor do produto: ");
            vProduto = input.nextDouble();
            if (vProduto>0) {
                calculo = vProduto * 0.12;
                soma = vProduto + calculo;
                System.out.println("O valor do produto com o ajuste é: " + df.format(Math.round(soma)));
            }
            else{
                System.out.println("Programa encerrado! "+"\n"+"Obrigado por utilizar nossa aplicação! :)");
            }
        }

        while (vProduto != 0) ;


    }
}
