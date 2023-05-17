TIC=function()
  e=e+1
  for o=0,256 do
    for d=0,136 do
      pix(o,d,(136-u[o+e//2]>d and d/632*(u[o+d*256]+u[o+e//3+d*256])or 136-u[o+e]/2>d and 2or 0)*(1-2^(-e
/256))-(d/4+o/2)%1)
    end
    poke(o%48+16320,256/(2^(5-o%48/5-o%48%3)+1))
  end
end
u={}
e={}
for o=0,5 do
  for d=0,3e5 do
    e[d]=math.random()
  end
  m=256//2^o
  for d=0,3e5 do
    p=e[d//2^o%m+d/256//2^o%m*m+1]+d%2^o/2^o*(e[(d//2^o%m+1)%m+d/256//2^o%m*m+1]-e[d//2^o%m+d/256//2^o%m*m
+1])
    u[d]=(u[d]or 0)+2^o*(p+d/256%2^o/2^o*(d%2^o/2^o*(e[(d//2^o%m+1)%m+(d/256//2^o%m+1)%m*m+1]-e[d//2^o%m+(
d/256//2^o%m+1)%m*m+1])+e[d//2^o%m+(d/256//2^o%m+1)%m*m+1]-p))
  end
end
e=1
-- *p/(256+p)
--)*(math.sin(p/400)+1)
