m={}
p={}
TIC=function()
  p=p+1
  for o=0,256 do
    for e=0,136 do
      pix(o,e,
      	e<136-m[o+p//2]
       and
      	(m[(e*256+o+p//7)%256^2+1]+m[(e*256+o+p//4)%256^2+1])*e/756
     -(o/2+e/4)%1
      	or
      	e<136-m[o+p]/2
       and 1 or 0
      )
    end
    poke(o%48+16320,256/(2^(5-o%48%3-o%48/5)+1))
  end
end
for o=0,5 do
  for e=0,256^2 do
    p[e]=math.random()
  end
  r=256//2^o
  for e=0,256^2 do
    d=p[e//2^o%r+e/256//2^o%r*r+1]+e%2^o/2^o*(p[(e//2^o%r+1)%r+e/256//2^o%r*r+1]-p[e//2^o%r+e/256//2^o%r*r
+1])
    m[e]=2^o*(e/256%2^o/2^o*(e%2^o/2^o*(p[(e//2^o%r+1)%r+(e/256//2^o%r+1)%r*r+1]-p[e//2^o%r+(e/256//2^o%r+
1)%r*r+1])+p[e//2^o%r+(e/256//2^o%r+1)%r*r+1]-d)+d)+(m[e]or 0)
  end
end
p=1

