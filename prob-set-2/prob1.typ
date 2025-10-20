#import "@preview/physica:0.9.6": *
== Question 1
1.
$
           A times.circle B & = mat(1, i; i, 2) times.circle mat(i, 1; 0, 1 - i) \
                            & \
                            & = mat(
                                i, 1, -1, i;
                                0, 1-i, 0, 1 + i;
                                -1, i, 2i, 2;
                                0, 1 + i, 0, 2 + 2i
                              ) \
                            & \
  (A times.circle B)^dagger & = mat(
                                -i, 0, -1, 0;
                                1, 1+i, i, 1 - i;
                                -1, 0, -2i, 0;
                                -i, 1 - i, 2, 2 - 2i
                              )
$
$
  A^dagger = mat(1, -i; -i, 2) quad B^dagger = mat(-i, 0; 1, 1 + i)
$
$
  A^dagger times.circle B^dagger & = mat(1, -i; -i, 2) times.circle mat(-i, 0; 1, 1 + i) \
                                 & = mat(
                                     -i, 0, -1, 0;
                                     1, 1+i, i, 1 - i;
                                     -1, 0, -2i, 0;
                                     -i, 1 - i, 2, 2 - 2i
                                   ) \
                                 & = (A times.circle B)^dagger
$

2. Let $A = (a_(i j))_(n), C = (c_(i j))_(n)$ for some $a_(i j), c_(i j) in CC^(n times n)$ also $B = (b_(i j))_(m), D = (d_(i j))_(n)$ for some $b_(i j), c_(i j) in CC^(m times m)$

Consider the following:
$
  (A times.circle B) (C times.circle D) & = (a_(i j) B)_n (c_(i j) D)_n \
                                        & = sum_(k = 1)^n (a_(i k) B) (c_(k j) D) \
                                        & = sum_(k = 1)^n (a_(i k) c_(k j)) (B D) \
                                        & = (A C) times.circle (B D)
$

3. Given $ket(psi) = 1/sqrt(3) (ket(00) + i ket(01) + ket(10))$
(a) $ ket(psi) = 1/sqrt(3) mat(1; i; 1; 0) $

(b) $ ket(psi)^dagger = bra(psi) = 1/sqrt(3) mat(1, -i, 1, 0) $
(c) $        rho & = ketbra(psi) = 1/sqrt(3) mat(1; i; 1; 0)1/sqrt(3) mat(1, -i, 1, 0) \
           & = 1/3 mat(
               1, -i, 1, 0;
               i, 1, i, 0;
               1, -i, 1, 0;
               0, 0, 0, 0
             ) \
rho^dagger & = 1/3 mat(
               1, -i, 1, 0;
               i, 1, i, 0;
               1, -i, 1, 0;
               0, 0, 0, 0
             ) = rho \
     rho^2 & = 1/3 mat(
               1, -i, 1, 0;
               i, 1, i, 0;
               1, -i, 1, 0;
               0, 0, 0, 0
             )1/3 mat(
               1, -i, 1, 0;
               i, 1, i, 0;
               1, -i, 1, 0;
               0, 0, 0, 0
             ) \
           & = 1/9 mat(
               3, -3i, 3, 0;
               3i, 3, 3i, 0;
               3, -3i, 3, 0;
               0, 0, 0, 0
             ) \
           & = 1/3 mat(
               1, -i, 1, 0;
               i, 1, i, 0;
               1, -i, 1, 0;
               0, 0, 0, 0
             ) \
           & = rho $


4. Given $U = 1/sqrt(2) mat(1, 1; -1, 1)$ and $V = mat(1, 0; 0, i)$
(a) $ U^dagger U & = 1/sqrt(2) mat(1, 1; -1, 1)1/sqrt(2) mat(1, 1; -1, 1) \
           & = 1/2 mat(2, 0; 0, 2) \
           & = II \
V^dagger V & = mat(1, 0; 0, -i) mat(1, 0; 0, i) \
           & = mat(1, 0; 0, 1) \
           & = II $

(b) $                             U times.circle V & = 1/sqrt(2) mat(
                                                 1, 0, 1, 0;
                                                 0, i, 0, i;
                                                 -1, 0, 1, 0;
                                                 0, -i, 0, i
                                               ) \
                   (U times.circle V)^dagger & = 1/sqrt(2) mat(
                                                 1, 0, -1, 0;
                                                 0, -i, 0, i;
                                                 1, 0, 1, 0;
                                                 0, -i, 0, -i
                                               ) \
(U times.circle V)^dagger (U times.circle V) & = 1/2mat(
                                                 1, 0, -1, 0;
                                                 0, -i, 0, i;
                                                 1, 0, 1, 0;
                                                 0, -i, 0, -i
                                               ) mat(
                                                 1, 0, 1, 0;
                                                 0, i, 0, i;
                                                 -1, 0, 1, 0;
                                                 0, -i, 0, i
                                               ) \
                                             & = 1/2 mat(
                                                 2, 0, 0, 0;
                                                 0, 2, 0, 0;
                                                 0, 0, 2, 0;
                                                 0, 0, 0, 2
                                               ) \
                                             & = mat(
                                                 1, 0, 0, 0;
                                                 0, 1, 0, 0;
                                                 0, 0, 1, 0;
                                                 0, 0, 0, 1
                                               ) $

5. $
     X times.circle II & = mat(
      0, 0, 1, 0;
      0, 0, 0, 1;
      1, 0, 0, 0;
      0, 1, 0, 0
     ) \
     (II times.circle Z) &= mat(
      1, 0, 0, 0;
      0, -1, 0, 0;
      0, 0, 1, 0;
      0, 0, 0, -1
     )
   $

Also note that 
$
  X times.circle Z = mat(
    0, 0, 1, 0;
    0, 0, 0, -1;
    1, 0, 0, 0;
    0, -1, 0, 0
  )
$
$
  (X times.circle II) (II times.circle ZZ) & = mat(
      0, 0, 1, 0;
      0, 0, 0, 1;
      1, 0, 0, 0;
      0, 1, 0, 0
     )  mat(
      1, 0, 0, 0;
      0, -1, 0, 0;
      0, 0, 1, 0;
      0, 0, 0, -1
     ) \
     & = mat(
    0, 0, 1, 0;
    0, 0, 0, -1;
    1, 0, 0, 0;
    0, -1, 0, 0
  ) \
  & = X times.circle Z
$