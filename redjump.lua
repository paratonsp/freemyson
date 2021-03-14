--div option--
--200  --crazy
--400  --risk
--800  --safe
--2000 --very-safe
------------
div = 400
--
chance = 49.5
nextbet = 0.00000001
bethigh = false
--
resetstats()
function dobet()
--
if win then
    nextbet = 0.00000001
    bethigh = !bethigh
end
--
if !win then
    nextbet = 0.00000001
    if (currentstreak==-5) then
        nextbet = balance/div
    end
    --
    if (currentstreak<-5) then
        nextbet = previousbet*2
    end
end
--
if (wins==20000) then
    resetseed()
    resetstats()
end
--
end
