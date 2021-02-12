-----------------------------------------------
-- first 500 nonce, must be uptrend.
-- if not, stop and start again.
-----------------------------------------------
div     = 200000
chance  = 49.5
basebet = balance/div
nextbet = basebet
bethigh = false
sbal    = balance
resetstats()
resetseed()
-----------------------------------------------
function dobet()
cbal = balance
basebet = balance/div
if (lastBet.nonce>=999999) then stop() end
if (nextbet>balance) then stop() end
if win then nextbet=basebet end
-----------------------------------------------
if (currentstreak>=2) then nextbet=basebet end
if (currentstreak>=2) then resetstats() end
if (currentstreak>=-1) then nextbet=basebet end
if (currentstreak==1) then nextbet=wagered end
-----------------------------------------------
cprof = cbal-sbal
profn=cprof/(cbal-cprof)*100
print("\nProfit: "..string.format("%.2f",cprof)..
currency.." ("..string.format("%.2f",profn).."%)")
print("Nonce: "..lastBet.nonce.."\n")
end
