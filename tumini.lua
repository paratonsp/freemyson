ntarget = 11
target  = 21
simpan  = balance-(target-ntarget)
dompet  = "DFnVezCcWYHsrju7gCrcw4gMSSPKch3sN8"
--
gan = 10000
--
bb = balance/gan
iw = 1
il = 1.6
pr = 0
--
nextbet = bb
chance = 19
--
function dobet()
--
if (balance>target) then
    simpan = balance-(target-ntarget)
    withdraw(simpan,dompet)
    bb = balance/gan
    nb = bb
end
--
pf = profit
pb = previousbet
if win then
    nb = pb * iw
else
    nb = pb * il
end
if pf > pr then
    pr = pf
    nb = bb
end
nextbet = nb
chance  = math.random(19,20)
end
