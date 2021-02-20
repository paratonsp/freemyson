--
gan = 3000000
--int
base = balance/gan
nextbet = base
chance = 10
wincount = 0
losecount = 0
target = balance*1.033
bethigh = false
w = 0
roll = 0
--dobet
function dobet()
roll+=1
--target
if balance > target then
base = balance/gan
nextbet = base
chance = 10
wincount = 0
losecount = 0
target = balance*1.033
bethigh = false
w = 0
roll = 0
end
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
--roll
if roll>=50 then
resetseed()
end
end
--win streak 2
if wincount==2 then
    wincount = 0
    nextbet = previousbet*1.2
    chance = 5
end
if losecount >= 10 then
    chance = 15.9
end
end
end
end
