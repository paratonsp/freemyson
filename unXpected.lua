nextbet=0.0
chance=98
sseed=30000
maxstreakloses=0
streakloses=0
bethigh=true
resetstats()
resetseed()
--
function dobet()
--
if (balance==0.0000000) then
    stop() end
--
if (lastBet.nonce>0) and (lastBet.nonce<=sseed) then
worststreak()
end
--
if win then
if (lastBet.nonce>=sseed) then
  nextbet=0.0
else
nextbet=0.0
print("SCANNING SEED || Nonce: "..lastBet.nonce)
end
end
--
if !win then
if (lastBet.nonce>=sseed) then
profitn=profit/(balance-profit)*100
-- WORSTSTREAK==1
if (maxstreakloses==1) then
    if (currentstreak==-1) then
    nextbet=balance/1
    print("\n"..string.format("%.2f",profit)..currency
    .."("..string.format("%.2f",profitn).."%)\n")
    end
end
-- WORSTSTREAK==2
if (maxstreakloses==2) then
    if (currentstreak==-1) then
    nextbet=balance/100
    print("\n"..string.format("%.2f",profit)..currency
    .."("..string.format("%.2f",profitn).."%)\n")
    elseif (currentstreak==-2) then
    nextbet=balance/1
    print("\n"..string.format("%.2f",profit)..currency
    .."("..string.format("%.2f",profitn).."%)\n")
    end
end
else
-- WORSTSTREAK==3
if (maxstreakloses==3) then
    resetstats()
    resetseed()
    maxstreakloses=0
    streakloses=0
end
nextbet=0.0
print("SCANNING SEED || Nonce: "..lastBet.nonce)
end
end
if (lastBet.nonce>=999999) then
    resetstats()
    resetseed()
    maxstreakloses=0
    streakloses=0
    bethigh=!bethigh
end
end
--
function worststreak()
  if !win then
    streakloses=streakloses+1
    if maxstreakloses<=streakloses then
      maxstreakloses=streakloses
    end
  else
    streakloses=0
  end
end
--
