package ExemploAula;

import java.util.Objects;
import java.util.Scanner;

public class Sabores {
    String sabor;
    Double valor;
    Scanner tc = new Scanner(System.in);

    public void ler (){
        System.out.println("Digite o Sabor:");
        sabor=tc.next();
        System.out.println("Digite o valor:");
        valor=tc.nextDouble();
    }
    public void mostrar(){
        System.out.println("Sabor:"+this.sabor);
        System.out.println("Valor:"+this.valor);
    }

    public Sabores(String sabor){
        this.sabor = sabor;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Sabores sabores = (Sabores) o;
        return sabor.equals(sabores.sabor);
    }

}
