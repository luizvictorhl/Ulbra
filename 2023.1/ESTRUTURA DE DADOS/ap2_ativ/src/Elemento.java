public class Elemento {
    int valor;
    Elemento prox;
    Elemento ant;

    public Elemento(int valor) {
        this.valor = valor;
        this.prox = null;
        this.ant = null;
    }
}