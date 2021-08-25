programa {
	funcao inicio() {
		inteiro salario // digitada pelo usuario;
		inteiro soma=0 // acumulador;
		inteiro calculo=0
		inteiro contador=0 // quantas pessoas possuem na sala;
		logico temMais=verdadeiro
		cadeia digite
		
		enquanto(temMais){
		   contador++
		    escreva("\nDigite o salário do funcionário: "+contador+":")
		    leia(salario)
		 
		    se(salario <= 500){
		        soma= salario * 0.10
		        calculo= salario+soma
		        
		    }
		    senao{
		        soma= salario * 0.08
		        calculo= salario+soma
		       
		    }
		    escreva("\nO salário com o aumento é R$ ",calculo)
		    
		    escreva("\nDigitar outro salário?")
		    leia(digite)
		    se (digite=="nao"){
		        temMais=falso
		    }
		   
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 759; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */