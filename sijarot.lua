wallet = "DFnVezCcWYHsrju7gCrcw4gMSSPKch3sN8"
--
basebet = balance/200000
keepminbal = true
play11x = false
runMax = 10000
------------------------
tbase = 0.00000010
nextbet = basebet
bchance = 49.5000                               
tchance = 90.0000                               
chance = bchance
bhilo = true
if (math.random(0,1) ==1) then
bhilo = true else
bhilo = false end
thilo = true
runCnt = 0
runMax = runMax
bmulti = 2.25
lmulti = 2.25
multi = 2.00
tmulti = 13
tmaxroll = 0
maxroll = 0
aRoll = 50
bRoll = 49
bloss = 0
blossmax = 0
nextbal = balance
minbal = 0
reverse = false
tlo = 9.99
thi = 90
tgo = false
tbaldiv = 2380
tbaldiv2 = 183
tenbets = 0
x2loss = 0
maxbal = balance
maxbalmulti = 2

-- initialize array for max multiplier based on maxroll
-- Initialize bray[75]
mcnt = 75
bray = {}
for n = 0, mcnt do
    bray[n] = lmulti + (0.01 * n) -- Array of bet multiplier values
end
-- End initilization

-- Initialize arrays for streak tracking
-- This is used to stay on the better side of 50 when betting 2x
tcnt = 19
trkl = {}
trkh = {}
for n = 0, tcnt do
    trkl[n] = 0
    trkh[n] = 0
end
-- END array initialization

resetstats()

function dobet()

bRoll = aRoll
aRoll = lastBet.Roll


if (runCnt == 0) then
    maxbal = balance * maxbalmulti
end


if ((balance > nextbal) and (runCnt > runMax)) then
    withdraw(profit,wallet)
    resetstats()
    runCnt = 0
end

if ((balance > nextbal) or (runCnt == 0)) then
    nextbal = balance

    -- Function to set minbal
    -- Based on balance and multiplier. 
    m = bmulti -- Changed to current multiplier
    b = basebet

    cnt1 = 0
    car1 = 0
    car2 = 0
    car1 = b
    for cnt1 = 0, 30 do
        car2 = car1 + (b * m^(cnt1 + 1))
        if (balance > (2 * car2)) then
            minbal = car2
        end
        car1 = car2
    end
end
-- END Function to set minbal



---------------------------------------------------------------------------------------------------
-- Start process to determine current bet multiplier


if ((math.fmod(runCnt, 100) == 0) or (runCnt == 0)) then
    multi = 2.00
    tmaxroll = 0
    for n = 0, mcnt do
        bmulti = bray[n]
        
    
        -- Funtion to set maxroll
        -- Based on balance and multiplier. 
        m = bmulti
        b = basebet
        car1 = 0
        car2 = 0

        car1 = b 
        counter = 0
        found = false
        while (counter<=30 and (!found)) do
            car2 = car1 + (b * m^(counter+1))
            if ((balance > car1) and (balance < car2)) then
                maxroll=counter+1
                found = true
            end
            car1 = car2
            counter+=1	
        end
        -- End set maxroll

        if ((maxroll >= tmaxroll) and  (bmulti >= multi)) then                 
            tmaxroll = maxroll
            multi = bmulti
        end 
    end     -- End for statement
    bmulti = multi                     -- Output 2x multiplier
    maxroll = tmaxroll                  -- test first
end     -- End of if statement
---------------------------------------------------------------------------------------------------
-- End process to set bet multiplier



-- 2x bet Streak tracking
-- Continuous array population
for n = 0, (tcnt - 1) do
    trkl[n] = trkl[n + 1]
    trkh[n] = trkh[n + 1]
end

if (aRoll < 50) then
    trkl[tcnt] = 1
    trkh[tcnt] = 0
else
    if (aRoll > 49.99) then
        trkl[tcnt] = 0
        trkh[tcnt] = 1
    end
end
-- END array population

-- Sumation
lcnt = 0
hcnt = 0
for n = 0, tcnt do
    lcnt += trkl[n]
    hcnt += trkh[n]
end
-- END Sumation


-- currentstreak reverse
neg = math.floor(maxroll / 2)
if (currentstreak < -(neg)) then
    if reverse then
        reverse = false
    else
        reverse = true
    end
end
-- END currentstreak reverse


if (lcnt == hcnt) then                              --<< Must be after currentstreak reverse and before test
    reverse = false
end


-- Begin Test
if (runCnt > tcnt) then
    if (reverse) then
        if (lcnt > hcnt) then
            bhilo = true                            --< Tests seem to indicate reverse is better than forward.
        else
            if (lcnt < hcnt) then
                bhilo = false
            end
        end
    else
        if (lcnt > hcnt) then
            bhilo = false
        else
            bhilo = true
        end
    end
end
-- END Test
-- END 2x bet Streak Tracking



-- tbaldiv calc
-- Sets tbaldiv to a safe 1.1x bet based on balance
-- tbaldiv2 is one roll less safe
if ((math.fmod(runCnt, 100) == 0) or (runCnt == 0)) then
    if (balance < 0.00002380) then
        tbaldiv = 183                                               -- 3 rolls
        tbaldiv2 = 14                                               -- 2 rolls
    else
        if (balance < 0.00030941) then
            tbaldiv = 2380                                          -- 4 rolls
            tbaldiv2 = 183                                          -- 3 rolls
        else
            if (balance < 0.00402234) then
                tbaldiv = 30941                                      -- 5 rolls                                   
                tbaldiv2 = 2380                                      -- 4 rolls
            else
                if (balance < 0.05229043) then
                    tbaldiv = 30941                                  -- 5 rolls
                    tbaldiv2 = 2380                                  -- 4 rolls
                else
                    if (balance < 0.67977560) then
                        tbaldiv = 402234                             -- 6 rolls
                        tbaldiv2 = 30941                             -- 5 rolls
                    else 
                        if (balance > 0.67977560) then
                            tbaldiv = 402234                        -- at least 6 rolls
                            tbaldiv2 = 30941                        -- at least 5 rolls
                        end
                    end
                end
            end
        end
    end
end
-- END tbaldiv calc
            

-- 1.1x bet test
if play11x then
    if ((aRoll < tlo) and (bRoll < tlo)) then
        tgo = true
        thilo = true
    else
        if ((aRoll > thi) and (bRoll > thi)) then
            tgo = true
            thilo = false
        end
    end
end
-- END 1.1x bet test

-- Calculate 1.1x basebet
if (math.random(0,4) == 1) then                         -- 1 in 5 chance of higher 1.1x bet being played
    tbase = balance / tbaldiv2
else
    tbase = balance / tbaldiv    
end
-- END calculate 1.1x basebet
-- END 1.1x bet test



-- Begin bet calcs
if (chance == bchance) then
    if win then
        x2loss = 0
        if tgo then
            tenbets += 1
            chance = tchance
            nextbet = tbase
            bethigh = thilo
        else
             bethigh = bhilo
            nextbet = basebet
            bloss = 0
        end
    else    
        x2loss += previousbet
        if tgo then
            tenbets += 1
            if ((x2loss) < (tbase / 10)) then
                chance = tchance
                nextbet = tbase
                 bethigh = thilo
                 x2loss = 0
            else
                nextbet = previousbet * bmulti
                bloss += 1
                bethigh = bhilo
                tgo = false
            end
        else
            nextbet = previousbet * bmulti
            bloss += 1
            bethigh = bhilo  
        end
    end
else
    if (chance == tchance) then
        if win then
            chance = bchance
            nextbet = basebet
            bethigh = bhilo
            tgo = false
            bloss = 0
            x2loss = 0
        else
            nextbet = previousbet * tmulti
        end
    end
end

if (bloss > blossmax) then
    blossmax = bloss
end

runCnt += 1

if keepminbal then
    if((balance - nextbet) < minbal) then
        print("You Lost!")
        stop()
    end
end

end     --END dobet()
