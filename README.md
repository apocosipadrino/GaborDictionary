# GaborDictionary

Create and display a Gabor dictionary.

A Gabor dictionary is a collection of Gabor atoms: Gaussian-windowed sinusoids spanning different scales, orientations, and phases. Each atom captures local frequency content at a specific position and direction, much like the edge detectors in the visual cortex. A dictionary is a set D of atoms which, combined with a sparse representation R of its elements, reconstructs a signal from a few coefficients. It is used for sparse signal representation, texture analysis, edge detection, and feature extraction. For more details see: https://en.wikipedia.org/wiki/Sparse_approximation

## Contents

- `gabor.m` — 1D sketch: builds a small dictionary of Gaussian-windowed cosines and reconstructs a signal from a single atom.
- `gabor02.m` — 1D time–frequency dictionary: synthesizes a signal from a few sparse coefficients and plots the synthesis and the coefficient map. Calls the helpers `envl` and `imageplot`, which are not included in this repo.
- `index.html` — Interactive visualizer for 2D Gabor atoms and the full filter bank (see below).

## Visualizer

Open `index.html` in any browser. Adjust wavelength, orientation, phase, sigma, aspect ratio, and kernel size; switch between the real part, imaginary part, and envelope; or click any atom in the dictionary grid to load it. With GitHub Pages enabled, it runs at https://apocosipadrino.github.io/GaborDictionary.
