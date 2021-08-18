package aula02;

import javax.swing.JOptionPane;

public class Exercicio03 {

    public static void main(String[] args) {
        String n1, n2, t1;
        double nota1, nota2, tr, media;

        t1 = JOptionPane.showInputDialog("Digite a nota do trabalho");
        tr = Double.parseDouble(t1);

        n1 = JOptionPane.showInputDialog("Digite a nota da AVALIAÇÃO 1");
        nota1 = Double.parseDouble(n1);

        n2 = JOptionPane.showInputDialog("Digite a da AVALIAÇÃO 2");
        nota2 = Double.parseDouble(n2);

        media = (nota1 + nota2 + tr) / 3;

        if (media >= 6) {
            JOptionPane.showMessageDialog(null, "A média do aluno é " + media,
                    "Aluno Aprovado!", JOptionPane.INFORMATION_MESSAGE);
        } else {
            JOptionPane.showMessageDialog(null, "A media do aluno é " + media,
                    "Aluno Reprovado!", JOptionPane.WARNING_MESSAGE);

            System.exit(0);
        }
    }
}