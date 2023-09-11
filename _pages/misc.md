---
layout: page
permalink: /misc/
title: misc
description: mis·cel·la·ne·a
nav: true
nav_order: 5
---

* [Errata](https://nquesada.github.io/errata/) of some of my papers.
* [Solutions](https://github.com/nquesada/Goldstein) to some of H. Goldstein's Classical Mechanics book problems.
* Some useful equations in [Atomic Physics](https://nquesada.github.io/misce/atomic.pdf).
* [&nabla; in cylindrical and spherical coordinates](https://nquesada.github.io/misce/DelFixed.pdf).
* The classical version of [a and a<sup>&#8224;</sup>](https://nquesada.github.io/misce/sho.pdf).
* The [normal ordered form of [(a+a<sup>&#8224;</sup>)<sup>n</sup>](https://nquesada.github.io/misce/normal.pdf).
* [An identity](https://nquesada.github.io/misce/erfi.pdf) involving the imaginary error function erfi(x) (with Aaron Goldberg).
* A collection of [short stories](https://github.com/nquesada/TomasCarrasquilla) by [Tom&aacute;s Carrasquilla](http://en.wikipedia.org/wiki/Tom%C3

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