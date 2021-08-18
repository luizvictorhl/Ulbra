package aula01;

import java.util.Scanner;

public class Principal {

    public static void main(String[] args) {

        Scanner in = new Scanner(System.in);
        System.out.println("Informe seu peso:");
        int peso = in.nextInt();

        double seupesonalua;

        seupesonalua = peso * 0.17;

        System.out.println("Seu peso na terra é " + peso +
                " \nSeu peso na lua é " + seupesonalua);
    }
}
