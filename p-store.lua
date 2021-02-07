div       = 750000
base      = balance/div
nextbet   = base
bethigh   = false
p         = 0
l         = 0
wincount  = 0
losecount = 0
a         = 0
t         = 5
po        = 1
multi     = 1.17
chance    = 91

resetstats()
function dobet()

if wincount == 5 then
    bethigh=!bethigh
    wincount = 0
end

if currentprofit > 0 then
    p+= currentprofit
 else
    l-= currentprofit
end 

if win then
    biv     = balance/div
    nextbet = biv
    chance  = math.random(3000,8000)/100
    wincount+=1
    p = 0
    l = 0
    a = 0
    losecount = 0
 else
    a = math.random(4,9)
    nextbet = l/po
    
    if a == 4 then
        chance = 58.6
        po = 0.70477
        nextbet = (l+biv)/po
    end
    if a == 5 then
        chance = 59.6
        po = 0.6761
        nextbet = (l+biv)/po
    end
    if a == 6 then
        chance = 60.6
        po = 0.6485
        nextbet = (l+biv)/po
    end
    if a == 7 then
        chance = 61.8
        po = 0.6165
        nextbet = (l+biv)/po
    end
    if a == 8 then
        chance = 62.68 
        po = 0.593
        nextbet = (l+biv)/po
    end 
    if a == 9 then
        chance = 63.68
        po = 0.5687
        nextbet = (l+biv)/po
    end
    losecount+=1
end
profitn=profit/(balance-profit)*100
print("\nProfit: "..string.format("%.5f",profit).." "..currency.." ("..string.format("%.2f",profitn).."%)\n")
end
