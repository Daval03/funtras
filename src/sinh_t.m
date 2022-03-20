
function Sk = sinh_t(x)
  iterMax=2500; 
  tol=1e-8;
  k=0;
  Sk=0;
  Skp1=((x^(2*k+1))*div_t( prod(1:(2*k+1))));
  while (k<iterMax)
    if (abs(Skp1-Sk)<tol)
      break
    endif
    k++;
    Sk=Skp1;
    Skp1 = Sk+((x^(2*k+1))*div_t( prod(1:(2*k+1))));
  endwhile
endfunction