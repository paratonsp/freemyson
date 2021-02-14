chance  = 66
div     = 20000
basebet = balance/div
nextbet = basebet
bethigh = false
bet     = 0
resetstats()
-----------------------------------------------------------
-----------------------------------------------------------
function dobet()
bet+=1
if win then
  if (bet>=500) then
    resetseed()
  end
  basebet=balance/div
  nextbet=basebet
end
--
if currentstreak>=2 then nextbet=basebet end
if currentstreak>=2 then resetstats() alarm() end
if currentstreak>=-1 then nextbet=basebet end 
if currentstreak==1 then
    nextbet = wagered*2
end
-----------------------------------------------------------
-----------------------------------------------------------
end
end
