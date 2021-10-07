package aula08.IOO;

public class Pokemon {
    public String tipo;
    public int nivel;
    public double peso;
    public String nome;
    public String descricao;
    public int vida;
    public int hit;

    public void atacar(){
        System.out.println("ATACAR!!!");
        hit++;
    }

    public void atacar(String msg){
        System.out.println("ATACAR!!!"+msg);
        hit=(hit/2)+hit;
    }

    public void defender(){
        System.out.println("DEFENDER!!!");
        vida-=10;
    }

    public static void capturar(){
        System.out.println("CAPTURAR!!!");
    }

    @Override
    public String toString() {
        return "Pokemon{" +
                "tipo='" + tipo + '\'' +
                ", nivel=" + nivel +
                ", peso=" + peso +
                ", nome='" + nome + '\'' +
                ", descricao='" + descricao + '\'' +
                ", vida=" + vida +
                ", hit=" + hit +
                '}';
    }
}
