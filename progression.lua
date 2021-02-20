minC1      = 78
maxC1      = 93
minC2      = 5
maxC2      = 35
bone       = 0.01
btwo       = 0.01
stop       = balance/200
multiplier = 1.06
if_win     = 1.106085
div        = 100000
base       = balance/div
nextbet    = base
bethigh    = false
rollcount  = 7
chance     = math.random(minC2*100.0, maxC2*100.0)/100.0
resetstats()
--
function dobet()
--
r=math.random(2)
if r == 1 then
   bethigh=true
else
   bethigh=false
end
--
--Change seed every 7 bet
if rollcount == 7 then
   rollcount = 0
   resetseed();
else
   rollcount = rollcount + 1
end
--
--Bet progression
if win then
   chance = math.random(minC2*100.0, maxC2*100.0)/100.0
   nextbet = previousbet * if_win
else
   chance = math.random(minC1*100.0, maxC1*100.0)/100.0
   nextbet = previousbet * multiplier
end
--
if profit>stop then
minC1      = 78
maxC1      = 93
minC2      = 5
maxC2      = 35
bone       = 0.01
btwo       = 0.01
stop       = balance/200
multiplier = 1.06
if_win     = 1.106085
div        = 100000
base       = balance/div
nextbet    = base
bethigh    = false
rollcount  = 7
chance     = math.random(minC2*100.0, maxC2*100.0)/100.0
resetstats()
end
end
