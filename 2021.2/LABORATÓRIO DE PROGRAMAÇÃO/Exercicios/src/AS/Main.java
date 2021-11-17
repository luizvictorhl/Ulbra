package AS;



import java.util.ArrayList;
import java.util.Scanner;

    public class Main {

        public static void main(String[] args) {

            Scanner tc = new Scanner(System.in);

            ArrayList<Serie> catalogo = new ArrayList<Serie>();
            int op = 0;

            do {
                System.out.println("");
                System.out.println("Digite 1 para ADICIONAR séries e seus dados;");
                System.out.println("Digite 2 LISTAR as séries vistas e não vistas;");
                System.out.println("Digite 3 para REMOVER uma série por seu nome;");
                System.out.println("Digite 4 para REMOVER uma série por sua posição;");
                System.out.println("Digite 5 para ENCONTRAR uma série;");
                System.out.println("Digite 6 MOSTRAR a QUANTIDADE total de Séries no catálogo;");
                System.out.println("Digite 7 para sair do programa.");
                op = tc.nextInt();
                System.out.println("");
                switch (op) {
                    case 1: {
                        Serie series = new Serie();
                        series.lerDados();
                        catalogo.add(series);
                        break;
                    }

                    case 2: {
                        if (catalogo.isEmpty()) {
                            System.out.println("Nenhuma série está cadastrada no momento!");
                        } else {
                            System.out.println("\nSéries visualizadas:");
                            for (int i = 0; i < catalogo.size(); i++) {
                                catalogo.get(i).serieVisualizada();
                            }
                            System.out.println("\nSéries não visualizadas:");
                            for (int i = 0; i < catalogo.size(); i++) {
                                catalogo.get(i).serieNaoVisualizada();
                            }

                        }
                        break;
                    }
                    case 3: {
                        System.out.println("Digite o nome da série que deseja apagar:");
                        String nome = tc.next();
                        Serie apagar = new Serie(nome);

                        if(catalogo.remove(apagar)){
                            System.out.println("Removido!\nA série removida foi: " + nome);
                        }else{
                            System.out.println("Não encontrei a série no catálogo.");
                        }
                        break;
                    }

                    case 4: {
                        System.out.println("Digite a posição a ser apagada:");
                        int posicao = tc.nextInt();
                        Serie apagar = catalogo.remove(posicao);
                        if (apagar != null) {
                            System.out.println("Série apagada: " + apagar.titulo);
                        } else {
                            System.out.println("Posição não registra série cadastrada no momento!");
                        }
                        break;
                    }

                    case 5: {
                        if (catalogo.isEmpty()) {
                            System.out.println("Catalogo vazio!");
                        } else {
                            System.out.println("Digite o nome da série a ser buscada: ");
                            String nome = tc.next();

                            Serie buscar = new Serie(nome);

                            if (catalogo.contains(buscar)) {
                                System.out.println("\nEncontrei a série " + nome + " na posiçao:" + catalogo.indexOf(buscar));
                                catalogo.get(catalogo.indexOf(buscar)).exibirDados();
                            } else {
                                System.out.println("\nDesculpe, não encontrei a série desejada.");
                            }

                        }
                        break;
                    }

                    case 6: {
                        System.out.println("Total de séries cadastradas: " + catalogo.size());
                        for (int i = 0; i < catalogo.size(); i++) {
                            catalogo.get(i).exibirDados();
                        }
                        break;
                    }
                }

            }while (op != 7) ;
                    System.out.println("Obrigado por utilizar!");
                }

            }


