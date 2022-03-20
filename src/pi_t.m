function x = pi_t ()
  a=1;
  b=1*div_t(sqrt_t(2));
  t=div_t(4);
  p=1;
  x=((a+b)^2)*div_t(4*t);
  an=(a+b)*div_t(2);
  bn=sqrt_t(a*b);
  tn=t- p*((a-an)^2);
  pn=2*p;
  xn=((an+bn)^2)*div_t(4*tn);
  iterMax=2500; 
  tol=1e-8;
  k=0;
  
  while (k<iterMax)
    if (abs(xn-x)<tol)
      break
    endif
    a=an;
    b=bn;
    t=tn;
    p=pn;
    x=xn;
    k++;
    an=(a+b)*div_t(2);
    bn=sqrt_t(a*b);
    tn=t- p*((a-an)^2);
    pn=2*p;
    xn=((an+bn)^2)*div_t(4*tn);
  endwhile
endfunction
