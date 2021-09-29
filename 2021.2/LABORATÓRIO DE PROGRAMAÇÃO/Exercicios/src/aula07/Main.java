package aula07;

import java.util.Scanner;

public class Main {


        public static void main(String[] args) {

            System.out.println(Mes.getMesPorExtenso(1,3));
            System.out.println(Mes.getMesPorExtenso(2,6));
            System.out.println(Mes.getMesPorExtenso(3,1));

            Contagem.contar();
            Contagem.contar(100);
            Contagem.contar(90,100);
            Contagem.contar(1000,1010,10);


        }
    }
