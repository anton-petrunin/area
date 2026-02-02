input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[a4paper,10pt]{article}
\usepackage{../paper-ru}
\begin{document}
etex

filenametemplate "%j-%1c.eps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";


beginfig(10) 
save u,p;
path p[];
u:=.6cm;



draw (15,0)*u--(11,3)*u penbold;
draw (0,0)*u--(16,0)*u--(16,3)*u--(0,3)*u--cycle penbold;

for i = 1 upto 15:
draw (i,0)*u--(i,3)*u penhair;
endfor;

for i = 1 upto 2:
draw (0,i)*u--(16,i)*u penhair;
endfor;

label.bot (btex $15$ etex,  .5[(0,0)*u,(15,0)*u]);
label.bot (btex $1$ etex,  .5[(15,0)*u,(16,0)*u]);
label.top (btex $11$ etex,  .5[(0,3)*u,(11,3)*u]);
label.top (btex $5$ etex,  .5[(11,3)*u,(16,3)*u]);
label.lft (btex $3$ etex,  .5[(0,0)*u,(0,3)*u]);
label.rt (btex $3$ etex,  .5[(16,0)*u,(16,3)*u]);
whitelabel (btex $52=\tfrac{3+5}2\cdot \tfrac{11+15}2$ etex,  .5[(0,0)*u,(13,3)*u]+(0,3));
whitelabel (btex {\scriptsize $12=\tfrac{5+3}2\cdot \tfrac{5+1}2$} etex rotated -30,  .5[(16,0)*u,(13,3)*u]+(0,5)+(-.2,1.6)*u);
whitelabel (btex $5$ etex rotated angle(4,-3),  .5[(11,3)*u,(15,0)*u]+.3*(3,4));
endfig;

beginfig(11)
save u,p,a,b;
path p[];
u:=.4cm;
a:=4;
b:=25;

draw (b-1,0)*u--(b-4,a)*u penbold;
draw (0,0)*u--(b,0)*u--(b,a)*u--(0,a)*u--cycle penbold;

for i = 1 upto b-1:
draw (i,0)*u--(i,a)*u penhair;
endfor;

for i = 1 upto a-1:
draw (0,i)*u--(b,i)*u penhair;
endfor;

label.bot (btex $24$ etex,  .5[(0,0)*u,(b-1,0)*u]);
label.bot (btex $1$ etex,  .5[(b-1,0)*u,(b,0)*u]);
label.top (btex $21$ etex,  .5[(0,a)*u,(b-4,a)*u]);
label.top (btex $4$ etex,  .5[(b-4,a)*u,(b,a)*u]);
label.lft (btex $4$ etex,  .5[(0,0)*u,(0,a)*u]);
label.rt (btex $4$ etex,  .5[(b,0)*u,(b,a)*u]);
whitelabel (btex $5$ etex rotated angle(3,-4),  .5[(b-4,a)*u,(b-1,0)*u]+(-2,0));
endfig;

beginfig(20)
save u,p;
path p[];
u:=.5cm;

z.A=(0,0)*u;
z.B=(4,2)*u;
z.C=(3,6)*u;
z.D=(-.5,3.5)*u;

z.shift=(10,0)*u;

p0=z.A--z.B--z.C--z.D--cycle;
p1=z.A--z.C;
p2=z.B--z.D;

fill p0 withcolor (0.2, 0.7, 0.1);
fill p0 shifted z.shift withcolor (0.2, 0.7, 0.1);

draw p0 penbold;
draw p1 penbold;
draw p0 penbold shifted z.shift;
draw p2 penbold shifted z.shift;

z.AA=altitude (z.B,z.A,z.C);
z.BB=altitude (z.C,z.B,z.D);
z.CC=altitude (z.D,z.C,z.A);
z.DD=altitude (z.A,z.D,z.B);

draw z.A--z.AA;
draw z.AA--z.B dashed evenly;
draw z.C--z.CC;
draw z.CC--z.D dashed evenly;
draw (z.B--z.BB) shifted z.shift;
draw (z.D--z.DD) shifted z.shift;

mark_rt_angle(z.A,z.AA,z.C);
mark_rt_angle(z.B,z.BB,z.D) shifted z.shift;
mark_rt_angle(z.C,z.CC,z.A);
mark_rt_angle(z.D,z.DD,z.B) shifted z.shift;

label.llft (btex $A$ etex,  z.A);
label.rt (btex $B$ etex,  z.B);
label.urt (btex $C$ etex,  z.C);
label.lft (btex $D$ etex,  z.D);
label.llft (btex $A$ etex,  z.A+z.shift);
label.lrt (btex $B$ etex,  z.B+z.shift);
label.urt (btex $C$ etex,  z.C+z.shift);
label.ulft (btex $D$ etex,  z.D+z.shift);
label.bot (btex $a$ etex,  .55[z.A,z.AA]);
label.llft (btex $b$ etex,  .6[z.B,z.BB]+z.shift);
label.top (btex $c$ etex,  .55[z.C,z.CC]);
label.urt (btex $d$ etex,  .6[z.D,z.DD]+z.shift);

label.bot (btex $S(ABCD)=S(ABC)+ S(CDA)$\quad и\quad $S(ABCD)=S(BCD)+ S(DAB)$ etex,  z.A+.5*z.shift +(-0,-10));
endfig;

end
