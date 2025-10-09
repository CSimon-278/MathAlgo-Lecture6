# FIR Filter Types – Exercise 11

This project explores the four types of FIR filters (Type I–IV) by analyzing their impulse responses, magnitude and phase responses, and pole-zero diagrams. Each filter type is defined by its symmetry and length, which directly affect its linear-phase characteristics.

## 🔍 Filter Definitions

- **Type I**: Even length, symmetric → `h1 = [1 2 3 4 4 3 2 1]`
- **Type II**: Odd length, symmetric → `h2 = [1 2 3 4 3 2 1]`
- **Type III**: Even length, antisymmetric → `h3 = [-1 -2 -3 -4 3 3 2 1]`
- **Type IV**: Odd length, antisymmetric → `h4 = [-1 -2 -3 0 3 2 1]`

## 📊 Results

Each filter was analyzed using MATLAB’s `freqz` and `zplane` functions. The figures include:

- **Magnitude Response**: `abs(H)`
- **Phase Response**: `unwrap(angle(H))`
- **Zero Plot**: `zplane(h,1)`

## 🧠 Observations

- Symmetric filters (Type I & II) exhibit linear phase.
- Antisymmetric filters (Type III & IV) show phase discontinuities.
- Filter length (even vs. odd) affects the symmetry point and zero placement.

## 📷 Screenshots

Include screenshots of:
- Magnitude and phase subplot figure
- Zero plot figure

# FIR Low-Pass Filter Design – Exercise 12

This project implements and compares FIR low-pass filters using the direct formula for impulse response. Two filter orders (M = 20 and M = 64) were tested to observe how filter length affects frequency response sharpness.

## 📐 Filter Formula

The impulse response is defined as:

```matlab
h_LP(n) = sin(wc*(n - M/2)) / (pi*(n - M/2));
h_LP(M/2) = wc/pi;  % Special case to avoid division by zero```

## 📐 Parameters

- Filter orders: `M = 20` and `M = 64`
- Cutoff frequency: `wc = 1` (radians)
- Sample index: `n = 0:M`

