package aula07;

import java.util.Scanner;

public class TesteDataeSenha {

    public static void main(String[] args) {
        System.out.println("TESTE SENHA");
        System.out.println(Senha.gerar());
        System.out.println("////////////////////////////////////");

        ;
        System.out.println("TESTE DATA");
        System.out.println(Data.getMes("20/12/2021"));
        System.out.println(Data.getDia("12/06/2021"));
        System.out.println(Data.getAno("12/12/2018"));
        System.out.println(Data.getAno("12/2021"));

        int[] meuA={1,4,5,6};
        int[] meuB={1,4,8,6};

        System.out.println(MeusArrays.findArrays(meuA,meuB,5));
        int[] array=MeusArrays.retornArray(10);
        MeusArrays.showArray(array);

    }


}
