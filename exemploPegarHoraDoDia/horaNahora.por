programa{
    inclua biblioteca Calendario
    inclua biblioteca Util --> u
    funcao inicio()
    {
    	 inteiro x=5,y=95
        inteiro valorDivida = u.sorteia(x,y)
        real valorNota

        escreva("{============ Qual meu troco?  ===========\n}")
        escreva("\nValor da divida:R$",valorDivida)
        escreva("\n--------------------------------------------------")
        escreva("\nQuanto dinheiro você tem? R$")
        leia(valorNota)

        escreva("\nHora da  venda:" , Calendario.hora_atual(verdadeiro),":",Calendario.minuto_atual(), " - ", "Seu troco é:R$", valorNota-valorDivida,"\n\n")
        }
}