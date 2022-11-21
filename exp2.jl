

include("functions.jl")

vs1 = 5
vs2 = 10

v1 = 3.086
v2 = 3.4 * v1 - 6


r1 = 1
r2 = 1
r3 = 1.2
r4 = 1.5
r5 = 1.8
rin = r1 + parallel(r2, r3)

real1 = r1 
med1 = 0.996

real2 = r2
med2 = 0.983

real3 = r3
med3 = 1.182

real4 = r4
med4 = 1.485

real5 = r5
med5 = 1.783

err1 = err(real1, med1)
err2 = err(real2, med2)
err3 = err(real3, med3)
err4 = err(real4, med4)
err5 = err(real5, med5)

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

println("Given that:")
println("r1 = ", r1)
println("r2 = ", r2)

println("\nWe can conclude that:")

println("err1 = ", err1, "%")
println("err2 = ", err2, "%")
println("err3 = ", err3, "%")
println("err4 = ", err4, "%")
println("err5 = ", err5, "%")
println()


println("v1 = ", v1)
println("v2 = ", v2)

println()
println("i1 = ", i1, "mA")
println("i2 = ", i2, "mA")
println("i3 = ", i3, "mA")
println("i4 = ", i4, "mA")
println("i5 = ", i5, "mA")

println()

println("vr1 = ", vr1)
println("vr2 = ", vr2)
println("vr3 = ", vr3)
println("vr4 = ", vr4)
println("vr5 = ", vr5)
