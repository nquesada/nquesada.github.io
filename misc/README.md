# mis·cel·la·ne·a

* [Solutions](https://github.com/nquesada/Goldstein) to some of H. Goldstein's Classical Mechanics book problems. The compiled pdf can be found [here](https://nquesada.github.io/misc/solutions.pdf).
* Some useful equations in [Atomic Physics](https://nquesada.github.io/misc/atomic.pdf).
* A conversion chart for [squeezing in different units](https://nquesada.github.io/misc/squeezing.pdf).
* [&nabla; in cylindrical and spherical coordinates](https://nquesada.github.io/misc/DelFixed.pdf) originally from [wikipedia in html](https://en.wikipedia.org/wiki/Del_in_cylindrical_and_spherical_coordinates).
* The classical version of [a and a<sup>&#8224;</sup>](https://nquesada.github.io/misc/sho.pdf).
* The normal ordered form of [(a+a<sup>&#8224;</sup>)<sup>n</sup>](https://nquesada.github.io/misc/normal.pdf).
* [An identity](https://nquesada.github.io/misc/erfi.pdf) involving the imaginary error function erfi(x) (with Aaron Goldberg).
* A collection of [short stories](https://github.com/nquesada/TomasCarrasquilla) by [Tom&aacute;s Carrasquilla](https://en.wikipedia.org/wiki/Tom%C3%A1s_Carrasquilla)

```python
# Things to put at the beginning of a jupyter notebook
import numpy as np
import matplotlib.pyplot as plt
%config InlineBackend.figure_formats=['svg']
%load_ext autoreload
%autoreload 2
np.set_printoptions(linewidth=200)
#plt.style.use('ggplot')
#from matplotlib import rcParams
#rcParams['font.family'] = 'serif'
#rcParams['font.sans-serif'] = ['Computer Modern Roman']
```

```
GaussianIntegrator[{coeff_, exp_}, var_] := 
 Module[{a, b, c, aa, bb, cc},
  {c, b, a} = Series[exp + aa var^2 + var bb + cc, {var, 0, 2}][[3]];
  {coeff Sqrt[\[Pi]/-a], (b^2)/(-4 a) + c} /. {aa -> 0, bb -> 0, 
    cc -> 0}]

gi=GaussianIntegrator

psi[n_,x_]:=Sqrt[1/(2^n n! Sqrt[Pi])] Exp[-x^2/2] HermiteH[n,x]


NonCommutativeBlockMultiply[A_,B_]:=Module[{n,m,k,l},
{n,m} = Dimensions[A];
{k,l} =Dimensions[B];
Assert[m==k];
Table[Sum[A[[i,u]]**B[[u,j]],{u,m}],{i,n},{j,l}]
]
```
