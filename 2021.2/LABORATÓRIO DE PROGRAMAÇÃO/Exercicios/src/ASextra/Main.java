package ASextra;

public class Main {
    public static void main(String[] args) {
        Lista canil = new Lista();

        //adicionar cachorrinhos no canil
        for(int i = 0 ; i < 3; i++){
            Cao cao = new Cao();
            cao.ler();
            canil.addFim(cao);
        }

        System.out.println(canil.toString());

        System.out.println("Quantos elementos ele tem: " + canil.size());
        if(canil.isEmpty()){
            System.out.println("Vazia");
        }else{
            System.out.println("Cheia");
        }

        /*canil.exibir();
        System.out.println("remover");
        canil.remover(2);*/

        //REMOVER POR NOME:
        canil.exibir();
        canil.removerNome("auau");
        System.out.println("\nApós exclusão:");
        canil.exibir();
    }
}
