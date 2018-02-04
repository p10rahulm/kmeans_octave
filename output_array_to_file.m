function output_array_to_file(arr,outputfile_path)
  mfile = fopen(outputfile_path, 'w+');
  for i=1:size(arr, 1)
      fprintf(mfile, '%d ', arr(i,:));
      fprintf(mfile, '\n');
  end
  fclose(mfile);
  %save closest_cluster.txt outputformat;
endfunction