--
adiv=10
nextbet=0.0
chance = 98
bethigh=true
bet=0
resetstats()
resetseed()
--
function dobet()
bet+=1
--
if win then
resetbet()
div=1000000
a=div*adiv
base=balance/a
nextbet=base
chance=0.01
--
else
previouschance=chance
chance=previouschance+0.02
nextbet=previousbet
--
if (currentstreak<=-26) then
      nextbet=previousbet*1.05
      chance=2.49
    end
if (currentstreak<=-51) then
      nextbet=previousbet*1.04
      chance=2.49
    end
end
if (currentstreak<=-76) then
      nextbet=previousbet*1.03
      chance=2.49
    end
end
--
profitn=profit/(balance-profit)*100
print("\n"..string.format("%.2f",balance)..currency.."/"..string.format("%.2f",profit)..currency.." ("..string.format("%.2f",profitn).."%)\n")
function resetbet()
if (bet==25000) then
resetseed()
bethigh=!bethigh
bet=0
end
end
--
end
