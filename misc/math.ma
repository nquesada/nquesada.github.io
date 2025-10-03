
BC[{c1_,b1_,A1_},{c2_,b2_,A2_}]:=Module[{cc1,dd1,cc2,dd2,BB1,CC1,CC1T,DD1,BB2,CC2,CC2T,DD2,Y,Z},
{cc1,dd1} = b1;
{cc2,dd2} = b2;
{{BB1,CC1},{CC1T,DD1}} = A1;
{{BB2,CC2},{CC2T,DD2}} = A2;
Y = IdOp - BB2**DD1;
Z = {{Inverse[Y]**BB2, Inverse[Y]},{Inverse[Transpose[Y]],DD1**Inverse[Y]}};
cnet = c1 c2 Exp[1/2 ncbm[{{dd1,cc2}},ncbm[Z,{{dd1},{cc2}}]]]/Sqrt[Det[Y]];
bnet = {{cc1},{dd2}}+ncbm[ncbm[{{CC1,0},{0,CC2T}},Z],{{dd1},{cc2}}];
Anet = {{BB1,0},{0,DD2}} + ncbm[{{CC1,0},{0,CC2T}},ncbm[Z,{{CC1T,0},{0,CC2}}]];
{cnet,Flatten[bnet],Anet}

]