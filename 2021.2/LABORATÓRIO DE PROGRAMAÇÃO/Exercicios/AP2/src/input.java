package ap2;


import javax.swing.*;
import java.util.Scanner;


public class input {
    Scanner tc = new Scanner(System.in);

    public String lerString() {
        System.out.println("Digite a string");
        return tc.next();

    }

    public String lerString(String mensagem) {
        System.out.println(mensagem);
        return tc.next();

    }

    public String lerStringJOP() {
        String str;
        str = JOptionPane.showInputDialog("Digite a string");
        JOptionPane.showMessageDialog(null, "A string é " +str);
        return str;

    }

    public float lerFloat() {
        System.out.println("Digite um float:");
        float flo = tc.nextFloat();
        System.out.println("DADO LIDO: " + flo + "\n");
        return flo;
    }

    public float lerFloat(String mensagem){
        System.out.println(mensagem);
        float flo = tc.nextFloat();
        System.out.println("DADO LIDO: " + flo + "\n");
        return flo;
    }

    public float lerFloatJOP() {
        float flo;
        flo = Float.parseFloat(JOptionPane.showInputDialog("Digite o float"));
        JOptionPane.showMessageDialog(null, "O float é " +flo);
        return flo;

    }

    public double lerDouble(){
        System.out.println("Digite um double:");
        double dou = tc.nextDouble();
        System.out.println("DADO LIDO: " + dou + "\n");
        return dou;
    }

    public double lerDouble(String mensagem){
        System.out.println(mensagem);
        double dou = tc.nextDouble();
        System.out.println("DADO LIDO: " + dou + "\n");
        return dou;
    }

    public double lerDoubleJOP() {
        double dou;
        dou = Double.parseDouble((JOptionPane.showInputDialog("Digite o double")));
        JOptionPane.showMessageDialog(null, "O double é " +dou);
        return dou;

    }

    public int lerInt(){
        System.out.println("Digite um inteiro:");
        int inter = tc.nextInt();
        System.out.println("DADO LIDO: " + inter + "\n");
        return inter;
    }

    public int lerInt(String mensagem){
        System.out.println(mensagem);
        int inter = tc.nextInt();
        System.out.println("DADO LIDO: " + inter + "\n");
        return inter;
    }

    public int lerIntJOP() {
        int inter;
        inter = Integer.parseInt((JOptionPane.showInputDialog("Digite o inteiro")));
        JOptionPane.showMessageDialog(null, "O inteiro é " +inter);
        return inter;
    }

    public char lerChar(){
        System.out.println("Digite um char:");
        char chart = tc.next().charAt(0);
        System.out.println("DADO LIDO: " + chart + "\n");
        return chart;
    }

    public char lerChar(String mensagem){
        System.out.println(mensagem);
        char chart = tc.next().charAt(0);
        System.out.println("DADO LIDO: " + chart + "\n");
        return chart;
    }

    public String lerCharJOP() {
        String chart;
        chart =(JOptionPane.showInputDialog("Digite o char"));
        if(chart.length() != 1) {
            JOptionPane.showMessageDialog(null, "O valor digitado não é suportado.");
        }else {
            JOptionPane.showMessageDialog(null, "O char é " +chart);
        }
        return chart;


    }
    //Um método para Ler uma string formatada como e-mail, o método deve retornar o email quando válido ou null se for inválido;

    public String validarEmail(){
        String email;

        System.out.println("Digite um e-mail:");
        email = tc.next();

        if(email.contains("@") && (email.contains("."))){
            System.out.println("Email validado:" +email);
        }
        else {
            System.out.println("Null");
        }
        return ("Próxima fase");
    }
    //Um método para ler uma string formatada como uma data(dd/mm/aaaa)o método deve retornar a data quando válido ou null se for inválido;

    public boolean validarData(){
        String data;
        System.out.println("Digite uma data");
        data = tc.next();
        if(data.length()==10){
            if(data.charAt(2)=='/' && data.charAt(5)=='/'){
                System.out.println("Formato de data válida: "+data);
                return true;
            }
            if(data.charAt(2)=='-' && data.charAt(5)=='-'){
                System.out.println("Formato de data válida: "+data);
                return true;
            }else{
                System.out.println("Formato de data Inválida:");
                return false;
            }
        }else{
            System.out.println("Formato de data Inválida");
            return false;
        }
    }
    //Um método para Ler uma string formatada como telefone (DDD-XXXXXXXXX), o método deve retornar o telefone quando válido ou null se for inválido;

    public boolean validarTelefone(){
        String telephone;
        System.out.println("Digite um telefone");
        telephone = tc.next();

        if(telephone.length()==13){
            if(telephone.charAt(3)=='-'){
                System.out.println("Formato de telefone validado: "+telephone);
                return true;
            }
            if(telephone.charAt(2)=='-' && telephone.charAt(5)=='-'){
                System.out.println("Formato de telefone validado: "+telephone);
                return true;
            }else{
                System.out.println("Formato de telefone Invalidado:");
                return false;
            }
        }else{
            System.out.println("Formato de telefone Invalidado:");
            return false;
        }

    }
    //Um método para converter uma data dd/mm/aaaa para mm/dd/aaaa

    public int converterData(){
        System.out.println("Digite uma data no formato dd/mm/aaaa:");
        String data = tc.next();

        if(data.length() == 10){
            if(data.charAt(2)=='/' && data.charAt(5)=='/'){
                int dia = Integer.parseInt(data.substring(0,2));
                int mes = Integer.parseInt(data.substring(3,5));
                int ano = Integer.parseInt(data.substring(6,10));
                System.out.println("O novo formato da data é: " + mes + "/" + dia + "/" + ano);
            }
            if(data.charAt(2)=='-' && data.charAt(5)=='-'){
                int dia = Integer.parseInt(data.substring(0,2));
                int mes = Integer.parseInt(data.substring(3,5));
                int ano = Integer.parseInt(data.substring(6,10));
                System.out.println("O novo formato da data é: " + mes + "/" + dia + "/" + ano);
            }
        }else{
            System.out.println("Data inválida, não foi possível alterar o formato da data.");
        }
        return 0;
    }

    //Um método para validar se um dado lido é um dígito numérico, se for retornar true.

    public boolean validarNumerico() {
        System.out.println("Digite algo para verificar se é númerico:");
        String str = tc.next();
        try {
            Double.parseDouble(str);
            System.out.println("O valor digitado é númerico. Valor digitado: " + str);
            return true;
        } catch(NumberFormatException e){
            System.out.println("O valor digitado não é númerico.");
            return false;
        }
    }
}







