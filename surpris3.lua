--botspeed=1
nextbet=0.0
chance = 98
bethigh=true
b=0
resetstats()
resetseed()
function dobet()
b+=1
if (b>=60) then
print(" ")
resetseed()
bethigh=!bethigh
b=0
end
if win then
nextbet=0.0
else
nextbet=0.0
if (currentstreak==-1) then
nextbet=balance end end
profitn=profit/(balance-profit)*100
print("\n"..string.format("%.2f",balance)
..currency.."/"..string.format("%.2f",profit)
..currency.."("..string.format("%.2f",profitn)
.."%)\n")
end
