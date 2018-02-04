function centroid_initial_points = initialize_kmeans(clustering_lat_long) 
  %first select a random point as first cluster center
  first = floor(rand*300)+1;
  first_point = clustering_lat_long(first,:);
  %select farthest point from first as second cluster center
  second = 1;
  second_point = clustering_lat_long(second,:);
  second_distance = 0;
  dis = 0;
  pt = clustering_lat_long(second,:);
  for i = 1:rows(clustering_lat_long)
    pt = clustering_lat_long(i,:);
    dis = euclidean_distance(pt,first_point);
    if (dis>second_distance)
      second_distance = dis;
      second = i;
      second_point = clustering_lat_long(second,:);
    endif
  endfor
  %select farthest point from first and second as third cluster center
  third = 1;
  third_point = clustering_lat_long(third,:);
  third_distance = 0;
  dis = 0;
  pt = clustering_lat_long(third,:);
  for i = 1:rows(clustering_lat_long)
    pt = clustering_lat_long(i,:);
    dis = euclidean_distance(pt,first_point) + euclidean_distance(pt,second_point);
    if (dis>third_distance)
      third_distance = dis;
      third = i;
      third_point = clustering_lat_long(third,:);
    endif
  endfor
  disp(first);
  disp(second);
  disp(third);
  centroid_initial_points = sort([first second third]);
endfunction
