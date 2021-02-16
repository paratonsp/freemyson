-------------------------------------------
-- 7 max losses (for 6 losestreak) - 27.364138
-- 8 max losses (for 7 losestreak) - 7.3446286
-- 9 max losses (for 8 losestreak) - 1.9714477
-- 10 max losses (for 9 losestreak) - 0.5291766
-- 11 max losses (for 10 losestreak) - 0.1420417
-- 12 max losses (for 11 losestreak) - 0.03812690
-- 13 max losses (for 12 losestreak) - 0.01023403
-----------
betcalc = 0.01023403
-------------------------------------------
bethigh = true
stopnow = false
first = true
done = true
chance = 27.5
gan = 100000
base = balance * (betcalc / gan)
curbet = base * 3.7255
nextbet = base
maxbets=50000
resetseed()

function dobet()
  
  if (betcalc < 0.01) then
    print("Please set betcalc then restart the script")
    stop() end
  
  if (lastBet.nonce>=maxbets) then
    stop() end

  base = balance * (betcalc / gan)

  if (first) then
    if(stopnow) then stop() end
    if !win then
      chance = 50
      nextbet = curbet
      first = false
      done = true
    end
  end

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
end
