package aula08.IOO;

import java.util.Scanner;

public class Main {
    public static void main(String[] args){
        Pokemon.capturar();

        Pokemon snorlex= new Pokemon();//instanciando

        snorlex.nome="Snorlex";
        snorlex.peso=460;
        snorlex.descricao="Pokemon do tipo normal";
        snorlex.tipo="Normal";
        snorlex.nivel=10;
        snorlex.hit=10;
        snorlex.vida=100;
        System.out.println(snorlex);
        snorlex.atacar();
        snorlex.defender();
        System.out.println(snorlex);
        snorlex.atacar("Especial");
        System.out.println(snorlex);

        Data hoje = new Data();
        hoje.dia=5;
        hoje.mes=10;
        hoje.ano=2021;

        Data amanha = new Data();
        amanha.dia=6;
        amanha.mes=10;
        amanha.ano=2021;

        hoje.mostrar();
        amanha.mostrar();

        Scanner tc = new Scanner(System.in);
    }
}
