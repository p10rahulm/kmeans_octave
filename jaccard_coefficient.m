function coefficient = jaccard_coefficient(truth_table)
  truth_sum = sum(truth_table);
  cluster_sum = sum(truth_table,2);
  total_sum = sum(truth_sum);
  TP = 0;
  for i =1:rows(truth_table)
    for j = 1:columns(truth_table)
      num_particularfactor_in_cluster = truth_table(i,j);
      if(num_particularfactor_in_cluster>1)
        TP = TP + nchoosek(num_particularfactor_in_cluster,2);
      endif
    endfor
  endfor
  %disp('TP');
  %disp(TP);
  FP = 0;
  for i =1:length(cluster_sum)
    num_cluster = cluster_sum(i);
    if(num_cluster>1)
      FP = FP + nchoosek(num_cluster,2);
    endif
  endfor
  FP = FP - TP;
  %disp('FP');
  %disp(FP);
  
  FN = 0;
  for i =1:length(truth_sum)
    num_partition = truth_sum(i);
    if(num_partition>1)
      FN = FN + nchoosek(num_partition,2);
    endif
  endfor
  FN = FN - TP;
  %disp('FN');
  %disp(FN);
  jaccard = TP/(TP+FP+FN);
  disp(jaccard)
  coefficient = jaccard;
endfunction
  