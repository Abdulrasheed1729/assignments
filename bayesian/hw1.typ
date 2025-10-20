
#let pr = [Pr]

= Home Work 1

== Problem 1 <prob:1>
By the definition of odds we have
$
  O equiv p / (1-p)
$
multiplying both sides by $(1 - p)$ implies:
$
  O dot (1 - p) & = p \
            O - O dot p    & = p \
            p + O dot p & = O \
            p(1 + O) &= O \ 
    arrow.r.double p = O / (1 + O)
$

== Problem 2 <prob:2>
From the odd form of the Baye's theorem we have the following:
$
  underbrace(O(H divides D), "posterior odds") = "LR" times underbrace(O(H), "prior odds")
$
from the statement of the problem we have that: $pr(H) = p,quad "LR" = 2$, obviously $O(H) = p/(1 - p)$
$
  arrow.r.double O(H divides D) &= 2 times p/(1 - p) \
  & = (2p)/(1 - p)
$
using the result from problem 1, we have the following:
$
  pr(H divides D) &= ((2p)/(1 - p)) / (1 + (2p)/(1 - p)) \ 
  & = (2p) / (1 + p)
$
$therefore$ the posterior probability in terms of $p$ is:
$
(2p) / (1 + p)
$
=== Problem 3
Let the hypothesis for rolling a 6-sided and 12-sided die be $H_(6)$ and $H_(12)$ respectfully. We will constt=ruct a Bayesian table for each of the given data below.

When $D = 3$
#show table.cell.where(y: 0): strong
#set table(
  stroke: (x, y) => if y == 0 {
    (bottom: 0.7pt + black)
  },
  align: (x, y) => (
    if x > 0 { center }
    else { left }
  )
)
#table(
  columns: 8, 
  table.header([$H$],
  [$pr(H)$],
  [$times$],
  [$pr(D divides H)$],[$=$],
  [$pr(H) dot pr(D divides H)$],
  [$alpha$],
  [$pr(H divides D)$],
  ),
  []
) 

