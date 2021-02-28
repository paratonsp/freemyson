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
--
resetstats()
chance = 90
c1     = 0.09        
c2     = 0.19      
c3     = 0.29       
c4     = 0.39       
c5     = 0.49      
c6     = 0.59       
c7     = 0.69       
c8     = 0.79       
c9     = 0.89      
c10    = 0.99       
c11    = 1.09
c12    = 1.19     
c13    = 1.29      
c14    = 1.39      
c15    = 1.49      
c16    = 1.59     
c17    = 1.69
c18    = 1.79
c19    = 1.89
c20    = 1.99
c21    = 2.09
c22    = 2.19
c23    = 2.29
c24    = 2.39
c25    = 2.49
--
function wait(second)
clock=os.clock() 
while os.clock()-clock<=second do
end
end
--
function dobet()
--
if (wincount==25) then
profitn = profit/(balance-profit)*100
print("\nISHOMA 5 MENIT")
print("Profit: "..string.format("%.8f",profit)
.." ("..string.format("%.2f",profitn).."%)\n")
wait(300)
end
--
if nextbet>balance then stop() end
--
betcount+=1
if win then
    two=0
    lol+=1
    counter+=1
    wincount+=1
    basebet=balance/div
    a=basebet
    nextbet=basebet
    losecount=0  
--
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
    trigger=18
end
if (wincount==19) then
    trigger=19
end
if (wincount==20) then
    trigger=20
end
if (wincount==21) then
    trigger=21
end
if (wincount==22) then
    trigger=22
end
if (wincount==23) then
    trigger=23
end
if (wincount==24) then
    trigger=24
end
if (wincount==25) then
    trigger=25
end
if (wincount>=25) then
    trigger=25
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
    if trigger==18 then
        chance=c18
        lostchance=18
    end
    if trigger==19 then
        chance=c19
        lostchance=19
    end
    if trigger==20 then
        chance=c20
        lostchance=20
    end
    if trigger==21 then
        chance=c21
        lostchance=21
    end
    if trigger==22 then
        chance=c22
        lostchance=22
    end
    if trigger==23 then
        chance=c23
        lostchance=23
    end
    if trigger==24 then
        chance=c24
        lostchance=24
    end
    if trigger==25 then
        chance=c25
        lostchance=25
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
            nextbet = previousbet*1.004
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.0025
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.002
        end
    end
    if lostchance==3 then
        if two == 0 then  
            chance  = c3
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.006
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.00375
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.003
        end
    end
    if lostchance==4 then
        if two == 0 then  
            chance  = c4
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.008
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.005
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.004
        end
    end
    if lostchance==5 then
        if two == 0 then  
            chance  = c5
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.01
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.00625
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.005
        end
    end
    if lostchance==6 then
        if two == 0 then  
            chance  = c6
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.012
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.0075
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.006
        end
    end
    if lostchance==7 then
        if two == 0 then  
            chance  = c7
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.014
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.00875
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.007
        end
    end
    if lostchance==8 then
        if two == 0 then  
            chance  = c8
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.016
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.01
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.008
        end
    end
    if lostchance==9 then
        if two == 0 then  
            chance  = c9
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.018
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.01125
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.009
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
            nextbet = previousbet*1.01250
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.01
        end
    end
    if lostchance==11 then
        if two == 0 then  
            chance  = c11
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.022
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.01375
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
            nextbet = previousbet*1.024
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.015
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.012
        end
    end
    if lostchance==13 then
        if two == 0 then  
            chance  = c13
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.026
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.01625
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.013
        end
    end
    if lostchance==14 then
        if two == 0 then  
            chance  = c14
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.028
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.01750
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.014
        end
    end
    if lostchance==15 then
        if two == 0 then  
            chance  = c15
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.03
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.01875
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.015
        end
    end
    if lostchance==16 then
        if two == 0 then  
            chance  = c16
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.032
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.02
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.016
        end
    end
    if lostchance==17 then
        if two == 0 then  
            chance  = c17
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.034
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.02125
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.017
        end
    end
    if lostchance==18 then
        if two == 0 then  
            chance  = c18
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.036
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.02250
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.018
        end
    end
    if lostchance==19 then
        if two == 0 then  
            chance  = c19
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.038
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.02375
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.019
        end
    end
    if lostchance==20 then
        if two == 0 then  
            chance  = c20
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.040
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.025
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.020
        end
    end
    if lostchance==21 then
        if two == 0 then  
            chance  = c21
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.042
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.02625
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.021
        end
    end
    if lostchance==22 then
        if two == 0 then  
            chance  = c22
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.044
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.025
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.022
        end
    end
    if lostchance==23 then
        if two == 0 then  
            chance  = c23
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.046
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.02875
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.023
        end
    end
    if lostchance==24 then
        if two == 0 then  
            chance  = c24
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.048
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.03
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.024
        end
    end
    if lostchance==25 then
        if two == 0 then  
            chance  = c25
            nextbet = basebet
        end
        if two > 0 then
            chance  = previouschance
            nextbet = previousbet*1.050
        end 
        if !win and nextbet > (a*10) then
            chance  = previouschance
            nextbet = previousbet*1.03125
        end
        if !win and nextbet > (a*100) then
            chance  = previouschance
            nextbet = previousbet*1.025
        end
    end
end
--
if (lol==1) then
if (bethigh==true) then
    bethigh=false
else
    bethigh=true end
lol = 0
end
end
end
