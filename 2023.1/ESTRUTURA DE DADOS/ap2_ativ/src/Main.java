public class Main {
    public static void main(String[] args) {
        Lista lista = new Lista();

        lista.inserirInicio(5);
        lista.inserirInicio(8);
        lista.inserirInicio(3);
        lista.inserirInicio(2);
        lista.inserirFim(7);

        lista.removerInicio();

        int valorPosicao2 = lista.getValorNaPosicao(2);
        System.out.println("Valor na posição 2: " + valorPosicao2);

        lista.removerFim();

        System.out.println("Lista completa:");
        lista.imprimirLista();

        System.out.println("Lista completa de trás para frente:");
        lista.imprimirListaInvertida();
    }
}