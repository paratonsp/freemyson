div=600000
bet=25000
nextbet=0.0
chance = 90
bethigh=true
b=0
resetstats()
resetseed()
function dobet()
b+=0
if (b>=bet) then
print(" ")
resetseed()
b=0
end
if win then
nextbet=balance/div
else
nextbet=previousbet*12
end
profitn=profit/(balance-profit)*100
print("\n"..string.format("%.2f",balance)
..currency.."/"..string.format("%.2f",profit)
..currency.."("..string.format("%.2f",profitn)
.."%)\n")
end
