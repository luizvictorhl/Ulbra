package aula08.IOO;


public class Bomba {
        private boolean status; //variavel que vai armazenar o estado da bomba

        //get e set
        public boolean isStatus() {
            return status;
        }

        public void setStatus(boolean status) {
            this.status = status;
        }


        public void ligar(){
            status = true;
            for (int i=5;i>0;i--){
                System.out.println("Faltam " + i + " segundos para ligar a bomba");
                try{
                    Thread.sleep(1*1000);
                } catch (InterruptedException ex){
                    Thread.currentThread().interrupt();
                }
            }
        }

        public void desligar(){
            status = false;
        }

        public String observar(){
            if(status == true)
                return "Bomba ligada";
            else
                return "Bomba desligada";
        }
    }
