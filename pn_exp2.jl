### A Pluto.jl notebook ###
# v0.19.15

using Markdown
using InteractiveUtils

# ╔═╡ 1bc6a916-6929-11ed-2763-d5101e354d1d
begin
	parallel(r1, r2) = r1*r2/(r1 + r2)
	pot(r, i) = r * (i^2)
	err(real, measured) = (real - measured)*100/real

	# discover the v of r1
	div_v(r1, r2, v) = v*r1/(r1 + r2)
	
	# discover the i of r1
	div_i(r1, r2, i) = i*r2/(r1 + r2)
	0
end

# ╔═╡ 69070440-23be-4ec8-99e3-3ba8ce78aea7
begin
	vs1 = 5
	vs2 = 10
	
	v1 = 3.086
	v2 = 3.4 * v1 - 6
	
	r1 = 1
	r2 = 1
	r3 = 1.2
	r4 = 1.5
	r5 = 1.8
	
end

# ╔═╡ e9420c0a-b019-4d18-b742-45218ded6cf7
begin
	rin = r1 + parallel(r2, r3)
	req = parallel(r2, r3)
	
	vab = div_v(r1, req, vs1)
	vbc = div_v(req, r1, vs1)
	
	i1 = (vs1 - v1) / r1
	i2 = v1 / r2
	i3 = (v1 - v2) / r3
	i4 = (v2 - vs2) / r4
	i5 = v2 / r5
	
	vr1 = v1 - vs1
	vr2 = v1 
	vr3 = v2 - v1
	vr4 = v2 - vs2 
	vr5 = v2

end

# ╔═╡ 281da595-cb85-4437-ade0-dfa547f8e506
begin
	real = [i1, i2, i3, i4, i5]
	med = [1.933, 3.124,-1.104,-3.707,2.514]
	errors = err.(real, med)
end

# ╔═╡ 3ee10511-70a1-468b-8d97-bcbceed3a513
begin
	
	p("Given that:")
	p("r1 = ", r1)
	p("r2 = ", r2)
	p("r3 = ", r3)
	p("r4 = ", r4)
	p("r5 = ", r5)
	
	p("\nWe can conclude that:")

	for (i, error) in enumerate(errors)
		# p("error[", i,"] = ", error, "%")
		p(round(error, digits=2))
	end
	p()
	
	
	p("v1 = ", v1)
	p("v2 = ", v2)
	
	p()
	p("i1 = ", i1, "mA")
	p("i2 = ", i2, "mA")
	p("i3 = ", i3, "mA")
	p("i4 = ", i4, "mA")
	p("i5 = ", i5, "mA")
	
	p()
	
	p("vr1 = ", vr1)
	p("vr2 = ", vr2)
	p("vr3 = ", vr3)
	p("vr4 = ", vr4)
	p("vr5 = ", vr5)
	
end

# ╔═╡ c7d71b91-27df-4dc8-a9ff-eb0fcccd8207
begin 	
	w = 1 / sqrt( 40 * 0.001)
	alfa = 1 / (40 * 4 * 0.001)
	s1 = -alfa + sqrt(alfa^2 - w^2)
	s2 = -alfa - sqrt(alfa^2 - w^2)
	
	p(w)
	p(alfa)
	p(s1)
	p(s2)
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
# ╠═e9420c0a-b019-4d18-b742-45218ded6cf7
# ╠═281da595-cb85-4437-ade0-dfa547f8e506
# ╠═3ee10511-70a1-468b-8d97-bcbceed3a513
# ╠═c7d71b91-27df-4dc8-a9ff-eb0fcccd8207
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
