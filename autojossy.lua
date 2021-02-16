bethigh = true
stopnow = false
first = true
done = true
chance = 27.5
betcalc = 0.00274702
gan = 100000
base = balance * (betcalc / gan)
curbet = base * 3.7255
nextbet = base
maxstreakloses = 0
streakloses = 0
resetseed()
resetstats()
--
function dobet()
--
  if (nextbet>balance) then
    print("BALANCE NOT ENOUGH")
    stop()
  end
  --
  if (lastBet.nonce>0) and (lastBet.nonce<=50000) then
    worststreak() end
  --
  if (lastBet.nonce==50000) then
    if (maxstreakloses<=6) then betcalc = 27.364138 end
    if (maxstreakloses==7) then betcalc = 7.3446286 end
    if (maxstreakloses==8) then betcalc = 1.9714477 end
    if (maxstreakloses==9) then betcalc = 0.5291766 end
    if (maxstreakloses>=10) then
        bethigh = true
        stopnow = false
        first = true
        done = true
        chance = 27.5
        betcalc = 0.00274702
        gan = 100000
        base = balance * (betcalc / gan)
        curbet = base * 3.7255
        nextbet = base
        maxstreakloses = 0
        streakloses = 0
        resetseed()
        resetstats()
      end
    end
  --    
  if win and (lastBet.nonce>=200000) then
        bethigh = true
        stopnow = false
        first = true
        done = true
        chance = 27.5
        betcalc = 0.00274702
        gan = 100000
        base = balance * (betcalc / gan)
        curbet = base * 3.7255
        nextbet = base
        maxstreakloses = 0
        streakloses = 0
        resetseed()
        resetstats()
  end
  --
  base = balance * (betcalc / gan)
  --
  if (first) then
    if(stopnow) then stop() end
    if !win then
      chance = 50
      nextbet = curbet
      first = false
      done = true
    end
  end
  --
  if(!first and !done) then
    if(stopnow) then stop() end
    if win then
      chance = 27.5
      curbet = base * 3.7255
      nextbet = base
      first = true
      done = true
    else
      curbet = curbet * 3.7255
      nextbet = curbet
      chance = 72.5
    end
  end
  done = false
  print(string.format("%.1f",balance)
  .." "..currency)
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
