def nerve(family):
	vertices = list(range(len(family)))
	nerve_complex = [[]]
	for i in range(1, len(family) + 1):
		for s in Subsets(vertices, i):
			intersect = family[s[0]]
			for j in s:
				intersect = intersect.intersection(family[j])
			if len(intersect) > 0:
				nerve_complex.append(Set(s))
	return SimplicialComplex(nerve_complex)
