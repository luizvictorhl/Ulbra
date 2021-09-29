package aula06;

import java.util.Random;

public class MeusArrays {

    public static int[] gerar(int length){
        Random aleatorios = new Random();
        int[] vet = new int[length];
        for(int i = 0; i < length; i++){
            vet[i] = aleatorios.nextInt(1001);
        }
        return vet;
    }

    public static int find(int[] vetor1, int[] vetor2, int num){
        int find = 0;

        if(inArray(num, vetor1) || inArray(num, vetor2)){
            find = 1;
            if(inArray(num, vetor1) && inArray(num, vetor2)){
                find = 2;
            }
        }

        return find;
    }

    public static boolean inArray(int num, int[] vetor){
        for(int i = 0; i < vetor.length; i++){
            if(vetor[i] == num){
                return true;
            }
        }

        return false;
    }


}

