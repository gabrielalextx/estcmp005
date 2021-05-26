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
	
caverna(esquerda) :-
	write('Voce se fudeu, um urso te comeu.').

caverna(direita) :-
	write('Voce anda pelo caminho da direita').

caverna(X) :- direcao(X, _), direcao(_, X). 