package aula02;

import javax.swing.JOptionPane;

public class Exercicio02 {
    public static void main(String[] args) {
        double valortransacao;
        double valorvenal;
        double imposto;
        double valorimposto;
        String dado;

        dado = JOptionPane.showInputDialog("Digite o valor da transação: ");
        valortransacao = Double.parseDouble(dado);

        dado = JOptionPane.showInputDialog("Digite o valor venal: ");
        valorvenal = Double.parseDouble(dado);

        dado = JOptionPane.showInputDialog("Digite o valor de imposto em %: ");
        imposto = Double.parseDouble(dado);

        if (valortransacao > valorvenal){
            valorimposto = valortransacao * imposto /100;

        }
        else{
            valorimposto = valorvenal * imposto / 100;
        }
        JOptionPane.showMessageDialog(null, "O montante do seu imposto é: "+ "R$" + valorimposto,
                "Valor do seu imposto!", JOptionPane.INFORMATION_MESSAGE);
    }
}


