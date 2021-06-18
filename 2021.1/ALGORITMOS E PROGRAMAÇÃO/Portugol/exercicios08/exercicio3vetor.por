programa
{

    funcao inicio()
    {
        inteiro Vetor1[10]//={3, 5, 4, 2, 2, 5, 3, 2, 5, 9}
        inteiro Vetor2[10]//={7, 15, 20, 0, 18, 4, 55, 23 , 8, 6}
        inteiro Vetor3[20]
        inteiro j=1
        inteiro i
        inteiro k=0

        para(i=0;i<10;i++){
            escreva("Digite um valor para Vetor1: ")
            leia(Vetor1[i])
        }

        para(i=0;i<10;i++){
            escreva("Digite um valor para Vetor2: ")
            leia(Vetor2[i])
        }



        para(i=0;i<10;i++){
            Vetor3[k]=Vetor1[i]
            k+=2
            Vetor3[j]=Vetor2[i]
            j+=2
            escreva(i, ":", Vetor3[i], "\n")
        }

    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 681; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */