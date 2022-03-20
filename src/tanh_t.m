function Sk = tanh_t (x)
  if (x>15)
    Sk=1;
  elseif (x<-15)
    Sk=-1;
  else
    Sk =sinh_t(x)*div_t(cosh_t(x));  
  endif
  
endfunction
