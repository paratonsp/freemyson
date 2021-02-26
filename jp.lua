--gan
gan = 1000000
--int
base = balance/gan
nextbet = base
chance = 10
wincount = 0
losecount = 0
bethigh = false
w = 0
target = balance*1.033
--reset
resetstats()

--dobet
function dobet()

--target
if (balance>=target) then stop() end

--resetseed/bethigh
if (w==5) then
    bethigh = !bethigh
    w = 0
end

--win
if win then
    w+=1
    wincount+=1
    nextbet = base
    chance = 10
    losecount = 0
 else
    wincount = 0
    losecount+=1
    nextbet = previousbet*1.3
end
    profitn = profit/(balance-profit)*100
    print("\nNonce: "..lastBet.nonce)
    print("Profit: "..string.format("%.2f",profit).." ("..string.format("%.2f",profitn).."%)")
    print("Balance: "..string.format("%.2f",balance).." "..string.upper(currency))
end
end
end
