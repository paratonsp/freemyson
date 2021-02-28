div = 4000000
--
base = balance/div
nextbet = base
chance = 8.756789
multi = 1.14
cl = 8.756789
cr = 10
--
resetstats()
--
function dobet()
--
chance = math.random(cl*100.0, cr*100.0)/100.0
--
if win then
    base = balance/div
    nextbet = base
else
    nextbet = previousbet*multi
end
end
