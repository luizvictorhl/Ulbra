programa {
	funcao inicio() {
	//verificar se a pessoa pode votar!
	inteiro idade
	escreva("Digite sua idade:\n")
    leia(idade)
    	se(idade>=16){
		    escreva("Voce pode votar!\n")
		        se( (idade<18) ou (idade>70) ){
		            escreva("Seu voto é facultativo!\n")
		        }senao{
		            escreva("Seu voto é obrigatório!\n")
		        }
	    }senao{
		    escreva("Voce não pode votar!\n")
		    
		}
		
		
		
		escreva("Sua idade é: "+idade)
		
		
	}
}
