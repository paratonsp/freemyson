nextbet=0.0
chance = 98
bethigh=true
b=0
resetstats()
function dobet()
if win then
nextbet=0.0
else
nextbet=0.0
if (currentstreak==-3) then
nextbet=balance; bethigh=!bethigh; end end
profitn=profit/(balance-profit)*100
print("\n("..string.format("%.2f",profitn)
.."%)\n")
end
