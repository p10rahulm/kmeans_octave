function output_clusters_to_file(closest_cluster)
  outputformat = ones(rows(closest_cluster),2);
  outputformat(:,1) = [1:rows(outputformat)]-1;
  outputformat(:,2) = closest_cluster-1;
  mfile = fopen('closest_cluster.txt', 'w+');
  for i=1:size(outputformat, 1)
      fprintf(mfile, '%d ', outputformat(i,:));
      fprintf(mfile, '\n');
  end
  fclose(mfile);
  %save closest_cluster.txt outputformat;
endfunction
