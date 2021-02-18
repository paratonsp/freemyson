--------------------------------------------------
-- 8 max losses (for 7 losestreak) -> 7.3446286
-- 9 max losses (for 8 losestreak) -> 1.9714477
-- 10 max losses (for 9 losestreak) -> 0.5291766
-- 11 max losses (for 10 losestreak) -> 0.1420417
-- 12 max losses (for 11 losestreak) -> 0.03812690
-- 13 max losses (for 12 losestreak) -> 0.01023403
-- 14 max losses (for 13 losestreak) -> 0.00274702
--------------------------------------------------
betcalc = 0.5291766
--------------------------------------------------
bethigh = false
stopnow = false
first = true
done = true
chance = 27.5
gan = 100000
base = balance * (betcalc / gan)
curbet = base * 3.7255
nextbet = base
resetseed()
resetstats()
--
function dobet()
--  
  if (betcalc<0.00000001) then
    print("Please set betcalc then restart the script")
    stop() end

  if (nextbet>balance) then stop() end
  base = balance * (betcalc / gan)
  --
  if (first) then
    if(stopnow) then stop() end
    if !win then
      chance = math.random(5000,5250)/100
      nextbet = curbet
      first = false
      done = true
    end
  end
  --
  if(!first and !done) then
    if(stopnow) then stop() end
    if win then
      if (lastBet.nonce>=1000) then resetseed() end
      chance = math.random(2750,3000)/100
      curbet = base * 3.7255
      nextbet = base
      bethigh = !bethigh
      first = true
      done = true
    else
      curbet = curbet * 3.7255
      nextbet = curbet
      chance = math.random(7250,7500)/100
    end
  end
  done = false
  profitn = profit/(balance-profit)*100
  print("\nBalance: "..string.format("%.8f",balance)
  .." "..string.format(currency))
end
