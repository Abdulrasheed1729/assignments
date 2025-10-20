#import "@preview/quill:0.7.2": *
#import "@preview/physica:0.9.6": *

#show math.equation: set block(breakable: true)

== Question 7
$
  #quantum-circuit(
    gate-padding: 0.7em,
    column-spacing: 20pt,
    lstick($ket(0)$),
    gate($H$),
    ctrl(1),
    gate($H$),
    meter(),
    setwire(2),
    [\ ],
    lstick($ket(phi.alt)$),
    1,
    swap(1),
    [\ ],
    lstick($ket(psi)$),
    1,
    swap(),
    slice(x: 2, n: 3, y: 0, stroke: (paint: rgb("#b3b006"), dash: "dashed"), label: $ket(chi_1)$),
    slice(x: 3, n: 3, y: 0, stroke: (paint: rgb("#ff36de"), dash: "dashed"), label: $ket(chi_2)$),
    slice(x: 4, n: 3, y: 0, stroke: (paint: teal, dash: "dashed"), label: $ket(chi)$),
  )
$
1. The CSWAP at the middle reverse the tensor operation of $ket(phi.alt)$ and $psi$.
2. After the first $H$ we have the following:
$
  ket(chi_1) & = (II times.circle II times.circle H) ket(psi)ket(phi.alt)ket(0) \
             & = (II times.circle II times.circle H) ket(psi phi.alt 0) \
             & = ket(psi phi.alt) 1/sqrt(2) (ket(0) + ket(1)) \
             & = 1/sqrt(2) (ket(psi phi.alt 0) + ket(psi phi.alt 1)) \
$

applying the CSWAP we have the following:
$
  ket(chi_2) & = "CSWAP" ket(chi_1) = "CSWAP" 1/sqrt(2) (ket(psi phi.alt 0) + ket(psi phi.alt 1)) \
             & = 1/sqrt(2) (ket(psi phi.alt 0) + ket(phi.alt psi 1)) \
$
Lastly $ket(chi)$ is given as follows:
$
  ket(chi) & = (II times.circle II times.circle H) ket(chi_2) \
           & = (II times.circle II times.circle H) 1/sqrt(2) (ket(psi phi.alt 0) + ket(phi.alt psi 1)) \
           & = (II times.circle II times.circle H) 1/sqrt(2) (ket(psi phi.alt) ket(0) + ket(phi.alt psi)ket(1)) \
           & = 1/sqrt(2) (ket(psi phi.alt)(1/sqrt(2) (ket(0) + ket(1))) +ket(phi.alt psi)(1/sqrt(2) (ket(0) - ket(1))) ) \
           & = 1/2 (ket(psi phi.alt) + ket(phi.alt psi)) ket(0) + 1/2(ket(psi phi.alt) - ket(phi.alt psi)) ket(1)
$

3.
$
  "Pr"(\"0\") & =1/2 (bra(psi phi.alt) + bra(phi.alt psi)) 1/2 (ket(psi phi.alt) + ket(phi.alt psi)) \
              & =1/4 (2 + braket(psi phi.alt) + braket(phi.alt psi)) \
              & = 1/4 (2 + braket(psi, phi.alt) braket(phi.alt, psi) + braket(phi.alt, psi) braket(psi, phi.alt)) \
              & = 1/4 (2 + 2 braket(psi, phi.alt) braket(phi.alt, psi)) \
              & = 1/2 + 1/2 braket(psi, phi.alt) overline(braket(phi.alt, psi)) \
              & = 1/2 + 1/2 abs(braket(psi, phi.alt))^2
$

4. This gate can be used for comparison of two states.
