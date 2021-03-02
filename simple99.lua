--9.9.lua
gan=2
--
div=100000*gan
base=balance/div
nextbet=base
chance=9.9
--
resetstats()
--
function dobet()
--
tt=100000000
chance=math.random(9.9*tt,10*tt)/tt
--
if win then
    base=balance/div
    nextbet=base
    bethigh=!bethigh
else
    if (currentstreak<-5) then
        nextbet=previousbet*1.125
    end
end
if nextbet>(base*100) then sleep(1000) end
end
