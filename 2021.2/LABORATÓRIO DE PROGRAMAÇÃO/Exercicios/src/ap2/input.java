package ap2;


import java.util.Scanner;


public class input {

    public String lerString() {
        System.out.println("Digite a string");
        Scanner tc = new Scanner(System.in);
        String str = tc.next();
        System.out.println(str);
        return str;

    }

    public String lerString(String mensagem) {
        System.out.println(mensagem);
        Scanner tc = new Scanner(System.in);
        String str = tc.next();
        System.out.println(str);
        return str;
    }

    public float lerFloat() {
        System.out.println("Digite um float:");
        Scanner tc = new Scanner(System.in);
        float flo = tc.nextFloat();
        System.out.println(flo);
        return flo;
    }
    public float lerFloat(String mensagem){
        System.out.println(mensagem);
        Scanner tc = new Scanner(System.in);
        float flo = tc.nextFloat();
        System.out.println(flo);
        return flo;
    }
    public double lerDouble(){
        System.out.println("Digite um double:");
        Scanner tc = new Scanner(System.in);
        double dou = tc.nextDouble();
        System.out.println(dou);
        return dou;
    }
    public double lerDouble(String mensagem){
        System.out.println(mensagem);
        Scanner tc = new Scanner(System.in);
        double dou = tc.nextDouble();
        System.out.println(dou);
        return dou;
    }
    public int lerInt(){
        System.out.println("Digite um inteiro:");
        Scanner tc = new Scanner(System.in);
        int inter = tc.nextInt();
        System.out.println(inter);
        return inter;
    }
    public int lerInt(String mensagem){
        System.out.println(mensagem);
        Scanner tc = new Scanner(System.in);
        int inter = tc.nextInt();
        System.out.println(inter);
        return inter;
    }
    public char lerChar(){
        System.out.println("Digite um char:");
        Scanner tc = new Scanner(System.in);
        char chart = tc.next().charAt(0);
        System.out.println(chart);
        return chart;
    }
    public char lerChar(String mensagem){
        System.out.println(mensagem);
        Scanner tc = new Scanner(System.in);
        char chart = tc.next().charAt(0);
        System.out.println(chart);
        return chart;
    }
    //Um método para Ler uma string formatada como e-mail, o método deve retornar o email quando válido ou null se for inválido;
    public String validarEmail(){
        Scanner tc = new Scanner(System.in);
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
        Scanner tc = new Scanner(System.in);
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
        Scanner tc = new Scanner(System.in);
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
        Scanner tc = new Scanner(System.in);
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
        Scanner ler = new Scanner(System.in);
        System.out.println("Digite algo para verificar se é númerico:");
        String str = ler.next();
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







