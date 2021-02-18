--
div=600000
basebet=balance/div
a=basebet
nextbet=basebet
--
two=0
lol=0
trigger=0
wincount=0
losecount=0
betcount=0
counter=0
bethigh=false
--
resetstats()
resetseed()
chance = 90
c1   = 9.0
c2   = 19.0
c3   = 29.0
c4   = 39.0
c5   = 49.0
--
function dobet()
--
basebet=balance/div
a=basebet
--
if (wincount==5) then
resetseed()
wincount=0
end
--
betcount+=1
if win then
two=0
lol+=1
counter+=1
wincount+=1
nextbet=basebet
losecount=0
-- 
if (wincount==1) then
  trigger=1
end
if (wincount==2) then
  trigger=2
end
if (wincount==3) then
  trigger=3
end
if (wincount==4) then
  trigger=4
end
if (wincount==5) then
  trigger=5
end
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
      chance = c1
      nextbet = basebet
    end
    if two > 0 then
      chance = previouschance
      nextbet = previousbet*1.2
    end
    if !win and nextbet > (a*10) then
      chance = previouschance
      nextbet = previousbet*1.125
    end
    if !win and nextbet > (a*100) then
      chance = previouschance
      nextbet = previousbet*1.1
    end
  end
  if lostchance==2 then
    if two == 0 then
      chance = c2
      nextbet = basebet
    end
    if two > 0 then
      chance = previouschance
      nextbet = previousbet*1.4
    end
    if !win and nextbet > (a*10) then
      chance = previouschance
      nextbet = previousbet*1.325
    end
    if !win and nextbet > (a*100) then
      chance = previouschance
      nextbet = previousbet*1.2
    end
  end
  if lostchance==3 then
    if two == 0 then
      chance = c3
      nextbet = basebet
    end
    if two > 0 then
      chance = previouschance
      nextbet = previousbet*1.6
    end
    if !win and nextbet > (a*10) then
      chance = previouschance
      nextbet = previousbet*1.525
    end
    if !win and nextbet > (a*100) then
      chance = previouschance
      nextbet = previousbet*1.3
    end
  end
  if lostchance==4 then
    if two == 0 then
      chance = c4
      nextbet = basebet
    end
    if two > 0 then
      chance = previouschance
      nextbet = previousbet*1.8
    end
    if !win and nextbet > (a*10) then
      chance = previouschance
      nextbet = previousbet*1.725
    end
    if !win and nextbet > (a*100) then
      chance = previouschance
      nextbet = previousbet*1.4
    end
  end
  if lostchance==5 then
    if two == 0 then
      chance = c5
      nextbet = basebet
    end
    if two > 0 then
      chance = previouschance
      nextbet = previousbet*2
    end
    if !win and nextbet > (a*10) then
      chance = previouschance
      nextbet = previousbet*1.925
    end
    if !win and nextbet > (a*100) then
      chance = previouschance
      nextbet = previousbet*1.5
    end
  end
  profitn = profit/(balance-profit)*100
  print("\nBalance: "..string.format("%.2f",balance))
  print("Profit: "..string.format("%.2f",profit).." ("..string.format("%.2f",profitn).."%)")
  print("Chance: "..lastBet.chance.." || Streak: "..currentstreak.."\n")
end
if nextbet>balance then stop() end
if (lol==1) then
if (bethigh==true) then bethigh=false else bethigh=true end
lol = 0
end
end
end
end
