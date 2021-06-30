programa
{
	
	funcao inicio()
	{

		//"digite na constante a quantidade de nomes:"
		
		const inteiro tam=5
		cadeia nome[tam], procurar
		inteiro telefone[tam], i=0

		para(i=0; i<tam; i++){
			escreva("Registre o nome da pessoa: ")
			leia(nome[i])
			escreva("Registre o telefone da pessoa: ")
			leia(telefone[i])
		}

		limpa()
		escreva("Quero encontrar o telefone de: ")
		leia(procurar)

		para(i=0; i<tam; i++){
			se(procurar==nome[i]){
				escreva("\n--------------------\n")
				escreva("O telefone de " +nome[i], " é: " + telefone[i])
				escreva("\n--------------------\n")
			}
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 526; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */