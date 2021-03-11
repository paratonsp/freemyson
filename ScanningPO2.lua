chance = 49.5
div = 100000
base = balance/div
nextbet = 0.00000001
bethigh = false
maxbets = 1000
--
resetstats()
function dobet()
--
if (bets==maxbets) and (losses>wins) then
    stop()
    print("\nNot Profitable!\n")
end
--
if bets>maxbets then
    if win then
        nextbet = balance/div
    else
        nextbet = previousbet*2.01
    end
else
    nextbet = 0.00000001
end
--
end
