gan=20
--
div=100000*gan
base=balance/div
nextbet=base
chance=10.00
multi=1.125
bethigh=true
--
resetstats()
--
function dobet()
--
if win then
    base=balance/div
    nextbet=base
    chance=10.00
    multi=1.125
    bethigh=!bethigh
else
    pc=chance
    pm=multi
    chance=pc+0.10
    multi=pm+0.00125
    nextbet=previousbet*multi 
end
end
