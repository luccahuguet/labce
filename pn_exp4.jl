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

	macro name(arg)
	    x = string(arg)
	    quote
	        $x
	    end
	end
	# p(x) = println(round(x, digits=2))
	p(x) = println(x)
	p_arr(arr) = p(join(round.(arr, digits=4), "\n"))
	"Functions!"
end

# ╔═╡ 69070440-23be-4ec8-99e3-3ba8ce78aea7
begin
	
	r = [1000, 47]
	C = [33e-9]
	L = 1e-3
	f = [3000, 1500, 5600]
	Vpp = 2
	Voff = 0
	
	"Declarations!"
end

# ╔═╡ da2fcf10-2917-4175-a3b5-d359a9245e51
begin
	
	rm = [994.55, 47.06]
	cm = [33.28e-9] #nF
	Lm = 1.01e-3 #mH
		
	fm = [1, 1, 1]
	Vppm = 2
	Voffm = 0

	tau = r[1] * C[1]
	tau = [0, tau, tau*2, tau*3]

	p(Lm)
	p(tau)
	
	"Declarations!"
end

# ╔═╡ c420e6f8-0721-4902-afd0-bf1b531c7b2e
begin

	zetta = r[2]*sqrt(C[1]/L[1])
	w0 = 1 / sqrt(L[1]*C[1])

	# tau1 = (1 / w0)*(zetta - sqrt(zetta^2 - 1))
	# tau2 = (1 / w0)*(zetta + sqrt(zetta^2 - 1))
	tau3 =  1/(w0*zetta)

	p(zetta)
	p(w0)
	# p(tau1)
	p(tau3)
	"Declarations!"
end

# ╔═╡ f6196a4e-ad83-44e0-ae66-cdda80a19080
begin
	errs = err.(r, rm)
	p_arr(errs)
	
	err_c = err.(c, cm)
	p_arr(err_c)
	
	errs = err.(L, Lm)
	p_arr(errs)

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
# ╠═c420e6f8-0721-4902-afd0-bf1b531c7b2e
# ╠═f6196a4e-ad83-44e0-ae66-cdda80a19080
# ╠═281da595-cb85-4437-ade0-dfa547f8e506
# ╠═3ee10511-70a1-468b-8d97-bcbceed3a513
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
