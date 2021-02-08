--
adiv=9.9
nextbet=0.0
chance = 98
bethigh=true
bet=0
resetstats()
resetseed()
--
function dobet()
bet+=1
if win then
--
if (bet==25000) then
resetseed()
bethigh=!bethigh
bet=0
end
--
div=1000000
a=div*adiv
base=balance/a
nextbet=base
chance=0.01
--
else
multi=1.035
if nextbet>(base*10) then
multi=1.0325
end
if nextbet>(base*100) then
multi=1.03
end
if nextbet>(base*1000) then
multi=1.0275
end
--
if (currentstreak==-1) then nextbet=previousbet*multi; chance=0.09; end
if (currentstreak==-2) then nextbet=previousbet*multi; chance=0.19; end
if (currentstreak==-3) then nextbet=previousbet*multi; chance=0.29; end
if (currentstreak==-4) then nextbet=previousbet*multi; chance=0.39; end
if (currentstreak==-5) then nextbet=previousbet*multi; chance=0.49; end
if (currentstreak==-6) then nextbet=previousbet*multi; chance=0.59; end
if (currentstreak==-7) then nextbet=previousbet*multi; chance=0.69; end
if (currentstreak==-8) then nextbet=previousbet*multi; chance=0.79; end
if (currentstreak==-9) then nextbet=previousbet*multi; chance=0.89; end
if (currentstreak==-10) then nextbet=previousbet*multi; chance=0.99; end
if (currentstreak==-11) then nextbet=previousbet*multi; chance=1.09; end
if (currentstreak==-12) then nextbet=previousbet*multi; chance=1.19; end
if (currentstreak==-13) then nextbet=previousbet*multi; chance=1.29; end
if (currentstreak==-14) then nextbet=previousbet*multi; chance=1.39; end
if (currentstreak==-15) then nextbet=previousbet*multi; chance=1.49; end
if (currentstreak==-16) then nextbet=previousbet*multi; chance=1.59; end
if (currentstreak==-17) then nextbet=previousbet*multi; chance=1.69; end
if (currentstreak==-18) then nextbet=previousbet*multi; chance=1.79; end
if (currentstreak==-19) then nextbet=previousbet*multi; chance=1.89; end
if (currentstreak==-20) then nextbet=previousbet*multi; chance=1.99; end
if (currentstreak==-21) then nextbet=previousbet*multi; chance=2.09; end
if (currentstreak==-22) then nextbet=previousbet*multi; chance=2.19; end
if (currentstreak==-23) then nextbet=previousbet*multi; chance=2.29; end
if (currentstreak==-24) then nextbet=previousbet*multi; chance=2.39; end
if (currentstreak==-25) then nextbet=previousbet*multi; chance=2.49; end
if (currentstreak<=-25) then nextbet=previousbet*multi; chance=2.49; end
if (currentstreak==-425) then stop(); print("MAX STREAK")end
end
--
profitn=profit/(balance-profit)*100
print("\n"..string.format("%.2f",balance).." "..currency.." || "..string.format("%.2f",profit).." "..currency.." ("..string.format("%.2f",profitn).."%)\n")
end
