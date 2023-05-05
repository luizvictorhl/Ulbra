public class Lista {
    Elemento inicio;
    Elemento fim;
    int quantidade;

    public void esvaziar() {
        inicio = null;
        fim = null;
        quantidade = 0;
    }

    public void inserirInicio(int valor) {
        Elemento novo = new Elemento(valor);
        if (inicio == null) {
            inicio = novo;
            fim = novo;
        } else {
            novo.prox = inicio;
            inicio.ant = novo;
            inicio = novo;
        }
        quantidade++;
    }

    public void inserirFim(int valor) {
        Elemento novo = new Elemento(valor);
        if (inicio == null) {
            inicio = novo;
            fim = novo;
        } else {
            fim.prox = novo;
            novo.ant = fim;
            fim = novo;
        }
        quantidade++;
    }

    public void removerInicio() {
        if (inicio != null) {
            inicio = inicio.prox;
            if (inicio != null) {
                inicio.ant = null;
            } else {
                fim = null;
            }
            quantidade--;
        }
    }

    public void removerFim() {
        if (fim != null) {
            fim = fim.ant;
            if (fim != null) {
                fim.prox = null;
            } else {
                inicio = null;
            }
            quantidade--;
        }
    }

    public int getValorNaPosicao(int pos) {
        if (pos < 0 || pos >= quantidade) {
            throw new IndexOutOfBoundsException("Posição inválida!");
        }

        int cont = 0;
        for (Elemento e = inicio; e != null; e = e.prox) {
            if (cont == pos) {
                return e.valor;
            }
            cont++;
        }

        return -1;
    }

    public void imprimirLista() {
        Elemento atual = inicio;
        while (atual != null) {
            System.out.print(atual.valor + " ");
            atual = atual.prox;
        }
        System.out.println();
    }

    public void imprimirListaInvertida() {
        Elemento atual = fim;
        while (atual != null) {
            System.out.print(atual.valor + " ");
            atual = atual.ant;
        }
        System.out.println();
    }
}