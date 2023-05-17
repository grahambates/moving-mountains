TIC=function()
  e=e+1
  for o=0,256 do
    for d=0,136 do
      pix(o,d,(136-p[o+e]/2<d and 0or 136-p[o+e//2]<d and 3or d*(p[o+d*256]+p[o+e//3+d*256])/632)*(1-2^(-e
/256))-(d/4+o/2)%1)
    end
    poke(o%48+16320,256/(2^(5-o%48/5-o%48%3)+1))
  end
end
e={}
p={}
for o=0,5 do
  for d=0,3e5 do
    e[d]=math.random()
  end
  r=256//2^o
  for d=0,3e5 do
    m=d%2^o/2^o*(e[(d//2^o%r+1)%r+d/256//2^o%r*r+1]-e[d//2^o%r+d/256//2^o%r*r+1])+e[d//2^o%r+d/256//2^o%r*
r+1]
    p[d]=2^o*(d/256%2^o/2^o*(d%2^o/2^o*(e[(d//2^o%r+1)%r+(d/256//2^o%r+1)%r*r+1]-e[d//2^o%r+(d/256//2^o%r+
1)%r*r+1])+e[d//2^o%r+(d/256//2^o%r+1)%r*r+1]-m)+m)+(p[d]or 0)
  end
end
e=0
-- *p/(256+p)
--)*(math.sin(p/400)+1)


