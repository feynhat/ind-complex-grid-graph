load('r-ind.sage')

for n in range(1, 11):
    G = graphs.Grid2dGraph(n, 4)
    for r in range(1, 2*n + 1):
        C = independence_complex(G, r)
        print('n = ', n, ', r = ', r, ', homology: ', C.homology())
