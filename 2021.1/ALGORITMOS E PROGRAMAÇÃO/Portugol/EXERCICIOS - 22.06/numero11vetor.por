programa
{

    funcao inicio()
    {
        inteiro Vetor[10]
        inteiro Par[10]
        inteiro Impar[10]
        inteiro i
        inteiro j=0
        inteiro k=0
        para(i=0;i<10;i++){
            escreva("Digite um número: ")
            leia(Vetor[i])
        se(Vetor[i]%2==0){
            Par[j]=Vetor[i]
            j++
        }
        se(Vetor[i]%2!=0){
            Impar[k]=Vetor[i]
            k++
        }
        }
        escreva("Números pares: \n")
        para(i=0;i<j;i++){
        escreva(Par[i], "\n")
        }
        escreva("Números ímpares: \n")
        para(i=0;i<k;i++){
        escreva(Impar[i], "\n")
        }

    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 663; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */