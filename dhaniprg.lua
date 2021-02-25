maxbal=1000 --target
--
perxxx=1000 --increase for safety
--
fixbase=0
ratexxx=1
decxxx=2.5
minbetxxx=0.00000001
mybasebet = balance/perxxx
--
if mybasebet<minbetxxx then
mybasebet=minbetxxx end
if fixbase>0 then
mybasebet=fixbase end
--
basebet = mybasebet
nextbet = basebet
roundprofit = 0
chancexx = 49.5
chance = chancexx
minbal=0
bethigh=false
--
resetstats()
resetseed()
--
function dobet()
--
mybasebet = balance/perxxx
if mybasebet<minbetxxx then mybasebet=minbetxxx end
if fixbase>0 then mybasebet=fixbase end
basebet = mybasebet
--
r=math.random(2)
if r == 1 then
     bethigh=true
else
     bethigh=false
end
--
roundprofit += currentprofit

   if (win) then      
      chance = chancexx
      if (roundprofit < 0) then
        mynextbet=(-1*roundprofit)/decxxx
        if mynextbet<basebet then mynextbet=basebet end
        nextbet = mynextbet
      else
          if previousbet>basebet then
            resetseed()
          end          
          nextbet = basebet
        end
	if balance<minbal then
   stop()
end
	if balance>maxbal then
   stop()
end
if roundprofit > 0 then roundprofit = 0 end
end
     if (!win) then   
        chance=chance + 1
        mynextbet=previousbet/decxxx
        if mynextbet<basebet then mynextbet=basebet end
        nextbet = mynextbet
        end
     end
	if balance<minbal then
   stop()
end
	if balance>maxbal then
   stop()
end
end
end
