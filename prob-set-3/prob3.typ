== Question 3
Given $sigma_1 = X = mat(0, 1; 1, 0), sigma_2 = Y = mat(0, -i; i, 1), sigma_3 = Z = mat(1, 0; 0, -1)$

1.
$
  sigma_1^2 & = X^2 = mat(0, 1; 1, 0) mat(0, 1; 1, 0) \
            & = mat(1, 0; 0, 1) \
  sigma_2^2 & = Y^2 = mat(0, -i; i, 1) mat(0, -i; i, 1) \
            & = mat(1, 0; 0, 1) \
  sigma_3^2 & = Z^2 = mat(1, 0; 0, -1) mat(1, 0; 0, -1) \
            & = mat(1, 0; 0, 1)
$

2. Note that by definition, $[sigma_i, sigma_i] = 0, [sigma_i, sigma_j] = - [sigma_j, sigma_i]$ for any $i, j$. Then $[sigma_1, sigma_1] = [sigma_2, sigma_2] = [sigma_3, sigma_3] = 0$
$
  [sigma_1, sigma_2] & = sigma_1 sigma_2 - sigma_2 sigma_1 \
                     & = X Y - Y X \
                     & = mat(0, 1; 1, 0) mat(0, -i; i, 1) - mat(0, -i; i, 1) mat(0, 1; 1, 0) \
                     & = mat(i, 1; 0, -i) - mat(-i, 0; 1, i) \
                     & = mat(2i, 1; -1, -2i) \
  [sigma_2, sigma_1] & = - [sigma_1, sigma_2] \
                     & = mat(-2i, -1; 1, 2i) \
  [sigma_1, sigma_3] & = sigma_1 sigma_3 - sigma_3 sigma_1 \
                     & = X Z - Z X \
                     & = mat(0, 1; 1, 0) mat(1, 0; 0, -1) - mat(1, 0; 0, -1) mat(0, 1; 1, 0) \
                     & = mat(0, -1; 1, 0) - mat(0, 1; -1, 0) \
                     & = mat(0, -2; 2, 0) \
  [sigma_3, sigma_1] & = - [sigma_1, sigma_3] \
                     & = mat(0, 2; -2, 0) \
  [sigma_2, sigma_3] & = sigma_2 sigma_3 - sigma_3 sigma_2 \
                     & = Y Z - Z Y \
                     & = mat(0, -i; i, 1) mat(1, 0; 0, -1) - mat(1, 0; 0, -1) mat(0, -i; i, 1) \
                     & = mat(0, -1; 1, 0) - mat(0, 1; -1, 0) \
                     & = mat(0, -2; 2, 0) \
  [sigma_3, sigma_1] & = - [sigma_1, sigma_3] \
                     & = mat(0, 2; -2, 0)
$
