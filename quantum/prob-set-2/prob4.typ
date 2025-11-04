#import "@preview/physica:0.9.6": *

== Question 4
Given $ket(psi_theta) = cos theta ket(0) + sin theta ket(1) " and  " U_theta = ketbra(0, psi_theta) + ketbra(1, psi_(theta + pi/2))$

1. (a)
$
  U_theta U_theta^dagger & = (ketbra(0, psi_theta) + ketbra(1, psi_(theta + pi/2))) (ketbra(psi_theta, 0) + ketbra(psi_(theta + pi/2), 1)) \
  & = ketbra(0) + ketbra(1) \
  & = II
$

(b)
$
  bra(psi_alpha) bra(psi_beta) & = (cos alpha bra(0) + sin alpha bra(1)) (cos beta bra(0) + sin beta bra(1)) \
  & = cos alpha cos beta ket(00) + cos alpha sin beta ket(01) + sin alpha cos beta ket(10) + cos alpha cos beta ket(11) \
  (bra(psi_alpha) bra(psi_beta)) ket(phi.alt^+) & = 1/sqrt(2) bra(psi_alpha) bra(psi_beta) (ket(00) + ket(11)) \
  & = (cos alpha cos beta + sin alpha sin beta) / sqrt(2) \
  & = cos(alpha - beta) / sqrt(2)
$

2. Before calculating the values of $ket(psi_((x,y)))$ for each $x, y$ note that
#align(center, [#rect(
  radius: 4pt,
  inset: 8pt,
  stroke: teal,
  $U_alpha times.circle U_beta = 1/sqrt(2) (cos(alpha - beta) ket(00) + cos(alpha - beta - pi/2) ket(01) + cos(alpha - beta + pi/2) ket(10) + cos(alpha - beta) ket(11))$,
)])
(a) Consider the following

*Case 1*: $(x, y) = (0, 0)$
$
  psi_((0,0)) & = (U_0 times.circle U_(pi/8)) ket(phi.alt^+) \
              & = 1/sqrt(2) (cos(-pi/8) ket(00) + cos(-5/8 pi) ket(01) + cos(3/8 pi) ket(10) + cos(-pi/8) ket(11)) \
              & = 1/sqrt(2) (cos(pi/8) ket(00) + cos(5/8 pi) ket(01) + cos(3/8 pi) ket(10) + cos(pi/8) ket(11)) \
$

*Case 2*: $(x, y) = (0, 1)$
$
  psi_((0,1)) & = (U_0 times.circle U_(pi/8)) ket(phi.alt^+) \
              & = 1/sqrt(2) (cos(pi/8) ket(00) + cos(-3/8 pi) ket(01) + cos(5/8 pi) ket(10) + cos(pi/8) ket(11)) \
              & = 1/sqrt(2) (cos(pi/8) ket(00) + cos(3/8 pi) ket(01) + cos(5/8 pi) ket(10) + cos(pi/8) ket(11)) \
$

*Case 3*: $(x, y) = (1, 0)$
$
  psi_((1,0)) & = (U_0 times.circle U_(pi/8)) ket(phi.alt^+) \
              & = 1/sqrt(2) (cos(pi/8) ket(00) + cos(-3/8 pi) ket(01) + cos(5/8 pi) ket(10) + cos(pi/8) ket(11)) \
              & = 1/sqrt(2) (cos(pi/8) ket(00) + cos(3/8 pi) ket(01) + cos(5/8 pi) ket(10) + cos(pi/8) ket(11)) \
$

*Case 4*: $(x, y) = (1, 1)$
$
  psi_((1,1)) & = (U_0 times.circle U_(pi/8)) ket(phi.alt^+) \
              & = 1/sqrt(2) (cos(3/8 pi) ket(00) + cos(-pi/8) ket(01) + cos(7/8 pi) ket(10) + cos(3/8 pi) ket(11)) \
              & = 1/sqrt(2) (cos(3/8 pi) ket(00) + cos(pi/8) ket(01) + cos(7/8 pi) ket(10) + cos(3/8 pi) ket(11)) \
$

(b) For each $(a, b) in {(0,1), (0,1), (1,0), (1,1)}$

*Case 1*: $(x,y) = (0,0)$
$
  "Pr"[(a, b) = (0,0)] & = (1/sqrt(2) cos(pi/8))^2 = (2 + sqrt(2))/8 \
  "Pr"[(a, b) = (0,1)] & = (1/sqrt(2) cos(5/8 pi))^2 = (2 - sqrt(2))/8 \
  "Pr"[(a, b) = (1,0)] & = (1/sqrt(2) cos(3/8 pi))^2 = (2 - sqrt(2))/8 \
  "Pr"[(a, b) = (1,1)] & = (1/sqrt(2) cos(pi/8))^2 = (2 + sqrt(2))/8 \
$

*Case 2*: $(x,y) = (0,1)$
$
  "Pr"[(a, b) = (0,0)] & = "Pr"[(a, b) = (1,1)] = (1/sqrt(2) cos(pi/8))^2 = (2 + sqrt(2))/8 \
  "Pr"[(a, b) = (0,1)] & = (1/sqrt(2) cos(3/8 pi))^2 = (2 - sqrt(2))/8 \
  "Pr"[(a, b) = (1,0)] & = (1/sqrt(2) cos(5/8 pi))^2 = (2 - sqrt(2))/8 \
$

*Case 3*: $(x,y) = (1,0)$
$
  "Pr"[(a, b) = (0,0)] & = "Pr"[(a, b) = (0,0)] = (1/sqrt(2) cos(pi/8))^2 = (2 + sqrt(2))/8 \
  "Pr"[(a, b) = (0,1)] & = (1/sqrt(2) cos(3/8 pi))^2 = (2 - sqrt(2))/8 \
  "Pr"[(a, b) = (1,0)] & = (1/sqrt(2) cos(5/8 pi))^2 = (2 - sqrt(2))/8 \
$

*Case 4*: $(x,y) = (1,1)$
$
  "Pr"[(a, b) = (0,0)] & = "Pr"[(a, b) = (1,1)] = (1/sqrt(2) cos(3/8 pi))^2 = (2 - sqrt(2))/8 \
  "Pr"[(a, b) = (0,1)] & = (1/sqrt(2) cos(pi/8))^2 = (2 + sqrt(2))/8 \
  "Pr"[(a, b) = (1,0)] & = (1/sqrt(2) cos(7/8 pi))^2 = (2 + sqrt(2))/8 \
$

(c) When $(x, y) = (0,0), (0,1), (1,0)$ they both win when $a = b$. Considering the cases from above it is obvious that:
$
  "Pr"["Winning"] & = "Pr"[(a, b) = (0,0)] + "Pr"[(a, b) = (1,1)] \
                  & = (2 + sqrt(2))/4
$
Similarly, when $(x,y) = (1,1)$ they win when $a != b$ and the probability winning is:
$
  "Pr"["Winning"] & = "Pr"[(a, b) = (0,1)] + "Pr"[(a, b) = (1,0)] \
                  & = (2 + sqrt(2))/4
$
