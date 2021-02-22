-- low = .000001 / .00006 / 500
-- mid = .00001 / .0006 / 50
-- hi  = .0001 / .006 / 5
--
betlimit     = .000001 
losslimit    = .00006
profitlimit  = 500
--
balancerisk  = -balance
balancestop  = 0
profitstop   = 0
nextbet      = balance * betlimit
lossfactor   = balance * losslimit
levelfactor  = -35
streakpause  = levelfactor
profitsaving = balance/5
profitgap    = profitsaving
bethigh      = true  
stopwin      = false
profitsafe   = balancerisk
chance       = 49.5
betpayout    = 99.9/49.5
betupwin     = 1 
betlosses    = 0
ifwin        = 0
--
resetstats()
resetseed()
function dobet()
 --   
   if win then
       --
       if(profit > profitgap) then
            base = balance * betlimit
            lossfactor = balance * losslimit
            profitsaving = balance/profitlimit
            profitsafe = profit + balancerisk
            profitgap  = profit + profitsaving
            print("--[Calibrate Profit Gap]--")
            print("--|Profit Gap : "..profitgap)
            print("--|Profit Safe : "..profitsafe)
            print("--")
            resetseed()
       end  
       --
       if balance >= balancestop and balancestop != 0 then stop() end
       if profit >= profitstop and profitstop != 0 then stop() end 
       if stopwin then stop() end
       
       -- start logic win
       
       betlosses = 0
       bethigh   = !bethigh
       chance    = 49.5
       nextbet   = previousbet * betupwin
       
       if(currentstreak > 3 or currentstreak == 1) then
           nextbet = base
       end
          
   else
       
       -- start logic loss
       
       chance    = 49.5
       betlosses = previousbet + betlosses
       ifwin     = currentstreak * lossfactor 
       
       if(currentstreak >= levelfactor) then
           tobet = ((-ifwin)- betlosses) / betpayout
       else
           tobet = betlosses / betpayout 
       end
       
       -- safeprofit
       
       if(profitsafe + tobet >= profit) then
           print("-----------------------------------")
           print("profit safe -> "..profitsafe) 
           print("next bet -> "..tobet)
           print("-- not good--")
           stop()
       else   
           nextbet = tobet 
       end           
       
       if(currentstreak <= streakpause) then 
           stopwin = true
       end    
      
   end
end
