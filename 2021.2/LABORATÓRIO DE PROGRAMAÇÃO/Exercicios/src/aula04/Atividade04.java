package aula04;

import java.util.Scanner;

public class Atividade04 {

    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);
        System.out.println("Digite uma palavra ou frase: ");
        String entrada = input.nextLine();
        String saida = "";

        for(int i = entrada.length()-1; i>=0; i--){
            saida = saida + Character.toString(entrada.charAt(i));
        }
        System.out.println(saida);
    }
}
