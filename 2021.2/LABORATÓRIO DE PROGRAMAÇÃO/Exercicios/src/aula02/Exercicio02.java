package aula02;

import javax.swing.JOptionPane;

public class Exercicio02 {
    public static void main(String[] args) {
        int valortransacao, valorvenal, imposto,valorimposto;
        String vt, vv, imp;

        vt = JOptionPane.showInputDialog("Digite o valor da transação: ");
        valortransacao = Integer.parseInt(vt);

        vv = JOptionPane.showInputDialog("Digite o valor venal: ");
        valorvenal = Integer.parseInt(vv);

        imp = JOptionPane.showInputDialog("Digite o valor de imposto em %: ");
        imposto = Integer.parseInt(imp);

        if (valortransacao > valorvenal){
            valorimposto = valortransacao * imposto /100;
            JOptionPane.showMessageDialog(null, "O montante do seu imposto é: "+ "R$" + valorimposto,
                    "Valor do seu imposto!", JOptionPane.INFORMATION_MESSAGE);
        }
        else if(valorvenal > valortransacao){
            valorimposto = valorvenal * imposto / 100;
            JOptionPane.showMessageDialog(null, "O montante do seu imposto é: " + "R$" + valorimposto,
                    "Valor do seu imposto!", JOptionPane.INFORMATION_MESSAGE);
        }
    }
}


