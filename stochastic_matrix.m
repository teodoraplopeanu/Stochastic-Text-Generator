function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    % build the stochastic matrix. Bonus if it is sparse
    % The 'stochastic' matrix SHOULD NOT be scaled (divided by sum of all)
    % It should just be entry-wise
    % This is how the checker tests it, to not have to deal with floating point errors
    
    n = length(k_secv_set);
    m = length(words_set);
    
    stoch_matrix = zeros(n, m);
    
    k_secv_indices = lookup(k_secv_set, k_secv_corpus);
    words_indices = lookup(words_set, corpus_words);
    
    for i = 1:size(k_secv_indices, 1)
      % Extragem k-secv curenta si cuvantul corespunzator
      curr_k_secv = k_secv_corpus{i};
      curr_word = corpus_words{i+k};
      
      % Determinam indicii lor in set-uri
      curr_idx = lookup(k_secv_set, curr_k_secv);
      next_idx = lookup(words_set, curr_word);
      
      % Incrementam in matrice
      stoch_matrix(curr_idx, next_idx) = stoch_matrix(curr_idx, next_idx) + 1;
    endfor
    
    retval = sparse(stoch_matrix);

end
