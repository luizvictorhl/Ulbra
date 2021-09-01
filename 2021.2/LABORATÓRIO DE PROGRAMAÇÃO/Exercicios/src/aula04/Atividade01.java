package aula04;


public class Atividade01 {

    public static void main(String[] args) {
        int sorteio=0, sm=0;

        for(int i=0; i<3; i++){
            sorteio =(int) (Math.random()*7);
            sm=sm+sorteio;
            System.out.println("Jogada n°"+i+":"+sorteio +"\n");
        }
        System.out.println("O valor total das três jogadas foi de: "+sm);

    }
}
