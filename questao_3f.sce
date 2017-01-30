//questao 3 f
//funcao degrau discreta
function [h, nh] = degrau(n0, n1, n2) 
    nh = [n1:1:n2]; 
    h = [(nh-n0) >= 0]; 
endfunction
//funcao de comvolucao discreta 
//entrada de dados
n=[0:1:5];
y_aux2 = (6-2*(2/3)^n);
[y_aux1, ny] = degrau(0,0,5);
for i=1:5
    y(i) =  y_aux2(i) * y_aux1(i);//saida do SLIT
end
y(1) =  y_aux2(1) * y_aux1(1);//saida do SLIT

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

