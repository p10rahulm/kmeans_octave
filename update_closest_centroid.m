function closest_cluster = update_closest_centroid(closest_cluster,centroids,clustering_lat_long)
  distances_to_centroids = zeros(rows(clustering_lat_long),3);
  for i = 1:rows(clustering_lat_long)
    for j = 1:3
        distances_to_centroids(i,j) = euclidean_distance(clustering_lat_long(i,:),centroids(j,:));
    endfor
  endfor
  
  [minval, closest_cluster] = min(distances_to_centroids, [], 2);
endfunction
