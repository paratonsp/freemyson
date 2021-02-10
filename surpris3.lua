nextbet=0.0
chance=98
resetstats()
resetseed()
function dobet()
if win then
nextbet=0.0
else
nextbet=balance/101
if (currentstreak==-2) then
nextbet=previousbet*100
end
end
end
