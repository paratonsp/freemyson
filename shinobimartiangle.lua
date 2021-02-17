------------------------------------------
-- 8 max losses - 7.344565
-- 9 max losses - 1.971431
-- 10 max losses - 0.529172
-- 11 max losses - 0.142041
-- 12 max losses - 0.038127
-- 13 max losses - 0.010234
-- 14 max losses - 0.002747
------------------------------------------
betcalc = 7.344565
------------------------------------------
bethigh = true
stopnow = false
first = true
done = true
chance = 48
betcount = 1
--
base    = balance * (betcalc / 100000)
curbet  = base * 3.7255
nextbet = base

function dobet()

  if (betcalc < 0.00000001) then
    print("Please set betcalc then restart the script")
    stop() end
  --
  r = math.random(2)
  if r == 1 then
      bethigh = true
  else
      bethigh = false
  end 
  if betcount == 1 then
    betcount=0
  else
    betcount=betcount+1
  end
  --
  if (balance)<(nextbet) then
    print("BALANCE INSUFFICIENT FUNDS")
  end
  --
  base = balance * (betcalc / 100000)  
  if (first) then
    if(stopnow) then stop() end
    if !win then
      chance  = math.random(45,50)
      nextbet = curbet
      first   = false
      done    = true
    end
  end
  --
  if(!first and !done) then
    if(stopnow) then stop() end
    if win then
      chance  = 27.5
      curbet  = base * 3.7255
      nextbet = base
      first   = true
      done    = true
    else
      curbet  = curbet * 3.7255
      nextbet = curbet
      chance  = 72.5
    end
  end
  done = false
  profitn = profit/(balance-profit)*100
  print("Balance: "..string.format("%.5f",balance)
  .." "..currency)
end
