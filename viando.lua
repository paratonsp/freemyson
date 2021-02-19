gan     = 2500000
nextbet = balance/gan
chance  = 55   --chance
if_win  = 1.27 --if win
if_lose = 1.40 --if lose
streak  = 3    --streak
bethigh = false
resetseed()
resetstats()

function dobet()
--
if win then
    if (currentstreak>=streak) then
        if (lastBet.nonce>=1000) then
        resetseed() end
        chance  = math.random(5500,6000)/100
        bethigh = !bethigh
        nextbet = balance/gan
    else
        nextbet = previousbet*if_win
    end
end
--
if !win then
    nextbet = previousbet*if_lose
end
profitn=profit/(balance-profit)*100
print("\n"..string.format("%.8f",profit)
.." "..string.upper(currency).." ("
..string.format("%.2f",profitn).."%)")
end
