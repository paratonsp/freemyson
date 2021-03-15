div = 0.0000025
x   = balance*div
y   = {balance*0.01,0,3,true}
e   = {1.201,2.412}
b   = 0
c   = 80
f   = false
--
nextbet = x
chance  = c
bethigh = true
--
resetstats()
--
function r(x,y) return math.random(x,y) end
--
function dobet()
    a = profit
    c = chance
    d = previousbet
        if a>b then
            y[4]=true
            b=a
            if f then
                stop()
            end
        end
        --
        if win then
            if c>70 then
                c=r(60,70)
                n=d*e[1]
            else
                n=x
                c=r(79,90)
            end
        else
            c=r(79,80)n=d*e[2]
        end
        --
        if n>y[1] and y[4] then
            y[4]=false
            y[2]=y[2]+1
        end
        --
        if y[2]>=y[3] then
            f=true
        end
        --
    print("====================")
    print(">> "..y[2].."/"..y[3])
    nextbet=n
    chance=c
end
