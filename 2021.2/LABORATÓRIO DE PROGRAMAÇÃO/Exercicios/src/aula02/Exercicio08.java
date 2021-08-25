package aula02;

import java.util.Scanner;

public class Exercicio08 {

    public static void main(String[] args) {

        Scanner in = new Scanner(System.in);

        System.out.println("Digite um número da tabuada");
        int n = in.nextInt();
        System.out.println("");
        {
            for (int i = 0; i <= 10; i++)
                System.out.println("* " + n + " X " + i + " = " + n * i);

        }

    }
}
