function Xn = power_t(x,a)
  if (x==0 && a==0)
    Xn="NR";
  else
    k=0;
    Xn=1;
    while (k<a)
      Xn=x*Xn;
      k++;
    endwhile
  endif
endfunction