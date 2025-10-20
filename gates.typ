#import "@preview/circuiteria:0.2.0": *
== Hello
// #set page(width: auto, height: auto, margin: 1em)

#circuit({
  // Input wires
  wire.wire("in-a", ((0, 1), (0, 3)))
  wire.wire("in-b", ((0, 0), (1, 2)))

  // XOR gate
  gates.gate-and(x: 0, y: 0, w: 1.5, h: 1.5)

  // Output wire
  wire.wire("out", ((4, 0.5), (6.5, 9)), name: "Y")
})
