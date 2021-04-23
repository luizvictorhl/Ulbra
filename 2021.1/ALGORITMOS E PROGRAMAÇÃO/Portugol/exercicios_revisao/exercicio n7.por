programa {
	funcao inicio() {
		real valor_1, valor_2, valor_3
		
		escreva("Digite o primeiro número:\n")
		leia(valor_1)
		escreva("Digite o segundo número:\n")
		leia(valor_2)
		escreva("Digite o terceiro número:\n")
		leia(valor_3)
		
		se((valor_1 > valor_2) e (valor_1 > valor_3)){
		    escreva("O primeiro número ",valor_1, " é o maior dentre os três números.")
		}
		senao se((valor_2 > valor_1) e (valor_2 > valor_3)){
		    escreva("O segundo número ",valor_2, " é o maior dentre os três números")
		}
		senao se((valor_3 > valor_1) e (valor_3 > valor_2)){
		    escreva("O terceiro número, ",valor_3, " é o maior dentre os três números")
		    
		}
		
		
	}
}
