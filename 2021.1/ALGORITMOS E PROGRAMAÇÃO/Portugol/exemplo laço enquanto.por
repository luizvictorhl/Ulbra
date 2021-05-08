programa {
	funcao inicio() {
		inteiro idade // digitada pelo usuario;
		inteiro somaDasIdades=0 // acumulador;
		inteiro contador=0 // quantas pessoas possuem na sala;
		logico temMais=verdadeiro
		cadeia digite
		
		enquanto(temMais){
		   contador++
		    escreva("\nDigite a idade de pessoa: "+contador+":")
		    leia(idade)
		    somaDasIdades=idade+somaDasIdades
		    
		    escreva("Tem mais alunos?")
		    leia(digite)
		    se (digite=="nao"){
		        temMais=falso
		    }
		}
		escreva("\nMedia das idades é: "+somaDasIdades/contador)
		
	}
}
