--------------------
-- losestreak setup
-- 7 -> 7.3446286
-- 8 -> 1.9714477
-- 9 -> 0.5291766
-- 10 -> 0.1420417
-- 11 -> 0.03812690
-- 12 -> 0.01023403
-- 13 -> 0.00274702
--------------------
betcalc = 0.00274702
--------------------
bethigh = false
stopnow = false
first = true
done = true
chance = 27.5
gan = 100000
base = balance*(betcalc/gan)
curbet = base*3.7255
nextbet = base
w = 0
--
if (betcalc<0.00000001) then
print("Please set betcalc then restart the script")
stop() end
--
resetseed()
resetstats()
--
function dobet()
--
  if (w==5) then
     bethigh = !bethigh
     resetseed()
     w = 0
     print(balance.." "..string.upper(currency))
  end
  --
  if (nextbet>balance) then stop() end
  --
  base = balance*(betcalc/gan)
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
      chance = 25
      curbet = base*3.7255
      nextbet = base
      w+=1
      first = true
      done = true
    else
      curbet = curbet*3.7255
      nextbet = curbet
      chance = 72.5
    end
  end
  done = false
end
end
