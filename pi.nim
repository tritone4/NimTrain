import strutils, random

# 円周率近似計算

var length : float
var s : string

echo "Enter N : "
var N : int = readLine(stdin).parseInt
# var N : int = s.parseInt
let delta : float = 1.0 / N.toFloat
var cnt : int = 0

randomize()

proc rangeCheck(x,y:float) : string =
  if ((x*delta)*(x*delta) + (y*delta)*(y*delta)) > 1.0 : "[Out!]"
  else :
    cnt = cnt + 1
    "[In!]"
  
for x in 0..N:
    for y in 0..N:
      s = rangeCheck(rand(N).toFloat, rand(N).toFloat)

echo "total : ", N*N, " cnt : ", cnt
echo "Pi = ", 4.0 * cnt.toFloat / (N*N).toFloat
