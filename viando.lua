gan     = 2500000
nextbet = balance/gan
chance  = 65   --chance
if_win  = 1.27 --if win
if_lose = 1.40 --if lose
streak  = 3    --streak
bethigh = false
resetstats()

function dobet()

if (lastBet.nonce>=1000) then
    resetseed() end

if win then
    if (currentstreak>=streak) then
        chance  = math.random(6000,6500)/100
        bethigh = !bethigh
        nextbet = balance/gan
    else
        nextbet = previousbet*if_win
    end
end

if !win then
    nextbet = previousbet*if_lose
end
end
