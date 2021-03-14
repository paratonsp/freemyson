div = 400 --200/400/800/2000
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
if ! win then
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
end
