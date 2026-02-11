#let tra = "Tr"
== Part III

Given $A in RR^(n times n)$ a symmetric matrix with $A_(i j) > 0$ for $i, j in [n]$ and $lambda$ be its largest eigenvalue.

=== Question 1 (i)

By the Spectral theorem, $lambda in RR$, and since $A$ is symmetric, then
$
  tra(A) = sum_(i = 1)^(n) A_(i i) = sum_(i = 1)^(n) lambda_i > 0 quad "since " A_(i i) > 0
$
where $lambda_i in RR$ is an eigenvalue for $A$ for each $i in [n]$. Thus it follows that
$
  lambda = op("max", limits: #true)_i lambda_i > 0
$

=== Question 1 (ii)
Suppose $u in RR^n$ is a unit eigenvector associated with $lambda$, and let $abs(u)$ be the vector obtained by taking the absolute values of each of the component of $u$. We first show that $abs(u)$ is an eigenvector associated with $lambda$. Consider the following:
$
  abs(u)^top A abs(u) & = abs(u)^top sum_(j = 1)^n A_(i j) abs(u_j) \
  & >= abs(u)^top abs(sum_(j = 1)^n A_(i j) u_j) \
  & = abs(u)^top abs(A u) \
  & = abs(u)^top abs(lambda u) \
  & = lambda abs(u)^top abs(u) \
  & = lambda quad "since" u " is a unit vector"
$
Also, note that $lambda = u^top A u <= abs(u)^top A abs(u)$, which implies that the eigenvector for $abs(u)$ is at least $lambda$. But since $lambda$ is the largest eigenvalue of $A$ then it follows that $abs(u)$ is also an eigenvector associated with $lambda$.

In addition, suppose there is $k in [n]$  such that $abs(u_k) = 0$ Then from $A abs(u) = lambda abs(u)$:

$ (A|u|)_k = sum_(j=1)^n A_(k j)|u_j| = lambda|u_k| = 0 $

Since $A_(k j) > 0$ for all $j$ and $|u_j| >= 0$ for all $j$, the only way this sum can equal zero is if $|u_j| = 0$ for all $j$. But this contradicts the fact that $abs(u)$ is aa unit vector.


=== Question 1 (iii)

Suppose the geometric multiplicity is at least 2. Then there exist two orthonormal eigenvectors $u$ and $v$ for $lambda$ with $u^top v = 0$.

From part (ii), we can work with eigenvectors that have all positive components (replacing $u$ and $v$ by $|u|$ and $|v|$ if necessary, which are also eigenvectors for $lambda$). Moreover, the argument in part (ii) shows that any eigenvector for $lambda$ must have all components of the same sign (all positive or all negative).

Let's say $u$ has all positive components. Any other eigenvector for $lambda$ must be of the form $u' = plus.minus |u'|$, meaning all components have the same sign.

*Case 1:* If $v$ has all positive components, then:
$ u^top v = sum_(i=1)^n u_i v_i > 0 $
since all terms are positive. This contradicts $u^top v = 0$.

*Case 2:* If $v$ has all negative components, then $v = -|v|$ where $|v|$ has all positive components. Then:
$ u^top v = -u^top|v| = -sum_(i=1)^n u_i|v_i| < 0 $
This also contradicts $u^top v = 0$.

Therefore, no second orthogonal eigenvector can exist, so the geometric multiplicity is 1. Since $A$ is symmetric, the algebraic multiplicity equals the geometric multiplicity, so the algebraic multiplicity is also 1.

=== Question 1 (iv)

Let $mu$ be any eigenvalue of $A$ with $mu != lambda$, and let $v$ be a corresponding unit eigenvector. Since $A$ is symmetric and $lambda$ has multiplicity 1, we have $v perp x$ where $x$ is the positive eigenvector for $lambda$.

From part (ii), we know:
$ |v^top A v| <= |v|^top A|v| $

Since $A v = mu v$:
$ |v^top A v| = |mu v^top v| = |mu| dot ||v||^2 = |mu| $

By the Rayleigh-Ritz theorem (since $lambda$ is the largest eigenvalue):
$ (|v|^top A|v|)/(|||v|||^2) <= lambda $

Note that $|||v|||^2 = sum_i |v_i|^2 = sum_i v_i^2 = ||v||^2 = 1$.

Therefore:
$ |mu| <= |v|^top A|v| <= lambda $

If $|mu| = lambda$, then equality holds throughout, meaning $|v|$ is an eigenvector for $lambda$ with eigenvalue $lambda$. From part (ii), $|v|$ would have all positive components. But:
$ x^top|v| = sum_(i=1)^n x_i|v_i| > 0 $

since $x$ has all positive components and $|v| != 0$. This means $|v|$ is not orthogonal to $x$, so $|v|$ cannot be orthogonal to the eigenspace of $lambda$. Yet if $|v|$ is an eigenvector for $lambda$ and $lambda$ has multiplicity 1, then $|v|$ must be a scalar multiple of $x$.

This would imply $v = plus.minus|v| = plus.minus c x$ for some constant $c$, but then:
$ v^top x = plus.minus c x^top x = plus.minus c||x||^2 != 0 $

But this contradicts $v perp x$, therefore, $|mu| < lambda$.

=== Question 2

If $A$ has non-negative entries ($A_(i j) >= 0$) and $A^k$ has strictly positive entries for some $k$, then:

#enum(
  numbering: "1.",
  [
    - If $lambda$ is an eigenvalue of $A$ with eigenvector $bold(v)$, then $lambda^k$ is an eigenvalue of $A^k$ with the same eigenvector $bold(v)$ (since $A^k bold(v) = lambda^k bold(v)$).
  ],
  [
    - Since $A^k$ is symmetric (as $A$ is symmetric) with all positive entries, the theorem follows. Let $Lambda$ be the largest eigenvalue of $A^k$. Then:
    - $Lambda > 0$
    - $Lambda$ has a positive eigenvector
    - $Lambda$ has multiplicity 1
    - All other eigenvalues $mu'$ of $A^k$ satisfy $|mu'| < Lambda$
  ],
  [
  - Since $Lambda = lambda^k$ where $lambda$ is the largest eigenvalue of $A$:
    - $lambda = Lambda^(1\/k) > 0$
    - $lambda$ has the same positive eigenvector
    - If $lambda$ had multiplicity $> 1$, then $lambda^k$ would have multiplicity $> 1$, contradiction
    - If $mu$ is another eigenvalue of $A$, then $|mu|^k = |mu^k| < Lambda = lambda^k$, so $|mu| < lambda$
  ]
)

Therefore, the theorem holds for non-negative matrices with a positive power.
