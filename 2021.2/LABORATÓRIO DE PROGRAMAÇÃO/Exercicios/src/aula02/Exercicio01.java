package aula02;

import java.util.Scanner;

public class Exercicio01 {

    public static void main(String[] args) {

        Scanner entrada = new Scanner(System.in);
        double valor;
        double valorfinal;
        double desconto;
        double valordodesconto;
        System.out.println("Informe o valor do produto:");
        valor = entrada.nextDouble();
        System.out.println("Informe o percentual de desconto:");
        desconto = entrada.nextDouble();

        valordodesconto = valor * desconto / 100;
        valorfinal = valor - valordodesconto;
        System.out.println("Valor do produto digitado: "+valor);

        System.out.println("Valor do desconto: " +valordodesconto + "\n" +
                "Valor final do produto é " +valorfinal);
    }
}
