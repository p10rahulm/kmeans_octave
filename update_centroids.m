function centroids = update_centroids(closest_cluster,clustering_lat_long)
  intermediate_centroids = zeros(3,2);
  for i = 1:3
    intermediate_centroids(i,:) = mean(clustering_lat_long(closest_cluster==i,:));
  endfor
  centroids = intermediate_centroids;
endfunction
