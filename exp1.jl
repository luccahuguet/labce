include("functions.jl")

vac = 6

r1 = 1
r2 = 1
r3 = 1.2
rin = r1 + parallel(r2, r3)

real1 = 
med1 = 3.918

real2 = 2.1176
med2 = 2.119

real3 = 1.7647
med3 = 1.802

real4 = 0.002
med4 = 0

err1 = err(real1, med1)
err2 = err(real2, med2)
err3 = err(real3, med3)
err4 = err(real4, med4)

req = parallel(r2, r3)

vab = div_v(r1, req, vac)
vbc = div_v(req, r1, vac)

i1 = vac/rin 
i2 = div_i(r2, r3, i1)
i3 = div_i(r3, r2, i1)

println("Given that:")
println("r1 = ", r1)
println("r2 = ", r2)

println("\nWe can conclude that:")
println("rin  = ", rin )

println("err1 = ", err1, "%")
println("err2 = ", err2, "%")
println("err3 = ", err3, "%")
println("err4 = ", err4, "%")

println("vab = ", vab)
println("vbc = ", vbc)
println("sum = ", vbc + vab)

println("i1 = ", i1, "A")
println("i2 = ", i2, "A")
println("i3 = ", i3, "A")

pot1 = vac * i1
pot2 = vab * i1
pot3 = vbc * i2
pot4 = vbc * i3

sum2 = pot1 - pot2 - pot3 - pot4
println("sum2 = ", sum2)

pot1= 6.003 * 3.918
pot2= 3.871 * 3.918
pot3= 2.130 * 2.119
pot4= 2.130 * 1.802

sum2 = pot1 - pot2 - pot3 - pot4
println("sum2 = ", sum2)
println(" vbc * i3 = ", vbc * i3)

println(" err(req, 543.36) =", err(req, 0.54336))
println(" err(rin, 1528.50) =", err(rin, 1.52850))
