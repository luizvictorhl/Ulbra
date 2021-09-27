package aula06;

import java.util.Scanner;

public class TesteDataeSenha {

    public static void main(String[] args) {
        System.out.println("TESTE SENHA");
        System.out.println(Senha.gerar());
        System.out.println("////////////////////////////////////");

        Scanner ler = new Scanner(System.in);
        System.out.println("TESTE DATA");
        System.out.println("Digite uma data com mês e ano:");
        int dia = ler.nextInt();
        int Mes = ler.nextInt();
        int ano = ler.nextInt();
        System.out.println();

    }


}
