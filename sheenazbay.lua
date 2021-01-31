-----------------------
-- Night Strategy || primedice.com
-- Run 03.10-19.00 WIB
-----------------------
div       = 600000
basebet   = balance/div
a         = basebet
nextbet   = basebet
two       = 0
lol       = 0
trigger   = 0
wincount  = 0
losecount = 0
betcount  = 0 
counter   = 0 
bethigh   = false
maxbets   = 300000
resetstats()
chance = 90
c1     = 0.09        
c2     = 0.1       
c3     = 0.15       
c4     = 0.17       
c5     = 0.2       
c6     = 0.27       
c7     = 0.33       
c8     = 0.49       
c9     = 0.9       
c10    = 0.99       
c11    = 1      
c12    = 1.5      
c13    = 1.65      
c14    = 1.98      
c15    = 2.75      
c16    = 3.3      
c17    = 8.25       
function dobet()
basebet   = balance/div
a         = basebet
if (wincount==25) then
    resetseed()
    wincount = 0
end
betcount+=1
if win then
    if (bets>maxbets) then stop() end
    two = 0
    lol+= 1
    counter+= 1
    wincount = 1
    nextbet = balance/div
    losecount=0    
if (wincount==1) then
    trigger=1
end
if (wincount==2) then
    trigger=2
end
if (wincount==3) then
    trigger=3
end
if (wincount==4) then
    trigger=4
end
if (wincount==5) then
    trigger=5
end
if (wincount==6) then
    trigger=6
end
if (wincount==7) then
    trigger=7
end
if (wincount==8) then
    trigger=8
end
if (wincount==9) then
    trigger=9
end
if (wincount==10) then
    trigger=10
end
if (wincount==11) then
    trigger=11
end
if (wincount==12) then
    trigger=12
end
if (wincount==13) then
    trigger=13
end
if (wincount==14) then
    trigger=14
end
if (wincount==15) then
    trigger=15
end
if (wincount==16) then
    trigger=16
end
if (wincount==17) then
    trigger=17
end
if (wincount==18) then
    trigger=17
end
if (wincount>17) then
    trigger=17
end
  
    if trigger==1 then
        chance=c1
        lostchance=1
    end
    if trigger==2 then
        chance=c2
        lostchance=2
    end
    if trigger==3 then
        chance=c3
        lostchance=3
    end
    if trigger==4 then
        chance=c4
        lostchance=4
    end
    if trigger==5 then
        chance=c5
        lostchance=5
    end
    if trigger==6 then
        chance=c6
        lostchance=6
    end
    if trigger==7 then
        chance=c7
        lostchance=7
    end
    if trigger==8 then
        chance=c8
        lostchance=8
    end
    if trigger==9 then
        chance=c9
        lostchance=9
    end
    if trigger==10 then
        chance=c10
        lostchance=10
    end
    if trigger==11 then
        chance=c11
        lostchance=11
    end
    if trigger==12 then
        chance=c12
        lostchance=12
    end
    if trigger==13 then
        chance=c13
        lostchance=13
    end
    if trigger==14 then
        chance=c14
        lostchance=14
    end
    if trigger==15 then
        chance=c15
        lostchance=15
    end
    if trigger==16 then
        chance=c16
        lostchance=16
    end
    
    if trigger==17 then
        chance=c17
        lostchance=17
    end
    end
if !win then 
    two += 1   
    if lostchance==1 then
        if two == 0 then  
            chance  = c1
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.002
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.00125
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.001
        end
    end
    if lostchance==2 then
        if two == 0 then  
            chance  = c2
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.002
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.00125
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.0011
        end
    end
    if lostchance==3 then
        if two == 0 then  
            chance  = c3
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.003
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.002
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.0015
        end
    end
    if lostchance==4 then
        if two == 0 then  
            chance  = c4
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.0035
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.0025
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.00175
        end
    end
    if lostchance==5 then
        if two == 0 then  
            chance  = c5
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.004
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.003
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.002
        end
    end
    if lostchance==6 then
        if two == 0 then  
            chance  = c6
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.0045
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.0037
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.003
        end
    end
    if lostchance==7 then
        if two == 0 then  
            chance  = c7
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.005
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.0042
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.0038
        end
    end
    if lostchance==8 then
        if two == 0 then  
            chance  = c8
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.007
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.0062
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.0055
        end
    end
    if lostchance==9 then
        if two == 0 then  
            chance  = c9
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.02
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.0125
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.01
        end
    end
    if lostchance==10 then
        if two == 0 then  
            chance  = c10
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.02
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.0125
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.011
        end
    end
    if lostchance==11 then
        if two == 0 then  
            chance  = c11
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.02
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.0125
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.011
        end
    end
    if lostchance==12 then
        if two == 0 then  
            chance  = c12
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.03
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.022
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.0175
        end
    end
    if lostchance==13 then
        if two == 0 then  
            chance  = c13
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.035
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.027
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.022
        end
    end
    if lostchance==14 then
        if two == 0 then  
            chance  = c14
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.04
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.032
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.025
        end
    end
    if lostchance==15 then
        if two == 0 then  
            chance  = c15
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.045
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.037
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.032
        end
    end
    if lostchance==16 then
        if two == 0 then  
            chance  = c16
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.05
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.042
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.0375
        end
    end
    if lostchance==17 then
        if two == 0 then  
            chance  = c17
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.10
        end 
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.095
        end
    end
    profitn = profit/(balance-profit)*100
    print("\nbalance: "..string.format("%.5f",balance))
    print("profit: "..string.format("%.5f",profit).." ("..string.format("%.2f",profitn).."%)")
    print("bets: "..bets.." || streak: "..currentstreak.."\n")
end
if (lol==1) then
if (bethigh==true) then bethigh=false else bethigh=true end
lol = 0
end
end
end
