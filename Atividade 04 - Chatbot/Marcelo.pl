% Atividade 004 de Paradigmas de Linguagem de Programação - Chatbot

%Equipe: 
%Dayvson dos Santos Silva, 
%Fabrizio Honda Franzoia, 
%Gabriel Alexander Farias de Lima Teixeira, 
%Gabriel Sena San Martin, 
%Gonzalo Ivan dos Santos Portales

%Professor: Jucimar Maia da Silva Junior

%Chatbot: Marcelo, o contador de histórias

%Inicializando o Chatbot
marcelo():-
	main().

main() :-
	write('Ola, eu sou o chatbot Marcelo. Sou um chatbot contador de histórias.'), nl,
	write('Começarei contando uma historia.'), nl, 
	write('Suas escolhas de palavras influenciarao no final que essa historia levara, entao responda com cuidado.'), nl,
	write('Podemos começar?'), nl, nl,
	historia().
	
historia() :- 
	write('Voce começa dentro de um caverna. As paredes são meramente visiveis, quase nenhuma luz entra no local.'), nl,
	write('De repente, voce escuta um barulho abafado - o som da respiraçao. Mas voce nao sabe de onde vem,'), nl,
	write('nem de quem ou o que. Voce consegue visualizar dois caminhos em meio a escuridao: direita e esquerda.'), nl,
	write('Qual caminho voce escolhe? - escreva esquerda ou direita.'), nl, 
	read(Resposta), nl,
	caverna(Resposta).

direcao(esquerda, direita).
estado(ficar, seguir).
bussola(norte, oeste, leste).

caverna(esquerda) :-
	write('Voce se fudeu, um urso te comeu.').

caverna(direita) :-
	write('Voce anda pelo caminho da direita'), nl,
	write('Ufa! Essa foi por pouco... Quero dizer, não que você iria ser comido ou algo do tipo.'), nl,
	write('Nada disso. Após andar calmamente por 14 segundos, você vê uma luz. Será que é uma saída? Decida sabiamente'), nl,
	write('O que você decide fazer? - escreva ficar ou seguir'), nl,
	read(Estado), nl,
	caverna_fim(Estado).

caverna_fim(ficar) :-
	write('Você ficou parado... e só. O que achou que aconteceria? Nem tudo é o que parece'), nl,
	write('E você ainda demorou pra perceber isso. Acabou morrendo de fome. Já era. Fim. Bye'), nl.

caverna_fim(seguir) :-
	write('Ah, sim. A famosa luz no fim do túnel... Quem sabe o que te espera depois de atravessa-la?'), nl,
	write('Ao atravessar a luz, vocẽ se depara em um bosque. Uma leve brisa sopra as folhas.'), nl,
	write('Ela te indica uma direção. Contudo, você não tem uma bússola. Escolha de forma sabida.'), nl,
	write('Você prefere ir pra qual direcao? - escreva norte, oeste ou leste'), nl,
	read(Resposta), nl,
	bosque(Resposta).

bosque(norte) :-
	write('Você foi descuidado e caiu em um buraco. Pobre coitado.'), nl.

bosque(oeste) :-
	write('aaaa'), nl.

bosque(leste) :-
	write('Uma gangue de saqueadores aparece repentinamente. Eles levam tudo que você tem.'), nl,%
	write('Em outras palavras, eles não levam nada. Ta safe'), nl.

caverna(X) :- direcao(X, _), direcao(_, X). 
caverna_fim(X) :- estado(X, _), estado(_, X).
bosque(X) :- bussola(X, _, _), bussola(_, X, _), bussola(_, _, X).
