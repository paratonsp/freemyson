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
if win then
    base=balance/div
    nextbet=base
    bethigh=!bethigh
else
    if (currentstreak<-5) then
        sleep(1200)
        nextbet=previousbet*1.125
    end
end
end
