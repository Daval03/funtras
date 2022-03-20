
function Sk = ln_t(x)
  if (x<=0)
    Sk="NR";
  else
    iterMax=2500; 
    tol=1e-8;
    k=1;
    constante=((2*(x-1))*div_t(x+1));
    Sk=constante; 
    Skp1=(Sk+ constante*((div_t(2*k+1))*(((x-1)*(div_t(x+1)))^(2*k))));
    while (k<iterMax)
      if (abs(Skp1-Sk)<tol)
        break
      endif
      k++;
      Sk=Skp1;
      Skp1= (Sk+ constante*((div_t(2*k+1))*(((x-1)*(div_t(x+1)))^(2*k))));
    endwhile
  endif
endfunction