function vector=copias(ka,cota,con) # genera un vector con "cota" copias del vector "con" 
                                    # en un vector de dimension "ka"
vector=zeros(1,ka); #se crea un vector de ceros como contenedor
n=size(con,2);
lim=floor(ka/n);
i=1;
c=1;


for m=1:ka
  vector(m)=con(i);

  if c==cota
    i=i+1;
    c=0;
   endif

  if i==n+1
    i=1;
  endif

  c=c+1;


endfor
endfunction

