--
sabar=110
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
nextbet=0.0
--
else
nextbet=0.0
--
if (currentstreak==-1) then
      base=balance/sabar
      nextbet=base
    end
if (currentstreak==-2) then
      nextbet=previousbet*100
    end
if (currentstreak<=-3) then
      nextbet=0.0
    end
--
profitn=profit/(balance-profit)*100
print("\n"..string.format("%.2f",balance)..currency.."/"
      ..string.format("%.2f",profit)..currency..
      "("..string.format("%.2f",profitn).."%)\n")
end
end
function resetbet()
if (bet==25000) then
resetseed()
bethigh=!bethigh
bet=0
end
end
