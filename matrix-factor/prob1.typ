#import "@preview/algorithmic:1.0.7"
#import algorithmic: style-algorithm, algorithm-figure


#let tra = "Tr"
#let myop(x: str, y) = $math.op(x, limits: true)_(y)$
#set math.mat(delim: "[")
#let trans(x) = ($#x^top$)
= Part I

=== Question 1
The given expression
$
  J(W) = sum_(i = 1)^n || W^top x_i - y_i||_2^2
$
This is equivalent to the following:

$
  J(W) & =  norm(X W -  Y)_F^2 \
  & = tra((X W - Y)^top (X W - Y)) \
  & = tra(W^top X X^top W - W^top X^top Y -  Y^top X W + Y^top Y)
$

To find the minimum $W^*$, we take the gradient of $J(W)$ and set it to zero.
$
   (partial J(W)) / (partial W) & = 2X^top X W - 2X^top Y = 0 \
  arrow.r.long.double &  2X^top X W - 2X^top Y = 0 \
   &  X^top X W = X^top Y \
   arrow.r.long.double & W^* = (X^top X)^(-1) X^top Y
$

=== Question 2
Let ${y_i}_(i=1)^p$ be a collection of $n-$dimesional vectors, ${x_i^top}_(i=1)^n$ be collection of $d-$dimensional vectors that forms the row of a matrix $X in RR^(n times d)$. For each $i in [p]$, we want to minimise the loss
$
  J(w_i) = norm(X w_i - y_i)_2^2, quad "for" i in [p]
$

the minimum:
$
  op("arg min", limits: #true)_(w_i) norm(X w_i - y_i)_2^2 & = Pi_(cal(R)(X))(y_i) \
  & = X (X^top X)^(-1) X^top y_i \
  arrow.r.long.double w_i^* = &(X^top X)^(-1)X^top y_i
$
 note that $w_i^* in RR^d$, combing these for all $i in [p]$, each $w_i^*$ forms the columns of a matrix $W^* in RR^(d times p)$, which implies $W^*  = (X^top X)^(-1)X^top Y$, where
 $
   Y = mat(
     mid(|), mid(|), ,mid(|);
     y_1, y_2, dots, y_p;
     mid(|), mid(|), ,mid(|);

   )
 $
which shows that independently solving $p$ linear regressions, one arrives at the same solution as problem 1.

=== Question 3
Consider the following
// op("min", limits: #true)_(A in RR^(d times R), B in RR^(R times p))
$
   J(A B) = & norm(X A B - Y)_F^2 \
  & = tra((X A B - Y)^top (X A B - Y)) \
  & = tra((B^top A^top X^top - Y^top) (X A B - Y)) \
  & = tra(B^top A^top X^top X A B - B^top A^top X^top Y - Y^top X A B + Y^top Y) \
  & = tra(B^top A^top X^top X A B) - tra(B^top A^top X^top Y) - tra(Y^top X A B) + tra(Y^top Y) \
$

To solve the optimisation problem, we find the gradient $(partial J)/(partial B)$ (resp. $(partial J)/(partial A)$) while fixing $A$ (resp. $B$)
$
  (partial J(A B))/(partial B)& = (partial tra(B^top A^top X^top X A B))/(partial B) - (partial tra(B^top A^top X^top Y))/(partial B) - (partial tra(Y^top X A B))/(partial B) + (partial Y^top Y)/(partial B) \
  & = A^top X^top X A B + (A^top X^top X A)^top B - A^top X^top Y - (Y^top X A)^top \
  & = A^top X^top X A B + A^top X^top X A B  - A^top X^top Y -  A^top X^top Y\
  & = 2A^top X^top X A B - 2A^top X^top Y
$

the minimum $B^*$ is given by setting $(partial J)/(partial B) = 0$
$
  arrow.r.long.double B^* =(A^top X^top X A )^(-1) A^top X^top Y
$

SImilarly, fixing $B$, we have the following,
$
  (partial J(A B))/(partial A)& = (partial tra(B^top A^top X^top X A B))/(partial A) - (partial tra(B^top A^top X^top Y))/(partial A) - (partial tra(Y^top X A B))/(partial A) + (partial Y^top Y)/(partial A) \
  & = X^top X A B B^top + X^top X A B B^top - X^top Y B^top - (Y^top X)^top B^top \
  & = 2X^top X A B B^top  - X^top Y B^top - X^top Y B^top \
  & = 2X^top X A B B^top  - 2X^top Y B^top \
$

the minimum $A^*$ is given by setting $(partial J)/(partial A) = 0$
$
  arrow.r.long.double A^* = (X^top X)^(-1) X^top Y B^top (B B^top)^(-1)
$

#show: style-algorithm
#algorithm-figure(
  "Alternating Least Square (ALS)",
  //TODO add the necessary codes
  vstroke: .5pt + luma(200),
  {
    import algorithmic: *
    Procedure(
      "ALS",
      ($X in RR^(n times d)$, $Y in RR^(n times p)$, $epsilon$),
      {
        Comment[Initialise $A_0, B_0$]
        While(
          [True],
          {
            Comment[Fix $B$ and update $A$]
            Assign[$A_t$][$(X^top X)^(-1) X^top Y B_(t- 1)^top (B_(t - 1) B_(t - 1)^top)^(-1)$]
            Comment[Fix $A$ and update $B$]
            Assign[$B_(t)$][$(A_(t - 1)^top X^top X A_(t -1) )^(-1) A^top X^top Y$]
            If(
              $norm(J(A_(t)B_(t)) - J(A_(t - 1)B_(t - 1)))_F^2 < epsilon$,
              {
                Return[]
              }
            )
          }
        )

      }
    )

  }
)

=== Question 4
Non-Convexity and Local Minima
- The objective $J(A B)$ is non-convex in $(A,B)$ jointly
- ALS is only guaranteed to converge to a stationary point, not global minimum
- Different initializations can lead to different solutions
- May get stuck in poor local minima


=== Question 5(a)

From the given loss we have:
$
  op("min", limits: #true)_(W) norm(Y - X W)_F^2 = op("min", limits: #true)_(W) norm(Y - Y_(O L S) + Y_(O L S) - X W)_F^2
$
note that $Y_(O L S), Y_(O L S) - X W in cal(R)(X)$ and $Y - Y_(O L S) in cal(R)(X)^bot$ which implies $Y - Y_(O L S)$ and $Y_(O L S) - X W$ are orthogonal to each other, then by the pythagoras theorem, we have the following:
$
  norm(Y - Y_(O L S) + Y_(O L S) - X W)_F^2 = norm(Y - Y_(O L S))_F^2 + norm(Y_(O L S) - X W)_F^2
$

$
  arrow.r.long.double  op("min", limits: #true)_(W) norm(Y - X W)_F^2 = op("min", limits: #true)_(W) norm(Y - Y_(O L S))_F^2 + norm(Y_(O L S) - X W)_F^2
$

=== Question 5(b)
Suppose
$
  Y_(O L S) = U Sigma V^top = sum_(i = 1)^l sigma_i u_i v_i^top
$
is the SVD decompoition of $Y_(O L S)$, with $sigma_i in RR, u_i in RR^n, v_i in RR^p$ , then by the Eckart-Young-Mirsky theorem we can find an approximation $hat(Y)_(O L S)$ such that
$
  hat(Y)_(O L S) = sum_(i = 1)^R sigma_i u_i v_i^top
$
where $op("rank")(W) <= R$. Now let $hat(Y)_(O L S) = U_R Sigma_R V_R^top$, the decompositon by keeping the top $R$ singular values. Also consider the following:
$
  Y_(O L S) & = U Sigma V^top \
  & = mat(U_R, U_bot) mat(Sigma_R, 0; 0, 0) mat(V_R^top; V_bot) \
  Y_(O L S) V_R & = mat(U_R, U_bot) mat(Sigma_R, 0; 0, 0) mat(V_R^top; V_bot) V_R \
   & = mat(U_R, U_bot) mat(Sigma_R, 0; 0, 0) mat(I_R; 0)  \
   & = mat(U_R, U_bot) mat(Sigma_R, 0; 0, 0) mat(I_R; 0)  \
   & = mat(U_R, U_bot)  mat(Sigma_R; 0)  \
   & = U_R Sigma_R \
  Y_(O L S)V_R V_R^top & = U_R Sigma_R V_R^top \
  & = hat(Y)_(O L S)
$

From the decomposition in part (a) the first part is not dependent on $W$, which left us with minimising
$
  norm(Y_(O L S) - X W)_F^2
$

and this is similar to the optimisation in problem (1), then we have the following:
$
  W^* & = (X^T X)^(-1) X^T hat(Y)_(O L S) \
  & = (X^T X)^(-1) X^T Y_(O L S) V_R V_R^top \
  & = (X^T X)^(-1) X^T X W_(O L S) V_R V_R^top \
  & =  W_(O L S) V_R V_R^top \
  & =  W_(O L S) P \
$
