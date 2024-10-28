
function retval = distinct_words (tokens)
  % TODO: Find unique strings HINT: unique

  % Gasesc token-urile unice
  unique_tokens = unique(tokens);
  
  % Sortez token-urile
  sorted_tokens = sort(unique_tokens);
  
  retval = sorted_tokens;
  
endfunction
