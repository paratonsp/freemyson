dompet = "DFnVezCcWYHsrju7gCrcw4gMSSPKch3sN8"
simpan = 500
target = 550
--
div     = 600000
basebet = balance/div
a       = basebet
nextbet = basebet
--
two       = 0
trigger   = 0
losecount = 0
betcount  = 0
counter   = 0
bethigh   = false
--
resetstats()
resetseed()
chance = 90
--
function dobet()
--
if (balance>target) then
withdraw(simpan,dompet) end
--
if nextbet>balance then stop() end
profitn = profit/(balance-profit)*100
print("\nChance: "..lastBet.chance.." || Streak: "..currentstreak)
print("Profit: "..string.format("%.2f",profit).." ("..string.format("%.2f",profitn).."%)")
print("Balance: "..string.format("%.2f",balance).." "..string.upper(currency))
--
betcount+=1
if win then
--
if (lastBet.nonce>=100) then
resetseed() end
--
two=0
counter+=1
basebet=balance/div
a=basebet
nextbet=basebet
bethigh=!bethigh
losecount=0
--
trigger = math.random(1,5)
  if trigger==1 then
    chance=c1
    lostchance=1
  end
  if trigger==2 then
    chance=c2
    lostchance=2
  end
  if trigger==3 then
    chance=c3
    lostchance=3
  end
  if trigger==4 then
    chance=c4
    lostchance=4
  end
  if trigger==5 then
    chance=c5
    lostchance=5
  end
end
if !win then
  two += 1
   if lostchance==1 then
    if two == 0 then
      chance  = math.random(900,1000)/100
      nextbet = basebet
    end
    if two > 0 then
      chance  = math.random(900,1000)/100
      nextbet = previousbet*1.2
    end
    if !win and nextbet > (a*10) then
      chance  = math.random(900,1000)/100
      nextbet = previousbet*1.125
    end
  end
  if lostchance==2 then
    if two == 0 then
      chance  = math.random(1900,2000)/100
      nextbet = basebet
    end
    if two > 0 then
      chance  = math.random(1900,2000)/100
      nextbet = previousbet*1.4
    end
    if !win and nextbet > (a*10) then
      chance  = math.random(1900,2000)/100
      nextbet = previousbet*1.325
    end
  end
  if lostchance==3 then
    if two == 0 then
      chance  = math.random(2900,3000)/100
      nextbet = basebet
    end
    if two > 0 then
      chance  = math.random(2900,3000)/100
      nextbet = previousbet*1.6
    end
    if !win and nextbet > (a*10) then
      chance  = math.random(2900,3000)/100
      nextbet = previousbet*1.525
    end
  end
  if lostchance==4 then
    if two == 0 then
      chance  = math.random(3900,4000)/100
      nextbet = basebet
    end
    if two > 0 then
      chance  = math.random(3900,4000)/100
      nextbet = previousbet*1.8
    end
    if !win and nextbet > (a*10) then
      chance  = math.random(3900,4000)/100
      nextbet = previousbet*1.725
    end
  end
  if lostchance==5 then
    if two == 0 then
      chance  = math.random(4900,4950)/100
      nextbet = basebet
    end
    if two > 0 then
      chance  = math.random(4900,4950)/100
      nextbet = previousbet*2
    end
    if !win and nextbet > (a*10) then
      chance  = math.random(4900,4950)/100
      nextbet = previousbet*1.925
    end
  end
 end
end
end
end
end
