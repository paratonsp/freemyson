chance = 9.9
div = 200000
base = balance/div
a = base
nextbet = base
--
resetstats()
function dobet()
--
if lastBet.roll>=49.5 then
    bethigh = true
end
--
if lastBet.roll<=49.5 then
    bethigh = false
end
--
if win then
    base = balance/div
    a = base
    nextbet = base
end
--
if !win then
    nextbet = previousbet*1.1
end
end
