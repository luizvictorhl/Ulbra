package aula06;

public class ex04 {

    public static void main(String[] args) {
      String palindromo = "ramon";
      int fim = palindromo.length()-1;
      String msg="";
        System.out.println(fim);
      for(int i=0;i<palindromo.length();i++){
          if(palindromo.charAt(i)==palindromo.charAt(fim)){
              fim--;
              msg="é um palindromo";
          }else{
              msg="Não é";
              break;
          }

      }
        System.out.println(msg);
    }
}
