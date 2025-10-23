== Question 2
1. Let
$
  e^A = sum_(i = 0)^(infinity) 1/i! A^i quad e^B = sum_(j = 0)^(infinity) 1/j! B^j
$
By Cauchy product of infinite series we have
$
  e^A e^B & = (sum_(i = 0)^(infinity) 1/i! A^i) dot.c (sum_(j = 0)^(infinity) 1/j! B^j) \
          & = sum_(n = 0)^infinity C_n
$
where
$
                        C_n & = sum_(i = 0)^n 1/i! A^i dot 1/(n - i)! B^(n - i) \
                            & =^(j arrow n - i) sum_(i+j = n) 1/(i! j!) A^i B^j \
  arrow.long.double e^A e^B & = sum_(n = 0)^infinity sum_(i + j = n) 1/(i! j!) A^i B^j \
$

The fact that $[A, B] = 0 arrow.long.double A B = B A$, then $A^i B^j = B^j A^i$ for some $i, j$. We can apply the binomial theorem on the matrices $A$ and $B$, thus we have
$
     (A + B)^n & = sum_(i = 0)^n binom(n, i) A^i B^(n - i) \
               & = sum_(i = 0)^n n!/(i! (n - i)!) A^i B^(n - i) \
               & =^(j arrow n - i) n! sum_(i + j = n) 1/(i! j!) A^i B^(j) \
  (A + B)^n/n! & = sum_(i + j = n) 1/(i! j!) A^i B^(j) \
$
Then
$
  e^(A + B) & = sum_(k = 0)^infinity (A + B)^n/n! \
            & = sum_(i + j = n) 1/(i! j!) A^i B^(j) \
            & = e^A e^B
$


2. Good examples are $X, Y$.
