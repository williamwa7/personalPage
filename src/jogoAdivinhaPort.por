programa 
{ 
   inclua biblioteca Util  
   funcao inicio(){ 
   	
       	inteiro numeroMagico = Util.sorteia(1,100)
       	
       	inteiro chute
       	inteiro tentativas = 0
       	inteiro contTentativas = 1
       	inteiro dificuldade = 0
       	inteiro tentFacil = 8
       	inteiro tentMedio = 6
       	inteiro tentDificil = 4
       	inteiro pontuacao = 1000
       	inteiro calculoChute = 0     	
       	
       	     	       	       	
		escreva("Você consegue adivinhar qual número Mágico eu estou pensando?")
		escreva("\n\nQual nível você deseja jogar?")
		escreva("\n\n1 - Fácil   |   2 - Médio   |   3 - Difícil")
		escreva("\n\nEscolha: ")
		leia(dificuldade)
		limpa()

		
		enquanto (dificuldade < 1 ou dificuldade > 3){
			escreva("OPÇÃO INVÁLIDA!")
			escreva("\n\nQual nível você deseja jogar?")
			escreva("\n\n1 - Fácil   |   2 - Médio   |   3 - Difícil")
			escreva("\n\nEscolha: ")
			leia(dificuldade)
			limpa()
		}

		
		se (dificuldade == 1) {
			tentativas = tentFacil
		}
		senao se (dificuldade == 2) {
			tentativas = tentMedio
		}
		senao se (dificuldade == 3) {
			tentativas = tentDificil
		}	
		
      	
      	para (contTentativas; contTentativas <= tentativas; contTentativas++){
      		
      		escreva("\n\nDigite um número para tentar adivinhar: ")
			leia(chute)
			
			se (chute < 1 ou chute > 100) {
				limpa()
      			escreva("Atenção! Digite um número entre 1 a 100")
      			contTentativas--
      		}
      		senao {
      			limpa()
      			
				//Cálculo de pontuação
				calculoChute = (chute - numeroMagico)
				se (calculoChute < 0) {
					calculoChute =  calculoChute * -1
				}			
					pontuacao = pontuacao - calculoChute
				

      			//Verificador de proximidade
      			se (chute > numeroMagico){									
					escreva("O número digitado é MAIOR que o número Mágico!")
					escreva("\nTentativas restantes: " + (tentativas  - contTentativas))																								
				}
				
				
				senao se (chute < numeroMagico){					
					escreva("O número digitado é MENOR que o número Mágico")
					escreva("\nTentativas restantes: " + (tentativas - contTentativas))																								
				}
				
				senao { 
					escreva("Parabéns! Você acertou o Número Mágico após a " + contTentativas + "ª tentativa!")
					escreva("\n\nO número era: " + numeroMagico + "\n\n")
					
					se (pontuacao == 1000 ) {
						escreva("Pontuação Final: " + pontuacao + "\n\n")
						escreva("\n\nVocê atingiu a Pontuação Máxima!\n\n")
					}
					senao {
						escreva("Pontuação Final: " + pontuacao + "\n\n")
					}
					pare
				}
      		}   			
								
      	} 
      	     	
      	//Aviso máximo de tentativas
       	se (contTentativas > tentativas) {
       		limpa()
       		escreva("Você atingiu o número máximo de tentativas!")
          escreva("\nO Número Mágico era: " + numeroMagico +"\n")    
       		escreva("\nTente novamente!\n\n")
       		escreva("Pontuação Final: " + pontuacao + "\n\n")
       		
       	}       	
      }    			


}