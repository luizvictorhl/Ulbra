programa {
	funcao inicio() {
		inteiro valor1, valor2
		
		escreva("Digite o primeiro valor:\n")
		leia(valor1)
		escreva("Digite o segundo valor:\n")
		leia(valor2)
		
		se(valor1 % 2==0){
		    escreva("O primeiro valor ",valor1, " é múltiplo de 2\n")
		}senao{
		    escreva("O primeiro valor ",valor1, " não é múltiplo de 2\n")
		}
		se(valor2 % 2==0){
		    escreva("O segundo valor ",valor2, " é múltiplo de 2\n")
		}senao{
		    escreva("O segundo valor ",valor2, " não é múltiplo de 2\n")
		}
	}
}
