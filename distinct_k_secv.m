function unique_cell_array = distinct_k_secv (cell_array)
  % TODO: Find unique strings HINT: unique
  % K secquences should come joined with strjoin
  % this function will look exactly like distinct_words

  % Gasesc secventele unice
  unique_cells = unique(cell_array);
  
  % Sortez secventele
  sorted_cells = sort(unique_cells);
  
  unique_cell_array = sorted_cells;
endfunction
