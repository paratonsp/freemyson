div     = 1200000
basebet = balance/div
a       = basebet
nextbet = basebet
bethigh = false
chance  = 0.09
resetstats()
resetseed()
--
function dobet()
if win then
    resetseed()
    basebet=balance/div
    a=basebet
    nextbet=basebet
end
--
if !win then
    nextbet=previousbet*1.002
    if nextbet>(a*10) then
        nextbet=previousbet*1.00125
    end
    if nextbet>(a*100) then
        nextbet=previousbet*1.001
    end
    if nextbet>balance then stop() end
end
end
