_, Protected_by_MoonSecV2, Discord = 'discord.gg/gQEH2uZxUk'

local python_obsf=deobsf_indx or hubpddloads or(function()local a={_TYPE="\109\111\100\117\108\101",_NAME="\98\105\116\111\112\46\102\117\110\99\115",_VERSION="\49\46\48\45\48"}local b=math.floor;local c=2^32;local d=c-1;local function e(f)local g={}local h=setmetatable({},g)function g:__index(i)local j=f(i)h[i]=j;return j end;return h end;local function k(h,l)local function m(n,o)local p,q=0,1;while n~=0 and o~=0 do local r,s=n%l,o%l;p=p+h[r][s]*q;n=(n-r)/l;o=(o-s)/l;q=q*l end;p=p+(n+o)*q;return p end;return m end;local function t(h)local u=k(h,2^1)local v=e(function(n)return e(function(o)return u(n,o)end)end)return k(v,2^(h.n or 1))end;function a.tobit(w)return w%2^32 end;a.bxor=t{[0]={[0]=0,[1]=1},[1]={[0]=1,[1]=0},n=4}local x=a.bxor;function a.bnot(n)return d-n end;local y=a.bnot;function a.band(n,o)return(n+o-x(n,o))/2 end;local z=a.band;function a.bor(n,o)return d-z(d-n,d-o)end;local A=a.bor;local B,C;function a.rshift(n,D)if D<0 then return B(n,-D)end;return b(n%2^32/2^D)end;C=a.rshift;function a.lshift(n,D)if D<0 then return C(n,-D)end;return n*2^D%2^32 end;B=a.lshift;function a.tohex(w,E)E=E or 8;local F;if E<=0 then if E==0 then return"\\"end;F=true;E=-E end;w=z(w,16^E-1)return("\37\48"..E..(F and"\88"or"\120")):format(w)end;local G=a.tohex;function a.extract(E,H,I)I=I or 1;return z(C(E,H),2^I-1)end;local J=a.extract;function a.replace(E,j,H,I)I=I or 1;local K=2^I-1;j=z(j,K)local L=y(B(K,H))return z(E,L)+B(j,H)end;local M=a.replace;function a.bswap(w)local n=z(w,0xff)w=C(w,8)local o=z(w,0xff)w=C(w,8)local N=z(w,0xff)w=C(w,8)local O=z(w,0xff)return B(B(B(n,8)+o,8)+N,8)+O end;local P=a.bswap;function a.rrotate(w,D)D=D%32;local Q=z(w,2^D-1)return C(w,D)+B(Q,32-D)end;local R=a.rrotate;function a.lrotate(w,D)return R(w,-D)end;local S=a.lrotate;a.rol=a.lrotate;a.ror=a.rrotate;function a.arshift(w,D)local T=C(w,D)if w>=0x80000000 then T=T+B(2^D-1,32-D)end;return T end;local U=a.arshift;function a.btest(w,V)return z(w,V)~=0 end;a.bit32={}local function W(w)return(-1-w)%c end;a.bit32.bnot=W;local function X(n,o,N,...)local T;if o then n=n%c;o=o%c;T=x(n,o)if N then T=X(T,N,...)end;return T elseif n then return n%c else return 0 end end;a.bit32.bxor=X;local function Y(n,o,N,...)local T;if o then n=n%c;o=o%c;T=(n+o-x(n,o))/2;if N then T=Y(T,N,...)end;return T elseif n then return n%c else return d end end;a.bit32.band=Y;local function Z(n,o,N,...)local T;if o then n=n%c;o=o%c;T=d-z(d-n,d-o)if N then T=Z(T,N,...)end;return T elseif n then return n%c else return 0 end end;a.bit32.bor=Z;function a.bit32.btest(...)return Y(...)~=0 end;function a.bit32.lrotate(w,D)return S(w%c,D)end;function a.bit32.rrotate(w,D)return R(w%c,D)end;function a.bit32.lshift(w,D)if D>31 or D<-31 then return 0 end;return B(w%c,D)end;function a.bit32.rshift(w,D)if D>31 or D<-31 then return 0 end;return C(w%c,D)end;function a.bit32.arshift(w,D)w=w%c;if D>=0 then if D>31 then return w>=0x80000000 and d or 0 else local T=C(w,D)if w>=0x80000000 then T=T+B(2^D-1,32-D)end;return T end else return B(w,-D)end end;function a.bit32.extract(w,H,...)local I=...or 1;if H<0 or H>31 or I<0 or H+I>32 then error"\111\117\116\32\111\102\32\114\97\110\103\101"end;w=w%c;return J(w,H,...)end;function a.bit32.replace(w,j,H,...)local I=...or 1;if H<0 or H>31 or I<0 or H+I>32 then error"\111\117\116\32\111\102\32\114\97\110\103\101"end;w=w%c;j=j%c;return M(w,j,H,...)end;a.bit={}function a.bit.tobit(w)w=w%c;if w>=0x80000000 then w=w-c end;return w end;local _=a.bit.tobit;function a.bit.tohex(w,...)return G(w%c,...)end;function a.bit.bnot(w)return _(y(w%c))end;local function a0(n,o,N,...)if N then return a0(a0(n,o),N,...)elseif o then return _(A(n%c,o%c))else return _(n)end end;a.bit.bor=a0;local function a1(n,o,N,...)if N then return a1(a1(n,o),N,...)elseif o then return _(z(n%c,o%c))else return _(n)end end;a.bit.band=a1;local function a2(n,o,N,...)if N then return a2(a2(n,o),N,...)elseif o then return _(x(n%c,o%c))else return _(n)end end;a.bit.bxor=a2;function a.bit.lshift(w,E)return _(B(w%c,E%32))end;function a.bit.rshift(w,E)return _(C(w%c,E%32))end;function a.bit.arshift(w,E)return _(U(w%c,E%32))end;function a.bit.rol(w,E)return _(S(w%c,E%32))end;function a.bit.ror(w,E)return _(R(w%c,E%32))end;function a.bit.bswap(w)return _(P(w%c))end;return a.bit end)()if not table.create then function table.create(a)return{}end end;if not table.unpack then table.unpack=unpack end;if not table.pack then function table.pack(...)return{n=select("\35",...),...}end end;if not table.move then function table.move(b,c,d,e,f)for g=0,d-c do f[e+g]=b[c+g]end end end;local h;local i;local j;local k=50;local l={[22]=18,[31]=8,[33]=28,[0]=3,[1]=13,[2]=23,[26]=33,[12]=1,[13]=6,[14]=10,[15]=16,[16]=20,[17]=26,[18]=30,[19]=36,[3]=0,[4]=2,[5]=4,[6]=7,[7]=9,[8]=12,[9]=14,[10]=17,[20]=19,[21]=22,[23]=24,[24]=27,[25]=29,[27]=32,[32]=34,[34]=37,[11]=5,[28]=11,[29]=15,[30]=21,[35]=25,[36]=31,[37]=35}local m={[0]="\65\66\67","\65\66\120","\65\66\67","\65\66\67","\65\66\67","\65\66\120","\65\66\67","\65\66\120","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\115\66\120","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\66\67","\65\115\66\120","\65\115\66\120","\65\66\67","\65\66\67","\65\66\67","\65\66\120","\65\66\67"}local n={[0]={b="\79\112\65\114\103\82",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\85"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\85"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\82"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\75",c="\79\112\65\114\103\75"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\85"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\85"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\85"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\85"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\82",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\78",c="\79\112\65\114\103\85"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\85"},{b="\79\112\65\114\103\78",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\78"},{b="\79\112\65\114\103\85",c="\79\112\65\114\103\78"}}local function o(b,p,q,r)local s=0;for g=p,q,r do local t=256^math.abs(g-p)s=s+t*string.byte(b,g,g)end;return s end;local function u(v,w,x,y)local z=(-1)^bit.rshift(y,7)local A=bit.rshift(x,7)+bit.lshift(bit.band(y,0x7F),1)local B=v+bit.lshift(w,8)+bit.lshift(bit.band(x,0x7F),16)local C=1;if A==0 then if B==0 then return z*0 else C=0;A=1 end elseif A==0x7F then if B==0 then return z*1/0 else return z*0/0 end end;return z*2^(A-127)*(1+C/2^23)end;local function D(v,w,x,y,E,F,G,H)local z=(-1)^bit.rshift(H,7)local A=bit.lshift(bit.band(H,0x7F),4)+bit.rshift(G,4)local B=bit.band(G,0x0F)*2^48;local C=1;B=B+F*2^40+E*2^32+y*2^24+x*2^16+w*2^8+v;if A==0 then if B==0 then return z*0 else C=0;A=1 end elseif A==0x7FF then if B==0 then return z*1/0 else return z*0/0 end end;return z*2^(A-1023)*(C+B/2^52)end;local function I(b,p,q)return o(b,p,q-1,1)end;local function J(b,p,q)return o(b,q-1,p,-1)end;local function K(b,p)return u(string.byte(b,p,p+3))end;local function L(b,p)local v,w,x,y=string.byte(b,p,p+3)return u(y,x,w,v)end;local function M(b,p)return D(string.byte(b,p,p+7))end;local function N(b,p)local v,w,x,y,E,F,G,H=string.byte(b,p,p+7)return D(H,G,F,E,y,x,w,v)end;local O={[4]={little=K,big=L},[8]={little=M,big=N}}local function P(Q)local R=Q.index;local S=string.byte(Q.source,R,R)Q.index=R+1;return S end;local function T(Q,U)local V=Q.index+U;local W=string.sub(Q.source,Q.index,V-1)Q.index=V;return W end;local function X(Q)local U=Q:s_szt()local W;if U~=0 then W=string.sub(T(Q,U),1,-2)end;return W end;local function Y(U,Z)return function(Q)local V=Q.index+U;local _=Z(Q.source,Q.index,V)Q.index=V;return _ end end;local function a0(U,Z)return function(Q)local a1=Z(Q.source,Q.index)Q.index=Q.index+U;return a1 end end;local function a2(Q)local U=Q:s_int()local a3=table.create(U)for g=1,U do local a4=Q:s_ins()local a5=bit.band(a4,0x3F)local a6=m[a5]local a7=n[a5]local a8={value=a4,op=l[a5],A=bit.band(bit.rshift(a4,6),0xFF)}if a6=="\65\66\67"then a8.B=bit.band(bit.rshift(a4,23),0x1FF)a8.C=bit.band(bit.rshift(a4,14),0x1FF)a8.is_KB=a7.b=="\79\112\65\114\103\75"and a8.B>0xFF;a8.is_KC=a7.c=="\79\112\65\114\103\75"and a8.C>0xFF elseif a6=="\65\66\120"then a8.Bx=bit.band(bit.rshift(a4,14),0x3FFFF)a8.is_K=a7.b=="\79\112\65\114\103\75"elseif a6=="\65\115\66\120"then a8.sBx=bit.band(bit.rshift(a4,14),0x3FFFF)-131071 end;a3[g]=a8 end;return a3 end;local function a9(Q)local U=Q:s_int()local a3=table.create(U)for g=1,U do local aa=P(Q)local ab;if aa==1 then ab=P(Q)~=0 elseif aa==3 then ab=Q:s_num()elseif aa==4 then ab=X(Q)end;a3[g]=ab end;return a3 end;local function ac(Q,b)local U=Q:s_int()local a3=table.create(U)for g=1,U do a3[g]=j(Q,b)end;return a3 end;local function ad(Q)local U=Q:s_int()local a3=table.create(U)for g=1,U do a3[g]=Q:s_int()end;return a3 end;local function ae(Q)local U=Q:s_int()local a3=table.create(U)for g=1,U do a3[g]={varname=X(Q),startpc=Q:s_int(),endpc=Q:s_int()}end;return a3 end;local function af(Q)local U=Q:s_int()local a3=table.create(U)for g=1,U do a3[g]=X(Q)end;return a3 end;function j(Q,ag)local ah={}local b=X(Q)or ag;ah.source=b;Q:s_int()Q:s_int()ah.num_upval=P(Q)ah.num_param=P(Q)P(Q)ah.max_stack=P(Q)ah.code=a2(Q)ah.const=a9(Q)ah.subs=ac(Q,b)ah.lines=ad(Q)ae(Q)af(Q)for a,ai in ipairs(ah.code)do if ai.is_K then ai.const=ah.const[ai.Bx+1]else if ai.is_KB then ai.const_B=ah.const[ai.B-0xFF]end;if ai.is_KC then ai.const_C=ah.const[ai.C-0xFF]end end end;return ah end;function h(b)local aj;local ak;local al;local am;local an;local ao;local ap;local aq={index=1,source=b}assert(T(aq,4)=="\27\76\117\97","\105\110\118\97\108\105\100\32\76\117\97\32\115\105\103\110\97\116\117\114\101")assert(P(aq)==0x51,"\105\110\118\97\108\105\100\32\76\117\97\32\118\101\114\115\105\111\110")assert(P(aq)==0,"\105\110\118\97\108\105\100\32\76\117\97\32\102\111\114\109\97\116")ak=P(aq)~=0;al=P(aq)am=P(aq)an=P(aq)ao=P(aq)ap=P(aq)~=0;aj=ak and I or J;aq.s_int=Y(al,aj)aq.s_szt=Y(am,aj)aq.s_ins=Y(an,aj)if ap then aq.s_num=Y(ao,aj)elseif O[ao]then aq.s_num=a0(ao,O[ao][ak and"\108\105\116\116\108\101"or"\98\105\103"])else error("\117\110\115\117\112\112\111\114\116\101\100\32\102\108\111\97\116\32\115\105\122\101")end;return j(aq,"\64\118\105\114\116\117\97\108")end;local function ar(a3,as)for g,at in pairs(a3)do if at.index>=as then at.value=at.store[at.index]at.store=at;at.index="\118\97\108\117\101"a3[g]=nil end end end;local function au(a3,as,av)local aw=a3[as]if not aw then aw={index=as,store=av}a3[as]=aw end;return aw end;local function ax(ay,az)local b=ay.source;local aA=ay.lines[ay.pc-1]error(string.format("\37\115\58\37\105\58\32\37\115",b,aA,az),0)end;local function aB(aC,aD,aE)local aF=aC.code;local aG=aC.subs;local aH=aC.vararg;local aI=-1;local aJ={}local av=aC.memory;local aK=aC.pc;while true do local aL=aF[aK]local a5=aL.op;aK=aK+1;if a5<18 then if a5<8 then if a5<3 then if a5<1 then for g=aL.A,aL.B do av[g]=nil end elseif a5>1 then local at=aE[aL.B]av[aL.A]=at.store[at.index]else local aM,aN;if aL.is_KB then aM=aL.const_B else aM=av[aL.B]end;if aL.is_KC then aN=aL.const_C else aN=av[aL.C]end;av[aL.A]=aM+aN end elseif a5>3 then if a5<6 then if a5>4 then local aO=aL.A;local aP=aL.B;local as;if aL.is_KC then as=aL.const_C else as=av[aL.C]end;av[aO+1]=av[aP]av[aO]=av[aP][as]else av[aL.A]=aD[aL.const]end elseif a5>6 then local as;if aL.is_KC then as=aL.const_C else as=av[aL.C]end;av[aL.A]=av[aL.B][as]else local aM,aN;if aL.is_KB then aM=aL.const_B else aM=av[aL.B]end;if aL.is_KC then aN=aL.const_C else aN=av[aL.C]end;av[aL.A]=aM-aN end else av[aL.A]=av[aL.B]end elseif a5>8 then if a5<13 then if a5<10 then aD[aL.const]=av[aL.A]elseif a5>10 then if a5<12 then local aO=aL.A;local aP=aL.B;local aQ=aL.C;local aR;if aP==0 then aR=aI-aO else aR=aP-1 end;local aS=table.pack(av[aO](table.unpack(av,aO+1,aO+aR)))local aT=aS.n;if aQ==0 then aI=aO+aT-1 else aT=aQ-1 end;table.move(aS,1,aT,aO,av)else local at=aE[aL.B]at.store[at.index]=av[aL.A]end else local aM,aN;if aL.is_KB then aM=aL.const_B else aM=av[aL.B]end;if aL.is_KC then aN=aL.const_C else aN=av[aL.C]end;av[aL.A]=aM*aN end elseif a5>13 then if a5<16 then if a5>14 then local aO=aL.A;local aP=aL.B;local aR;if aP==0 then aR=aI-aO else aR=aP-1 end;ar(aJ,0)return av[aO](table.unpack(av,aO+1,aO+aR))else local as,aU;if aL.is_KB then as=aL.const_B else as=av[aL.B]end;if aL.is_KC then aU=aL.const_C else aU=av[aL.C]end;av[aL.A][as]=aU end elseif a5>16 then av[aL.A]={}else local aM,aN;if aL.is_KB then aM=aL.const_B else aM=av[aL.B]end;if aL.is_KC then aN=aL.const_C else aN=av[aL.C]end;av[aL.A]=aM/aN end else av[aL.A]=aL.const end else local aO=aL.A;local aV=av[aO+2]local as=av[aO]+aV;local aW=av[aO+1]local aX;if aV==math.abs(aV)then aX=as<=aW else aX=as>=aW end;if aX then av[aO]=as;av[aO+3]=as;aK=aK+aL.sBx end end elseif a5>18 then if a5<28 then if a5<23 then if a5<20 then av[aL.A]=#av[aL.B]elseif a5>20 then if a5<22 then local aO=aL.A;local aP=aL.B;local U;if aP==0 then U=aI-aO+1 else U=aP-1 end;ar(aJ,0)return table.unpack(av,aO,aO+U-1)else local aP=aL.B;local W=av[aP]for g=aP+1,aL.C do W=W..av[g]end;av[aL.A]=W end else local aM,aN;if aL.is_KB then aM=aL.const_B else aM=av[aL.B]end;if aL.is_KC then aN=aL.const_C else aN=av[aL.C]end;av[aL.A]=aM%aN end elseif a5>23 then if a5<26 then if a5>24 then ar(aJ,aL.A)else local aM,aN;if aL.is_KB then aM=aL.const_B else aM=av[aL.B]end;if aL.is_KC then aN=aL.const_C else aN=av[aL.C]end;if aM==aN==(aL.A~=0)then aK=aK+aF[aK].sBx end;aK=aK+1 end elseif a5>26 then local aM,aN;if aL.is_KB then aM=aL.const_B else aM=av[aL.B]end;if aL.is_KC then aN=aL.const_C else aN=av[aL.C]end;if aM<aN==(aL.A~=0)then aK=aK+aF[aK].sBx end;aK=aK+1 else local aM,aN;if aL.is_KB then aM=aL.const_B else aM=av[aL.B]end;if aL.is_KC then aN=aL.const_C else aN=av[aL.C]end;av[aL.A]=aM^aN end else av[aL.A]=aL.B~=0;if aL.C~=0 then aK=aK+1 end end elseif a5>28 then if a5<33 then if a5<30 then local aM,aN;if aL.is_KB then aM=aL.const_B else aM=av[aL.B]end;if aL.is_KC then aN=aL.const_C else aN=av[aL.C]end;if aM<=aN==(aL.A~=0)then aK=aK+aF[aK].sBx end;aK=aK+1 elseif a5>30 then if a5<32 then local aY=aG[aL.Bx+1]local aZ=aY.num_upval;local a_;if aZ~=0 then a_={}for g=1,aZ do local b0=aF[aK+g-1]if b0.op==l[0]then a_[g-1]=au(aJ,b0.B,av)elseif b0.op==l[4]then a_[g-1]=aE[b0.B]end end;aK=aK+aZ end;av[aL.A]=i(aY,aD,a_)else local aO=aL.A;local aP=aL.B;if not av[aP]~=(aL.C~=0)then av[aO]=av[aP]aK=aK+aF[aK].sBx end;aK=aK+1 end else av[aL.A]=-av[aL.B]end elseif a5>33 then if a5<36 then if a5>34 then local aO=aL.A;local U=aL.B;if U==0 then U=aH.len;aI=aO+U-1 end;table.move(aH.list,1,U,aO,av)else local aO=aL.A;local b1,aW,aV;b1=assert(tonumber(av[aO]),"\96\102\111\114\96\32\105\110\105\116\105\97\108\32\118\97\108\117\101\32\109\117\115\116\32\98\101\32\97\32\110\117\109\98\101\114")aW=assert(tonumber(av[aO+1]),"\96\102\111\114\96\32\108\105\109\105\116\32\109\117\115\116\32\98\101\32\97\32\110\117\109\98\101\114")aV=assert(tonumber(av[aO+2]),"\96\102\111\114\96\32\115\116\101\112\32\109\117\115\116\32\98\101\32\97\32\110\117\109\98\101\114")av[aO]=b1-aV;av[aO+1]=aW;av[aO+2]=aV;aK=aK+aL.sBx end elseif a5>36 then local aO=aL.A;local aQ=aL.C;local U=aL.B;local b2=av[aO]local e;if U==0 then U=aI-aO end;if aQ==0 then aQ=aL[aK].value;aK=aK+1 end;e=(aQ-1)*k;table.move(av,aO+1,aO+U,e+1,b2)else av[aL.A]=not av[aL.B]end else if not av[aL.A]~=(aL.C~=0)then aK=aK+aF[aK].sBx end;aK=aK+1 end else local aO=aL.A;local b3=aO+3;local b4={av[aO](av[aO+1],av[aO+2])}table.move(b4,1,aL.C,b3,av)if av[b3]~=nil then av[aO+2]=av[b3]aK=aK+aF[aK].sBx end;aK=aK+1 end else aK=aK+aL.sBx end;aC.pc=aK end end;function i(ah,aD,b5)local function b6(...)local b7=table.pack(...)local av=table.create(ah.max_stack)local aH={len=0,list={}}table.move(b7,1,ah.num_param,0,av)if ah.num_param<b7.n then local b8=ah.num_param+1;local U=b7.n-ah.num_param;aH.len=U;table.move(b7,b8,b8+U-1,1,aH.list)end;local aC={vararg=aH,memory=av,code=ah.code,subs=ah.subs,pc=1}local b9=table.pack(pcall(aB,aC,aD,b5))if b9[1]then return table.unpack(b9,2,b9.n)else local ay={pc=aC.pc,source=ah.source,lines=ah.lines}ax(ay,b9[2])return end end;return b6 end;return(function(ba,aD)ba=string.gsub(ba,"\46\46",function(bb)return string.char(tonumber(bb,16))end)local aC=h(ba)local Z=i(aC,aD)return Z end)("1B4C756151000104080408000E0000000000000040636F6D70696C65642D6C756100000000000000000000000208450000000A8000010940408009C04081410001008100010022400001454001004680C10081C001005C8000018540010086804101C1000200000180009C8080014980C2844900C3854980C3864900C487C5800400C680C10101C104004101040081010500C1010400DC80800249C08088C5800500C6C0C501010106004101060081010600DC80000289C0808A8980C68CC5800400C680C10101C106004101070081C10600C1010700DC80800289C080888980C78EC5800500C680C10106814000DC80000189C0808F8900C48E89404890C600400089C00091C5800500C6C0C50106814000DC80000189C08091C5000900CB40C90141810900DC808001C6C0C901CB00CA01640100000000000100008000DC4080011E008000290000000409000000000000007465787473697A6500030000000000003240040700000000000000636F6C6F757200030000000000006940030000000000C05840040900000000000000496E7374616E6365000404000000000000006E657700040D0000000000000042696C6C626F61726447756900040A00000000000000546578744C6162656C000405000000000000004E616D650004040000000000000065737000040D0000000000000052657365744F6E537061776E000100040C00000000000000416C776179734F6E546F70000101040F000000000000004C69676874496E666C75656E63650003000000000000000004050000000000000053697A65000406000000000000005544696D3200039A9999999999B93F030000000000000C400411000000000000004261636B67726F756E64436F6C6F723300040700000000000000436F6C6F72330004080000000000000066726F6D52474200030000000000E06F4004050000000000000054657874000401000000000000000003FCA9F1D24D62503F032D431CEBE2361A3F041000000000000000426F7264657253697A65506978656C00030000000000001040040D00000000000000426F72646572436F6C6F723300040500000000000000466F6E7400040F00000000000000476F7468616D53656D69626F6C64000409000000000000005465787453697A6500040B0000000000000054657874436F6C6F72330004050000000000000067616D6500040B000000000000004765745365727669636500040B0000000000000052756E53657276696365000408000000000000005374657070656400040800000000000000436F6E6E6563740001000000000000000000000015000000350000000200000E7900000005000000454000004B80C000C1C000005C8080014B00C1005C0000011C00010016001B801A01000016801A80464141025A01000016C019804541000046C1C0024681C10257400102168018804641410286C1C10286014203864142031980018516C00A8086C1C1028901C38586C1C102C5810300C6C1C303010204004102030081020300DC81000289C1818686C1C1028B414403018204009C81800117C0440316C0068085410000860145038B414503018205004A82000086024602C142060006C3C1020603420606434206950203054982828B8582030086824605C1C2060001030700410307009C820002498282869C41000284010000C601460289C1818B840180008B4147039C810001C6C1C10289C1018F86C1C70286014203864142031980018516C00A8086C1C7028901C38586C1C702C5810300C6C1C303010204004102030081020300DC81000289C1818686C1C7028B414403018204009C81800117C0440316C0068085410000860145038B414503018205004A82000086024602C142060006C3C7020603420606434206950203054982828B8582030086824605C1C2060001030700410307009C820002498282869C41000284010000C601460289C1818B840180008B4147039C810001C6C1C70289C1018F218000001600E47F1E0080002000000004060000000000000070616972730004050000000000000067616D6500040B000000000000004765745365727669636500040800000000000000506C617965727300040C000000000000004765744368696C6472656E00040A0000000000000043686172616374657200040C000000000000004C6F63616C506C617965720004110000000000000048756D616E6F6964526F6F745061727400040C00000000000000526F7456656C6F6369747900040A000000000000004D61676E69747564650003000000000058BB40040D000000000000005472616E73706172656E637900030000000000000000040600000000000000436F6C6F7200040700000000000000436F6C6F7233000404000000000000006E65770003000000000000F03F040F0000000000000046696E6446697273744368696C64000404000000000000006573700000040B000000000000005374617274657247756900040800000000000000536574436F726500041600000000000000436861744D616B6553797374656D4D6573736167650004050000000000000054657874000405000000000000004E616D650004210000000000000020497320666C696E67696E672070656F706C652E204D61676E69747564653A200004080000000000000066726F6D52474200030000000000E06F40030000000000006940040600000000000000436C6F6E6500040700000000000000506172656E7400040B000000000000004C6F776572546F72736F00000000007900000016000000160000001600000016000000160000001600000016000000160000001600000017000000170000001700000017000000170000001800000018000000180000001800000018000000190000001A0000001A0000001A0000001A0000001A0000001B0000001B0000001C0000001C0000001C0000001C0000001C0000001C0000001C0000001C0000001D0000001D0000001D0000001D0000001D0000001D0000001E0000001E0000001E0000001E0000001E0000001F0000001F0000001F0000001F0000001F0000001F0000001F000000200000002000000020000000200000002000000020000000200000001E00000022000000220000002200000023000000230000002300000023000000230000002600000026000000260000002600000026000000270000002700000028000000280000002800000028000000280000002800000028000000280000002900000029000000290000002900000029000000290000002A0000002A0000002A0000002A0000002A0000002B0000002B0000002B0000002B0000002B0000002B0000002B0000002C0000002C0000002C0000002C0000002C0000002C0000002C0000002A0000002E0000002E0000002E0000002F0000002F0000002F0000002F0000002F00000016000000330000003500000006000000100000000000000028666F722067656E657261746F72290008000000780000000C0000000000000028666F72207374617465290008000000780000000E0000000000000028666F7220636F6E74726F6C290008000000780000000200000000000000690009000000760000000200000000000000760009000000760000000A0000000000000063686172616374657200140000007600000002000000040000000000000065737000040000000000000067756900450000000100000002000000030000000300000004000000040000000500000005000000050000000500000006000000060000000600000006000000060000000700000008000000090000000A0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000000C0000000C0000000C0000000C0000000C0000000C0000000C0000000D0000000E0000000E0000000E0000000E0000000E0000000E0000000E0000000E0000000F00000010000000100000001000000010000000100000001100000012000000130000001300000014000000140000001400000014000000140000001500000015000000150000001500000015000000150000003500000035000000350000001500000035000000030000000D000000000000006573705F73657474696E67730006000000440000000400000000000000677569000A000000440000000400000000000000657370000F0000004400000000000000",(getfenv or function()return(_ENV)or(_G)end)())()
