package AS;


import java.util.Objects;
import java.util.Scanner;

    public class Serie {
        public String titulo;
        public String consultaSeries;
        public String sinopse;
        public int qtdTemporadas;
        public int numeroEpTotal;
        public char visualizadaSN;

        Scanner tc = new Scanner(System.in);

        public void lerDados() {
            System.out.println("_____________________________________");
            System.out.println("\nInforme o titulo da série:");
            titulo = tc.nextLine();

            System.out.println("Informe a sinopse da série:");
            sinopse = tc.nextLine();

            System.out.println("Informe a quantidade de temporadas da série:");
            qtdTemporadas = tc.nextInt();


            System.out.println("Informe o número total de episódios da série:");
            numeroEpTotal = tc.nextInt();


            System.out.println("A série foi assistida? Digite 's'(sim) ou 'n'(não):");
            visualizadaSN = tc.next().charAt(0);

        }

        public void serieVisualizada(){
            if (visualizadaSN == 's') {
                System.out.println(this.titulo);
            }
        }

        public void serieNaoVisualizada() {
            if (visualizadaSN == 'n') {
                System.out.println(this.titulo);
            }
        }

        public void exibirDados() {
            System.out.println("\nNome da série: " + this.titulo);
            System.out.println("Sinopse: " + this.sinopse);
            System.out.println("Quantidade de temporadas: " + this.qtdTemporadas);
            System.out.println("Número total de episódios: " + this.numeroEpTotal);
            System.out.println("Série visualizada? " + this.visualizadaSN + "\n");
        }

        public Serie(int temporadas) {
            this.qtdTemporadas = temporadas;
        }

        public Serie(String nome) {
            this.titulo = nome;
        }

        public Serie() {
        }
        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;
            Serie series = (Serie) o;
            return Objects.equals(titulo, series.titulo);
        }

        @Override
        public int hashCode() {
            return Objects.hash(titulo);
        }


    }