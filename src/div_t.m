
function Xn = div_t(x)
  if (x==0)
    Xn="NR";
  else
    negativo=false;
    if x<0
      x=abs(x);
      negativo=true;
    endif
    iterMax=2500; 
    tol=1e-8;
    if (prod (1:80)<x) && (x<=prod (1:100))
      Xn=eps^15;
    elseif (prod (1:60)<x)&&(x<=prod (1:80))
      Xn=eps^11;
    elseif (prod (1:40)<x)&&(x<=prod (1:60))
      Xn=eps^8;
    elseif (prod (1:20)<x)&&(x<=prod (1:40))
      Xn=eps^4;
    else
      Xn=eps^2;
    endif
    Xnp1=Xn*(2-x*Xn);
    i=0;
    while (i<iterMax)
      if (abs(Xnp1-Xn)< tol*abs(Xnp1))
        if (negativo==true)
          Xn=-Xn;
          break
        endif
      end
      i=i+1;
      Xn=Xnp1;
      Xnp1=Xn*(2-x*Xn);
    endwhile
  
  endif
endfunction
