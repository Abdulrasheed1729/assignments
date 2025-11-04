#import "@preview/physica:0.9.6": *
#import "@preview/quill:0.7.2": *

#set math.mat(delim: "[")

#let pr = "Pr"
#align(center)[
  #set text(24pt, weight: "bold", fill: green)
  Solution to Problem Set 1
]
#align(center)[
  #set text(16pt)
  Abdulrasheed Bolaji Fawole
]
#align(center)[
  #set text(12pt, font: "Noto Sans Ogham", style: "normal", fill: maroon, weight: "thin")
  #link("mailto:abdulrasheed\@aims.ac.za")[abdurasheed\@aims.ac.za]
]

== Question 1
1.
$
              mat(1; 0) & = ket(0) \
              mat(0; 1) & = ket(1) \
  1 / sqrt(2) mat(1; i) & = ket(+) \
  1 / sqrt(5) mat(2; 1) & = 1 / sqrt(5) (2 ket(0) - ket(1))
$

$
  1 / sqrt(2) mat(1; -1) & = 1 / sqrt(2) (ket(0) - ket(1)) = ket(-) \
  1 / sqrt(10) mat(3; 1) & = 1 / sqrt(10) (3 ket(0) + ket(1)) \
   1 / sqrt(2) mat(i; 1) & = 1 / sqrt(2) (i ket(0) + ket(1))
$

2.
$
  ket(0) & = mat(1; 0) \
  ket(+) & = 1/sqrt(2) (ket(0) + ket(1)) = 1/sqrt(2) mat(1; 0) + 1/sqrt(2) mat(0; 1) \
         & = 1/sqrt(2) mat(1; 1)
$
$
  ket(-i) & = 1/sqrt(2) (ket(0) - i ket(1)) = 1/sqrt(2) mat(1; 0) - i/sqrt(2) mat(0; 1) \
          & = 1/sqrt(2) mat(1; -i)
$
$
  ket(theta) & = 1/2 (sqrt(3) ket(0) + ket(1)) \
             & = sqrt(3)/2 mat(1; 0) + 1/2 mat(0; 1) \
             & = 1/2 mat(sqrt(3); 1) \
$
$
  ket(eta) & = 1/sqrt(5) (2 ket(0) - i ket(1)) \
           & = 2/sqrt(5) mat(1; 0) - i/sqrt(5) mat(0; 1) \
           & = 1/sqrt(5) mat(2; -i)
$
$
  ket(xi) & = 1/sqrt(10) (ket(-) + 3ket(+)) \
          & = 1/sqrt(10) (1/sqrt(2) mat(1; -1) + 3/sqrt(2) mat(1; 1)) \
          & = 1/(sqrt(5)) mat(2; 1)
$
3.
$
  braket(-, +) & = 1/sqrt(2) (bra(0) - bra(1)) 1/sqrt(2) (ket(0) + ket(1)) \
               & = 1/2 (braket(0, 0) + braket(0, 1) - braket(1, 0) - braket(1, 1)) \
               & = 0
$

$
  braket(+, +i) & = 1/sqrt(2) (bra(0) + bra(1)) 1/sqrt(2) (ket(0) - i ket(1)) \
                & = 1/2 (braket(0, 0) -i braket(0, 1) + braket(1, 0) - i braket(1, 1)) \
                & = 1/2 (1 - i)
$

$
  braket(+i, +) & = 1/sqrt(2) (bra(0) -i bra(1)) 1/sqrt(2) (ket(0) + ket(1)) \
                & = 1/2 (braket(0, 0) + braket(0, 1) -i braket(1, 0) - i braket(1, 1)) \
                & = 1/2 (1 - i) \
$
$
  braket(-i, 0) & = 1/sqrt(2) (bra(0) -i bra(1)) ket(0) \
                & = 1/sqrt(2) (braket(0, 0) -i braket(1, 0)) \
                & = 1/sqrt(2) \
$
$
  braket(+, theta) & = 1/sqrt(2) mat(1, 1) 1/2 mat(sqrt(3); 1) \
                   & = (sqrt(3) + 1)/(2sqrt(2)) \
$
$
  braket(xi, eta) & = 1/(sqrt(5)) mat(2, 1) 1/sqrt(5) mat(2; -i) \
                  & = (4 - i)/(5) \
$
4.
$
  ketbra(0, 0) & = mat(1; 0) mat(1, 0) = mat(1, 0; 0, 0) \
$
$
      ketbra(+, +) & = 1/sqrt(2) mat(1; 1) (1/sqrt(2) mat(1, 1)) =1/2 mat(1, 1; 1, 1) \
      ketbra(1, +) & = mat(0; 1) (1/sqrt(2) mat(1, 1)) = 1/sqrt(2) mat(0, 0; 1, 1) \
  ketbra(eta, eta) & = 2/(sqrt(5)) mat(1; 0) (2/(sqrt(5)) mat(1, 0)) = 4/5 mat(1, 0; 0, 0)
$
$
  ketbra(xi, theta) & = 1/(sqrt(5)) mat(2; 1) (1/2 mat(sqrt(3), 1)) = 1/(2sqrt(5)) mat(2sqrt(3), 2; sqrt(3), 1) \
$
5. Given the following matrices:
$
  X = mat(0, 1; 1, 0) quad Y = mat(0, -i; i, 0) quad Z = mat(1, 0; 0, -1) quad H = 1/sqrt(2) mat(1, 1; 1, -1)
$
it is obvious that $ket(psi)$ is column vector is given by:
$
  ket(psi) = mat(alpha; beta)
$
Then:
$
  X ket(psi) &= mat(0, 1; 1, 0) mat(alpha; beta) = mat(beta; alpha) = beta ket(0) + alpha ket(1)\
  & \
  Y ket(psi) &= mat(0, -i; i, 0) mat(alpha; beta) = mat(-i beta; i alpha) = -i beta ket(0) + i alpha ket(1)\
  & \
  Z ket(psi) &= mat(1, 0; 0, -1) mat(alpha; beta) = mat(alpha; -beta) = alpha ket(0) - beta ket(1) \
  & \
  H ket(psi) &= 1/sqrt(2) mat(1, 1; 1, -1) mat(alpha; beta) = 1/sqrt(2) mat(alpha + beta; alpha - beta) = (alpha + beta) / sqrt(2) ket(0) + (alpha - beta)/ sqrt(2) ket(1) \
$
6. When measuring $X ket(psi)$:
$
  pr(ket(0)) = abs(beta)^2
$

When measuring $Y ket(psi)$:
$
  pr(ket(0)) = abs(-i)^2 = 1
$

When measuring $Z ket(psi)$:
$
  pr(ket(0)) = abs(alpha)^2
$


When measuring $H ket(psi)$:
$
  pr(ket(0)) = abs((alpha + beta)/sqrt(2))^2
$


7. Suppose $ket(psi)$ and $ket(phi)$ are given by:
$
      ket(psi) & = alpha ket(0) + beta ket(1) = mat(alpha; beta) \
               & \
  ket(phi.alt) & = gamma ket(0) + delta ket(1) = mat(gamma; delta) \
$
for some complex numbers $alpha, beta, gamma, delta$. Then:
$
  braket(psi, phi.alt) & = mat(overline(alpha), overline(beta)) mat(gamma; delta) = overline(alpha) gamma + overline(beta) delta \
  braket(phi.alt, psi) & = mat(overline(gamma), overline(delta)) mat(alpha; beta) = alpha overline(gamma) + beta overline(delta) = overline(overline(alpha)gamma + overline(beta) gamma) \
  &= overline(braket(psi, phi.alt)) \
$
$ therefore braket(phi.alt, psi) = overline(braket(psi, phi.alt)) $

8. Given the following matrices:
$
  X = mat(0, 1; 1, 0) quad Y = mat(0, -i; i, 0) quad Z = mat(1, 0; 0, -1) quad H = 1/sqrt(2) mat(1, 1; 1, -1)
$
$
  X & = mat(0, 1; 0, 0) + mat(0, 0; 1, 0) = ketbra(0, 1) + ketbra(1, 0) \
  Y & = -i mat(0, 1; 0, 0) + i mat(0, 0; 1, 0) = -i ketbra(0, 1) + i ketbra(1, 0) \
  Z & = mat(1, 0; 0, 0) - mat(0, 0; 0, 1) = ketbra(0, 0) - ketbra(1, 1) \
  H & = 1/sqrt(2) mat(1, 0; 0, 0) + 1/sqrt(2) mat(0, 1; 0, 0) + 1/sqrt(2) mat(1, 0; 0, 0) - 1/sqrt(2) mat(0, 0; 0, 1) \
    & = 1/sqrt(2) ketbra(0, 0) + 1/sqrt(2) ketbra(0, 1) + 1/sqrt(2) ketbra(1, 0) - 1/sqrt(2) ketbra(1, 1)
$

9. Given:
$
  Y = mat(0, -i; i, 0) quad Z = mat(1, 0; 0, -1) quad H = 1/sqrt(2) mat(1, 1; 1, -1)
$

$
  Y Y^dagger = mat(0, -i; i, 0) mat(0, -i; i, 0) = mat(1, 0; 0, 1) = II \
  Y^dagger Y = mat(0, -i; i, 0) mat(0, -i; i, 0) = mat(1, 0; 0, 1) = II
$
$
  arrow.r.double Y Y^dagger = Y^dagger Y = II
$

$
  Z Z^dagger = mat(1, 0; 0, -1) mat(1, 0; 0, -1) = mat(1, 0; 0, 1) = II \
  Z^dagger Z = mat(1, 0; 0, -1) mat(1, 0; 0, -1) = mat(1, 0; 0, 1) = II \
$
$
  arrow.r.double Z Z^dagger = Z^dagger Z = II
$

$
  H H^dagger = 1/ sqrt(2) mat(1, 1; 1, -1) 1/ sqrt(2) mat(1, 1; 1, -1) = 1/2 mat(2, 0; 0, 2) = mat(1, 0; 0, 1) = II \
  H H^dagger = 1/ sqrt(2) mat(1, 1; 1, -1) 1/ sqrt(2) mat(1, 1; 1, -1) = 1/2 mat(2, 0; 0, 2) = mat(1, 0; 0, 1) = II \
$
$
  arrow.r.double H H^dagger = H^dagger H = II
$
10.
$
  X ket(+) & = mat(0, 1; 1, 0) 1/sqrt(2) mat(1; 1) = 1/sqrt(2) mat(1; 1) = ket(+) \
$

$
  X ket(-) & = mat(0, 1; 1, 0) 1/sqrt(2) mat(1; -1) = -1/sqrt(2) mat(1; -1) = -ket(-) \
$

11.
$
  ket(psi) = 1/2 ket(0) + 1/2 ket(1)
$
This is a valid classical state since:
$
  1/2 + 1/2 = 1
$
but it is not a valid quantum state since:
$
  abs(1/2)^2 + abs(1/2)^2 = 1/4 + 1/4 = 1/2 != 1
$

$
  ket(psi) = 1/3 ket(0) - (2i)/3 ket(1)
$
It is obvious that $ket(psi)$ is not a classical state, and it is also not a valid quantum state since:
$
  abs(1/3)^2 + abs(-(2i)/3)^2 = 1/9 + 4/9 = 5/9 != 1
$

$
  ket(psi) = 1/sqrt(3) ket(0) + (sqrt(2) i)/sqrt(3) ket(1)
$
It is obvious that $ket(psi)$ is not a classical state, but it is a valid quantum state since:
$
  abs(1/sqrt(3))^2 + abs((sqrt(2) i)/sqrt(3))^2 = 1/3 + 2/3 = 1
$

$
  ket(psi) & = sqrt(2) ket(0) - ket(+) \
           & = sqrt(2) ket(0) - 1/sqrt(2) (ket(0) + ket(1)) \
           & = (sqrt(2) - 1/sqrt(2)) ket(0) - 1/sqrt(2) ket(1) \
           & = 1/sqrt(2) ket(0) - 1/sqrt(2) ket(1)
$



== Question 2
1.
$
  mat(1; 0; 0; 0; 0) & = ket(0) \
$
$
  mat(0; 0; 1; 0; 0) = ket(2)
$
$
                     1/sqrt(2) mat(0; 1; 0; 1; 0) & = 1/sqrt(2) (ket(1) + ket(3)) \
                     &\
                     1/sqrt(5) mat(1; 1; 1; 1; 1) & = 1/sqrt(5) sum_(k= 0)^(4) ket(k) \
                     & \
                     & \
                     & \
  1/sqrt(2) mat(0; e^(i pi/4); e^(-i pi/4); 0; 0) & = 1/sqrt(2) (e^(i pi/4) ket(1) + e^(-i pi/4) ket(2)) \
  &\
  &\
  &\
                    1/sqrt(6) mat(2; -1; 0; i; 0) & = 1/sqrt(6) (2ket(0) - ket(1) + i ket(3)) \
$
2.
$
  ket(0) & = mat(1; 0; 0; 0; 0) \
$
$
   ket(4) & = mat(0; 0; 0; 0; 1) \
  ket(nu) & = 1/sqrt(5) sum_(k= 0)^(4) ket(k) \
          & = 1/sqrt(5) mat(1; 1; 1; 1; 1) \
$
$
  ket(omega) & = 1/sqrt(2) (ket(1) - ket(3)) \
             & = mat(0; 1; 0; -1; 0) \
$
$
  ket(mu) & = 1/sqrt(5) sum_(k= 0)^(4) e^(2pi i k/5) ket(k) \
          & = 1/sqrt(5) mat(1; e^(2pi i /5); e^(4pi i /5); e^(6pi i /5); e^(8pi i /5)) \
$
3.
$
       braket(3, 4) & = 0 \
      braket(2, nu) & = 1/sqrt(5) \
  braket(nu, omega) & = 0 \
     braket(mu, mu) & = 1 \
$
4.
$
  ketbra(1, 3) & = mat(0; 1; 0; 0; 0) mat(0, 0, 0, 1, 0) = mat(
                   0, 0, 0, 0, 0;
                   0, 0, 0, 1, 0;
                   0, 0, 0, 0, 0;
                   0, 0, 0, 0, 0;
                   0, 0, 0, 0, 0
                 )
$
$
  ketbra(2, nu) & = 1/sqrt(5) mat(0; 0; 1; 0; 0) mat(1, 1, 1, 1, 1) = 1/sqrt(5) mat(
                    0, 0, 0, 0, 0;
                    0, 0, 0, 0, 0;
                    1, 1, 1, 1, 1;
                    0, 0, 0, 0, 0;
                    0, 0, 0, 0, 0
                  )
$
$
  ketbra(mu, mu) & = 1/5 mat(1; e^(2pi i /5); e^(4pi i /5); e^(6pi i /5); e^(8pi i /5)) mat(1, e^(-2pi i /5), e^(-4pi i /5), e^(-6pi i /5), e^(-8pi i /5)) \
  & = 1/5 mat(
    1, e^(-2pi i /5), e^(-4pi i /5), e^(-6pi i /5), e^(-8pi i /5);
    e^(2pi i /5), 1, e^(-2pi i /5), e^(-4pi i /5), e^(-6pi i /5);
    e^(4pi i /5), e^(2pi i /5), 1, e^(-2pi i /5), e^(-4pi i /5);
    e^(6pi i /5), e^(4pi i /5), e^(2pi i /5), 1, e^(-2pi i /5);
    e^(8pi i /5), e^(6pi i /5), e^(4pi i /5), e^(2pi i /5), 1
  )
$

== Question 3
1.
$
  ket(0) times.circle ket(+) & = mat(1; 0) times.circle 1/sqrt(2) mat(1; 1) \
                             & = 1/sqrt(2) mat(1; 1; 0; 0) \
$
$
  ket(+i) times.circle ket(1) & = 1/sqrt(2) mat(1; -i) times.circle mat(0; 1) \
                              & = 1/sqrt(2) mat(0; 1; 0; -i)
$
$
  ket(+) times.circle ket(+) times.circle ket(+i) & = ket(+) times.circle (ket(+) times.circle ket(+i)) = 1/sqrt(2) mat(1; 1) times.circle (1/sqrt(2) mat(1; 1) times.circle 1/sqrt(2) mat(1; i)) \
  & \
  & = 1/sqrt(2) mat(1; 1) times.circle 1/2 mat(1; i; 1; i) = 1/(2sqrt(2)) mat(1; i; 1; i; 1; i; 1; i)
$
2. $
    ket(chi) = 1/2 ket(00) - sqrt(3)/2 ket(10) = 1/2 mat(1; 0; 0; 0) - sqrt(3)/2 mat(0; 0; 1; 0) = 1/2 mat(1; 0; -sqrt(3); 0)
  $
$
  ketbra(chi, chi) = 1/4 mat(1; 0; -sqrt(3); 0) mat(1, 0, -sqrt(3), 0) = 1/4 mat(
    1, 0, -sqrt(3), 0;
    0, 0, 0, 0;
    -sqrt(3), 0, 3, 0;
    0, 0, 0, 0
  )
$
3. Suppose $ket(Phi^+)$ is a product state, then $exists ket(a) and ket(b)$ such that
$
  ket(Phi^+) = ket(a) times.circle ket(b)
$
if $ket(a) = a_0 ket(0) + a_1 ket(1) quad ket(b) = b_0 ket(0) + b_1 ket(1)$, then
$
  ket(a) times.circle ket(b) & = a_0 b_0 ket(00) + a_0 b_1 ket(01) + a_1 b_0 ket(10) + a_1 b_1 ket(11) \
                             & = 1/sqrt(2) ket(00) + 1/sqrt(2) ket(11)
$
Then we have the following system:
$
  cases(
    a_0 b_0 = 1/sqrt(2),
    ,
    a_0 b_1 = 0,
    ,
    a_1 b_0 = 0,
    ,
    a_1 b_1 = 1/sqrt(2)
  )
$
From $a_0 b_1 = 0$ we have either $a_0 = 0 " or " b_1 = 0$ and $a_1 b_0 = 0$, implies either $a_1 = 0 " or " b_0 = 0$.
No matter the combinations of zero values we wil always arrive at a contradiction.

$therefore ket(Phi^+)$ is not a product state.

4.$ X times.circle H times.circle Z & = X times.circle (H times.circle Z) \
& = mat(0, 1; 1, 0) times.circle (1/sqrt(2) mat(1, 1; 1, -1) times.circle mat(1, 0; 0, -1)) \
& = mat(0, 1; 1, 0) times.circle 1/sqrt(2) mat(
  1, 0, 1, 0;
  0, -1, 0, -1;
  1, 0, -1, 0;
  0, -1, 0, 1;
) \
& = 1/sqrt(2) mat(
  0, 0, 0, 0, 1, 0, 1, 0;
  0, 0, 0, 0, 0, -1, 0, -1;
  0, 0, 0, 0, 1, 0, -1, 0;
  0, 0, 0, 0, 0, -1, 0, 1;
  1, 0, 1, 0, 0, 0, 0, 0;
  0, -1, 0, -1, 0, 0, 0, 0;
  1, 0, -1, 0, 0, 0, 0, 0;
  0, -1, 0, 1, 0, 0, 0, 0;
) $

== Question 4
1. $
    X ket(0) & = mat(0, 1; 1, 0) mat(1; 0) = mat(0; 1) = ket(1) \
    X ket(1) & = mat(0, 1; 1, 0) mat(0; 1) = mat(1; 0) = ket(0) \
    Z ket(0) & = mat(1, 0; 0, -1) mat(1; 0) = mat(1; 0) = ket(0) \
    Z ket(1) & = mat(1, 0; 0, -1) mat(0; 1) = mat(0; -1) = -ket(1) \
  $
2. $
    X times.circle Z = mat(0, 1; 1, 0) times.circle mat(1, 0; 0, -1) \
    = mat(
      0, 0, 1, 0;
      0, 0, 0, -1;
      1, 0, 0, 0;
      0, -1, 0, 0
    ) \
  $
  $
    (X times.circle Z) ket(00) & = mat(
                                   0, 0, 1, 0;
                                   0, 0, 0, -1;
                                   1, 0, 0, 0;
                                   0, -1, 0, 0
                                 ) mat(1; 0; 0; 0) = mat(0; 0; 1; 0) = ket(10) \
  $
  $
    (X times.circle Z) ket(01) & = mat(
                                   0, 0, 1, 0;
                                   0, 0, 0, -1;
                                   1, 0, 0, 0; 0, -1, 0, 0
                                 ) mat(0; 1; 0; 0) = mat(0; 0; 0; -1) = -ket(11) \
  $
  $
    (X times.circle Z) ket(10) & = mat(
                                   0, 0, 1, 0;
                                   0, 0, 0, -1;
                                   1, 0, 0, 0;
                                   0, -1, 0, 0
                                 ) mat(0; 0; 1; 0) = mat(1; 0; 0; 0) = ket(00) \
    (X times.circle Z) ket(11) & = mat(
                                   0, 0, 1, 0;
                                   0, 0, 0, -1;
                                   1, 0, 0, 0;
                                   0, -1, 0, 0
                                 ) mat(0; 0; 0; 1) = mat(0; -1; 0; 0) = -ket(01) \
  $
  Using the Dirac notation, we have:

  $
              X times.circle Z & = (ketbra(0, 1) + ketbra(1, 0)) times.circle (ketbra(0) - ketbra(1)) \
                               & = ketbra(00, 10) - ketbra(01, 11) + ketbra(10, 00) - ketbra(11, 01) \
    (X times.circle Z) ket(00) & = (ketbra(00, 10) - ketbra(01, 11) + ketbra(10, 00) - ketbra(11, 01)) ket(00) \
                               & = ket(10) \
    (X times.circle Z) ket(01) & = (ketbra(00, 10) - ketbra(01, 11) + ketbra(10, 00) - ketbra(11, 01)) ket(01) \
                               & = -ket(11) \
    (X times.circle Z) ket(10) & = (ketbra(00, 10) - ketbra(01, 11) + ketbra(10, 00) - ketbra(11, 01)) ket(10) \
                               & = ket(00) \
    (X times.circle Z) ket(11) & = (ketbra(00, 10) - ketbra(01, 11) + ketbra(10, 00) - ketbra(11, 01)) ket(11) \
                               & = -ket(01) \
  $
  3.$ (X times.circle Z) ket(phi.alt) & = mat(
                                      0, 0, 1, 0;
                                      0, 0, 0, -1;
                                      1, 0, 0, 0;
                                      0, -1, 0, 0
                                    ) mat(alpha; beta; gamma; delta) = mat(gamma; -delta; alpha; -beta) \ $
In Dirac notation:
$
  (X times.circle Z) ket(phi.alt) & = (ketbra(00, 10) - ketbra(01, 11) + ketbra(10, 00) - ketbra(11, 01)) (alpha ket(00) + beta ket(01) + gamma ket(10) + delta ket(11)) \
  & = alpha ket(10) - beta ket(11) + gamma ket(00) - delta ket(01) \
  & = gamma ket(00) - delta ket(01) + alpha ket(10) - beta ket(11) \
$
// 4.


== Question 5

1.
$
  "SWAP" = mat(
    1, 0, 0, 0;
    0, 0, 1, 0;
    0, 1, 0, 0;
    0, 0, 0, 1;
  ) = ketbra(00) + ketbra(01, 10) + ketbra(10, 01) + ketbra(11)
$
#table(
  columns: 2,
  table.header([*input*], [*SWAP*]),
  [$ket(00)$], [$ket(00)$],
  [$ket(01)$], [$ket(10)$],
  [$ket(10)$], [$ket(01)$],
  [$ket(11)$], [$ket(00)$],
)
The states get swap $"SWAP" ket(a b) = ket(b a)$
$
  "CNOT" = mat(
    1, 0, 0, 0;
    0, 1, 0, 0;
    0, 0, 0, 1;
    0, 0, 1, 0;
  ) = ketbra(00) + ketbra(01, 01) + ketbra(10, 11) + ketbra(11, 10)
$
#table(
  columns: 2,
  table.header([*input*], [*CNOT*]),
  [$ket(00)$], [$ket(00)$],
  [$ket(01)$], [$ket(10)$],
  [$ket(10)$], [$ket(11)$],
  [$ket(11)$], [$ket(10)$],
)
All state remain the same but the state get get flip if the control is $1$.
$
  "CZ" = mat(
    1, 0, 0, 0;
    0, 1, 0, 0;
    0, 0, 1, 0;
    0, 0, 0, -1;
  ) = ketbra(00) + ketbra(01) + ketbra(10) - ketbra(11)
$
#table(
  columns: 2,
  table.header([*input*], [*CZ*]),
  [$ket(00)$], [$ket(00)$],
  [$ket(01)$], [$ket(01)$],
  [$ket(10)$], [$ket(10)$],
  [$ket(11)$], [-$ket(11)$],
)
All states remain the same except $ket(11)$ that is give an amplitude of $-1$.

They all diffre from the single system product because they are fundamentally multi-qubit operations that create entanglement which is not so for a single-system gate.
2.
$
                      (H times.circle II)ket(00) & = 1/sqrt(2) (ket(0) + ket(1)) ket(0) \
                                                 & = 1/sqrt(2) (ket(00) + ket(10)) \
  arrow.double "CNOT"( H times.circle II)ket(00) & = 1/sqrt(2) (ket(00) + ket(11))
$
$
  #quantum-circuit(
    lstick($ket(0)$),
    $H$,
    ctrl(1),
    rstick($(|00〉+|11〉)/√2$, n: 2),
    [\ ],
    lstick($ket(0)$),
    1,
    targ(),
    1,
  )
$

3. A SWAP can be get by the combination of CNOT gates as shown beow:
$
  #quantum-circuit(
    lstick($ket(a)$),
    ctrl(1),
    targ(1),
    ctrl(1),
    rstick($equiv$, n: 2),
    [\ ],
    lstick($ket(b)$),
    targ(),
    ctrl(),
    targ(),
    1,
    slice(x: 2, n: 2, y: 0, stroke: (paint: red, dash: "dashed")),
    slice(x: 3, n: 2, y: 0, stroke: (paint: green, dash: "dashed")),
    slice(x: 4, n: 2, y: 0, stroke: (paint: blue, dash: "dashed")),
  )
  #quantum-circuit(1, swap(1), 1, [\ ], 1, swap())
$

At the red and blue points $ket(a)$ is control, while $ket(b)$ is the control at the green spot. All together we have the following combination:
$
  "CNOT"_ (a b) dot.c "CNOT" _(b a) dot.c "CNOT" _(a b) & = mat(
    1, 0, 0, 0;
    0, 1, 0, 0;
    0, 0, 0, 1;
    0, 0, 1, 0
  ) mat(
    1, 0, 0, 0;
    0, 0, 0, 1;
    0, 0, 1, 0;
    0, 1, 0, 0
  )
   mat(
    1, 0, 0, 0;
    0, 1, 0, 0;
    0, 0, 0, 1;
    0, 0, 1, 0
  )\
  & = mat(
    1, 0, 0, 0;
    0, 0, 1, 0;
    0, 1, 0, 0;
    0, 0, 0, 1;
  ) \
  & ="SWAP"
$