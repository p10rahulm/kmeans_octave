function freq_table = get_joint_freq_table(c1,c2)
  if length(c1)!=length(c2)
    error 'length of vectors for freq table not the same'
  endif
  uniqa = unique(a);
  uniqb = unique(b);
  oput = zeros(length(uniqa),length(uniqb));
  for i =1:length(uniqa)
    for j =1:length(uniqb)
      oput(i,j) = (c1==uniqa(i))&(c2==uniqb(j));
    endfor
  endfor
  freq_table = oput;
endfunction