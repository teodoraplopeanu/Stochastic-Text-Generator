function B = k_secv (A, k)
  % given an array [a b a b c] and k=2
  % should return [ab ba ab bc]
  % HINT: use strjoin 

  n = numel(A);
  
  % Initializez cell-array-ul
  B = {};
  
  % Extrag secventele
  for i = 1:n - k
    B{i} = strjoin(A(i:i+k-1));
  endfor
    
    % Transpun cell-array-ul
    B = B';
endfunction