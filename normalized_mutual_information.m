function nmi = normalized_mutual_information(ground_truth_table)
  Ict = 0;
  truth_sum = sum(ground_truth_table);
  cluster_sum = sum(ground_truth_table,2);
  total_sum = sum(truth_sum);
  %disp('truth_sum')
  %disp(truth_sum)
  %disp('cluster_sum')
  %disp(cluster_sum)
  %disp('total_sum')
  %disp(total_sum)
  for i = 1:rows(ground_truth_table)
    for j = 1:columns(ground_truth_table)
      %display([i,j]);
      pij = ground_truth_table(i,j)/total_sum;
      ptj = truth_sum(j)/total_sum;
      pci = cluster_sum(i)/total_sum;
      if pij != 0 
        %debugging 0*log0 error
      %disp(pij);
      %disp(ptj);
      %disp(pci);
      Ict = Ict + pij * log(pij/(pci*ptj));
      %disp(Ict);
      endif
    endfor
  endfor
  %disp('Ict');
  %disp(Ict);
  H_C = 0;
  for i = 1:rows(ground_truth_table)
    pci = cluster_sum(i)/total_sum;
    H_C = H_C - pci*log(pci);
  endfor
  %disp('H_C');
  %disp(H_C);
  H_T = 0;
  for j = 1:columns(ground_truth_table)
    ptj = truth_sum(j)/total_sum;
    H_T = H_T - ptj*log(ptj);
  endfor
  %disp('H_T');
  %disp(H_T);
  
  nmi = Ict/sqrt(H_C * H_T);
endfunction
  