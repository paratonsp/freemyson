
-- L3gionario progressive trik
-- Minimum Bankroll is at 0.001 BTC

chance1 = 82.54  -->1.2X payout
chance2 = 76.22  -->1.3X payout
chance3 = 70.78  -->1.4X Payout
chance4 = 66.05  -->1.5X Payout
chance5 = 47.10  -->2.1X Payout
chance6 = 30.94  -->3.2X Payout
chance7 = 25.02  -->3.95X Payout
--
m1 = 6.504            
m2 = 4.501
m3 = 3.752
m4 = 3.1
m5 = 2
m6 = 1.551
m7 = 1.423
--
target = balance
--
div       = 100000
base      = balance/div
basebet   = base
nextbet   = basebet
chance    = chance1
bethigh   = false
betcount  = 0
session   = 0
--
wincount=0
lostchance=0
losecount=0
low=0
high=0
counter=0
--
resetseed()
resetstats()
--
function dobet()
--
betroll()
rstseed()
betcount+=1
--
if win then

    if profit>target then
        stop()
        print("TARGET REACHED!")
    end

    hilo()
    
    if basebet < base then
        basebet = base
        nextbet = basebet
    end

    nextbet=basebet
    wincount+=1
    losecount=0
    if wincount>0 then
        chance=chance1
        lostchance=1
    end

    if wincount>2 then
        chance=chance2
        lostchance=2
    end

    if wincount>4 then
        chance=chance3
        lostchance=3
    end

    if wincount>6 then
        chance=chance4
        lostchance=4
    end

    if wincount>8 then
        chance=chance5
        lostchance=5
    end

        if wincount>10 then
        chance=chance6
        lostchance=6
    end

        if wincount>12 then
        chance=chance7
        lostchance=7   
    end

        
    if wincount>14 then
        chance=chance1
        lostchance=1
        wincount=0
        session+=1
        low=0
        high=0
    end

else
    nextbet=previousbet*m1
    losecount+=1

    if lostchance==1 then
        if chance==chance1 then
            nextbet=previousbet*m1
        else
            chance=chance1
            nextbet=previousbet*m1
        end
    end

    if lostchance==2 then
        if chance==chance2 then
            nextbet=previousbet*m2
        else
            chance=chance1
            nextbet=previousbet*m2
        end
    end

    if lostchance==3 then
        if chance==chance3 then
            nextbet=previousbet*m3
        else
            chance=chance1
            nextbet=previousbet*m3
        end
    end

    if lostchance==4 then
        if chance==chance4 then
            nextbet=previousbet*m4
        else
            chance=chance1
            nextbet=previousbet*m4
        end
    end

    if lostchance==5 then
        if chance==chance5 then
            nextbet=previousbet*m5
        else
            chance=chance1
            nextbet=previousbet*m5
        end
    end

    if lostchance==6 then
        if chance==chance6 then
            nextbet=previousbet*m6
        else
            chance=chance1
            nextbet=previousbet*m6
        end
    end

    if lostchance==7 then
        if chance==chance7 then
            nextbet=previousbet*m7
        else
            chance=chance1
            nextbet=previousbet*m7
        end
    end

   
end
end

function hilo()

        if high > low then
    bethigh=true
        else
    bethigh=false
        end

        if (high-low) > 15 then
    bethigh=false
        end

        if (low-high)> 15 then
    bethigh=true
        end
end

function betroll()

    if (lastBet.roll < chance) then
        low += 1
    end

    if (lastBet.roll > (99.99 - chance)) then
        high += 1
    end 

end

function rstseed()

if counter==500 then
    resetseed()
    counter=0
    low=0
    high=0
else
    counter+=1
end
end
