
function Xn = root_t(x,a)
  if (x==0 && a==0)
    Xn="NR";
  elseif (x<0 || a<=0)
    Xn="NR";
  elseif (x==0)
    Xn=0;
  elseif (a==1)
    Xn=x;
  else
    iterMax=2500; 
    tol=1e-8;
    k=1;
    Xn=x*div_t(2);
    Xnp1=Xn-( ((Xn^a)-x) * div_t(a*Xn)); 
    while (k<iterMax)
      if ( abs(Xnp1-Xn) < (tol*abs(Xnp1)))
        break
      endif
      k++;
      Xn=Xnp1;
      Xnp1=Xn-(((Xn^a)-x) * div_t(a*Xn^(a-1)));
    endwhile
  endif
endfunction