function retval = word_idx (distinct_wds)
    % return the word_idx dictionary
    n = numel(distinct_wds);
    retval = containers.Map(distinct_wds, 1:n);
endfunction
