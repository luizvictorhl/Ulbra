programa
{

    funcao inicio()
    {

        //"digite na constante a quantidade de funcionários:"

        const inteiro tam=10
        cadeia funcionarios[tam]
        real salario[tam]
        inteiro i=0

        para(i=0; i<tam; i++){
            escreva("digite o nome do funcionário: ")
            leia(funcionarios[i])
            escreva("digite o salário do funcionário: ")
            leia(salario[i])

            se(salario[i]<500){
                salario[i]=(salario[i]0.05)+salario[i]
                se(salario[i]<=600){
                    salario[i]= salario[i] + 150
                }
            }
            senao se(salario[i]>=500 e salario[i]<=1200){
                salario[i]=(salario[i]0.12)+salario[i]
                se(salario[i]<=600){
                    salario[i]= salario[i] + 150
                }
                se(salario[i]>600){
                    salario[i]= salario[i] + 100
                }
            }
            senao se(salario[i]>1200){
                salario[i]=salario[i]
                se(salario[i]<=600){
                    salario[i]= salario[i] + 150
                }
                se(salario[i]>600){
                    salario[i]= salario[i] + 100
                }
            }
            limpa()
        }

        para(i=0; i<tam; i++){
            escreva("O " + funcionarios[i] + " teve o salário reajustado para: " + salario[i] + "\n")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1435; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */