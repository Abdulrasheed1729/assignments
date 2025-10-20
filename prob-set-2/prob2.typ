#import "@preview/physica:0.9.6": *

== Question 2
1. Given $ P_1 = mat(1, 0; 0, 0), P_2 = 1/2 mat(1, 1; 1, 1), P_3 = mat(1, i; i, 1) $

(a) $ P_1^dagger = mat(1, 0; 0, 0) = P_1 quad P_2^dagger = 1/2 mat(1, 1; 1, 1) = P_2 quad P_3^dagger = mat(1, -i; -i, 1) != P_3 $

It is obvious that $P_3$ cannot be a projector. Now consider the following

$
  P_1^2 = mat(1, 0; 0, 0)mat(1, 0; 0, 0) = mat(1, 0; 0, 0) = P_1 \
  P_2^2 =1/4 mat(1, 1; 1, 1)mat(1, 1; 1, 1) =mat(1, 1; 1, 1) = P_2 \
$
$therefore P_1 " & " P_2$ are projectors. Now suppose $P_1 "&" P_2$ are projectors on the spaces $cal(H)_1 "&" cal(H)_2$ respectively. Then the range of $P_1$ is the space defined by the vector $P_1 v$ for $v in cal(H)_1$. Let $v = mat(a; b)$ for $a, b$.
$
  P_1 v = a mat(1; 0) = ket(0)
$
then it follows that the range of $P_1$ is the $"span"{ket(0)}$. Similary if $v = mat(a; b) in cal(H)_2$, then consider the following for $P_2$
$
  P_2 v = (a + b)/sqrt(2) dot.c 1/sqrt(2) mat(1; 1) = (a + b)/sqrt(2)ket(+)
$
then we can say the range of $P_2$ is $"span"{ket(+)}$

(b) Given ${P_2, II - P_2}$, then $P_2 + II - P_2 = II$. For simplicity let $M = II - P_2$, then
$
         M & = 1/2 mat(1, -1; -1, 1) \
  M^dagger & = 1/2 mat(1, -1; -1, 1) = M \
       M^2 & = 1/2 mat(1, -1; -1, 1)1/2 mat(1, -1; -1, 1) \
           & 1/4 mat(2, -2; -2, 2) = M \
     P_2 M & = mat(0, 0; 0, 0)
$
thus it shows that the collection is a valid projective measurement.
//TODO finiish this up

(c) Given $ket(v_theta) = cos theta ket(0) + sin theta ket(1) = mat(cos theta; sin theta)$ and $ket(v_theta^bot) = -sin theta ket(0) + cos theta ket(1) = mat(-sin theta; cos theta)$
$
          P_theta = ketbra(v_theta) & = mat(cos theta; sin theta)mat(cos theta, sin theta) \
                                    & = mat(
                                        cos^2 theta, cos theta sin theta;
                                        cos theta sin theta, sin^2 theta;
                                      ) \
                     P_theta^dagger & = mat(
                                        cos^2 theta, cos theta sin theta;
                                        cos theta sin theta, sin^2 theta;
                                      ) \
                                    & = P_theta \
                          P_theta^2 & = mat(
                                        cos^2 theta, cos theta sin theta;
                                        cos theta sin theta, sin^2 theta;
                                      ) mat(
                                        cos^2 theta, cos theta sin theta;
                                        cos theta sin theta, sin^2 theta;
                                      ) \
                                    & = mat(
                                        cos^2 theta, cos theta sin theta;
                                        cos theta sin theta, sin^2 theta;
                                      ) \
                                    & = P_theta \
  P_theta^bot = ketbra(v_theta^bot) & = mat(-sin theta; cos theta)mat(-sin theta, cos theta) \
                                    & = mat(
                                        sin^2 theta, - cos theta sin theta;
                                        - cos theta sin theta, cos^2 theta;
                                      ) \
               (P_theta^bot)^dagger & = mat(
                                        sin^2 theta, - cos theta sin theta;
                                        - cos theta sin theta, cos^2 theta;
                                      ) \
                                    & = P_theta^bot \
                    (P_theta^bot)^2 & = mat(
                                        sin^2 theta, - cos theta sin theta;
                                        - cos theta sin theta, cos^2 theta;
                                      )mat(
                                        sin^2 theta, - cos theta sin theta;
                                        - cos theta sin theta, cos^2 theta;
                                      ) \
                                    & = mat(
                                        sin^2 theta, - cos theta sin theta;
                                        - cos theta sin theta, cos^2 theta;
                                      ) \
                                    & = P_theta^bot \
              P_theta + P_theta^bot & =mat(
                                        cos^2 theta, cos theta sin theta;
                                        cos theta sin theta, sin^2 theta;
                                      ) + mat(
                                        sin^2 theta, - cos theta sin theta;
                                        - cos theta sin theta, cos^2 theta;
                                      ) \
                                    & = mat(
                                        cos^theta + sin^2 theta, 0;
                                        0, cos^theta + sin^2 theta;
                                      ) \
                                    & = II
$
Hence it shows ${P_theta, P_theta^bot}$ is a projective measurement

2. $ket(+) = 1/sqrt(2) (ket(0) + ket(1)) = 1/sqrt(2) mat(1; 1), ket(-) = 1/sqrt(2) (ket(0) - ket(1)) = 1/sqrt(2) mat(1; -1), ket(psi) = sqrt(3)/2 ket(0) + 1/2 e^(i pi/3) ket(1) = 1/2mat(sqrt(3); e^(i pi/3))$
(a)
$
  P_+ = ketbra(+) & = 1/sqrt(2) mat(1; 1) 1/sqrt(2) mat(1, 1) \
                  & =1/2 mat(
                      1, 1;
                      1, 1
                    ) \
  P_- = ketbra(-) & = 1/sqrt(2) mat(1; -1) 1/sqrt(2) mat(1, -1) \
                  & = 1/2 mat(
                      1, 1;
                      1, 1
                    )
$
$
         p_+ & =bra(psi) P_+ ket(psi) \
             & = 1/2mat(sqrt(3), e^(-i pi/3)) 1/2 mat(
                 1, 1;
                 1, 1
               ) 1/2mat(sqrt(3); e^(i pi/3)) \
             & = 1/8 mat(sqrt(3), e^(-i pi/3)) mat(
                 sqrt(3) + e^(i pi/3);
                 sqrt(3) + e^(i pi/3);
               ) \
             & = 1/8 (4 + sqrt(3) (e^(i pi/3) + e^(-i pi/3))) \
             & = 1/4 (2 + sqrt(3) cos pi/3) \
             & = 1/4 (2 + sqrt(3)/2) \
             & = (4 + sqrt(3))/8 \
  ket(psi_+) & = (P_+ ket(psi))/p_+ \
             & =
$
$
         p_- & =bra(psi) P_- ket(psi) \
             & = 1/2mat(sqrt(3), e^(-i pi/3)) 1/2 mat(
                 1, -1;
                 -1, 1
               ) 1/2mat(sqrt(3); e^(i pi/3)) \
             & = 1/8 mat(sqrt(3), e^(-i pi/3)) mat(
                 sqrt(3) - e^(i pi/3);
                 -sqrt(3) + e^(i pi/3);
               ) \
             & = 1/8 (4 - sqrt(3) (e^(i pi/3) - e^(-i pi/3))) \
             & = 1/4 (2 + sqrt(3) cos pi/3) \
             & = 1/4 (2 - sqrt(3)/2) \
             & = (4 - sqrt(3))/8 \
  ket(psi_-) & = (P_- ket(psi))/p_- \
             & =
$
//TODO finish it up
(b) Given $M_(X Z) = {ketbra(a) times.circle ketbra(b) | a in {+, -} and b in {0,1}}, ket(phi.alt) = 1/sqrt(6)(2 ket(00) + ket(01) + ket(10))$ the four possible matrices are
$
  M_1 = ketbra(+) times.circle ketbra(0) quad M_2 = ketbra(+) times.circle ketbra(1) \
  M_3 = ketbra(-) times.circle ketbra(0) quad M_4 = ketbra(-) times.circle ketbra(1)
$
$
           M_1 & = 1/sqrt(2) mat(1; 1) 1/sqrt(2) mat(1, 1) times.circle mat(1, 0; 0, 0) \
               & = 1/2 mat(1, 1; 1, 1) times.circle mat(1, 0; 0, 0) \
               & = 1/2 mat(
                   1, 0, 1, 0;
                   0, 0, 0, 0;
                   1, 0, 1, 0;
                   0, 0, 0, 0
                 ) \
               & = 1/2 (ketbra(00) + ketbra(10, 00) + ketbra(00, 10) + ketbra(10)) \
           M_2 & = 1/sqrt(2) mat(1; 1) 1/sqrt(2) mat(1, 1) times.circle mat(0, 0; 0, 1) \
               & = 1/2 mat(1, 1; 1, 1) times.circle mat(0, 0; 0, 1) \
               & = 1/2 mat(
                   0, 0, 0, 0;
                   0, 1, 0, 1;
                   0, 0, 0, 0;
                   0, 1, 0, 1
                 ) \
               & = 1/2 (ketbra(01) + ketbra(01, 11) + ketbra(11, 01) + ketbra(11)) \
           M_3 & = 1/sqrt(2) mat(1; -1) 1/sqrt(2) mat(1, -1) times.circle mat(1, 0; 0, 0) \
               & = 1/2 mat(1, -1; -1, 1) times.circle mat(1, 0; 0, 0) \
               & = 1/2 mat(
                   1, 0, -1, 0;
                   0, 0, 0, 0;
                   -1, 0, 1, 0;
                   0, 0, 0, 0
                 ) \
               & = 1/2 (ketbra(00) - ketbra(10, 00) - ketbra(00, 10) + ketbra(10)) \
           M_2 & = 1/sqrt(2) mat(1; -1) 1/sqrt(2) mat(1, -1) times.circle mat(0, 0; 0, 1) \
               & = 1/2 mat(1, -1; -1, 1) times.circle mat(0, 0; 0, 1) \
               & = 1/2 mat(
                   0, 0, 0, 0;
                   0, 1, 0, -1;
                   0, 0, 0, 0;
                   0, -1, 0, 1
                 ) \
               & = 1/2 (ketbra(01) - ketbra(01, 11) - ketbra(11, 01) + ketbra(11)) \
  M_1 ket(psi) & = 1/(2sqrt(6)) (3 ket(00) + 3ket(10)) \
  M_2 ket(psi) & = 1/(2sqrt(6)) (ket(01) + ket(11)) \
  M_3 ket(psi) & = 1/(2sqrt(6)) (ket(00) - ket(10)) \
  M_4 ket(psi) & = 1/(2sqrt(6)) (ket(01) - ket(11)) \
$
let $p_1, dots, p_4$ be the outcome probabilities.
$
  p_1 & = bra(psi) M_1 ket(psi) \
      & = 1/sqrt(6) (2 bra(00) + bra(01) + bra(10)) 1/(2sqrt(6)) (3 ket(00) + 3ket(10)) \
      & = 1/12 (6 + 3) \
      & = 9/12 \
  p_2 & = bra(psi) M_2 ket(psi) \
      & = 1/sqrt(6) (2 bra(00) + bra(01) + bra(10)) 1/(2sqrt(6)) (ket(01) + ket(11)) \
      & = 1/12 \
  p_3 & = bra(psi) M_3 ket(psi) \
      & = 1/sqrt(6) (2 bra(00) + bra(01) + bra(10)) 1/(2sqrt(6)) (ket(00) - ket(10)) \
      & = 1/12 \
  p_4 & = bra(psi) M_4 ket(psi) \
      & = 1/sqrt(6) (2 bra(00) + bra(01) + bra(10)) 1/(2sqrt(6)) (ket(01) - ket(11)) \
      & = 1/12
$
The normalised post-measurement states are
$
  ket(psi_1) & = 1/sqrt(p_1) M_1 ket(psi) \
             & = 2sqrt(3)/3 dot 1/(2 sqrt(6)) (3 ket(00) + 3ket(10)) \
             & = 1/sqrt(2) (ket(00) + ket(10)) \
  ket(psi_2) & = 1/sqrt(p_2) M_2 ket(psi) \
             & = 2sqrt(3) dot 1/(2 sqrt(6)) (ket(01) + ket(11)) \
             & = 1/sqrt(2) (ket(01) + ket(11)) \
  ket(psi_3) & = 1/sqrt(p_3) M_3 ket(psi) \
             & = 2sqrt(3) dot 1/(2 sqrt(6)) (ket(00) - ket(10)) \
             & = 1/sqrt(2) (ket(01) + ket(11)) \
  ket(psi_4) & = 1/sqrt(p_4) M_4 ket(psi) \
             & = 2sqrt(3) dot 1/(2 sqrt(6)) (ket(01) - ket(11)) \
             & = 1/sqrt(2) (ket(01) + ket(11))
$

(c)
$
  ket(Phi^+) & = 1/sqrt(2) (ket(00) + ket(11)) \
   ketbra(+) & = 1/2 (ketbra(0) + ketbra(0, 1) + ketbra(1, 0) + ketbra(1)) \
   ketbra(-) & = 1/2 (ketbra(0) - ketbra(0, 1) - ketbra(1, 0) + ketbra(1)) \
$
$
                        Pi_+ & = ketbra(+) times.circle II \
                             & = 1/2 (ketbra(0) + ketbra(0, 1) + ketbra(1, 0) + ketbra(1)) (ketbra(0) + ketbra(1)) \
                             & = 1/2 (ketbra(00) + ketbra(00, 10) + ketbra(01) + ketbra(01, 11) \
                             & quad quad + ketbra(10) + ketbra(10, 00) + ketbra(11, 01) + ketbra(11)) \
             Pi_+ ket(Phi^+) & = Pi_+ (1/ sqrt(2) (ket(00) + ket(11))) \
                             & = 1/(2 sqrt(2)) (ket(00) + ket(01) + ket(10) + ket(11)) \
                         p_+ & = bra(Phi^+)P_+ ket(Phi^+) \
                             & = 1/ sqrt(2) (bra(00) + bra(11)) (1/(2 sqrt(2)) (ket(00) + ket(01) + ket(10) + ket(11))) \
                             & = 1/ 2 \
  1/sqrt(p_+)Pi_+ ket(Phi^+) & = sqrt(2) dot 1/(2 sqrt(2)) (ket(00) - ket(01) - ket(10) + ket(11)) \
                             & = 1/2 (ket(00) + ket(01) + ket(10) + ket(11)) \
                        Pi_- & = ketbra(-) times.circle II \
                             & = 1/2 (ketbra(0) - ketbra(0, 1) - ketbra(1, 0) + ketbra(1)) (ketbra(0) + ketbra(1)) \
                             & = 1/2 (ketbra(00) - ketbra(00, 10) + ketbra(01) - ketbra(01, 11) \
                             & quad quad + ketbra(10) - ketbra(10, 00) - ketbra(11, 01) + ketbra(11)) \
             Pi_- ket(Phi^+) & = Pi_- (1/ sqrt(2) (ket(00) + ket(11))) \
                             & = 1/(2 sqrt(2)) (ket(00) - ket(01) - ket(10) + ket(11)) \
                         p_- & = bra(Phi^+)P_- ket(Phi^+) \
                             & = 1/ sqrt(2) (bra(00) + bra(11)) (1/(2 sqrt(2)) (ket(00) - ket(01) - ket(10) + ket(11))) \
                             & = 1/ 2 \
  1/sqrt(p_-)Pi_- ket(Phi^+) & = sqrt(2) dot 1/(2 sqrt(2)) (ket(00) - ket(01) - ket(10) + ket(11)) \
                             & = 1/2 (ket(00) - ket(01) - ket(10) + ket(11))
$
