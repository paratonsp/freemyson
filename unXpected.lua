nextbet=0.0
chance=98
sseed=25000
maxstreakloses=0
streakloses=0
resetstats()
resetseed()
--
function dobet()
--
worststreak()
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
    nextbet=balance/1.01
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
    nextbet=previousbet*99
    print("\n"..string.format("%.2f",profit)..currency
    .."("..string.format("%.2f",profitn).."%)\n")
    end
end
else
-- WORSTSTREAK==3
if (maxstreakloses==3) then
    resetstats()
    resetseed()
end
nextbet=0.0
print("SCANNING SEED || Nonce: "..lastBet.nonce)
end
end
if (lastBet.nonce>=999999) then
    resetstats()
    resetseed()
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
