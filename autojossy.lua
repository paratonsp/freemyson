--dobet int
betcalc = 0.00274702
bethigh = false
stopnow = false
first = true
done = true
chance = 27.5
gan = 100000
base = balance*(betcalc/gan)
curbet = base*3.7255
nextbet = base
w = 0
tbet = 200000
--
--worststreak int
maxstreakloses = 0
streakloses = 0
--
--resetstats
resetstats()
--
--------------------
--dobet
function dobet()
    --detect worststreak
    if (bets>=0) and (bets<=tbet) then
        worststreak() end
    --maxlstreakloses
    if (bets>=tbet) then
        if (maxstreakloses<=7) then betcalc=7.3446286 end
        if (maxstreakloses==8) then betcalc=1.9714477 end
        if (maxstreakloses==9) then betcalc=0.5291766 end
        if (maxstreakloses==10) then betcalc=0.14204170 end
        if (maxstreakloses==11) then betcalc=0.03812690 end
        if (maxstreakloses==12) then betcalc=0.01023403 end
        if (maxstreakloses>=13) then stop()
            print("NOT PROFITABLE") end
    end
    --balance stop
    if (nextbet>balance) then stop() end
    --base
    base = balance*(betcalc/gan)
    --!win
    if (first) then
        if(stopnow) then stop() end
        if !win then
            chance = 50
            nextbet = curbet
            first = false
            done = true
        end
    end
    --win
    if(!first and !done) then
        if(stopnow) then stop() end
        if win then
            chance = 25
            curbet = base*3.7255
            nextbet = base
            w+=1
            first = true
            done = true
        else
            curbet = curbet*3.7255
            nextbet = curbet
            chance = 72.5
        end
    end
    done = false
end
--
--------------------
--worststreak
function worststreak()
    if !win then
        streakloses=streakloses+1
        if maxstreakloses<=streakloses then
            maxstreakloses=streakloses end
    else
        streakloses=0
    end
end
--------------------
