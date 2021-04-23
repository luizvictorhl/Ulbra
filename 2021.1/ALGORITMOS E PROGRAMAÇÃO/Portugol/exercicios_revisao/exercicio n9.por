programa {
	funcao inicio() {
		inteiro diaria, valorpago, taxa, semtaxa
		
		escreva("Quantas diárias?\n")
		leia(diaria)
		
	    semtaxa = diaria * 50
		
		se(diaria <15){
		    taxa = diaria * 1.50
		    valorpago = semtaxa + taxa  
		    escreva("O valor total foi de R$ "+valorpago)
		}senao se(diaria==15){
		     taxa = diaria * 1.00
		    valorpago = semtaxa + taxa  
		    escreva("O valor total foi de R$ "+valorpago)
		    
		}senao se(diaria >15){
		    taxa = diaria * 0.50
		    valorpago = semtaxa + taxa  
		    escreva("O valor total foi de R$ "+valorpago)
		}
		
	}
}
