#import "@preview/physica:0.9.6": *

== Question 5
1. Description of protocol
- If $d = 1$, Ada performs a $Z$ gate on her qubit (and if d = 0 she does not).
- If $c = 1$, Ada performs an $X$ gate on her qubit (and if c = 0 she does not).
Alice then sends her qubit to Bongp.
2. (a) *Case 1* (When $(c,d) = (0,0)$)

$
  ket(psi_((0,0))) & = (II times.circle H)("CNOT")(II times.circle II) ket(phi.alt^+) \
                   & = (II times.circle H)("CNOT") ket(phi.alt^+) \
                   & = (II times.circle H)("CNOT") 1/sqrt(2) (ket(00) + ket(11)) \
                   & = (II times.circle H)1/sqrt(2) (ket(00) + ket(01)) \
                   & = (II times.circle H)1/sqrt(2) (ket(0)ket(0) + ket(0)ket(1)) \
                   & = 1/sqrt(2) (ket(0)ket(+) + ket(0)ket(-)) \
                   & = 1/sqrt(2) (ket(0)(1/sqrt(2) (ket(0) + ket(1))) + ket(0)(1/sqrt(2) (ket(0) - ket(1)))) \
                   & = 1/2(ket(00) + ket(01) + ket(00) - ket(01)) \
                   & = ket(00)
$

*Case 2* (When $(c,d) = (0,1)$)

$
  ket(psi_((0,1))) & = (II times.circle H)("CNOT")(II times.circle Z) ket(phi.alt^+) \
                   & = (II times.circle H)("CNOT")(II times.circle Z) 1/sqrt(2) (ket(00) + ket(11)) \
                   & = (II times.circle H)("CNOT")1/sqrt(2) (ket(00) - ket(11)) \
                   & = (II times.circle H)1/sqrt(2) (ket(00) - ket(01)) \
                   & = (II times.circle H)1/sqrt(2) (ket(0)ket(0) - ket(0)ket(1)) \
                   & = 1/sqrt(2) (ket(0)ket(+) - ket(0)ket(-)) \
                   & = 1/sqrt(2) (ket(0)(1/sqrt(2) (ket(0) + ket(1))) - ket(0)(1/sqrt(2) (ket(0) - ket(1)))) \
                   & = 1/2(ket(00) + ket(01) - ket(00) + ket(01)) \
                   & = ket(01)
$

*Case 3* (When $(c,d) = (1,0)$)

$
  ket(psi_((1,0))) & = (II times.circle H)("CNOT")(II times.circle X) ket(phi.alt^+) \
                   & = (II times.circle H)("CNOT")(II times.circle X) 1/sqrt(2) (ket(00) + ket(11)) \
                   & = (II times.circle H)("CNOT")1/sqrt(2) (ket(01) + ket(10)) \
                   & = (II times.circle H)1/sqrt(2) (ket(11) + ket(10)) \
                   & = (II times.circle H)1/sqrt(2) (ket(1)ket(1) + ket(1)ket(0)) \
                   & = 1/sqrt(2) (ket(1)ket(-) + ket(1)ket(+)) \
                   & = 1/sqrt(2) (ket(1)(1/sqrt(2) (ket(0) - ket(1))) + ket(1)(1/sqrt(2) (ket(0) + ket(1)))) \
                   & = 1/2(ket(10) - ket(11) + ket(10) + ket(11)) \
                   & = ket(10)
$

*Case 4* (When $(c,d) = (1,1)$)

$
  ket(psi_((1,1))) & = (II times.circle H)("CNOT")(II times.circle X) (II times.circle Z) ket(phi.alt^+) \
                   & = (II times.circle H)("CNOT")(II times.circle X) (II times.circle Z) 1/sqrt(2) (ket(00) + ket(11)) \
                   & = (II times.circle H)("CNOT")(II times.circle X) 1/sqrt(2) (ket(00) - ket(11)) \
                   & = (II times.circle H)("CNOT")1/sqrt(2) (ket(01) - ket(10)) \
                   & = (II times.circle H)1/sqrt(2) (ket(11) - ket(10)) \
                   & = (II times.circle H)1/sqrt(2) (ket(1)ket(1) - ket(1)ket(0)) \
                   & = 1/sqrt(2) (ket(1)ket(-) + ket(1)ket(+)) \
                   & = 1/sqrt(2) (ket(1)(1/sqrt(2) (ket(0) - ket(1))) - ket(1)(1/sqrt(2) (ket(0) + ket(1)))) \
                   & = 1/2(ket(10) - ket(11) - ket(10) - ket(11)) \
                   & = -ket(11)
$

(b) It is obvious that for each possible outcomes $"Pr"[(a,b)] = 1 forall (a,b)$.
(c) Yes.
