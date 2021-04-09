programa {
	funcao inicio() {
	real salario, aumento, novosal
	escreva("Digite o valor do salário: ")
	leia(salario)
	escreva("Digite o valor do aumento em porcentagem: ")
	leia(aumento)
	aumento = salario*(aumento/100)
	novosal = aumento + salario
	escreva("O valor do aumento é R$ ",aumento)
	escreva("O valor do novo salário é R$ ",novosal)
	
	
	}
}
