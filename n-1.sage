load('r-ind.sage')

for n in range(1, 9):
    G = graphs.Grid2dGraph(n, 2)
    C = independence_complex(G, n)
    print('n = ', n, ', (n-1)th homology of Ind_n(G_(2xn)): ', C.homology()[n-1])
