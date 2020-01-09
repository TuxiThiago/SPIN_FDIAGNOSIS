/* Automatically generated file for diagnosability verification of failure of type 1 for 30 Trains*/

#define Place	byte
#define inp1(x)		(x>0) -> x=x-1
#define inp2(x,y)	(x>0&&y>0) -> x = x-1; y=y-1
#define inp3(x,y,z)	(x>0&&y>0&&z>0) -> x = x-1; y=y-1; z=z-1;
#define out1(x)		x=x+1
#define out2(x,y)	x=x+1; y=y+1
#define inT5(x,y,n)	(x>n && y) -> x = x-n; y=y-1
#define outT5(x,y,n)	x=x+n; y=y+1
#define N 30
mtype = {cr,kd,lw,or,rs,bf,ap1,en1,lv1,ig1,ap2,en2,lv2,ig2,ap3,en3,lv3,ig3,ap4,en4,lv4,ig4,ap5,en5,lv5,ig5,ap6,en6,lv6,ig6,ap7,en7,lv7,ig7,ap8,en8,lv8,ig8,ap9,en9,lv9,ig9,ap10,en10,lv10,ig10,ap11,en11,lv11,ig11,ap12,en12,lv12,ig12,ap13,en13,lv13,ig13,ap14,en14,lv14,ig14,ap15,en15,lv15,ig15,ap16,en16,lv16,ig16,ap17,en17,lv17,ig17,ap18,en18,lv18,ig18,ap19,en19,lv19,ig19,ap20,en20,lv20,ig20,ap21,en21,lv21,ig21,ap22,en22,lv22,ig22,ap23,en23,lv23,ig23,ap24,en24,lv24,ig24,ap25,en25,lv25,ig25,ap26,en26,lv26,ig26,ap27,en27,lv27,ig27,ap28,en28,lv28,ig28,ap29,en29,lv29,ig29,ap30,en30,lv30,ig30,bfn}
bool F,T;
chan F2N = [0] of { mtype };
ltl L1 { <>[]!(F && T)};

active proctype monitor()
{
atomic{timeout -> T=0}
}

active proctype TSF()
{
Place p1, p2, p3, p4, p5, p6, p9; /* Places LC Controller*/
Place p7, p8; /* Places barriers*/
Place p11, p12, p13 /* Places Train 1*/
Place p21, p22, p23 /* Places Train 2*/
Place p31, p32, p33 /* Places Train 3*/
Place p41, p42, p43 /* Places Train 4*/
Place p51, p52, p53 /* Places Train 5*/
Place p61, p62, p63 /* Places Train 6*/
Place p71, p72, p73 /* Places Train 7*/
Place p81, p82, p83 /* Places Train 8*/
Place p91, p92, p93 /* Places Train 9*/
Place p101, p102, p103 /* Places Train 10*/
Place p111, p112, p113 /* Places Train 11*/
Place p121, p122, p123 /* Places Train 12*/
Place p131, p132, p133 /* Places Train 13*/
Place p141, p142, p143 /* Places Train 14*/
Place p151, p152, p153 /* Places Train 15*/
Place p161, p162, p163 /* Places Train 16*/
Place p171, p172, p173 /* Places Train 17*/
Place p181, p182, p183 /* Places Train 18*/
Place p191, p192, p193 /* Places Train 19*/
Place p201, p202, p203 /* Places Train 20*/
Place p211, p212, p213 /* Places Train 21*/
Place p221, p222, p223 /* Places Train 22*/
Place p231, p232, p233 /* Places Train 23*/
Place p241, p242, p243 /* Places Train 24*/
Place p251, p252, p253 /* Places Train 25*/
Place p261, p262, p263 /* Places Train 26*/
Place p271, p272, p273 /* Places Train 27*/
Place p281, p282, p283 /* Places Train 28*/
Place p291, p292, p293 /* Places Train 29*/
Place p301, p302, p303 /* Places Train 30*/
p2=N; p6=N; p7 = 1; p11 =1; p21 =1; p31 =1; p41 =1; p51 =1; p61 =1; p71 =1; p81 =1; p91 =1; p101 =1; p111 =1; p121 =1; p131 =1; p141 =1; p151 =1; p161 =1; p171 =1; p181 =1; p191 =1; p201 =1; p211 =1; p221 =1; p231 =1; p241 =1; p251 =1; p261 =1; p271 =1; p281 =1; p291 =1; p301 =1; /* initial marking */
do
/*t1*/		:: atomic { d_step{inp3(p1,p2,p6)	-> out2(p5,p3) ->T=1}  -> F2N!cr }
/*t2*/		:: atomic { d_step{inp2(p3,p4)		-> out2(p2,p6) ->T=1}	-> F2N!or	 }
/*t3*/		:: atomic { d_step{inp2(p5,p8)		-> out2(p8,p9) ->T=1}	-> F2N!kd	 }
/*t4*/		:: atomic { d_step{inp2(p5,p7)		-> out2(p8,p9) ->T=1}	-> F2N!lw }
/*t5*/		:: atomic { d_step{inT5(p6,p8,N) 	-> outT5(p6,p7,N) ->T=1}	-> F2N!rs }
/*t6*/		:: atomic { d_step{inp1(p8)		-> out1(p7) ->T=1}		-> F2N!bf }
/*t11*/	:: atomic { d_step{inp1(p11)		-> out2(p1,p12) ->T=1}	-> F2N!ap1 }
/*t12*/	:: atomic { d_step{inp2(p9,p12)	-> out2(p9,p13) ->T=1}	-> F2N!en1 }
/*t13*/	:: atomic { d_step{inp2(p9,p13)	-> out2(p4,p11) ->T=1}	-> F2N!lv1	}
/*t14*/	:: atomic { d_step{inp1(p12)		-> out1(p13) ->T=1; F=1}	-> F2N!ig1	}
/*t21*/	:: atomic { d_step{inp1(p21)		-> out2(p1,p22) ->T=1}	-> F2N!ap2 }
/*t22*/	:: atomic { d_step{inp2(p9,p22)	-> out2(p9,p23) ->T=1}	-> F2N!en2 }
/*t23*/	:: atomic { d_step{inp2(p9,p23)	-> out2(p4,p21) ->T=1}	-> F2N!lv2	}
/*t24*/	:: atomic { d_step{inp1(p22)		-> out1(p23) ->T=1; F=1}	-> F2N!ig2	}
/*t31*/	:: atomic { d_step{inp1(p31)		-> out2(p1,p32) ->T=1}	-> F2N!ap3 }
/*t32*/	:: atomic { d_step{inp2(p9,p32)	-> out2(p9,p33) ->T=1}	-> F2N!en3 }
/*t33*/	:: atomic { d_step{inp2(p9,p33)	-> out2(p4,p31) ->T=1}	-> F2N!lv3	}
/*t34*/	:: atomic { d_step{inp1(p32)		-> out1(p33) ->T=1; F=1}	-> F2N!ig3	}
/*t41*/	:: atomic { d_step{inp1(p41)		-> out2(p1,p42) ->T=1}	-> F2N!ap4 }
/*t42*/	:: atomic { d_step{inp2(p9,p42)	-> out2(p9,p43) ->T=1}	-> F2N!en4 }
/*t43*/	:: atomic { d_step{inp2(p9,p43)	-> out2(p4,p41) ->T=1}	-> F2N!lv4	}
/*t44*/	:: atomic { d_step{inp1(p42)		-> out1(p43) ->T=1; F=1}	-> F2N!ig4	}
/*t51*/	:: atomic { d_step{inp1(p51)		-> out2(p1,p52) ->T=1}	-> F2N!ap5 }
/*t52*/	:: atomic { d_step{inp2(p9,p52)	-> out2(p9,p53) ->T=1}	-> F2N!en5 }
/*t53*/	:: atomic { d_step{inp2(p9,p53)	-> out2(p4,p51) ->T=1}	-> F2N!lv5	}
/*t54*/	:: atomic { d_step{inp1(p52)		-> out1(p53) ->T=1; F=1}	-> F2N!ig5	}
/*t61*/	:: atomic { d_step{inp1(p61)		-> out2(p1,p62) ->T=1}	-> F2N!ap6 }
/*t62*/	:: atomic { d_step{inp2(p9,p62)	-> out2(p9,p63) ->T=1}	-> F2N!en6 }
/*t63*/	:: atomic { d_step{inp2(p9,p63)	-> out2(p4,p61) ->T=1}	-> F2N!lv6	}
/*t64*/	:: atomic { d_step{inp1(p62)		-> out1(p63) ->T=1; F=1}	-> F2N!ig6	}
/*t71*/	:: atomic { d_step{inp1(p71)		-> out2(p1,p72) ->T=1}	-> F2N!ap7 }
/*t72*/	:: atomic { d_step{inp2(p9,p72)	-> out2(p9,p73) ->T=1}	-> F2N!en7 }
/*t73*/	:: atomic { d_step{inp2(p9,p73)	-> out2(p4,p71) ->T=1}	-> F2N!lv7	}
/*t74*/	:: atomic { d_step{inp1(p72)		-> out1(p73) ->T=1; F=1}	-> F2N!ig7	}
/*t81*/	:: atomic { d_step{inp1(p81)		-> out2(p1,p82) ->T=1}	-> F2N!ap8 }
/*t82*/	:: atomic { d_step{inp2(p9,p82)	-> out2(p9,p83) ->T=1}	-> F2N!en8 }
/*t83*/	:: atomic { d_step{inp2(p9,p83)	-> out2(p4,p81) ->T=1}	-> F2N!lv8	}
/*t84*/	:: atomic { d_step{inp1(p82)		-> out1(p83) ->T=1; F=1}	-> F2N!ig8	}
/*t91*/	:: atomic { d_step{inp1(p91)		-> out2(p1,p92) ->T=1}	-> F2N!ap9 }
/*t92*/	:: atomic { d_step{inp2(p9,p92)	-> out2(p9,p93) ->T=1}	-> F2N!en9 }
/*t93*/	:: atomic { d_step{inp2(p9,p93)	-> out2(p4,p91) ->T=1}	-> F2N!lv9	}
/*t94*/	:: atomic { d_step{inp1(p92)		-> out1(p93) ->T=1; F=1}	-> F2N!ig9	}
/*t101*/	:: atomic { d_step{inp1(p101)		-> out2(p1,p102) ->T=1}	-> F2N!ap10 }
/*t102*/	:: atomic { d_step{inp2(p9,p102)	-> out2(p9,p103) ->T=1}	-> F2N!en10 }
/*t103*/	:: atomic { d_step{inp2(p9,p103)	-> out2(p4,p101) ->T=1}	-> F2N!lv10	}
/*t104*/	:: atomic { d_step{inp1(p102)		-> out1(p103) ->T=1; F=1}	-> F2N!ig10	}
/*t111*/	:: atomic { d_step{inp1(p111)		-> out2(p1,p112) ->T=1}	-> F2N!ap11 }
/*t112*/	:: atomic { d_step{inp2(p9,p112)	-> out2(p9,p113) ->T=1}	-> F2N!en11 }
/*t113*/	:: atomic { d_step{inp2(p9,p113)	-> out2(p4,p111) ->T=1}	-> F2N!lv11	}
/*t114*/	:: atomic { d_step{inp1(p112)		-> out1(p113) ->T=1; F=1}	-> F2N!ig11	}
/*t121*/	:: atomic { d_step{inp1(p121)		-> out2(p1,p122) ->T=1}	-> F2N!ap12 }
/*t122*/	:: atomic { d_step{inp2(p9,p122)	-> out2(p9,p123) ->T=1}	-> F2N!en12 }
/*t123*/	:: atomic { d_step{inp2(p9,p123)	-> out2(p4,p121) ->T=1}	-> F2N!lv12	}
/*t124*/	:: atomic { d_step{inp1(p122)		-> out1(p123) ->T=1; F=1}	-> F2N!ig12	}
/*t131*/	:: atomic { d_step{inp1(p131)		-> out2(p1,p132) ->T=1}	-> F2N!ap13 }
/*t132*/	:: atomic { d_step{inp2(p9,p132)	-> out2(p9,p133) ->T=1}	-> F2N!en13 }
/*t133*/	:: atomic { d_step{inp2(p9,p133)	-> out2(p4,p131) ->T=1}	-> F2N!lv13	}
/*t134*/	:: atomic { d_step{inp1(p132)		-> out1(p133) ->T=1; F=1}	-> F2N!ig13	}
/*t141*/	:: atomic { d_step{inp1(p141)		-> out2(p1,p142) ->T=1}	-> F2N!ap14 }
/*t142*/	:: atomic { d_step{inp2(p9,p142)	-> out2(p9,p143) ->T=1}	-> F2N!en14 }
/*t143*/	:: atomic { d_step{inp2(p9,p143)	-> out2(p4,p141) ->T=1}	-> F2N!lv14	}
/*t144*/	:: atomic { d_step{inp1(p142)		-> out1(p143) ->T=1; F=1}	-> F2N!ig14	}
/*t151*/	:: atomic { d_step{inp1(p151)		-> out2(p1,p152) ->T=1}	-> F2N!ap15 }
/*t152*/	:: atomic { d_step{inp2(p9,p152)	-> out2(p9,p153) ->T=1}	-> F2N!en15 }
/*t153*/	:: atomic { d_step{inp2(p9,p153)	-> out2(p4,p151) ->T=1}	-> F2N!lv15	}
/*t154*/	:: atomic { d_step{inp1(p152)		-> out1(p153) ->T=1; F=1}	-> F2N!ig15	}
/*t161*/	:: atomic { d_step{inp1(p161)		-> out2(p1,p162) ->T=1}	-> F2N!ap16 }
/*t162*/	:: atomic { d_step{inp2(p9,p162)	-> out2(p9,p163) ->T=1}	-> F2N!en16 }
/*t163*/	:: atomic { d_step{inp2(p9,p163)	-> out2(p4,p161) ->T=1}	-> F2N!lv16	}
/*t164*/	:: atomic { d_step{inp1(p162)		-> out1(p163) ->T=1; F=1}	-> F2N!ig16	}
/*t171*/	:: atomic { d_step{inp1(p171)		-> out2(p1,p172) ->T=1}	-> F2N!ap17 }
/*t172*/	:: atomic { d_step{inp2(p9,p172)	-> out2(p9,p173) ->T=1}	-> F2N!en17 }
/*t173*/	:: atomic { d_step{inp2(p9,p173)	-> out2(p4,p171) ->T=1}	-> F2N!lv17	}
/*t174*/	:: atomic { d_step{inp1(p172)		-> out1(p173) ->T=1; F=1}	-> F2N!ig17	}
/*t181*/	:: atomic { d_step{inp1(p181)		-> out2(p1,p182) ->T=1}	-> F2N!ap18 }
/*t182*/	:: atomic { d_step{inp2(p9,p182)	-> out2(p9,p183) ->T=1}	-> F2N!en18 }
/*t183*/	:: atomic { d_step{inp2(p9,p183)	-> out2(p4,p181) ->T=1}	-> F2N!lv18	}
/*t184*/	:: atomic { d_step{inp1(p182)		-> out1(p183) ->T=1; F=1}	-> F2N!ig18	}
/*t191*/	:: atomic { d_step{inp1(p191)		-> out2(p1,p192) ->T=1}	-> F2N!ap19 }
/*t192*/	:: atomic { d_step{inp2(p9,p192)	-> out2(p9,p193) ->T=1}	-> F2N!en19 }
/*t193*/	:: atomic { d_step{inp2(p9,p193)	-> out2(p4,p191) ->T=1}	-> F2N!lv19	}
/*t194*/	:: atomic { d_step{inp1(p192)		-> out1(p193) ->T=1; F=1}	-> F2N!ig19	}
/*t201*/	:: atomic { d_step{inp1(p201)		-> out2(p1,p202) ->T=1}	-> F2N!ap20 }
/*t202*/	:: atomic { d_step{inp2(p9,p202)	-> out2(p9,p203) ->T=1}	-> F2N!en20 }
/*t203*/	:: atomic { d_step{inp2(p9,p203)	-> out2(p4,p201) ->T=1}	-> F2N!lv20	}
/*t204*/	:: atomic { d_step{inp1(p202)		-> out1(p203) ->T=1; F=1}	-> F2N!ig20	}
/*t211*/	:: atomic { d_step{inp1(p211)		-> out2(p1,p212) ->T=1}	-> F2N!ap21 }
/*t212*/	:: atomic { d_step{inp2(p9,p212)	-> out2(p9,p213) ->T=1}	-> F2N!en21 }
/*t213*/	:: atomic { d_step{inp2(p9,p213)	-> out2(p4,p211) ->T=1}	-> F2N!lv21	}
/*t214*/	:: atomic { d_step{inp1(p212)		-> out1(p213) ->T=1; F=1}	-> F2N!ig21	}
/*t221*/	:: atomic { d_step{inp1(p221)		-> out2(p1,p222) ->T=1}	-> F2N!ap22 }
/*t222*/	:: atomic { d_step{inp2(p9,p222)	-> out2(p9,p223) ->T=1}	-> F2N!en22 }
/*t223*/	:: atomic { d_step{inp2(p9,p223)	-> out2(p4,p221) ->T=1}	-> F2N!lv22	}
/*t224*/	:: atomic { d_step{inp1(p222)		-> out1(p223) ->T=1; F=1}	-> F2N!ig22	}
/*t231*/	:: atomic { d_step{inp1(p231)		-> out2(p1,p232) ->T=1}	-> F2N!ap23 }
/*t232*/	:: atomic { d_step{inp2(p9,p232)	-> out2(p9,p233) ->T=1}	-> F2N!en23 }
/*t233*/	:: atomic { d_step{inp2(p9,p233)	-> out2(p4,p231) ->T=1}	-> F2N!lv23	}
/*t234*/	:: atomic { d_step{inp1(p232)		-> out1(p233) ->T=1; F=1}	-> F2N!ig23	}
/*t241*/	:: atomic { d_step{inp1(p241)		-> out2(p1,p242) ->T=1}	-> F2N!ap24 }
/*t242*/	:: atomic { d_step{inp2(p9,p242)	-> out2(p9,p243) ->T=1}	-> F2N!en24 }
/*t243*/	:: atomic { d_step{inp2(p9,p243)	-> out2(p4,p241) ->T=1}	-> F2N!lv24	}
/*t244*/	:: atomic { d_step{inp1(p242)		-> out1(p243) ->T=1; F=1}	-> F2N!ig24	}
/*t251*/	:: atomic { d_step{inp1(p251)		-> out2(p1,p252) ->T=1}	-> F2N!ap25 }
/*t252*/	:: atomic { d_step{inp2(p9,p252)	-> out2(p9,p253) ->T=1}	-> F2N!en25 }
/*t253*/	:: atomic { d_step{inp2(p9,p253)	-> out2(p4,p251) ->T=1}	-> F2N!lv25	}
/*t254*/	:: atomic { d_step{inp1(p252)		-> out1(p253) ->T=1; F=1}	-> F2N!ig25	}
/*t261*/	:: atomic { d_step{inp1(p261)		-> out2(p1,p262) ->T=1}	-> F2N!ap26 }
/*t262*/	:: atomic { d_step{inp2(p9,p262)	-> out2(p9,p263) ->T=1}	-> F2N!en26 }
/*t263*/	:: atomic { d_step{inp2(p9,p263)	-> out2(p4,p261) ->T=1}	-> F2N!lv26	}
/*t264*/	:: atomic { d_step{inp1(p262)		-> out1(p263) ->T=1; F=1}	-> F2N!ig26	}
/*t271*/	:: atomic { d_step{inp1(p271)		-> out2(p1,p272) ->T=1}	-> F2N!ap27 }
/*t272*/	:: atomic { d_step{inp2(p9,p272)	-> out2(p9,p273) ->T=1}	-> F2N!en27 }
/*t273*/	:: atomic { d_step{inp2(p9,p273)	-> out2(p4,p271) ->T=1}	-> F2N!lv27	}
/*t274*/	:: atomic { d_step{inp1(p272)		-> out1(p273) ->T=1; F=1}	-> F2N!ig27	}
/*t281*/	:: atomic { d_step{inp1(p281)		-> out2(p1,p282) ->T=1}	-> F2N!ap28 }
/*t282*/	:: atomic { d_step{inp2(p9,p282)	-> out2(p9,p283) ->T=1}	-> F2N!en28 }
/*t283*/	:: atomic { d_step{inp2(p9,p283)	-> out2(p4,p281) ->T=1}	-> F2N!lv28	}
/*t284*/	:: atomic { d_step{inp1(p282)		-> out1(p283) ->T=1; F=1}	-> F2N!ig28	}
/*t291*/	:: atomic { d_step{inp1(p291)		-> out2(p1,p292) ->T=1}	-> F2N!ap29 }
/*t292*/	:: atomic { d_step{inp2(p9,p292)	-> out2(p9,p293) ->T=1}	-> F2N!en29 }
/*t293*/	:: atomic { d_step{inp2(p9,p293)	-> out2(p4,p291) ->T=1}	-> F2N!lv29	}
/*t294*/	:: atomic { d_step{inp1(p292)		-> out1(p293) ->T=1; F=1}	-> F2N!ig29	}
/*t301*/	:: atomic { d_step{inp1(p301)		-> out2(p1,p302) ->T=1}	-> F2N!ap30 }
/*t302*/	:: atomic { d_step{inp2(p9,p302)	-> out2(p9,p303) ->T=1}	-> F2N!en30 }
/*t303*/	:: atomic { d_step{inp2(p9,p303)	-> out2(p4,p301) ->T=1}	-> F2N!lv30	}
/*t304*/	:: atomic { d_step{inp1(p302)		-> out1(p303) ->T=1; F=1}	-> F2N!ig30	}
/*Release Unobservable actions*/
:: atomic {F2N!bfn -> T=0};
od
}

active proctype TSN()
{
Place p1, p2, p3, p4, p5, p6, p9; /* Places LC Controller*/
Place p7, p8; /* Places barriers*/
Place p11, p12, p13 /* Places Train 1*/
Place p21, p22, p23 /* Places Train 2*/
Place p31, p32, p33 /* Places Train 3*/
Place p41, p42, p43 /* Places Train 4*/
Place p51, p52, p53 /* Places Train 5*/
Place p61, p62, p63 /* Places Train 6*/
Place p71, p72, p73 /* Places Train 7*/
Place p81, p82, p83 /* Places Train 8*/
Place p91, p92, p93 /* Places Train 9*/
Place p101, p102, p103 /* Places Train 10*/
Place p111, p112, p113 /* Places Train 11*/
Place p121, p122, p123 /* Places Train 12*/
Place p131, p132, p133 /* Places Train 13*/
Place p141, p142, p143 /* Places Train 14*/
Place p151, p152, p153 /* Places Train 15*/
Place p161, p162, p163 /* Places Train 16*/
Place p171, p172, p173 /* Places Train 17*/
Place p181, p182, p183 /* Places Train 18*/
Place p191, p192, p193 /* Places Train 19*/
Place p201, p202, p203 /* Places Train 20*/
Place p211, p212, p213 /* Places Train 21*/
Place p221, p222, p223 /* Places Train 22*/
Place p231, p232, p233 /* Places Train 23*/
Place p241, p242, p243 /* Places Train 24*/
Place p251, p252, p253 /* Places Train 25*/
Place p261, p262, p263 /* Places Train 26*/
Place p271, p272, p273 /* Places Train 27*/
Place p281, p282, p283 /* Places Train 28*/
Place p291, p292, p293 /* Places Train 29*/
Place p301, p302, p303 /* Places Train 30*/
p2=N; p6=N; p7 = 1; p11 =1; p21 =1; p31 =1; p41 =1; p51 =1; p61 =1; p71 =1; p81 =1; p91 =1; p101 =1; p111 =1; p121 =1; p131 =1; p141 =1; p151 =1; p161 =1; p171 =1; p181 =1; p191 =1; p201 =1; p211 =1; p221 =1; p231 =1; p241 =1; p251 =1; p261 =1; p271 =1; p281 =1; p291 =1; p301 =1; /* initial marking */
do
/*t1*/		:: atomic {F2N?cr -> d_step{inp3(p1,p2,p6)	-> out2(p5,p3)} }
/*t2*/		:: atomic {F2N?or -> d_step{inp2(p3,p4)		-> out2(p2,p6)} }
/*t3*/		:: atomic {F2N?kd -> d_step{inp2(p5,p8)		-> out2(p8,p9)} }
/*t4*/		:: atomic {F2N?lw -> d_step{inp2(p5,p7)		-> out2(p8,p9)}	}
/*t5*/		:: atomic {F2N?rs -> d_step{inT5(p6,p8,N) -> outT5(p6,p7,N)} }
/*t6*/		:: atomic {F2N?bfn -> d_step{inp1(p8)		-> out1(p7)} }
/*t11*/	:: atomic {F2N?ap1 -> d_step{inp1(p11)		-> out2(p1,p12)} }
/*t12*/	:: atomic {F2N?en1 -> d_step{inp2(p9,p12)	-> out2(p9,p13)} }
/*t13*/	:: atomic {F2N?lv1 -> d_step{inp2(p9,p13)	-> out2(p4,p11)} }
/*t21*/	:: atomic {F2N?ap2 -> d_step{inp1(p21)		-> out2(p1,p22)} }
/*t22*/	:: atomic {F2N?en2 -> d_step{inp2(p9,p22)	-> out2(p9,p23)} }
/*t23*/	:: atomic {F2N?lv2 -> d_step{inp2(p9,p23)	-> out2(p4,p21)} }
/*t31*/	:: atomic {F2N?ap3 -> d_step{inp1(p31)		-> out2(p1,p32)} }
/*t32*/	:: atomic {F2N?en3 -> d_step{inp2(p9,p32)	-> out2(p9,p33)} }
/*t33*/	:: atomic {F2N?lv3 -> d_step{inp2(p9,p33)	-> out2(p4,p31)} }
/*t41*/	:: atomic {F2N?ap4 -> d_step{inp1(p41)		-> out2(p1,p42)} }
/*t42*/	:: atomic {F2N?en4 -> d_step{inp2(p9,p42)	-> out2(p9,p43)} }
/*t43*/	:: atomic {F2N?lv4 -> d_step{inp2(p9,p43)	-> out2(p4,p41)} }
/*t51*/	:: atomic {F2N?ap5 -> d_step{inp1(p51)		-> out2(p1,p52)} }
/*t52*/	:: atomic {F2N?en5 -> d_step{inp2(p9,p52)	-> out2(p9,p53)} }
/*t53*/	:: atomic {F2N?lv5 -> d_step{inp2(p9,p53)	-> out2(p4,p51)} }
/*t61*/	:: atomic {F2N?ap6 -> d_step{inp1(p61)		-> out2(p1,p62)} }
/*t62*/	:: atomic {F2N?en6 -> d_step{inp2(p9,p62)	-> out2(p9,p63)} }
/*t63*/	:: atomic {F2N?lv6 -> d_step{inp2(p9,p63)	-> out2(p4,p61)} }
/*t71*/	:: atomic {F2N?ap7 -> d_step{inp1(p71)		-> out2(p1,p72)} }
/*t72*/	:: atomic {F2N?en7 -> d_step{inp2(p9,p72)	-> out2(p9,p73)} }
/*t73*/	:: atomic {F2N?lv7 -> d_step{inp2(p9,p73)	-> out2(p4,p71)} }
/*t81*/	:: atomic {F2N?ap8 -> d_step{inp1(p81)		-> out2(p1,p82)} }
/*t82*/	:: atomic {F2N?en8 -> d_step{inp2(p9,p82)	-> out2(p9,p83)} }
/*t83*/	:: atomic {F2N?lv8 -> d_step{inp2(p9,p83)	-> out2(p4,p81)} }
/*t91*/	:: atomic {F2N?ap9 -> d_step{inp1(p91)		-> out2(p1,p92)} }
/*t92*/	:: atomic {F2N?en9 -> d_step{inp2(p9,p92)	-> out2(p9,p93)} }
/*t93*/	:: atomic {F2N?lv9 -> d_step{inp2(p9,p93)	-> out2(p4,p91)} }
/*t101*/	:: atomic {F2N?ap10 -> d_step{inp1(p101)		-> out2(p1,p102)} }
/*t102*/	:: atomic {F2N?en10 -> d_step{inp2(p9,p102)	-> out2(p9,p103)} }
/*t103*/	:: atomic {F2N?lv10 -> d_step{inp2(p9,p103)	-> out2(p4,p101)} }
/*t111*/	:: atomic {F2N?ap11 -> d_step{inp1(p111)		-> out2(p1,p112)} }
/*t112*/	:: atomic {F2N?en11 -> d_step{inp2(p9,p112)	-> out2(p9,p113)} }
/*t113*/	:: atomic {F2N?lv11 -> d_step{inp2(p9,p113)	-> out2(p4,p111)} }
/*t121*/	:: atomic {F2N?ap12 -> d_step{inp1(p121)		-> out2(p1,p122)} }
/*t122*/	:: atomic {F2N?en12 -> d_step{inp2(p9,p122)	-> out2(p9,p123)} }
/*t123*/	:: atomic {F2N?lv12 -> d_step{inp2(p9,p123)	-> out2(p4,p121)} }
/*t131*/	:: atomic {F2N?ap13 -> d_step{inp1(p131)		-> out2(p1,p132)} }
/*t132*/	:: atomic {F2N?en13 -> d_step{inp2(p9,p132)	-> out2(p9,p133)} }
/*t133*/	:: atomic {F2N?lv13 -> d_step{inp2(p9,p133)	-> out2(p4,p131)} }
/*t141*/	:: atomic {F2N?ap14 -> d_step{inp1(p141)		-> out2(p1,p142)} }
/*t142*/	:: atomic {F2N?en14 -> d_step{inp2(p9,p142)	-> out2(p9,p143)} }
/*t143*/	:: atomic {F2N?lv14 -> d_step{inp2(p9,p143)	-> out2(p4,p141)} }
/*t151*/	:: atomic {F2N?ap15 -> d_step{inp1(p151)		-> out2(p1,p152)} }
/*t152*/	:: atomic {F2N?en15 -> d_step{inp2(p9,p152)	-> out2(p9,p153)} }
/*t153*/	:: atomic {F2N?lv15 -> d_step{inp2(p9,p153)	-> out2(p4,p151)} }
/*t161*/	:: atomic {F2N?ap16 -> d_step{inp1(p161)		-> out2(p1,p162)} }
/*t162*/	:: atomic {F2N?en16 -> d_step{inp2(p9,p162)	-> out2(p9,p163)} }
/*t163*/	:: atomic {F2N?lv16 -> d_step{inp2(p9,p163)	-> out2(p4,p161)} }
/*t171*/	:: atomic {F2N?ap17 -> d_step{inp1(p171)		-> out2(p1,p172)} }
/*t172*/	:: atomic {F2N?en17 -> d_step{inp2(p9,p172)	-> out2(p9,p173)} }
/*t173*/	:: atomic {F2N?lv17 -> d_step{inp2(p9,p173)	-> out2(p4,p171)} }
/*t181*/	:: atomic {F2N?ap18 -> d_step{inp1(p181)		-> out2(p1,p182)} }
/*t182*/	:: atomic {F2N?en18 -> d_step{inp2(p9,p182)	-> out2(p9,p183)} }
/*t183*/	:: atomic {F2N?lv18 -> d_step{inp2(p9,p183)	-> out2(p4,p181)} }
/*t191*/	:: atomic {F2N?ap19 -> d_step{inp1(p191)		-> out2(p1,p192)} }
/*t192*/	:: atomic {F2N?en19 -> d_step{inp2(p9,p192)	-> out2(p9,p193)} }
/*t193*/	:: atomic {F2N?lv19 -> d_step{inp2(p9,p193)	-> out2(p4,p191)} }
/*t201*/	:: atomic {F2N?ap20 -> d_step{inp1(p201)		-> out2(p1,p202)} }
/*t202*/	:: atomic {F2N?en20 -> d_step{inp2(p9,p202)	-> out2(p9,p203)} }
/*t203*/	:: atomic {F2N?lv20 -> d_step{inp2(p9,p203)	-> out2(p4,p201)} }
/*t211*/	:: atomic {F2N?ap21 -> d_step{inp1(p211)		-> out2(p1,p212)} }
/*t212*/	:: atomic {F2N?en21 -> d_step{inp2(p9,p212)	-> out2(p9,p213)} }
/*t213*/	:: atomic {F2N?lv21 -> d_step{inp2(p9,p213)	-> out2(p4,p211)} }
/*t221*/	:: atomic {F2N?ap22 -> d_step{inp1(p221)		-> out2(p1,p222)} }
/*t222*/	:: atomic {F2N?en22 -> d_step{inp2(p9,p222)	-> out2(p9,p223)} }
/*t223*/	:: atomic {F2N?lv22 -> d_step{inp2(p9,p223)	-> out2(p4,p221)} }
/*t231*/	:: atomic {F2N?ap23 -> d_step{inp1(p231)		-> out2(p1,p232)} }
/*t232*/	:: atomic {F2N?en23 -> d_step{inp2(p9,p232)	-> out2(p9,p233)} }
/*t233*/	:: atomic {F2N?lv23 -> d_step{inp2(p9,p233)	-> out2(p4,p231)} }
/*t241*/	:: atomic {F2N?ap24 -> d_step{inp1(p241)		-> out2(p1,p242)} }
/*t242*/	:: atomic {F2N?en24 -> d_step{inp2(p9,p242)	-> out2(p9,p243)} }
/*t243*/	:: atomic {F2N?lv24 -> d_step{inp2(p9,p243)	-> out2(p4,p241)} }
/*t251*/	:: atomic {F2N?ap25 -> d_step{inp1(p251)		-> out2(p1,p252)} }
/*t252*/	:: atomic {F2N?en25 -> d_step{inp2(p9,p252)	-> out2(p9,p253)} }
/*t253*/	:: atomic {F2N?lv25 -> d_step{inp2(p9,p253)	-> out2(p4,p251)} }
/*t261*/	:: atomic {F2N?ap26 -> d_step{inp1(p261)		-> out2(p1,p262)} }
/*t262*/	:: atomic {F2N?en26 -> d_step{inp2(p9,p262)	-> out2(p9,p263)} }
/*t263*/	:: atomic {F2N?lv26 -> d_step{inp2(p9,p263)	-> out2(p4,p261)} }
/*t271*/	:: atomic {F2N?ap27 -> d_step{inp1(p271)		-> out2(p1,p272)} }
/*t272*/	:: atomic {F2N?en27 -> d_step{inp2(p9,p272)	-> out2(p9,p273)} }
/*t273*/	:: atomic {F2N?lv27 -> d_step{inp2(p9,p273)	-> out2(p4,p271)} }
/*t281*/	:: atomic {F2N?ap28 -> d_step{inp1(p281)		-> out2(p1,p282)} }
/*t282*/	:: atomic {F2N?en28 -> d_step{inp2(p9,p282)	-> out2(p9,p283)} }
/*t283*/	:: atomic {F2N?lv28 -> d_step{inp2(p9,p283)	-> out2(p4,p281)} }
/*t291*/	:: atomic {F2N?ap29 -> d_step{inp1(p291)		-> out2(p1,p292)} }
/*t292*/	:: atomic {F2N?en29 -> d_step{inp2(p9,p292)	-> out2(p9,p293)} }
/*t293*/	:: atomic {F2N?lv29 -> d_step{inp2(p9,p293)	-> out2(p4,p291)} }
/*t301*/	:: atomic {F2N?ap30 -> d_step{inp1(p301)		-> out2(p1,p302)} }
/*t302*/	:: atomic {F2N?en30 -> d_step{inp2(p9,p302)	-> out2(p9,p303)} }
/*t303*/	:: atomic {F2N?lv30 -> d_step{inp2(p9,p303)	-> out2(p4,p301)} }
/*Release Faulty actions*/
:: atomic {F2N?ig1 -> skip};
:: atomic {F2N?ig2 -> skip};
:: atomic {F2N?ig3 -> skip};
:: atomic {F2N?ig4 -> skip};
:: atomic {F2N?ig5 -> skip};
:: atomic {F2N?ig6 -> skip};
:: atomic {F2N?ig7 -> skip};
:: atomic {F2N?ig8 -> skip};
:: atomic {F2N?ig9 -> skip};
:: atomic {F2N?ig10 -> skip};
:: atomic {F2N?ig11 -> skip};
:: atomic {F2N?ig12 -> skip};
:: atomic {F2N?ig13 -> skip};
:: atomic {F2N?ig14 -> skip};
:: atomic {F2N?ig15 -> skip};
:: atomic {F2N?ig16 -> skip};
:: atomic {F2N?ig17 -> skip};
:: atomic {F2N?ig18 -> skip};
:: atomic {F2N?ig19 -> skip};
:: atomic {F2N?ig20 -> skip};
:: atomic {F2N?ig21 -> skip};
:: atomic {F2N?ig22 -> skip};
:: atomic {F2N?ig23 -> skip};
:: atomic {F2N?ig24 -> skip};
:: atomic {F2N?ig25 -> skip};
:: atomic {F2N?ig26 -> skip};
:: atomic {F2N?ig27 -> skip};
:: atomic {F2N?ig28 -> skip};
:: atomic {F2N?ig29 -> skip};
:: atomic {F2N?ig30 -> skip};
/*Release Unobservable actions*/
:: atomic {F2N?bf -> skip};
od
}
