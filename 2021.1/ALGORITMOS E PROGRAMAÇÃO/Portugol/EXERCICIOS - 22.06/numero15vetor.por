programa
{

    funcao inicio()
    {

        cadeia Nome[8]
        inteiro DVDS[8]
        inteiro LOC[8]

        para(inteiro i=0;i<8;i++){
        escreva("Digite o nome do Cliente: \n")
        leia(Nome[i])
        escreva("Digite a quantia de locações do Cliente: \n")
        leia(DVDS[i])
        LOC[i]=DVDS[i]/10
        limpa()
        }

        para(inteiro i=0;i<8;i++){
            escreva("Nome do Cliente: ", Nome[i], "\n")
            escreva("Quantidade de locações grátis disponíveis: ", LOC[i], "\n")
            escreva("\n")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 568; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */