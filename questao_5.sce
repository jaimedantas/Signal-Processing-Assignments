//questao 5
//METODO DE GAUSS COM PIVOTAMENTO PARCIAL
//e = [0.8821,0.2845;-0.2845, 0.8821];
//f = [0.7071;1.2928];
e = [3, -2; 9, 4];
f = [2.3147; -0.2977];
function u = gauss(a, b)
  [l,c] = size(a);//sabe as linhas e colunas de a
  //concatena
  u = [a b];
  //percorrer o pivo
  for j=1:c//coluna
    pivo = u(j, j); 
    //pivotamento parcial
    for k = j:l
        if abs(pivo)<abs(u(k, j)) then
            aux2 = u(j, :);
            pivo = u(k,j);
            u(j,:)=u(k, :);
            u(k,:)=aux2;
        end
    end
    while pivo == 0 
        aux = u(j, :);
        u(j, :) = u(j+1 , :);
        u(j+1, :) = aux;
        pivo = u(j,j);
    end
    for i=j+1:l//percorre a linha abaixo do pivo
      fator=u(i,j)/pivo;
      //calculo
      u(i, :) = u(i, :) - fator*u(j, :);
    end
  end
endfunction
[r] = gauss( e, f)
