
function Sk = asin_t(x)
  if (x<=-0.9 || x>=0.9)
    Sk="NR";
  else
    iterMax=2500; 
    tol=1e-8;
    k=1;
    Sk=x;
    Skp1=Sk+(x^(2*k+1))*(prod(1:(2*k)))*div_t((4^k)*(( prod(1:k))^2)*(2*k+1));
    while (k<iterMax)
      if (abs(Skp1-Sk)<tol)
        break
      endif
      k++;
      Sk=Skp1;
      Skp1=Sk+((x^(2*k+1))*(prod(1:(2*k)))*div_t((4^k)*(( prod(1:k))^2)*(2*k+1)));
    endwhile
  endif
endfunction