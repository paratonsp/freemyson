--
minC1   = 78
maxC1   = 93 
minC2   = 5
maxC2   = 35
bone    = 0.01
btwo    = 0.01
target    = balance*1.005
multiplier = 1.06
if_win     = 1.106085
div        = 100000
base       = balance/div
nextbet    = base
bethigh    = false
rollcount  = 7
chance  = math.random(minC2*100.0, maxC2*100.0)/100.0
--
resetstats()
--
function dobet()
   --
   if balance>=target then
       print("\nPLEASE RESET CLIENTSEED")
       print("Profit: "..string.format("%.8f",cprof)..
       currency.." ("..string.format("%.2f",profn).."%)\n")
       stop()
   end
   --
   --randomizer
   r=math.random(2)
   if r == 1 then
      bethigh=true
   else
      bethigh=false
   end
   --
   --bet progression
   if win then
      chance = math.random(minC2*100.0, maxC2*100.0)/100.0
      nextbet = previousbet * if_win
   else
      chance = math.random(minC1*100.0, maxC1*100.0)/100.0
      nextbet = previousbet * multiplier
   end
end
