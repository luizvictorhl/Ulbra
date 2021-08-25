package aula04;

public class Atividade03 {

    public static void main(String[] args) {
        int numero=0;
        int senhaAl=0;

        numero =(int) (Math.random()*6)+5;

        if(numero == 5){
            senhaAl = (int) ((Math.random() * (99999.0 - 00000.0 + 1)) + 00000.0);
        }
        else if(numero==6){
            senhaAl= (int)((Math.random() * (999999 - 000000 + 1)) + 000000);
        }
        else if(numero==7){
            senhaAl= (int)((Math.random() * (9999999 - 0000000 + 1)) + 0000000);
        }
        else if(numero==8){
            senhaAl= (int)((Math.random() * (99999999 - 00000000 + 1)) + 00000000);
        }
        else if(numero==9){
            senhaAl= (int)((Math.random() * (999999999 - 000000000 + 1)) + 000000000);
        }
        else if(numero==10){
            senhaAl= (int)((Math.random() * (9999999999.9 - 0000000000 + 1)) + 0000000000);
        }
        System.out.println("Número sorteado é: "+numero+ "\n"+ "Senha númerica: " +senhaAl);
    }
}
