programa {
	funcao inicio() {
		real salario, novo_salario, calculo
		
		escreva("Escreva o salário do funcionário:\n")
		leia(salario)
		
		se (salario < 1000){
		    calculo = 1000*0.10
		    novo_salario = salario + calculo
		    escreva("O salário com o aumento de 10% é:",novo_salario)
		}senao{
		    calculo = 1000*0.08
		    novo_salario = salario + calculo
		    escreva("O salário com o aumento de 8% é:",novo_salario)
		}
	}
}
