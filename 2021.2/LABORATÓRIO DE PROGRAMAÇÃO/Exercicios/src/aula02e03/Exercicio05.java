package aula02e03;

import java.util.Scanner;

public class Exercicio05 {

    public static void main(String[] args) {
    double valor, valorfinal = 0, desconto;

    Scanner input = new Scanner(System.in);
    System.out.println("Informe o nome do produto: ");
    String nome = input.next();

    System.out.println("Informe o valor do produto:");
    valor = input.nextDouble();

    if ((valor >=50) && (valor <200)){
        desconto = (int) (valor * 0.05);
        valorfinal = valor - desconto;
    }
    else if ((valor >=200) && (valor <500)){
        desconto = (int) (valor * 0.06);
        valorfinal = valor - desconto;
    }
    else if ((valor >=500) && (valor <1000)){
        desconto = (int) (valor * 0.07);
        valorfinal = valor - desconto;
    }
    else if(valor >=1000){
        desconto = (int) (valor * 0.09);
        valorfinal = valor - desconto;
    }

        System.out.println("Produto: " + nome + "\n" + " O valor digitado foi: " + "R$"+ valor + "\n" +
                " O valor final com desconto foi de: " + "R$" + valorfinal);
    }






}





