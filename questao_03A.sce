//questao 3 Letra A
//funcao de comvolucao discreta
function [y, ny] = convolucao(x, nx, h, nh)
    ny_inicial = nx(1) + nh(1);//soma as primeiras possicoes de x e h
    ny_final = nx(length(x)) + nh(length(h));//soma com a ultima possicao de x e h
    ny = [ny_inicial:1:ny_final];//define as posicoes do y
    y = conv(x,h);//funcao do scilab para convolucao discreta
endfunction
//entrada de dados:
x = [1; -1/2; 1/4; -1/8; 1/16];//entrada do SLIT
nx = [-2:1:2];//posicoes do vetor de entrada
h = [1; -1; 1; -1];//resposta do SLIT
nh = [0:1:3];//posicoes do vetor de resposta
//y eh x convolucao y
[y, ny] = convolucao(x, nx, h, nh);//saida do SLIT
//grafico
n=[ny(1):1:ny(length(y))];//intervado discreto de y
//variáveis auxiliares para o grafico
x_min = ny(1)-1;
x_max= ny(length(y)) + 1;
y_min = min(y)-1;
y_max = max(y)+1;
plot2d3(n,y, style = -4, rect = [x_min,y_min,x_max,y_max]);//grafico discreto de y(n) em funcao de n
xtitle("",["n"],["y(n)"],  boxed = 0);//titulo dos eixos
xgrid(4);
