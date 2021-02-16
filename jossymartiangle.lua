
-- 7 max losses (ludicrous) - 27.364138
-- 8 max losses (stupid) - 7.3446286
-- 9 max losses (risky) - 1.9714477
-- 10 max losses (safe) - 0.5291766
-- 11 max losses (safest) - 0.1420417
-- 12 max losses (ultra-safe) - 0.03812690
-- 13 max losses (super-ultra-safe) - 0.01023403
-- 14 max losses (mega-super-ultra-safe) - 0.00274702


betcalc = 0
-------------------------------------------
bethigh = true
stopnow = false
first = true
done = true
chance = 27.5
base = balance * (betcalc / 100000)
curbet = base * 3.7255
nextbet = base
maxbets=200000

function dobet()
  
  if (betcalc < 0.01) then
    print("Please set betcalc then restart the script")
    stop() end
  
  if (lastBet.nonce>=maxbets) then
    stop() end

  base = balance * (betcalc / 100000)

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
