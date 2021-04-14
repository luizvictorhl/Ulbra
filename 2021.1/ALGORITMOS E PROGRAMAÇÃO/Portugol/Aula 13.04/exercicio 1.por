programa {
	funcao inicio() {
		real n1, n2, n3, media
		escreva("Escreva a nota do trabalho de laboratório\n")
		leia(n1)
		escreva("Escreva a nota da avaliação semestral\n")
		leia(n2)
		escreva("Escreva a nota do exame final\n")
		leia(n3)
		
		media = (n1*2 + n2*3 + n3*5)/10
		se ( (media >=8) e (media <=10) ){
		    escreva("A Média ponderada\n" ,media, "\nestá no conceito A")
	    }
	    se ( (media >=7) e (media <8) ){
	        escreva("A média ponderada\n" ,media, "\nestá no conceito B")
	    }
	    se ( (media >=6) e (media <7) ){
	        escreva("A média ponderada\n" ,media, "\nestá no conceito C")
	    }
	    se ( (media >=5) e (media<6) ){
	        escreva("A média ponderada\n" ,media, "\nestá no conceito D")
	    }
	    se ( (media >=0) e (media <5)){
	        escreva("A média ponderada\n" ,media, "\nestá no conceito E")
	    }
	}
		
		
}
