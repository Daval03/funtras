
function Xn = log_t(x,a)
  if (a==1 || a<=0 || x<=0)
    Xn="NR";
  else
    Xn=ln_t(x)*div_t(ln_t(a));
  endif
endfunction