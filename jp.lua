--
gan = 100000000
--int
base = balance/gan
nextbet = base
chance = 10
wincount = 0
losecount = 0
bethigh = false
w = 0
--
resetseed()
resetstats()
--dobet
function dobet()
roll+=1
--resetseed/bethigh
if (w==16) then
    resetseed()
    bethigh = !bethigh
    w = 0
end
--win
if win then
    w+=1
    wincount+=1
    nextbet = base
    chance = 10
    losecount = 0
 else
    wincount = 0
    losecount+=1
    nextbet = previousbet*1.3
end
--win streak 2
if (wincount==2) then
    wincount = 0
    nextbet = previousbet*1.2
    chance = 5
end
if (losecount>=10) then
    chance = 15.9
end
print(..balance
.." "..string.upper(currency)
end
end
end
