programa {
	funcao inicio() {
		real nroconta, saldo
		
		escreva("Digite o número da sua conta:\n")
		leia(nroconta)
		escreva("Digite o saldo de sua conta:\n")
		leia (saldo)
		
		se(saldo<0){
		    escreva("SUA CONTA ESTÁ ESTOURADA, SEU SALDO R$ ",saldo)
		}senao{
		    escreva("CONTA NORMAL, SEU SALDO R$",saldo)
		}
	}
}
