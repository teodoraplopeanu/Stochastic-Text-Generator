function retval = k_secv_idx (distinct_k_sec)
  % return disctionary containing the indices of each elem from distinct_k_sec 
  n = numel(distinct_k_sec);
  retval = containers.Map(distinct_k_sec, 1:n);
endfunction
