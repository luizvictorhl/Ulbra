package com.testes;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Calculadora cal = new Calculadora();
        Scanner ler = new Scanner(System.in);

        cal.boasVindas();

        System.out.println("\nDigite qual operação deseja fazer:\n1 = soma(+)\n2 = subtração(-)\n3 = multiplicação\n4 = divisão(/)");
        int operacao = ler.nextInt();

        switch (operacao) {
            case 1: {
                cal.somar();
                break;
            }
            case 2: {
                cal.subtrair();
                break;
            }
            case 3: {
                cal.multiplicar();
                break;
            }
            case 4: {
                cal.dividir();
                break;
            }
        }
    }
}