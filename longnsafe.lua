div = 1000000
base = balance/div
nextbet = base
chance = 0.01
multi = 1.0666666
bethigh = true
----------------
resetstats()
function dobet()
base = balance/div
if win then
nextbet = base
chance = 0.01
bethigh = !bethigh
else
nextbet = previousbet*multi
 if (currentstreak==-1) then
    chance=0.02 end
 if (currentstreak==-2) then
    chance=0.03 end
 if (currentstreak==-3) then
    chance=0.04 end
 if (currentstreak==-4) then
    chance=0.05 end
 if (currentstreak==-5) then
    chance=0.06 end
 if (currentstreak==-6) then
    chance=0.07 end
 if (currentstreak==-7) then
    chance=0.08 end
 if (currentstreak==-8) then
    chance=0.09 end
 if (currentstreak==-9) then
    chance=0.1 end
 if (currentstreak==-10) then
    chance=0.2 end
 if (currentstreak==-11) then
    chance=0.3 end
 if (currentstreak==-12) then
    chance=0.4 end
 if (currentstreak==-13) then
    chance=0.5 end
 if (currentstreak==-14) then
    chance=0.6 end
 if (currentstreak==-15) then
    chance=0.7 end
 if (currentstreak==-16) then
    chance=0.8 end
 if (currentstreak==-17) then
    chance=0.9 end
 if (currentstreak==-18) then
    chance=1.0 end
 if (currentstreak==-19) then
    chance=1.1 end
 if (currentstreak==-20) then
    chance=1.2 end
 if (currentstreak==-21) then
    chance=1.3 end
 if (currentstreak==-22) then
    chance=1.4 end
 if (currentstreak==-23) then
    chance=1.5 end
 if (currentstreak==-24) then
    chance=1.6 end
 if (currentstreak==-25) then
    chance=1.7 end
 if (currentstreak==-26) then
    chance=1.8 end
 if (currentstreak==-27) then
    chance=1.9 end
 if (currentstreak==-28) then
    chance=2.0 end
 if (currentstreak==-29) then
    chance=3.0 end
 if (currentstreak==-30) then
    chance=4.0 end
 if (currentstreak==-31) then
    chance=4.95 end
 if (currentstreak<=-31) then
    chance=4.95 end
end
profitn = profit/(balance-profit)*100
print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
print("Balance: "..string.format("%.5f",balance).." "..currency)
print("Profit: "..string.format("%.5f",profit).." ("..string.format("%.2f",profitn).."%)")
print("Seed: "..nonce)
print("Current Streak: "..currentstreak)
print(" ")
end
