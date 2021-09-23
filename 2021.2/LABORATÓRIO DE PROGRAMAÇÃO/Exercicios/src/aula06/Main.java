package aula06;

import java.util.Scanner;

public class Main {


        public static void main(String[] args) {

            Scanner ler = new Scanner(System.in);
            System.out.println("Digite o idioma: (1 - pt-br, 2 - ing)");
            int i = ler.nextInt();
            System.out.println("Digite o mês:");
            int m = ler.nextInt();
            System.out.println(Mes.getMesPorExtenso(i,m));
            System.out.println("/////////////////////////////////////////////////////////");


            Contagem.contar();
            System.out.println("---------------");
            Contagem.contar(4);
            System.out.println("---------------");
            Contagem.contar(10, 20);
            System.out.println("---------------");
            Contagem.contar(3, 9, 2);


        }
    }
