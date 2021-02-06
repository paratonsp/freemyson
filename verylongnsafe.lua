username = "username"
---
div = 0.0000001
adiv = 7.5
target = balance*1000
a = balance/adiv
base = a*div
nextbet = base
chance = 95
bethigh = true
resetstats()
---

function dobet()

if balance>target then stop() end 
if win then
a = balance/adiv
base = a*div
nextbet = base
chance = 0.01
bethigh = !bethigh
else
if (currentstreak==-1) then nextbet=a*0.0000001; chance=0.02; end
if (currentstreak==-2) then nextbet=a*0.0000001; chance=0.03; end
if (currentstreak==-3) then nextbet=a*0.0000001; chance=0.04; end
if (currentstreak==-4) then nextbet=a*0.0000001; chance=0.05; end
if (currentstreak==-5) then nextbet=a*0.0000001; chance=0.06; end
if (currentstreak==-6) then nextbet=a*0.0000001; chance=0.07; end
if (currentstreak==-7) then nextbet=a*0.0000001; chance=0.08; end
if (currentstreak==-8) then nextbet=a*0.0000001; chance=0.09; end
if (currentstreak==-9) then nextbet=a*0.0000001; chance=0.10; end
if (currentstreak==-10) then nextbet=a*0.0000001; chance=0.20; end
if (currentstreak==-11) then nextbet=a*0.0000001; chance=0.30; end
if (currentstreak==-12) then nextbet=a*0.0000001; chance=0.40; end
if (currentstreak==-13) then nextbet=a*0.0000001; chance=0.50; end
if (currentstreak==-14) then nextbet=a*0.0000002; chance=0.60; end
if (currentstreak==-15) then nextbet=a*0.0000002; chance=0.70; end
if (currentstreak==-16) then nextbet=a*0.0000002; chance=0.80; end
if (currentstreak==-17) then nextbet=a*0.0000002; chance=0.90; end
if (currentstreak==-18) then nextbet=a*0.0000002; chance=1.00; end
if (currentstreak==-19) then nextbet=a*0.0000002; chance=1.10; end
if (currentstreak==-20) then nextbet=a*0.0000002; chance=1.20; end
if (currentstreak==-21) then nextbet=a*0.0000002; chance=1.30; end
if (currentstreak==-22) then nextbet=a*0.0000003; chance=1.40; end
if (currentstreak==-23) then nextbet=a*0.0000003; chance=1.50; end
if (currentstreak==-24) then nextbet=a*0.0000003; chance=1.60; end
if (currentstreak==-25) then nextbet=a*0.0000003; chance=1.70; end
if (currentstreak==-26) then nextbet=a*0.0000003; chance=1.80; end
if (currentstreak==-27) then nextbet=a*0.0000004; chance=1.90; end
if (currentstreak==-28) then nextbet=a*0.0000004; chance=2.00; end
if (currentstreak==-29) then nextbet=a*0.0000004; chance=3.00; end
if (currentstreak==-30) then nextbet=a*0.0000004; chance=4.00; end
if (currentstreak==-31) then nextbet=a*0.0000005; chance=4.95; end
if (currentstreak<=-31) then chance=4.95 end
if (currentstreak==-32) then nextbet=a*0.0000005 end
if (currentstreak==-33) then nextbet=a*0.0000005 end
if (currentstreak==-34) then nextbet=a*0.0000006 end
if (currentstreak==-35) then nextbet=a*0.0000006 end
if (currentstreak==-36) then nextbet=a*0.0000006 end
if (currentstreak==-37) then nextbet=a*0.0000007 end
if (currentstreak==-38) then nextbet=a*0.0000007 end
if (currentstreak==-39) then nextbet=a*0.0000008 end
if (currentstreak==-40) then nextbet=a*0.0000008 end
if (currentstreak==-41) then nextbet=a*0.0000009 end
if (currentstreak==-42) then nextbet=a*0.0000009 end
if (currentstreak==-43) then nextbet=a*0.0000010 end
if (currentstreak==-44) then nextbet=a*0.0000011 end
if (currentstreak==-45) then nextbet=a*0.0000011 end
if (currentstreak==-46) then nextbet=a*0.0000012 end
if (currentstreak==-47) then nextbet=a*0.0000013 end
if (currentstreak==-48) then nextbet=a*0.0000014 end
if (currentstreak==-49) then nextbet=a*0.0000015 end
if (currentstreak==-50) then nextbet=a*0.0000016 end
if (currentstreak==-51) then nextbet=a*0.0000017 end
if (currentstreak==-52) then nextbet=a*0.0000018 end
if (currentstreak==-53) then nextbet=a*0.0000019 end
if (currentstreak==-54) then nextbet=a*0.0000020 end
if (currentstreak==-55) then nextbet=a*0.0000022 end
if (currentstreak==-56) then nextbet=a*0.0000023 end
if (currentstreak==-57) then nextbet=a*0.0000025 end
if (currentstreak==-58) then nextbet=a*0.0000026 end
if (currentstreak==-59) then nextbet=a*0.0000028 end
if (currentstreak==-60) then nextbet=a*0.0000030 end
if (currentstreak==-61) then nextbet=a*0.0000032 end
if (currentstreak==-62) then nextbet=a*0.0000034 end
if (currentstreak==-63) then nextbet=a*0.0000036 end
if (currentstreak==-64) then nextbet=a*0.0000039 end
if (currentstreak==-65) then nextbet=a*0.0000041 end
if (currentstreak==-66) then nextbet=a*0.0000044 end
if (currentstreak==-67) then nextbet=a*0.0000047 end
if (currentstreak==-68) then nextbet=a*0.0000050 end
if (currentstreak==-69) then nextbet=a*0.0000054 end
if (currentstreak==-70) then nextbet=a*0.0000057 end
if (currentstreak==-71) then nextbet=a*0.0000061 end
if (currentstreak==-72) then nextbet=a*0.0000065 end
if (currentstreak==-73) then nextbet=a*0.0000069 end
if (currentstreak==-74) then nextbet=a*0.0000074 end
if (currentstreak==-75) then nextbet=a*0.0000079 end
if (currentstreak==-76) then nextbet=a*0.0000084 end
if (currentstreak==-77) then nextbet=a*0.0000090 end
if (currentstreak==-78) then nextbet=a*0.0000096 end
if (currentstreak==-79) then nextbet=a*0.0000102 end
if (currentstreak==-80) then nextbet=a*0.0000109 end
if (currentstreak==-81) then nextbet=a*0.0000116 end
if (currentstreak==-82) then nextbet=a*0.0000124 end
if (currentstreak==-83) then nextbet=a*0.0000132 end
if (currentstreak==-84) then nextbet=a*0.0000141 end
if (currentstreak==-85) then nextbet=a*0.0000150 end
if (currentstreak==-86) then nextbet=a*0.0000160 end
if (currentstreak==-87) then nextbet=a*0.0000171 end
if (currentstreak==-88) then nextbet=a*0.0000183 end
if (currentstreak==-89) then nextbet=a*0.0000195 end
if (currentstreak==-90) then nextbet=a*0.0000208 end
if (currentstreak==-91) then nextbet=a*0.0000222 end
if (currentstreak==-92) then nextbet=a*0.0000236 end
if (currentstreak==-93) then nextbet=a*0.0000252 end
if (currentstreak==-94) then nextbet=a*0.0000269 end
if (currentstreak==-95) then nextbet=a*0.0000287 end
if (currentstreak==-96) then nextbet=a*0.0000306 end
if (currentstreak==-97) then nextbet=a*0.0000326 end
if (currentstreak==-98) then nextbet=a*0.0000348 end
if (currentstreak==-99) then nextbet=a*0.0000371 end
if (currentstreak==-100) then nextbet=a*0.0000396 end
if (currentstreak==-101) then nextbet=a*0.0000422 end
if (currentstreak==-102) then nextbet=a*0.0000451 end
if (currentstreak==-103) then nextbet=a*0.0000481 end
if (currentstreak==-104) then nextbet=a*0.0000513 end
if (currentstreak==-105) then nextbet=a*0.0000547 end
if (currentstreak==-106) then nextbet=a*0.0000583 end
if (currentstreak==-107) then nextbet=a*0.0000622 end
if (currentstreak==-108) then nextbet=a*0.0000664 end
if (currentstreak==-109) then nextbet=a*0.0000708 end
if (currentstreak==-110) then nextbet=a*0.0000755 end
if (currentstreak==-111) then nextbet=a*0.0000806 end
if (currentstreak==-112) then nextbet=a*0.0000859 end
if (currentstreak==-113) then nextbet=a*0.0000917 end
if (currentstreak==-114) then nextbet=a*0.0000978 end
if (currentstreak==-115) then nextbet=a*0.0001043 end
if (currentstreak==-116) then nextbet=a*0.0001112 end
if (currentstreak==-117) then nextbet=a*0.0001187 end
if (currentstreak==-118) then nextbet=a*0.0001266 end
if (currentstreak==-119) then nextbet=a*0.0001350 end
if (currentstreak==-120) then nextbet=a*0.0001440 end
if (currentstreak==-121) then nextbet=a*0.0001536 end
if (currentstreak==-122) then nextbet=a*0.0001638 end
if (currentstreak==-123) then nextbet=a*0.0001748 end
if (currentstreak==-124) then nextbet=a*0.0001864 end
if (currentstreak==-125) then nextbet=a*0.0001988 end
if (currentstreak==-126) then nextbet=a*0.0002121 end
if (currentstreak==-127) then nextbet=a*0.0002262 end
if (currentstreak==-128) then nextbet=a*0.0002413 end
if (currentstreak==-129) then nextbet=a*0.0002574 end
if (currentstreak==-130) then nextbet=a*0.0002746 end
if (currentstreak==-131) then nextbet=a*0.0002929 end
if (currentstreak==-132) then nextbet=a*0.0003124 end
if (currentstreak==-133) then nextbet=a*0.0003332 end
if (currentstreak==-134) then nextbet=a*0.0003554 end
if (currentstreak==-135) then nextbet=a*0.0003791 end
if (currentstreak==-136) then nextbet=a*0.0004044 end
if (currentstreak==-137) then nextbet=a*0.0004314 end
if (currentstreak==-138) then nextbet=a*0.0004601 end
if (currentstreak==-139) then nextbet=a*0.0004908 end
if (currentstreak==-140) then nextbet=a*0.0005235 end
if (currentstreak==-141) then nextbet=a*0.0005584 end
if (currentstreak==-142) then nextbet=a*0.0005956 end
if (currentstreak==-143) then nextbet=a*0.0006354 end
if (currentstreak==-144) then nextbet=a*0.0006777 end
if (currentstreak==-145) then nextbet=a*0.0007229 end
if (currentstreak==-146) then nextbet=a*0.0007711 end
if (currentstreak==-147) then nextbet=a*0.0008225 end
if (currentstreak==-148) then nextbet=a*0.0008773 end
if (currentstreak==-149) then nextbet=a*0.0009358 end
if (currentstreak==-150) then nextbet=a*0.0009982 end
if (currentstreak==-151) then nextbet=a*0.0010647 end
if (currentstreak==-152) then nextbet=a*0.0011357 end
if (currentstreak==-153) then nextbet=a*0.0012114 end
if (currentstreak==-154) then nextbet=a*0.0012922 end
if (currentstreak==-155) then nextbet=a*0.0013783 end
if (currentstreak==-156) then nextbet=a*0.0014702 end
if (currentstreak==-157) then nextbet=a*0.0015682 end
if (currentstreak==-158) then nextbet=a*0.0016728 end
if (currentstreak==-159) then nextbet=a*0.0017843 end
if (currentstreak==-160) then nextbet=a*0.0019033 end
if (currentstreak==-161) then nextbet=a*0.0020302 end
if (currentstreak==-162) then nextbet=a*0.0021655 end
if (currentstreak==-163) then nextbet=a*0.0023099 end
if (currentstreak==-164) then nextbet=a*0.0024639 end
if (currentstreak==-165) then nextbet=a*0.0026281 end
if (currentstreak==-166) then nextbet=a*0.0028033 end
if (currentstreak==-167) then nextbet=a*0.0029902 end
if (currentstreak==-168) then nextbet=a*0.0031896 end
if (currentstreak==-169) then nextbet=a*0.0034022 end
if (currentstreak==-170) then nextbet=a*0.0036290 end
if (currentstreak==-171) then nextbet=a*0.0038709 end
if (currentstreak==-172) then nextbet=a*0.0041290 end
if (currentstreak==-173) then nextbet=a*0.0044043 end
if (currentstreak==-174) then nextbet=a*0.0046979 end
if (currentstreak==-175) then nextbet=a*0.0050111 end
if (currentstreak==-176) then nextbet=a*0.0053452 end
if (currentstreak==-177) then nextbet=a*0.0057015 end
if (currentstreak==-178) then nextbet=a*0.0060816 end
if (currentstreak==-179) then nextbet=a*0.0064870 end
if (currentstreak==-180) then nextbet=a*0.0069195 end
if (currentstreak==-181) then nextbet=a*0.0073808 end
if (currentstreak==-182) then nextbet=a*0.0078729 end
if (currentstreak==-183) then nextbet=a*0.0083977 end
if (currentstreak==-184) then nextbet=a*0.0089576 end
if (currentstreak==-185) then nextbet=a*0.0095547 end
if (currentstreak==-186) then nextbet=a*0.0101917 end
if (currentstreak==-187) then nextbet=a*0.0108712 end
if (currentstreak==-188) then nextbet=a*0.0115959 end
if (currentstreak==-189) then nextbet=a*0.0123690 end
if (currentstreak==-190) then nextbet=a*0.0131936 end
if (currentstreak==-191) then nextbet=a*0.0140732 end
if (currentstreak==-192) then nextbet=a*0.0150114 end
if (currentstreak==-193) then nextbet=a*0.0160121 end
if (currentstreak==-194) then nextbet=a*0.0170796 end
if (currentstreak==-195) then nextbet=a*0.0182182 end
if (currentstreak==-196) then nextbet=a*0.0194328 end
if (currentstreak==-197) then nextbet=a*0.0207283 end
if (currentstreak==-198) then nextbet=a*0.0221102 end
if (currentstreak==-199) then nextbet=a*0.0235842 end
if (currentstreak<=-199) then nextbet=a*0.0235842 end
end
if balance<nextbet then stop(); print("BALANCE NDAK CUKUP KO"); end
if (username=="username") then stop() print("ISIEN USERNAME COK") end
profitn = profit/(balance-profit)*100
print("\nUser : "..username)
print("Balance : "..string.format("%.5f",balance).." "..currency)
print("Profit : "..string.format("%.5f",profit).." ("..string.format("%.2f",profitn).."%)")
print("Streak : "..currentstreak.."\n")
end
