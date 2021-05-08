programa {
	funcao inicio() {
		inteiro idade // digitada pelo usuario;
		inteiro somaDasIdades=0 // acumulador;
		inteiro contador // quantas pessoas possuem na sala;
		
		para(contador=0; contador <5; contador++){
		    escreva("\nDigite a idade de pessoa: "+(contador+1)+":")
		    leia(idade)
		    somaDasIdades=idade+somaDasIdades
		}
		
		escreva("\nMédia das idades é:"+somaDasIdades/contador)
		
	}
}
