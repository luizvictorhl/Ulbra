package ExemploAula;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Scanner;

public class Main {

    public static void main(String[] args){
int op=0;
        ArrayList<Sabores> arraySabores = new ArrayList<>();

    do{
        System.out.println("1: Cadastrar sabores");
        System.out.println("2: Exibir sabores");
        System.out.println("3: Encontrar sabores");
        Scanner tc = new Scanner(System.in);
        op=tc.nextInt();
        switch (op) {
            case 1:
                Sabores sabor = new Sabores();
                if (arraySabores.add(sabor)) {
                    System.out.println("Sabor cadastrado!");
                    sabor.mostrar();
                } else {
                    System.out.println("Sabor não cadastrado!");
                }
                break;

            case 2:
                if (arraySabores.isEmpty()) {
                    System.out.println("Sabores não cadastrados!");
                } else {

                    for (int i = 0; i < arraySabores.size(); i++) {
                    arraySabores.get(i).mostrar();
                    }
                    break;
                }
            case 3:
                String sabor=tc.next();
                Sabores busca = new Sabores(sabor);
                if(arraySabores.contains(busca)){
                    System.out.println("Sabor já cadastrado!");
                    System.out.println("Posicao:"+arraySabores.indexOf(busca));
            }else{
                    System.out.println("Sabor nao encontrado!");
                }
                break;
        }

    }while(op!=99);
    }
}
