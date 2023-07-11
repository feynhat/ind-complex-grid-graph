def independent_sets(g, r):
    V=g.vertices()
    ind=[]
    for i in range(1,r+1):
        for x in Subsets(V,i):
            ind.append(list(x))
    for i in range(r+1,len(V)):
        for x in Subsets(V,i):
            h=g.subgraph(x)
            a=h.connected_components_sizes()
            if a[0]<r+1:
                ind.append(list(x))
    return ind

def independence_complex(g, r):
    return SimplicialComplex(independent_sets(g, r))
