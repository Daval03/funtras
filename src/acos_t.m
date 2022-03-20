function x = acos_t (x)
  if (x<=-0.9 || x>=0.9)
    x="NR";
  else
    x = (pi_t()*div_t(2))-asin_t(x);
  endif
endfunction
