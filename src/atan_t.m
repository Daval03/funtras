
function Sk = atan_t(x)
  if (x<=-1 || x>=1)
    Sk="NR";
  else
    iterMax=2500; 
    tol=1e-8;
    k=1;
    signo=-1;
    Sk=x;
    Skp1=Sk+(signo*((x^(2*k+1))*div_t(2*k+1)));
    while (k<iterMax)
      if (abs(Skp1-Sk)<tol)
        break
      endif
      k++;
      signo=signo*-1;
      Sk=Skp1;
      Skp1=Sk+(signo*((x^(2*k+1))*div_t(2*k+1)));
    endwhile
  endif
endfunction