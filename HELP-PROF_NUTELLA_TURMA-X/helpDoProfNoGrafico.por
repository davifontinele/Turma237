programa {
    
    inclua biblioteca Graficos --> g
    inclua biblioteca Mouse --> m
    inclua biblioteca Calendario --> C
    
    const inteiro LarguraT = 1280
    const inteiro AlturaT = 720
    inteiro TAMANHO_TILE=1
    inteiro logo = g.carregar_imagem("profAnjo.png")
    cadeia user = "senai"
    cadeia senha = "lab304"
      inteiro horarioH = C.hora_atual(falso)
  inteiro horarioM = C.minuto_atual()
  inteiro diaAtual = C.dia_mes_atual()
  inteiro mesAtual = C.mes_atual()
  inteiro anoAtual = C.ano_atual()
    funcao vazio ProgramaPrincipal(){
     	escreva("Login feito com sucesso")
     }
        
    funcao inicio() {
    	
    
		g.definir_cor(g.COR_BRANCO)
		interacaoBotaoLogar()

		
    }

	
	funcao logico mouse(inteiro x, inteiro y, inteiro a, inteiro b){
		se(m.posicao_x() >= x e m.posicao_y() >= y e m.posicao_x() <= x+a e m.posicao_y() <= y+b)
		{
			retorne verdadeiro
		}
		retorne falso
	}
	
	funcao interacaoBotaoLogar(){
				 
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_cor(g.criar_cor(35, 100, 100))
		g.desenhar_retangulo(300, 500, 160, 35, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_BRANCO)
		g.definir_tamanho_texto(11.0)
		g.desenhar_texto(360, 510, "#PARTIU")	
		se(mouse(300, 500, 160, 35) == verdadeiro e m.botao_pressionado(m.BOTAO_ESQUERDO)){
			g.desenhar_retangulo(210, 320, 160, 35, verdadeiro, falso)
			g.definir_cor(g.COR_PRETO)
		     g.definir_tamanho_texto(20.0)
		     g.definir_titulo_janela("Esse professor nem é gente.. é um ANJO ♡")
		}
	
        
        g.definir_dimensoes_janela(LarguraT, AlturaT)

		g.renderizar()
        
        enquanto (verdadeiro) {
            g.definir_titulo_janela("COLHER DE CHÁ - NÃO ESPERO MENOS QUE ISSO DE VCS...  ♡")
            g.definir_cor(g.COR_PRETO)
            g.limpar()           
            g.definir_cor(g.COR_BRANCO)
            g.definir_tamanho_texto(32.0)
            g.desenhar_texto(LarguraT/8, AlturaT / 17, " Bem-vindo à Padaria Pão Quente! Como posso ajudá-lo hoje? ")
            g.desenhar_texto(LarguraT/3, AlturaT / 8, " Como posso ajudá-lo hoje?\n\n\n\n\n\n")
            g.desenhar_imagem(LarguraT/3, AlturaT/6, logo)

           g.definir_cor(g.criar_cor(100, 50, 100))
		g.desenhar_retangulo(LarguraT/2.5, 550, 350, 35, verdadeiro, verdadeiro)
		g.definir_cor(g.COR_BRANCO)
		g.definir_tamanho_texto(11.0)
		g.definir_tamanho_texto(20.0)
		g.desenhar_texto(LarguraT/2, 560, "Observação")	
		se(mouse(LarguraT/2.5, 550, 350, 35) == verdadeiro e m.botao_pressionado(m.BOTAO_ESQUERDO)){
			g.desenhar_retangulo(LarguraT/2.5, 550, 350, 35, verdadeiro, falso)
			g.definir_cor(g.COR_VERDE)
		     g.definir_tamanho_texto(20.0)
		               g.desenhar_texto(LarguraT/4, AlturaT / 1.22,"Esse professor nem é gente.. é um ANJO! Agora são " + horarioH + " hora(s) e "+ horarioM + " minuto(s)")
		     		g.desenhar_texto(LarguraT/4, AlturaT / 1.15, " COLHER DE CHÁ - 3E30 DA MANHÃ... E O TRABALHO NEM É MEU...")
		     	

		
		}
            g.renderizar()
        }

   
        g.encerrar_modo_grafico()
    }
    

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1572; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */