function output_array_to_file(arr,outputfile_path)
  mfile = fopen(outputfile_path, 'w+');
  for i=1:size(arr, 1)
      fprintf(mfile, '%f ', arr(i,:));
      fprintf(mfile, '\n');
  end
  fclose(mfile);
endfunction