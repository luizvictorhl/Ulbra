programa {
    inclua biblioteca  Matematica --> mat
	funcao inicio() {
	real numero, quadrado, cubo, rquadrada, rcubica, raiz, potencia
	escreva("Digite um número positivo e maior do que zero: ")
	leia(numero)
	quadrado = mat.potencia(numero, 2.0)
	cubo = mat.potencia(numero, 3.0)
	rquadrada = mat.raiz(numero, 2.0)
	rcubica = mat.raiz(numero, 3.0)
	escreva("O número ao quadrado é: ",quadrado)
	escreva("O número ao cubo é: ",cubo)
	escreva("A raiz quadrada do número é: ",rquadrada)
	escreva("A raiz cúbica do número é: ",rcubica)
	
	
	}
}
