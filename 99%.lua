-- betlimit & losslimit setup
-- low = 0.000001 // -0.00006
-- mid = 0.00001 // -0.0006
-- hi  = 0.0001 // -0.006
-----------------------
betlimit     = 0.0001 
losslimit    = -0.006
-----------------------
balancerisk  = -balance
balancestop  = 1150
profitstop   = 0
lossfactor   = balance*losslimit
nextbet      = balance*betlimit
levelfactor  = -35
streakpause  = levelfactor
profitsaving = 1 -- per profit adding to risk
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
function dobet()
    --
    if win then
       --
       base = balance * betlimit
       --
       if(profit > profitgap) then
           profitsafe = profit + balancerisk
           profitgap  = profit + profitsaving
       end  
       --
       if balance >= balancestop and balancestop != 0 then stop() end
       if profit >= profitstop and profitstop != 0 then stop() end 
       if stopwin then stop() end
       --
       -- start logic win      
       betlosses = 0
       bethigh   = !bethigh
       chance    = 49.5
       nextbet   = previousbet * betupwin
       --
       if(currentstreak > 3 or currentstreak == 1) then
           nextbet = base
       end
       --   
    else
       --
       -- start logic loss      
       chance    = 25
       lossfactor= balance*losslimit
       betlosses = previousbet + betlosses
       ifwin     = currentstreak * lossfactor 
       --
       if(currentstreak>=levelfactor) then
           tobet = (ifwin-betlosses) / betpayout
       else
           tobet = betlosses / betpayout 
       end
       --
       -- safeprofit      
       if((profitsafe+tobet)>=profit) then
           stop()
       else   
           nextbet = tobet 
       end           
       --
       if(currentstreak <= streakpause) then 
           stopwin = true
       end         
   end
end
