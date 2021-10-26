package ap2;

import ap2.input;

import java.util.Scanner;

public class teste {

    public static void main(String[] args) {

        input tc = new input();
        Scanner ler = new Scanner(System.in);
        System.out.println("Digite com qual opção você quer reproduzir o código" + "\n" + "1 - Scanner e 2 - JOption:");
        int opcao = ler.nextInt();
        if(opcao==1){
            tc.lerString();
            tc.lerString("Digite por gentileza sua String:");
            tc.lerFloat();
            tc.lerFloat("Digite por gentileza um Float:");
            tc.lerDouble();
            tc.lerDouble("Digite por gentileza um Double:");
            tc.lerInt();
            tc.lerInt("Digite por gentileza um Inteiro:");
            tc.lerChar();
            tc.lerChar("Digite por gentileza um Char:");
        }if(opcao==2){
            tc.lerFloatJOP();
            tc.lerCharJOP();
            tc.lerDoubleJOP();
            tc.lerIntJOP();
            tc.lerStringJOP();
        }
        //Métodos A, B, C ,D e E

        tc.validarEmail();
        tc.validarTelefone();
        tc.validarData();
        tc.converterData();
        tc.validarNumerico();

    }
}


