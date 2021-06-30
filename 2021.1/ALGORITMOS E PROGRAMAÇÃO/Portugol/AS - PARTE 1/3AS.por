programa
{

    funcao inicio()
    {
        const inteiro tam=5
        real nota[tam]
        inteiro i=0,  media=0, todasnotas=0
        cadeia aluno[tam]

        para(i=0; i<tam; i++){
            escreva("Digite o nome do aluno: ")
            leia(aluno[i])
            escreva("Digite a nota do aluno: ")
            leia(nota[i])

            todasnotas+=nota[i]
            media=todasnotas/tam
        }
        	
		escreva("\n--------------------")
        	escreva("\nA média da classe é: " + media)
		escreva("\n--------------------\n")

		escreva("\nOs alunos com a nota maior que a média da turma são: \n")
        para(i=0; i<tam; i++){
            se(nota[i]>media){
               escreva("\n" ,aluno[i], " - " ,nota[i])
                
                
            }
     
        }

    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 425; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */