--YOUR SETTING------
div       = 100000
base      = balance/div
nextbet   = base
chance    = 95
chanceMAX = 95
chanceMIN = 5
resetstats()
--------------------
perte = 0
cmptW = 0
function dobet()
base  = balance/div
perte = perte + currentprofit
if win then
cmptW = cmptW + 1
end
if perte >= 0 then
perte   = 0
nextbet = base
else
if cmptW >= 3 then
cmptW   = 0
bethigh = math.floor(0.5+lastBet.roll)%2==0
chance  = randomRoll(chanceMIN,chanceMAX,lastBet.roll)
nextbet = -perte/2
if nextbet < base then nextbet = base end
end
end
profitn = profit/(balance-profit)*100
print("\nbalance: "..string.format("%.5f",balance))
print("profit: "..string.format("%.5f",profit).." ("..string.format("%.2f",profitn).."%)")
print("step: "..cmptW.." || chance: "..chance.."%\n")
end
function randomRoll(MIN,MAX,ROLL)
return( MIN + ((MAX-MIN)*((ROLL)/100)) )
end
function ResetDice(nextbet)
perte   = 0
cmptW   = 0
nextbet = base
chance  = chanceMAX
bethigh = true
end
