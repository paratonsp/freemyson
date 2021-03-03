--
div=200000
chance = 49.5
base = balance/div
nextbet = base
r = 1
betcount = 0
------------------------
function dobet()
--
betcount+=1
--
base = balance/div
--------------

if r == 1 then
  chance = 49
  if !win then
    nextbet = previousbet*2.05
    chance = 49
  end
end
--
if r == 2 then
  chance = 20
  if !win then
    nextbet = previousbet*1.3
    chance = 20
  end
end
--
if r == 3 then
  chance = 10
  if !win then
    nextbet = previousbet*1.2
    chance = 10
  end
end
--
if r == 4 then
  chance = 5
  if !win then
    nextbet = previousbet*1.075
    chance = 5
  end
end
--
if r == 5 then
  chance = 75
  if !win then
    nextbet = previousbet*5
    chance = 75
  end
end
--
if r == 6 then
  chance = 60
  if !win then
    nextbet = previousbet*3
    chance = 60
  end
end
--
if r == 7 then
  chance = 15
  if !win then
    nextbet = previousbet*1.25
    chance = 15
  end
end
--
if win then
  r=math.random(7)
  chance = 10
  nextbet = base
  bethigh = !bethigh
end
end
