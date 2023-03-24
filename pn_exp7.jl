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
	p_arr(arr, str="") = p(str * join(round.(arr, digits=4), ", "))
	"Functions!"
end

# ╔═╡ 69070440-23be-4ec8-99e3-3ba8ce78aea7
begin
	
	r = [1000, 2200]
	c = [100e-9, 100e-9]
	
	"Declarations!"
end

# ╔═╡ da2fcf10-2917-4175-a3b5-d359a9245e51
begin
	
	rm = [996, 2177] # Ohms
	cm = [100.3e-9, 103.3e-9] # F

	f = [3000, 1500, 5600]

	p_arr(err.(r, rm), "R1 e R2: ")
	p_arr(err.(c, cm), "C1 e C2: ")
	
	"Declarations!"
end

# ╔═╡ f6196a4e-ad83-44e0-ae66-cdda80a19080
begin

	"Calculations!"
end

# ╔═╡ 281da595-cb85-4437-ade0-dfa547f8e506
begin

	
	"More Complicate Calculations"
end

# ╔═╡ 3ee10511-70a1-468b-8d97-bcbceed3a513
begin
	
	p("Given that:")

	
	p("\nWe can conclude that:")

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
# ╠═da2fcf10-2917-4175-a3b5-d359a9245e51
# ╠═f6196a4e-ad83-44e0-ae66-cdda80a19080
# ╠═281da595-cb85-4437-ade0-dfa547f8e506
# ╠═3ee10511-70a1-468b-8d97-bcbceed3a513
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
