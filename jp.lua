base = balance/1000000
nextbet = base
chance = 10
wincount = 0
losecount = 0
target = balance*1.033
bethigh = false
w = 0
roll=0
--
function dobet()
roll+=1
--
if balance > target then
base = balance/1000000
nextbet = base
chance = 10
wincount = 0
losecount = 0
target = balance*1.033
bethigh = false
w = 0
roll=0
end
--
if (w==16) then
    resetseed()
    bethigh = !bethigh
    w = 0
end
--
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
--
if roll>=50 then
resetseed()
end
end
--
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
