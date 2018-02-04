function find_k_means()
  load clustering_lat_long.txt;
  centroid_initial_points = initialize_kmeans(clustering_lat_long);
  centroids = clustering_lat_long(centroid_initial_points,:);
  disp("first_centroids");
  %disp(centroid_initial_points);
  disp(centroids);
  closest_cluster = ones(rows(clustering_lat_long),1);
  %first update loop;
  last_centroids = centroids;
  closest_cluster = update_closest_centroid(closest_cluster,centroids,clustering_lat_long);
  centroids = update_centroids(closest_cluster,clustering_lat_long);
  disp("updated_centroids");
  disp(centroids);
  %update centroids loop
  while (!isequal(last_centroids,centroids))
    display("new_loop");
    last_centroids = centroids;
    closest_cluster = update_closest_centroid(closest_cluster,centroids,clustering_lat_long);
    centroids = update_centroids(closest_cluster,clustering_lat_long);
    disp(centroids);
  endwhile
  output_clusters_to_file(closest_cluster);
endfunction  

  



  

  
  