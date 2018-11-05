function salida=fqn(q,k) #Genera un espacio f_q^k
con=0:1:q-1; 
matriz=zeros(k,q^k);
for c=0:k-1
    cota=q^c;
    c=c+1;
    matriz(k+1-c,:)=copias(q^k,cota,con);

endfor
salida=matriz';
endfunction