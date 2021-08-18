package aula02;

import javax.swing.JOptionPane;
import java.text.DecimalFormat;

public class Exercicio03 {
    private static DecimalFormat df2 = new DecimalFormat("#.##");

    public static void main(String[] args) {
        String dado;
        double nota1, nota2, nota3, media;

        dado = JOptionPane.showInputDialog("Digite a nota da AVALIAÇÃO 1");
        nota1 = Double.parseDouble(dado);

        dado = JOptionPane.showInputDialog("Digite a nota da AVALIAÇÃO 2");
        nota2 = Double.parseDouble(dado);

        dado = JOptionPane.showInputDialog("Digite a da AVALIAÇÃO 3");
        nota3 = Double.parseDouble(dado);

        media = (nota1 + nota2 + nota3) / 3;

        if (media >= 6) {
            JOptionPane.showMessageDialog(null, "A média do aluno é " +df2.format(media),
                    "Aluno Aprovado!", JOptionPane.INFORMATION_MESSAGE);
        }
        else {
            JOptionPane.showMessageDialog(null, "A media do aluno é " +df2.format(media),
                    "Aluno Reprovado!", JOptionPane.WARNING_MESSAGE);

            System.exit(0);
        }
    }
}