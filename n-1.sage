load('r-ind.sage')

for n in range(1, 10):
    G = graphs.Grid2dGraph(n, 3)
    C = independence_complex(G, n)
    #print(C)
    print('n = ', n, ', (n-1)th homology of Ind_n(G_(2xn)): ', C.homology(dim=n-1, algorithm='pari'))
