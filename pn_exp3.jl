### A Pluto.jl notebook ###
# v0.19.15

using Markdown
using InteractiveUtils

# ╔═╡ 1bc6a916-6929-11ed-2763-d5101e354d1d
begin
	pll(r1, r2) = r1*r2/(r1 + r2)
	pot(r, i) = r * (i^2)
	err(real, measured) = (real - measured)*100/real
 
	# returns the v of r1
	div_v(r1, r2, v) = v*r1/(r1 + r2)
	
	# returns the i of r1
	div_i(r1, r2, i) = i*r2/(r1 + r2)

	# p(x) = println(round(x, digits=2))
	p(x) = println(x)
	p_arr(arr) = p(join(round.(arr, digits=3), "\n"))
	"Functions!"
end

# ╔═╡ 69070440-23be-4ec8-99e3-3ba8ce78aea7
# situation A
begin
	Vs = [5, 10]
	Vsm = [5.001, 9.987]

	V1 = 3.086
	V = [V1, 3.4 * V1 - 6]
	Vm = [3.091, 4.482]
	
	r = [1, 1, 1.2, 1.5, 1.8]
	rm = [0.992, 0.997, 1.181, 1.482, 1.765]
	
	"Declarations!"
end

# ╔═╡ 43520e92-6dbd-4fba-8a50-17582f987010
# situation B
begin
	
	V1b = 3.086
	Vb = [V1b, 3.4 * V1b - 6]
	Vbm = [3.091, 4.482]
	
	err_Vb = err.(Vb, Vbm)
	p(err_Vb)
	
	"Declarations!"
end

# ╔═╡ f6196a4e-ad83-44e0-ae66-cdda80a19080
begin

	err_r = err.(r, rm)
	# p(err_r)

	err_vs = err.(Vs, Vsm)
	# p(err_vs)
	# p(V)

	err_V = err.(V, Vm)
	p(err_V)
	
	"Calculations!"
end

# ╔═╡ e9420c0a-b019-4d18-b742-45218ded6cf7
begin
	# rin = r1 + pll(r2, r3)
	# req = pll(r2, r3)
	
	# vab = div_v(r1, req, vs1)
	# vbc = div_v(req, r1, vs1)
	
	i1 = (Vs[1] - V[1]) / r[1]
	i2 = V[1] / r[2]
	i3 = (V[1] - V[2]) / r[3]
	i4 = (V[2] - Vs[2]) / r[4]
	i5 = V[2] / r[5]

	i = [i1, i2, i3, i4, i5]
	im = i

	req = pll(pll(r[1], r[2],) + r[3], r[4])

	p6 = [2.656, 8.127, 0.797, 0.3268]
	p6m = [2.578, 8.223, 0.790, 0.3135]
	err_p6 = err.(p6, p6m)
	# p_arr(err_p6)

	p_arr([err(-1.33, -1.43),
		err(2.497, 2.533)])




	
	# vr1 = v1 - vs1
	# vr2 = v1 
	# vr3 = v2 - v1
	# vr4 = v2 - vs2 
	# vr5 = v2

	# err_r = err.(r, rm)
	"Calculations!"
end

# ╔═╡ 281da595-cb85-4437-ade0-dfa547f8e506
begin
	# real = [i1, i2, i3, i4, i5]
	# med = [1.933, 3.124,-1.104,-3.707,2.514]
	# errors = err.(real, med)
	
	"More Complicate Calculations"
end

# ╔═╡ 3ee10511-70a1-468b-8d97-bcbceed3a513
begin
	
	println("Given that:")
	# println("r1 = ", r1)
	# println("r2 = ", r2)
	# println("r3 = ", r3)
	# println("r4 = ", r4)
	# println("r5 = ", r5)
	
	println("\nWe can conclude that:")

	# for (i, error) in enumerate(errors)
	# 	# println("error[", i,"] = ", error, "%")
	# 	println(round(error, digits=2))
	# end
	println()
	
	
	# println("v1 = ", v1)
	# println("v2 = ", v2)
	
	println()
	println("i1 = ", i1, "mA")
	println("i2 = ", i2, "mA")
	println("i3 = ", i3, "mA")
	println("i4 = ", i4, "mA")
	println("i5 = ", i5, "mA")
	
	p(req)
	
	# println("vr1 = ", vr1)
	# println("vr2 = ", vr2)
	# println("vr3 = ", vr3)
	# println("vr4 = ", vr4)
	# println("vr5 = ", vr5)
	"Printing the Results"
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.3"
manifest_format = "2.0"
project_hash = "da39a3ee5e6b4b0d3255bfef95601890afd80709"

[deps]
"""

# ╔═╡ Cell order:
# ╠═1bc6a916-6929-11ed-2763-d5101e354d1d
# ╠═69070440-23be-4ec8-99e3-3ba8ce78aea7
# ╠═43520e92-6dbd-4fba-8a50-17582f987010
# ╠═f6196a4e-ad83-44e0-ae66-cdda80a19080
# ╠═e9420c0a-b019-4d18-b742-45218ded6cf7
# ╠═281da595-cb85-4437-ade0-dfa547f8e506
# ╠═3ee10511-70a1-468b-8d97-bcbceed3a513
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
