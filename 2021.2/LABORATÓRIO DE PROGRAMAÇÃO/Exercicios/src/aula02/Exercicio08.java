package aula02;

import java.util.Scanner;

public class Exercicio08 {

    public static void main(String[] args) {

        Scanner in = new Scanner(System.in);

        System.out.println("Digite um número da tabuada");
        int n = in.nextInt();
        System.out.println("");
        {
            for (int y = 0; y <= 10; y++)
                System.out.println("* " + n + " X " + y + " = " + n * y);

        }

    }
}
