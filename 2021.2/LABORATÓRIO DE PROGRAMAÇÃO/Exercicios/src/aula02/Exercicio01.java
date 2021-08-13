package aula02;

import java.util.Scanner;

public class Exercicio01 {

    public static void main(String[] args) {

        Scanner entrada = new Scanner(System.in);
        int valor, valorfinal, desconto, valordodesconto;
        System.out.println("Informe o valor do produto:");
        valor = entrada.nextInt();
        System.out.println("Informe o percentual de desconto:");
        desconto = entrada.nextInt();

        valordodesconto = valor * desconto / 100;
        valorfinal = valor - valordodesconto;

        System.out.println("Valor do desconto: " +valordodesconto + "\n" +
                "Valor final do produto é " +valorfinal);
    }
}
