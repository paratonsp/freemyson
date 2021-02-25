bb = balance/50000
iw = 1
il = 1.6
pr = 0
--
nextbet = bb
chance  = 19
stopwin = false
--
function dobet()
    pf = profit
    pb = previousbet
    if win then 
        if stopwin then stop() end
        nb = pb * iw
    else
        nb = pb * il
    end
    if pf > pr then 
        pr = pf
        nb = bb
    end
    if (currentstreak<-15) then stopwin = true end
    nextbet = nb
    chance  = math.random(19,20)
    profitn = profit/(balance-profit)*100
    print("\nProfit: "..string.format("%.2f",profit).." ("..string.format("%.2f",profitn).."%)")
    print("Balance: "..string.format("%.2f",balance).." "..string.upper(currency))
end
