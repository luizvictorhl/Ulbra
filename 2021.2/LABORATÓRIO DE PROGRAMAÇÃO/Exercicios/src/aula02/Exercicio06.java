package aula02;

import java.util.Scanner;

public class Exercicio06 {

    public static void main(String args[]) {

        int a;
        int b;
        int c;
        int d;
        int soma;
        int maior=0;
        int menor=99999999;

        Scanner input = new Scanner(System.in);

        System.out.println("Digite o valor da primeira resistência");
        a = input.nextInt();

        System.out.println("Digite o valor da segunda resistência");
        b = input.nextInt();

        System.out.println("Digite o valor da terceira resistência");
        c = input.nextInt();

        System.out.println("Digite o valor da quarta resistência");
        d = input.nextInt();


        if (b > maior) {
            maior = b;
        }

        if (c > maior) {
            maior = c;
        }

        if (d > maior) {
            maior = d;
        }

        System.out.println("O Maior nº é " + maior);

        if (b < menor) {
            menor = b;
        }

        if (c < menor) {
            menor = c;
        }

        if (d < menor) {
            menor = d;
        }

        System.out.println("O Menor nº é " + menor);
        soma = a + b + c + d;
        System.out.println("A soma de todas as resistências equivale a " +soma);

    }
}