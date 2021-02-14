chance = 13.34
bethigh = true
basebet = balance/180000
nextbet = basebet
resetstats()
resetseed()

function dobet()
  if (wins>=50) then
    resetseed()
    resetstats()
    basebet = balance/180000
  end
  --
  if win then
    nextbet = basebet
  else
    nextbet = previousbet*1.25
  end
end
