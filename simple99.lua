--9.9.lua
gan=6.03
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
tt=10000
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
    --
    if (currentstreak<-95) then
        nextbet=previousbet
    end
end
end
