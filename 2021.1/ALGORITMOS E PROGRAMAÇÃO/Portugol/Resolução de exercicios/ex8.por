programa {
    inclua biblioteca Matematica --> mat
    
	funcao inicio() {
	real area, raio
	escreva("Informe o rario da circunferência em cm: ")
	leia(raio)
	area = mat.PI*mat.potencia(raio, 2.0)
	area = mat.arredondar(area, 2)
	escreva("O valor de PI é: ",mat.PI)
	escreva("A área da circunferência é: ", area, "cm²")
	
	
	}
}
