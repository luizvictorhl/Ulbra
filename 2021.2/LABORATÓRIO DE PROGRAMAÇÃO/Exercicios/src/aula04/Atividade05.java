package aula04;

import java.util.Locale;
import java.util.Scanner;

public class Atividade05 {

    public static void main(String[] args) {

        String palavraProibida = "sexo";
        String palavraProibida2 = "sexual";


        Scanner input = new Scanner(System.in);
        System.out.println("Digite sua frase: ");
        String frase = input.nextLine();

        boolean bloqueioPalavra = frase.toLowerCase().contains(palavraProibida.toLowerCase());
        boolean bloqueioPalavra2 = frase.toLowerCase().contains(palavraProibida2.toLowerCase());

        if(bloqueioPalavra || bloqueioPalavra2 ){
            System.out.println("Conteúdo IMPRÓPRIO!");
        }
        else{
            System.out.println("Conteúdo LIBERADO!");
        }


    }
    }
