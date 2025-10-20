#import "@preview/physica:0.9.6": *

== Question 3
1. For $A = mat(1, 0; 0, 3)$ the eigenvalues and their corresponding eigenvectors are $lambda_1 = 1, lambda_2 = 3$ and $v_1 = mat(1; 0) = ket(0), v_2 = mat(0; 1) = ket(1)$ respectively. Then
$
         P_1 & = ketbra(v_1) \
             & = mat(1, 0; 0, 0) \
       P_1^2 & = mat(1, 0; 0, 0)^2
               = mat(1, 0; 0, 0) \
             & = P_1 \
  P_1^dagger & = mat(1, 0; 0, 0) = P_1 \
         P_2 & = ketbra(v_2) \
             & = mat(0, 0; 0, 1) \
       P_2^2 & = ketbra(v_1) \
             & = mat(0, 0; 0, 1)^2
               = mat(0, 0; 0, 1) \
             & = P_2 \
  P_2^dagger & = mat(0, 0; 0, 1) = P_2 \
     P_1 P_2 & = 0 \
   P_1 + P_2 & = II
$
The spectral decomposition is given as:
$
  A = P_1 + 3P_2
$
Let $ket(psi_1) = 4ket(0) - sqrt(2) ket(1), ket(psi_2) = 1/6ket(0) + ket(1)$. Consider the following:
$
  P_1 ket(psi_1) = 4 ket(0) quad P_2 ket(psi_1) = -sqrt(2) ket(1) arrow.r.double ket(psi_1) = P_1 ket(psi_1) + P_2 ket(psi_1) \
  P_1 ket(psi_2) = 1/6 ket(0) quad P_2 ket(psi_2) = ket(1) arrow.r.double ket(psi_1) = P_1 ket(psi_2) + P_2 ket(psi_2)
$

For $B = mat(2, 1; 1, 2)$ the eigenvalues and their corresponding eigenvectors are $lambda_1 = 1, lambda_2 = 3$ and $v_1 = 1/sqrt(2) mat(1; -1) = ket(-), v_2 = 1/sqrt(2) mat(1; 1) = ket(+)$ respectively. Then
$
         Q_1 & = ketbra(v_1) \
             & = 1/2mat(1, -1; -1, 1) \
       Q_1^2 & =1/4 mat(1, -1; -1, 1) mat(1, -1; -1, 1)
               = 1/2 mat(1, -1; -1, 1) \
             & = Q_1 \
  Q_1^dagger & = mat(1, -1; -1, 1) = Q_1 \
         Q_2 & = ketbra(v_2) \
             & = 1/2 mat(1, 1; 1, 1) \
       Q_2^2 & = ketbra(v_1) \
             & = 1/4 mat(1, 1; 1, 1) mat(1, 1; 1, 1)
               = mat(1, 1; 1, 1) \
             & = Q_2 \
  Q_2^dagger & = 1/2 mat(1, 1; 1, 1) = Q_2 \
     Q_1 Q_2 & = 0 \
   Q_1 + Q_2 & = II
$
The spectral decomposition is given as:
$
  A = Q_1 + 3Q_2
$
// Let $ket(psi_1) = 4ket(0) - sqrt(2) ket(1), ket(psi_2) = 1/6ket(0) + ket(1)$. Consider the following:
// $
//   P_1 ket(psi_1) = 4 ket(0) quad P_2 ket(psi_1) = -sqrt(2) ket(1) arrow.r.double ket(psi_1) = P_1 ket(psi_1) + P_2 ket(psi_1) \
//   P_1 ket(psi_2) = 1/6 ket(0) quad P_2 ket(psi_2) = ket(1) arrow.r.double ket(psi_1) = P_1 ket(psi_2) + P_2 ket(psi_2)
// $
