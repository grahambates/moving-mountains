n={}
a={}
for o=1,5 do
  --{
  for m=1,3e5 do
    n[m]=math.random()
  end
  e=256//2^o
  --}
  for m=1,3e5 do
    d=n[m//2^o%e+m/256//2^o%e*e+1]+m%2^o/2^o*(n[(m//2^o%e+1)%e+m/256//2^o%e*e+1]-n[m//2^o%e+m/256//2^o%e*e+1])
    a[m]=(a[m]or 0)+2^o*(d+m/256%2^o/2^o*(m%2^o/2^o*(n[(m//2^o%e+1)%e+(m/256//2^o%e+1)%e*e+1]-n[m//2^o%e+(m/256//2^o%e+1)%e*e+1])-d+n[m//2^o%e+(m/256//2^o%e+1)%e*e+1]))
  end
end

tv=0
function TIC()
	tv=t+1
	for x=0,256 do
		for y=0,135 do
			pix(
				x,y,
				(
					a[(y*256+x+t)%256^2+1]+
				 a[(y*256+x//2+t)%256^2+1]+
					a[(y*256+x//3+t)%256^2+1]
				)/23+7-(x/2+y/4)%1)
		end
    for o=1,5 do
      line(x,135,x,135-a[x+t*o]/o,10-o)
    end
	end
end
-- <PALETTE>
-- 000:1a1c2c5d275db13e53ef7d57ffcd75a7f07038b76425717929366f3b5dc941a6f673eff7f4f4f494b0c2566c86333c57
-- </PALETTE>

