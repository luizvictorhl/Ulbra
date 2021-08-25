package aula04;


import java.util.Scanner;

public class Atividade06 {

    public static void main(String[] args) {
        String frase;
        Scanner input = new Scanner(System.in);
        System.out.println("Digite uma palavra qualquer: ");
        frase = input.next();
        System.out.println("\n"+"A palavra digitada sem a última letra: ");
        System.out.println(frase.substring(0, frase.length()-1));

    }
}
