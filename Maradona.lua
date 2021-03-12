chance = 3
div = 300000
base = balance/div
a = base
nextbet = base
--
resetstats()
function dobet()
--
if lastBet.roll>=97 then
    bethigh = false
end
--
if lastBet.roll<=3 then
    bethigh = true
end
--
if win then
    cs = 0
    base = balance/div
    a = base
    nextbet = base
end
--
if !win then
    nextbet = previousbet*1.06
    --
    if nextbet>(a*10) then
        nextbet = previousbet*1.03
    end
end
end
