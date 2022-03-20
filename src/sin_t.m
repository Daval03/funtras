function Sk = sin_t(x)
  iterMax=2500; 
  tol=1e-8;
  k=0;
  signo=1;
  Sk=0;
  Skp1=signo*( (x^(2*k+1))/( prod(1:(2*k+1))));
  while (k<iterMax)
    if (abs(Skp1-Sk)<tol)
      break
    endif
    k++;
    signo=signo*-1;
    Sk=Skp1;
    Skp1 = Sk+( signo*( (x^(2*k+1))/( prod(1:(2*k+1)))) );
  endwhile
endfunction
