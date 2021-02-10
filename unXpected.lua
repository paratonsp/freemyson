--
nextbet=0.0
chance=98
resetstats()
resetseed()
--
function dobet()
if win then
    nextbet=0.0
    print("SCANNING SEED!!! || Bets: "..bets)
else
    nextbet=0.0
    print("SCANNING SEED!!! || Bets: "..bets)
end
--
if win and (bets>=25000) then
    nextbet=0.0
end
--
if !win and (bets>=25000) then
-- WORSTSTREAK==-1
if (worststreak==-1) then
    if (currentstreak==-1) then
    nextbet=balance/1
    end
end
-- WORSTSTREAK==-2
if (worststreak==-2) then
    if (currentstreak==-1) then
    nextbet=balance/100
    end
    if (currentstreak==-2) then
    nextbet=previousbet*99
    end
end
-- WORSTSTREAK==-3
if (worststreak==-3) then
    stop()
    print("NOT PROFITABLE")
end
print("\n"..string.format("%.2f",profit)..currency
    .."("..string.format("%.2f",profitn).."%)\n")
end
if (bets>=1000000) then stop() end
end
