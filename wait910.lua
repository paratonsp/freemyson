--9.9.lua
gan=2.03
--
div=1000*gan
base=balance/div
nextbet=base
chance=9.9
tnf={true,false,true,false,true}
w=0
--
resetstats()
--
function dobet()
--
if (w==10) then
    wait(60)
    w=0
end

--
tt=100000000
chance=math.random(9.9*tt,10*tt)/tt
--
if win then
    w+=1
    base=balance/div
    nextbet=base
    bethigh=tnf[math.random(1,5)]
else
    if (currentstreak<-5) then
        nextbet=previousbet*1.125
    end
    --
    if (currentstreak<-95) then
        nextbet=previousbet
    end
end
end
--
function wait(second)
	clock=os.clock() 
	while os.clock()-clock<=second do
end
end
