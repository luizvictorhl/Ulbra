programa {
	funcao inicio() {
	real n1, n2, n3, p1, p2, p3, mediapon
	escreva("Digite a primeira nota: ")
	leia(n1)
	escreva("Digite a segunda nota: ")
	leia(n2)
	escreva("Digite a terceira nota: ")
	leia(n3)
	escreva("Digite o peso da primeira nota: ")
	leia(p1)
	escreva("Digite o peso da segunda nota: ")
	leia(p2)
	escreva("Digite o peso da terceira nota: ")
	leia(p3)
	mediapon = ((n1*p1)+(n2*p2)+(n3*p3))/(p1+p2+p3)
	escreva("A média ponderada das três notas é ",mediapon)
	
	
	}
}
