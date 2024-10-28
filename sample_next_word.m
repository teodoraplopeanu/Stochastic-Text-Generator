function probs = sample_next_word (text, words_idx, k_secv_idx, k, stoch)
  % return scaled or unscaled probabilities (line of the stochastic matrix) corresponding to the last k-squence of text
  % Extrag ultima k-secv din text
  last_k_secv = text(end-k+1:end);
  
  % Convertesc ultima k-secventa la un vector de indexuri de cuvinte
    word_indices = zeros(1, k);
    for i = 1:k
        word_indices(i) = lookup(words_idx, last_k_seq{i});%words_idx(last_k_seq{i});
    end
    
  % Determin indexul corespunzator
  idx = k_secv_idx(word_indices);
  
  % Returnez linia corespunzatoare din matricea stochastica
  probs = stoch(idx,:);
endfunction
