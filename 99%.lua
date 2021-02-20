--
ch        = 49.9
ch2       = 13
chance    = 49.90
m         = 0
m1        = 0
m2        = 2.5
m3        = 3
mm        = 0
gan       = 100000
base      = balance/gan
l         = 0
nextbet   = base
enablezz  = false 
enablesrc = false 
w         = 5000
wincount  = 0
payout    = 0
multi     = 0
prof      = 0
a         = 1
betcount  = 0
--
resetstats()
--
function dobet()
--
betcount+=1
if win then
     wincount+=1
     bethigh=!bethigh
     ch2=13
     ch=49
     chance=ch
     prof=0
     base=balance/gan
     nextbet=base
     betcount=0
     m1=0
     m2=2.5
     l=0
     else
     ch=ch-m2
     m1+=1
     l+=1
end
--
if nextbet> mm then mm=nextbet end
if m<l then
m=l
end
 if (betcount==5) then bethigh=!bethigh end
 if !win then
    prof = prof-currentprofit  
end
if m1> 1 then
       chance = ch
       nextbet=previousbet
end  
if m1>3 then
        chance=ch
        payout = (100-1)/(chance+6)
        multi   = payout/(payout-1.2)
        nextbet = prof/(payout/multi)
end
if m1>8 then
       chance = ch
       nextbet=previousbet*3
end  
if m1>9 then
        chance=ch
        payout = (100-1)/(chance+5)
        multi   = payout/(payout-1)
        nextbet = prof/(payout/multi)
end
if m1>17 then
       ch2 = ch2+m3
       chance=ch2
       nextbet=previousbet*5
end  
if m1>18 then
        chance=ch2
        payout = (100-1)/(chance+4)
        multi   = payout/(payout-1)
        nextbet = prof/(payout/multi)
end
if m1>25 then
        chance=math.random(45*100,49*100)/100
        payout = (100-1)/(chance+4)
        multi   = payout/(payout-1)
        nextbet = prof/(payout/multi)
end
if m1>28 then
        chance=math.random(55*100,59*100)/100
        payout = (100-1)/(chance+1.5)
        multi   = payout/(payout-1)
        nextbet = prof/(payout/multi)
end
if nextbet<base then nextbet=base end
if (wincount==w) then
wincount=0
end
end
