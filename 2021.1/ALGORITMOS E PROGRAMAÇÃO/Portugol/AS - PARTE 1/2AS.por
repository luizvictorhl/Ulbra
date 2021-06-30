programa
{

    funcao inicio()
    {
        //"digite na constante a quantidade de alunos:"

        const inteiro tam=5
        inteiro nota[tam], media=0, todasnotas=0
        inteiro i=0
        

        para(i=0; i<tam; i++){
            escreva("Digite a nota do aluno: ")
            leia(nota[i])

            todasnotas+=nota[i]
            media=todasnotas/tam
        }
		escreva("\n--------------------\n")	
        	escreva("A média da classe é: " + media)
		escreva("\n--------------------\n")

		escreva("\n\nMaiores que a média: ")
        para(i=0; i<tam; i++){
        	
            se(nota[i]>media){
                escreva(nota[i],",")
            }
        	}
		escreva("\n\nMenores que a média: ")
		para(i=0; i<tam; i++){
            se(nota[i]<media){
                escreva(nota[i],",")
            }
        	}
        }

    }
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 656; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */