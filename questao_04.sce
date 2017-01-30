//condicoes iniciais
n_c = 2;//numero de condicoes iniciais
n_i = 5;//numero de interacoes
y(2) = 1;//y(-1)
y(1) = 0;//y(-2)

//laco de interacao
for i = 3:(n_i + n_c)
    y(i) = (3/4)*y(i-1) -(1/8)*y(i-2) +(1/2)^(i-3);
end

//deslocamento do vetor y para a possicao 1
for i = 1:(n_i)
    aux(i) = y(i+n_c);
end
f = aux'//transposta do vetor resposta
//agora o vetor aux eh o vetor y(i) ordemado corretamente a partir da posicao y(1)
//f = aux';
//grafico
//vetor de n discreto
n=[1:1:n_i];
//variáveis auxiliares para o grafico
x_min = n(1)-2;
x_max= n(length(n));
y_min = min(f);
y_max = max(f)+0.5;
plot2d3(n-1,f, style = -4, rect = [x_min,y_min,x_max,y_max]);//grafico discreto de y(n) em funcao de n
xtitle("",["n"],["y(n)"],  boxed = 0);//titulo dos eixos
xgrid(4);
