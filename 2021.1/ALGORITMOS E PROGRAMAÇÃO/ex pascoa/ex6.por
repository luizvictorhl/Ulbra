programa {
	funcao inicio() {
	real salario, grat, imp, desc, novosal
	escreva("Digite o salário base do funcionário ")
	leia(salario)
	grat = salario*0.05
	imp = salario*0.07
	desc = salario - imp
	novosal = desc + grat
	escreva("O salário do funcionário a receber é R$ ",novosal)
	
	
	}
}
