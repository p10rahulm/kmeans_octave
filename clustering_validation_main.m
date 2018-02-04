function clustering_validation_main()
  %load Clustering_validation_data/clustering_1.txt;
  %load Clustering_validation_data/clustering_2.txt;
  %load Clustering_validation_data/clustering_3.txt;
  %load Clustering_validation_data/clustering_4.txt;
  %load Clustering_validation_data/clustering_5.txt;
  load Clustering_validation_data/partitions.txt;
  truth = partitions(:,2);
  %cl{l}  = clustering_1(:,2);
  %cl{2}  = clustering_2(:,2);
  %cl{3}  = clustering_3(:,2);
  %cl{4}  = clustering_4(:,2);
  %cl{5}  = clustering_5(:,2);
  cl = {};
  importedfiles = {};
  truth_table = {};
  oput = zeros(5,2);
  for i = 1:5
    filename = strcat('Clustering_validation_data/clustering_',int2str(i),'.txt');
    importedfiles{i} = importdata(filename);
    cl{i} = importedfiles{i}(:,2);
    truth_table{i} = get_joint_freq_table(cl{i},truth);
    oput(i,1) = normalized_mutual_information(truth_table{i});
    oput(i,2) = jaccard_coefficient(truth_table{i});
  endfor
  
  output_array_to_file(oput,'clustering_validation.txt')
endfunction


  