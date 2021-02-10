nextbet=0.0
chance=98
resetstats()
resetseed()
function dobet()
if win then
nextbet=0.0
else
nextbet=balance/100
if (currentstreak==-2) then
nextbet=previousbet*99
end
end
end
