dompet = xxxx
simpan = 1000
target = 1100
--
betcalc = 1.971431
bethigh = true
stopnow = false
first = true
done = true
chance = 48
betcount = 1
base = balance * (betcalc / 100000)
curbet = base * 3.7255
nextbet = base

function dobet()

  if (balance>target) then
     --withdraw(simpan,dompet)
  end
  --
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
    resetseed()
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
end
