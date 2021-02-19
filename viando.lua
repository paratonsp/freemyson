gan      = 2500000
nextbet  = balance/gan
chance   = 55   --chance
if_win   = 1.27 --if win
if_lose  = 1.40 --if lose
streak   = 3    --streak
bethigh  = false
wincount = 0
resetseed()
resetstats()

function dobet()
--
if (wincount==500) then
   resetseed()
   wincount = 0
--
if win then
    if (currentstreak>=streak) then
        chance  = math.random(5500,6000)/100
        bethigh = !bethigh
        nextbet = balance/gan
    else
        nextbet = previousbet*if_win
    end
    wincount+=1
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
