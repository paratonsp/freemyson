gan    = 1000000
dompet = "DFnVezCcWYHsrju7gCrcw4gMSSPKch3sN8"
target = 101
mtarget= 11
simpan = balance-(target-mtarget)
--
nextbet  = balance/gan
chance   = 65   --chance
if_win   = 1.16 --if win
if_lose  = 1.40 --if lose
streak   = 3    --streak
bethigh  = false
wincount = 0
resetseed()
resetstats()

function dobet()
--
if (balance>target) then
    simpan = balance-(target-mtarget)
    withdraw(simpan,dompet)
    nextbet = balance/gan
end
--
if nextbet>balance then stop() end
--
if (wincount==50) then
   resetseed()
   wincount = 0
end
--
if win then
    if (currentstreak>=streak) then
        chance  = math.random(6400,6600)/100
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
