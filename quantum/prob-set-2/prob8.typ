#import "@preview/circuiteria:0.2.0": *

== Question 8
1. We will start with a two one-bit integer. The sum of two two one-bit interger say $a, b$ is the same the XOR of $a$ and $b$, but we also need to consider the carry (i.e the most-significan bit when $a = b = 1$) which is the AND of $a$ and $b$, combining these we have what is called the *half-adder* which gives the output the sum and the carry. By extension to two two-bit integers we have to consider the more significant bits by including the carry bit from previous position, by combining two half adders and the XOR of the carry bits we get what is called the *full-adder*. Now cascading a half adder and a full adder we have the output for the addition of two two-bit integers. 
#align(center)[
#image("Pasted image.png", width: 75%)
#image("circuit.drawio.png", width: 75%)
#image("full-hadder.png", width: 75%)
#image("two-bit.png", width: 75%)
]
From the above figures, we observe that in a XOR gate we have 2 FANOUT, 2 NOT, 2 AND and 1 OR gates, which is 7 in total To build a half-adder we required 2 FANOUT, 1 XOR and 1 AND gate, which is 10 in total of elementary gates.For a full adder cascading 2 half adder and 1 OR gate we have a total 21 gates. For the addition of two two-bit integers we have 1 full adder and 1 half adder whichimplies a total of 31 gates.

2. Cascading the gates for the addition of two two-bit intgers above with another full adder we get 52 gates in total..

3. Let $a_0 a_1 dots.h a_n, " and " b_0 b_1 dots.h b_n, " with " a_i, b_i in {0,1}$ be two n-bit integers. From the illustration in question 1, it si obvious that we need to take the XOR of $a_n " and " b_n$ to get the carry and also computes the OR of the carries of remaining $(n-1)$ positions, hence the need for a half adder and $n - 1$ full adder. Taking the number of all gates we have:
$
  f(n) & = 21(n - 1) + 10 \
  & = 21n - 11
$

4. It is obvious that $f(n) = O(n)$.