programa
{

    funcao inicio()
    {
        inteiro vetor[8], neg[8], posi[8], i, posicao_posi = 0, posicao_neg = 0

        para(i = 0; i < 8; i++){

            escreva("Digite o valor ",i," : ")
            leia(vetor[i])

            se(vetor[i] < 0){
                neg[posicao_neg] = vetor [i]
                posicao_neg++
            }senao se (vetor[i] > 0){
                posi[posicao_posi] = vetor[i]
                posicao_posi++
            }
        }

        escreva("Números negativos: ")
        para(i =0; i < posicao_neg; i++){
            escreva(neg[i], ", ")
        }

        escreva("Números positivos: ")
        para(i=0; i < posicao_posi; i++){
            escreva(posi[i], ", ")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 709; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */