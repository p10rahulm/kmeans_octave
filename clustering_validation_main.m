function clustering_validation_main()
load Clustering_validation_data/clustering_1.txt;
load Clustering_validation_data/clustering_2.txt;
load Clustering_validation_data/clustering_3.txt;
load Clustering_validation_data/clustering_4.txt;
load Clustering_validation_data/clustering_5.txt;
load Clustering_validation_data/partitions.txt;

c1  = clustering_1(:,2);
c2  = clustering_2(:,2);
c3  = clustering_3(:,2);
c4  = clustering_4(:,2);
c5  = clustering_5(:,2);
truth = partitions(:,2);
get_joint_freq_table(c1,truth)

endfunction


  