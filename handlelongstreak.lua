gan                   = 50000
basebet               = balance/gan
basechance            = 90
increasebetEveryLosts = 15 
increasebetBy         = 2
maxstreak             = -100
b                     = balance
-------------------------------------
chance  = basechance
nextbet = basebet 
co      = (1/basechance)*99
cco     = co
lc1     = 0
lc2     = 0
pp      = 0
profits = 0
sbr     = balance
negs    = 0
lvl     = 1
lvl2    = lvl
bethigh = true
stopwin = false
-------------------------------------
function dobet()
    profits += currentprofit
    if profits >= 0 then 
        if stopwin then stop() end
    end
    if win then
        nextbet = basebet
        chance  = basechance
        cco     = co
        lc1     = 0
        lc2     = 0
        lvl     = 1
        sbr     = balance
    else
        lc1+=1
        lc2+=1
        negs = sbr-balance 
        pp   = basebet*(lc1*(co-1))
        if lc2>=increasebetEveryLosts or chance < 5 then
            lvl += 1
            nextbet*=increasebetBy
            cco = ((negs+pp)/nextbet)+1 
            lc2 = 0
        else
            cco+=co
        end
        chance = (1/cco)*99
    end
    
    if chance < 5 then 
        chance  = 5
        nextbet = previousbet * 1.065
    end
    if lvl > lvl2 then lvl2 = lvl end
    if currentstreak < maxstreak then stopwin = true end
    if (balance>=(b*2)) then
        gan                   = 50000
        basebet               = balance/gan
        basechance            = 90
        increasebetEveryLosts = 15 
        increasebetBy         = 2
        maxstreak             = -100
        b                     = balance
        -------------------------------------
        chance  = basechance
        nextbet = basebet 
        co      = (1/basechance)*99
        cco     = co
        lc1     = 0
        lc2     = 0
        pp      = 0
        profits = 0
        sbr     = balance
        negs    = 0
        lvl     = 1
        lvl2    = lvl
        bethigh = true
        stopwin = false     
    end
    print("\n\n")
    print("count "..lc2.."/"..increasebetEveryLosts)
    print("level "..lvl.."/"..lvl2)
    print("bet "..nextbet)
end
