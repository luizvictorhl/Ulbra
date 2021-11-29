package ListasEncadeadas;
public class Main {

    public static void main(String[] args) {
        Cao cao = new Cao();
        cao.ler();
        System.out.println(cao);
        Lista canil= new Lista();
        canil.add(cao);
        Cao cao2 = new Cao();
        cao2.ler();
        canil.addFim(cao2);
        Cao cao3 = new Cao();
        cao3.ler();
        canil.addFim(cao3);

        System.out.println(canil.toString());
        System.out.println("Quantos elementos tem?"+canil.size());
        if(canil.isEmpty()){
            System.out.println("Vazia");
        }else{
            System.out.println("Cheia");
        }
        canil.exibir();
        canil.remover();
        System.out.println("REMOVER");
        canil.exibir();
    }
}