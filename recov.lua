chance       = 95
gan          = 750000
basebet      = balance/gan
nextbet      = basebet
bethigh      = true
losecount    = 0
counter      = 0
--
resetstats()
resetseed()
--
function dobet()
counter+=1
if (counter >= 250) then
    resetseed()
    counter = 0
end
    
if balance < nextbet then
    print("")
    print("Security Stop")
    stop();
end

if (win) then
   chance    = 95
   nextbet   = balance/gan
   losecount = 0
end
if (!win) then
   losecount += 1
   if (losecount > 1) then
       nextbet = previousbet*1.12
       chance  = (1/(((nextbet+(nextbet-basebet))/previousbet)))*20
       if chance < 9.0 then
           chance = 9.0 end
   bethigh = !bethigh
      print ("LOSE")
   print(nextbet)
   print(chance)
   print(profit)
   print(bets)
   else
   nextbet = previousbet*1.12
   chance  = (1/(((basebet+nextbet))/nextbet))*25
   if chance<9.0 then
       chance = 9.0 end
   bethigh = !bethigh
 end
 end
end
