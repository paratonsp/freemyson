gan=2 --ls90
--
div=100000*gan
base=balance/div
nextbet=base
preroll=5
chance=9.9
multiplier=1.125
--
resetstats()
--
function dobet()
--
chance=math.random(9.9*10000,10*10000)/10000
--
if win then
    base=balance/div
    nextbet=base
else
    if (currentstreak<-preroll) then
        nextbet=previousbet*multiplier
    end
end
end
