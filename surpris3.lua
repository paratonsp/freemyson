--
adiv=1.5
nextbet=0.0
chance = 2.49
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
chance=2.49
--
else
nextbet=0.0
div=1000000
a=div*adiv
base=balance/a
--
if (currentstreak==-40) then
      nextbet=base
      chance=2.49
    end
if (currentstreak<=-41) then
      nextbet=previousbet*1.03
      chance=2.49
    end
end
--
profitn=profit/(balance-profit)*100
print("\n"..string.format("%.2f",balance)..currency.."/"
      ..string.format("%.2f",profit)..currency..
      "("..string.format("%.2f",profitn).."%)\n")
--
end
function resetbet()
if (bet==25000) then
resetseed()
bethigh=!bethigh
bet=0
end
end
--
end
