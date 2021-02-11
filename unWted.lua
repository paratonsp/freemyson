nextbet        = 0.0
chance         = 98
sseed          = 100
mseed          = 125
maxstreakloses = 0
streakloses    = 0
bethigh        = true
resetstats()
resetseed()
--
function dobet()
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
-- WORSTSTREAK==1
if (maxstreakloses==1) then
    if (currentstreak==-1) then
    nextbet = balance/1
    end
end
profitn=profit/(balance-profit)*100
print("\n"..string.format("%.2f",profit)..currency
.."("..string.format("%.2f",profitn).."%)\n")
else
-- WORSTSTREAK>2
if (maxstreakloses>=2) then
    resetstats()
    resetseed()
    maxstreakloses=0
    streakloses=0
    bethigh=!bethigh
end
nextbet=0.0
print("SCANNING SEED || Nonce: "..lastBet.nonce)
end
end
--
if (lastBet.nonce>=mseed) then
    resetstats()
    resetseed()
    maxstreakloses = 0
    streakloses    = 0
    bethigh        = !bethigh
end
if (lastBet.nonce>=(mseed+1)) then
    stop() end
if (balance==0.0000000) then
    stop() end
--
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
