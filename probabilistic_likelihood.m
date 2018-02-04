function likelihood = probabilistic_likelihood(points,mean,sigma)
  product = 1;
  denom = sqrt(2*pi*sigma^2); 
  for i = 1:size(points,2)
    product = product*(1/denom*e^(-(points(i)-mean)^2/(2*sigma^2)));
  endfor
  likelihood = product;
endfunction
  