programa
{

    funcao inicio()
    {
        cadeia Nome[8]
        inteiro Nota[8]

        para(inteiro i=0;i<8;i++){
        escreva("Digite o nome do aluno: \n")
        leia(Nome[i])
        escreva("Digite a nota do aluno: \n")
        leia(Nota[i])
        }

        para(inteiro i=0;i<8;i++){
            escreva("Nome do aluno: ", Nome[i], "\n")
            escreva("Nota do Aluno: ", Nota[i], "\n")
            escreva("\n")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 454; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */