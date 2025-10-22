#import "@preview/physica:0.9.6": *

#let tr = "Tr"

== Question 1
1. Given $rho_0 = mat(1/4, i/2; -i/2, 1/2), rho_1 = mat(1/4, 1/2; -1/2, 3/4), rho_2 = mat(1, i; -i, 0), rho_3 = mat(1/8, 0; 0, 7/8)$

*Claim*: $rho_0, rho_1, rho_2$ are not density matrices.

_Proof_

It is obvious for $rho_0$ since $tr(rho_0) = 3/4 != 1$. Also for $rho_1$, $rho_1^dagger != rho_1$

Though $rho_3$ is Hermitian, but its characteristic polynomial of $lambda^2 - lambda + 1$ has a discriminant of $-3$, which shows that the eigen values of $rho_3$ is complex.

2. Let $A_(i j), B_(i j)$ be the entries of $A, B$ respectively. Consider the following
$
  (A B)_(i j) & = sum_(k = 1)^n A_(i k) B_(k j) \
  (B A)_(i j) & = sum_(k = 1)^n B_(i k) A_(k j) \
      tr(A B) & = sum_(i = 1)^n sum_(k = 1)^n A_(i k) B_(k i) \
              & = sum_(i = 1)^n sum_(k = 1)^n A_(k i) B_(i k) \
              & = sum_(i = 1)^n sum_(k = 1)^n B_(i k) A_(k i) quad " by symmetry"
$
Note that $sum_(k = 1)^n B_(i k) A_(k i)$ is the (i,j)th entry of the matrix $B A$, then it folllows that $tr(A B) = tr(B A)$ for all square matrices of the same dimension.

3. Since $rho$ is a density operator, then it can be represented as follows
$
  rho & = sum_{k in 1, dots, abs(Sigma)} lambda_k ketbra(psi_k)
$
with $0 <= lambda_k <= 1 " and " sum_k lambda_k = tr(rho) = 1.$ It is obvious that $lambda_k^2 <= lambda_k$, then we have the following
$
  tr(rho^2) & = sum_k lambda_k^2 \
            & <= sum_k lambda_k \
            & = 1
$
Now suppose $tr(rho^2) = 1$, then $lambda^2_k = lambda_k arrow.long.double lambda_k = 0 "or " lambda_k = 1$. It only makes sense for $lambda_k = 1$. Then $sum_k lambda_k = 1$ implies $k = 1$, hence showing that $rho$ is a pure state.

Conversely, suppose $rho$ is a pure state. But since pure states are projectors, then
$
                        rho^2 & = rho \
  arrow.long.double tr(rho^2) & = tr(rho) = 1
$

4. For $ket(phi.alt^+) = 1/sqrt(2)ket(00) + ket(11)$
$
    rho & = ketbra(phi.alt^+) \
        & = (1/sqrt(2)ket(00) + ket(11))(1/sqrt(2)bra(00) + bra(11)) \
        & = 1/2(ketbra(00) + ketbra(00, 11) + ketbra(11, 00) + ketbra(11)) \
        & = 1/2(ketbra(0) times.circle ketbra(0) + ketbra(0, 1) times.circle ketbra(0, 1) + ketbra(1, 0) \
        & quad + times.circle ketbra(1, 0) + ketbra(1) times.circle ketbra(1)) \
  rho_A & = tr_B (rho) \
        & = 1/2(tr_B (ketbra(0) times.circle ketbra(0)) + tr_B (ketbra(0, 1) times.circle ketbra(0, 1)) \
        & quad + tr_B (ketbra(1, 0) times.circle ketbra(1, 0)) + tr_B (ketbra(1) times.circle ketbra(1))) \
        & = 1/2(tr(ketbra(0))ketbra(0) + tr(ketbra(0, 1))ketbra(0, 1) \
        & quad + tr(ketbra(1, 0))ketbra(1, 0) + tr(ketbra(1))ketbra(1)) \
        & = 1/2 (ketbra(0) + ketbra(1))
$
note that by symmetry $rho_A = rho_B$

For $ket(phi.alt^-) = 1/sqrt(2)ket(00) - ket(11)$
$
    rho & = ketbra(phi.alt^+) \
        & = (1/sqrt(2)ket(00) - ket(11))(1/sqrt(2)bra(00) - bra(11)) \
        & = 1/2(ketbra(00) - ketbra(00, 11) - ketbra(11, 00) + ketbra(11)) \
        & = 1/2(ketbra(0) times.circle ketbra(0) - ketbra(0, 1) times.circle ketbra(0, 1) - ketbra(1, 0) \
        & quad + times.circle ketbra(1, 0) + ketbra(1) times.circle ketbra(1)) \
  rho_A & = tr_B (rho) \
        & = 1/2(tr_B (ketbra(0) times.circle ketbra(0)) - tr_B (ketbra(0, 1) times.circle ketbra(0, 1)) \
        & quad - tr_B (ketbra(1, 0) times.circle ketbra(1, 0)) + tr_B (ketbra(1) times.circle ketbra(1))) \
        & = 1/2(tr(ketbra(0))ketbra(0) - tr(ketbra(0, 1))ketbra(0, 1) \
        & quad - tr(ketbra(1, 0))ketbra(1, 0) + tr(ketbra(1))ketbra(1)) \
        & = 1/2 (ketbra(0) + ketbra(1))
$
note that by symmetry $rho_A = rho_B$



For $ket(psi^+) = 1/sqrt(2)ket(01) + ket(10)$

$
    rho & = ketbra(psi^+) \
        & = (1/sqrt(2)ket(01) + ket(10))(1/sqrt(2)bra(01) + bra(10)) \
        & = 1/2(ketbra(01) + ketbra(01, 10) + ketbra(10, 01) + ketbra(10)) \
        & = 1/2(ketbra(0) times.circle ketbra(1) + ketbra(0, 1) times.circle ketbra(1, 0) \
        & quad + ketbra(1, 0) times.circle ketbra(0, 1) + ketbra(1) times.circle ketbra(0)) \
  rho_A & = tr_B (rho) \
        & = 1/2( tr_B (ketbra(0) times.circle ketbra(1)) + tr_B (ketbra(0, 1) times.circle ketbra(1, 0)) \
        & quad + tr_B (ketbra(1, 0) times.circle ketbra(0, 1)) + tr_B (ketbra(1) times.circle ketbra(0))) \
        & = 1/2( tr(ketbra(0)) ketbra(1) + tr (ketbra(0, 1)) ketbra(1, 0) \
        & quad + tr(ketbra(1, 0)) ketbra(0, 1) + tr(ketbra(1)) ketbra(0)) \
        & = 1/2 (ketbra(0) + ketbra(1))
$
note that by symmetry it is obvious that $rho_A = rho_B$

For $ket(psi^-) = 1/sqrt(2)ket(01) - ket(10)$

$
    rho & = ketbra(psi^+) \
        & = (1/sqrt(2)ket(01) - ket(10))(1/sqrt(2)bra(01) - bra(10)) \
        & = 1/2(ketbra(01) - ketbra(01, 10) - ketbra(10, 01) + ketbra(10)) \
        & = 1/2(ketbra(0) times.circle ketbra(1) - ketbra(0, 1) times.circle ketbra(1, 0) \
        & quad - ketbra(1, 0) times.circle ketbra(0, 1) + ketbra(1) times.circle ketbra(0)) \
  rho_A & = tr_B (rho) \
        & = 1/2( tr_B (ketbra(0) times.circle ketbra(1)) - tr_B (ketbra(0, 1) times.circle ketbra(1, 0)) \
        & quad - tr_B (ketbra(1, 0) times.circle ketbra(0, 1)) + tr_B (ketbra(1) times.circle ketbra(0))) \
        & = 1/2( tr(ketbra(0)) ketbra(1) - tr (ketbra(0, 1)) ketbra(1, 0) \
        & quad - tr(ketbra(1, 0)) ketbra(0, 1) + tr(ketbra(1)) ketbra(0)) \
        & = 1/2 (ketbra(0) + ketbra(1))
$
note that by symmetry it is obvious that $rho_A = rho_B$
