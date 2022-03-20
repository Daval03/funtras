function Xn = tan_t(x)
  cero=cos_t(x);
  if (cero==0)
    Xn="NR"
  else
    Xn =sin_t(x)*div_t(cero);
  endif
endfunction
