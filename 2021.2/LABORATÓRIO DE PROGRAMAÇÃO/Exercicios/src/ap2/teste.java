package ap2;

import ap2.input;

public class teste {

    public static void main(String[] args) {

        input tc = new input();
        tc.lerString();
        tc.lerString("Digite por gentileza sua String:");
        tc.lerFloat();
        tc.lerFloat("Digite por gentileza um Float:");
        tc.lerDouble();
        tc.lerDouble("Digite por gentileza um Double:");
        tc.lerInt();
        tc.lerInt("Digite por gentileza um Inteiro:");
        tc.lerChar();
        tc.lerChar("Digite por gentileza um Char:");
        tc.validarEmail();
        tc.validarData();
        tc.validarTelefone();
        tc.converterData();
        tc.validarNumerico();

    }
}


