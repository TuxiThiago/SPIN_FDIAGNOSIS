/* Automatically generated file for diagnosability verification of failure of type 1 for 50 Trains*/

#define Place	byte
#define inp1(x)		(x>0) -> x=x-1
#define inp2(x,y)	(x>0&&y>0) -> x = x-1; y=y-1
#define inp3(x,y,z)	(x>0&&y>0&&z>0) -> x = x-1; y=y-1; z=z-1;
#define out1(x)		x=x+1
#define out2(x,y)	x=x+1; y=y+1
#define inT5(x,y,n)	(x>n && y) -> x = x-n; y=y-1
#define outT5(x,y,n)	x=x+n; y=y+1
#define N 50
mtype = {cr,kd,lw,or,rs,bf,ap1,en1,lv1,ig1,ap2,en2,lv2,ig2,ap3,en3,lv3,ig3,ap4,en4,lv4,ig4,ap5,en5,lv5,ig5,ap6,en6,lv6,ig6,ap7,en7,lv7,ig7,ap8,en8,lv8,ig8,ap9,en9,lv9,ig9,ap10,en10,lv10,ig10,ap11,en11,lv11,ig11,ap12,en12,lv12,ig12,ap13,en13,lv13,ig13,ap14,en14,lv14,ig14,ap15,en15,lv15,ig15,ap16,en16,lv16,ig16,ap17,en17,lv17,ig17,ap18,en18,lv18,ig18,ap19,en19,lv19,ig19,ap20,en20,lv20,ig20,ap21,en21,lv21,ig21,ap22,en22,lv22,ig22,ap23,en23,lv23,ig23,ap24,en24,lv24,ig24,ap25,en25,lv25,ig25,ap26,en26,lv26,ig26,ap27,en27,lv27,ig27,ap28,en28,lv28,ig28,ap29,en29,lv29,ig29,ap30,en30,lv30,ig30,ap31,en31,lv31,ig31,ap32,en32,lv32,ig32,ap33,en33,lv33,ig33,ap34,en34,lv34,ig34,ap35,en35,lv35,ig35,ap36,en36,lv36,ig36,ap37,en37,lv37,ig37,ap38,en38,lv38,ig38,ap39,en39,lv39,ig39,ap40,en40,lv40,ig40,ap41,en41,lv41,ig41,ap42,en42,lv42,ig42,ap43,en43,lv43,ig43,ap44,en44,lv44,ig44,ap45,en45,lv45,ig45,ap46,en46,lv46,ig46,ap47,en47,lv47,ig47,ap48,en48,lv48,ig48,ap49,en49,lv49,ig49,ap50,en50,lv50,ig50,bfn}
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
Place p311, p312, p313 /* Places Train 31*/
Place p321, p322, p323 /* Places Train 32*/
Place p331, p332, p333 /* Places Train 33*/
Place p341, p342, p343 /* Places Train 34*/
Place p351, p352, p353 /* Places Train 35*/
Place p361, p362, p363 /* Places Train 36*/
Place p371, p372, p373 /* Places Train 37*/
Place p381, p382, p383 /* Places Train 38*/
Place p391, p392, p393 /* Places Train 39*/
Place p401, p402, p403 /* Places Train 40*/
Place p411, p412, p413 /* Places Train 41*/
Place p421, p422, p423 /* Places Train 42*/
Place p431, p432, p433 /* Places Train 43*/
Place p441, p442, p443 /* Places Train 44*/
Place p451, p452, p453 /* Places Train 45*/
Place p461, p462, p463 /* Places Train 46*/
Place p471, p472, p473 /* Places Train 47*/
Place p481, p482, p483 /* Places Train 48*/
Place p491, p492, p493 /* Places Train 49*/
Place p501, p502, p503 /* Places Train 50*/
p2=N; p6=N; p7 = 1; p11 =1; p21 =1; p31 =1; p41 =1; p51 =1; p61 =1; p71 =1; p81 =1; p91 =1; p101 =1; p111 =1; p121 =1; p131 =1; p141 =1; p151 =1; p161 =1; p171 =1; p181 =1; p191 =1; p201 =1; p211 =1; p221 =1; p231 =1; p241 =1; p251 =1; p261 =1; p271 =1; p281 =1; p291 =1; p301 =1; p311 =1; p321 =1; p331 =1; p341 =1; p351 =1; p361 =1; p371 =1; p381 =1; p391 =1; p401 =1; p411 =1; p421 =1; p431 =1; p441 =1; p451 =1; p461 =1; p471 =1; p481 =1; p491 =1; p501 =1; /* initial marking */
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
/*t311*/	:: atomic { d_step{inp1(p311)		-> out2(p1,p312) ->T=1}	-> F2N!ap31 }
/*t312*/	:: atomic { d_step{inp2(p9,p312)	-> out2(p9,p313) ->T=1}	-> F2N!en31 }
/*t313*/	:: atomic { d_step{inp2(p9,p313)	-> out2(p4,p311) ->T=1}	-> F2N!lv31	}
/*t314*/	:: atomic { d_step{inp1(p312)		-> out1(p313) ->T=1; F=1}	-> F2N!ig31	}
/*t321*/	:: atomic { d_step{inp1(p321)		-> out2(p1,p322) ->T=1}	-> F2N!ap32 }
/*t322*/	:: atomic { d_step{inp2(p9,p322)	-> out2(p9,p323) ->T=1}	-> F2N!en32 }
/*t323*/	:: atomic { d_step{inp2(p9,p323)	-> out2(p4,p321) ->T=1}	-> F2N!lv32	}
/*t324*/	:: atomic { d_step{inp1(p322)		-> out1(p323) ->T=1; F=1}	-> F2N!ig32	}
/*t331*/	:: atomic { d_step{inp1(p331)		-> out2(p1,p332) ->T=1}	-> F2N!ap33 }
/*t332*/	:: atomic { d_step{inp2(p9,p332)	-> out2(p9,p333) ->T=1}	-> F2N!en33 }
/*t333*/	:: atomic { d_step{inp2(p9,p333)	-> out2(p4,p331) ->T=1}	-> F2N!lv33	}
/*t334*/	:: atomic { d_step{inp1(p332)		-> out1(p333) ->T=1; F=1}	-> F2N!ig33	}
/*t341*/	:: atomic { d_step{inp1(p341)		-> out2(p1,p342) ->T=1}	-> F2N!ap34 }
/*t342*/	:: atomic { d_step{inp2(p9,p342)	-> out2(p9,p343) ->T=1}	-> F2N!en34 }
/*t343*/	:: atomic { d_step{inp2(p9,p343)	-> out2(p4,p341) ->T=1}	-> F2N!lv34	}
/*t344*/	:: atomic { d_step{inp1(p342)		-> out1(p343) ->T=1; F=1}	-> F2N!ig34	}
/*t351*/	:: atomic { d_step{inp1(p351)		-> out2(p1,p352) ->T=1}	-> F2N!ap35 }
/*t352*/	:: atomic { d_step{inp2(p9,p352)	-> out2(p9,p353) ->T=1}	-> F2N!en35 }
/*t353*/	:: atomic { d_step{inp2(p9,p353)	-> out2(p4,p351) ->T=1}	-> F2N!lv35	}
/*t354*/	:: atomic { d_step{inp1(p352)		-> out1(p353) ->T=1; F=1}	-> F2N!ig35	}
/*t361*/	:: atomic { d_step{inp1(p361)		-> out2(p1,p362) ->T=1}	-> F2N!ap36 }
/*t362*/	:: atomic { d_step{inp2(p9,p362)	-> out2(p9,p363) ->T=1}	-> F2N!en36 }
/*t363*/	:: atomic { d_step{inp2(p9,p363)	-> out2(p4,p361) ->T=1}	-> F2N!lv36	}
/*t364*/	:: atomic { d_step{inp1(p362)		-> out1(p363) ->T=1; F=1}	-> F2N!ig36	}
/*t371*/	:: atomic { d_step{inp1(p371)		-> out2(p1,p372) ->T=1}	-> F2N!ap37 }
/*t372*/	:: atomic { d_step{inp2(p9,p372)	-> out2(p9,p373) ->T=1}	-> F2N!en37 }
/*t373*/	:: atomic { d_step{inp2(p9,p373)	-> out2(p4,p371) ->T=1}	-> F2N!lv37	}
/*t374*/	:: atomic { d_step{inp1(p372)		-> out1(p373) ->T=1; F=1}	-> F2N!ig37	}
/*t381*/	:: atomic { d_step{inp1(p381)		-> out2(p1,p382) ->T=1}	-> F2N!ap38 }
/*t382*/	:: atomic { d_step{inp2(p9,p382)	-> out2(p9,p383) ->T=1}	-> F2N!en38 }
/*t383*/	:: atomic { d_step{inp2(p9,p383)	-> out2(p4,p381) ->T=1}	-> F2N!lv38	}
/*t384*/	:: atomic { d_step{inp1(p382)		-> out1(p383) ->T=1; F=1}	-> F2N!ig38	}
/*t391*/	:: atomic { d_step{inp1(p391)		-> out2(p1,p392) ->T=1}	-> F2N!ap39 }
/*t392*/	:: atomic { d_step{inp2(p9,p392)	-> out2(p9,p393) ->T=1}	-> F2N!en39 }
/*t393*/	:: atomic { d_step{inp2(p9,p393)	-> out2(p4,p391) ->T=1}	-> F2N!lv39	}
/*t394*/	:: atomic { d_step{inp1(p392)		-> out1(p393) ->T=1; F=1}	-> F2N!ig39	}
/*t401*/	:: atomic { d_step{inp1(p401)		-> out2(p1,p402) ->T=1}	-> F2N!ap40 }
/*t402*/	:: atomic { d_step{inp2(p9,p402)	-> out2(p9,p403) ->T=1}	-> F2N!en40 }
/*t403*/	:: atomic { d_step{inp2(p9,p403)	-> out2(p4,p401) ->T=1}	-> F2N!lv40	}
/*t404*/	:: atomic { d_step{inp1(p402)		-> out1(p403) ->T=1; F=1}	-> F2N!ig40	}
/*t411*/	:: atomic { d_step{inp1(p411)		-> out2(p1,p412) ->T=1}	-> F2N!ap41 }
/*t412*/	:: atomic { d_step{inp2(p9,p412)	-> out2(p9,p413) ->T=1}	-> F2N!en41 }
/*t413*/	:: atomic { d_step{inp2(p9,p413)	-> out2(p4,p411) ->T=1}	-> F2N!lv41	}
/*t414*/	:: atomic { d_step{inp1(p412)		-> out1(p413) ->T=1; F=1}	-> F2N!ig41	}
/*t421*/	:: atomic { d_step{inp1(p421)		-> out2(p1,p422) ->T=1}	-> F2N!ap42 }
/*t422*/	:: atomic { d_step{inp2(p9,p422)	-> out2(p9,p423) ->T=1}	-> F2N!en42 }
/*t423*/	:: atomic { d_step{inp2(p9,p423)	-> out2(p4,p421) ->T=1}	-> F2N!lv42	}
/*t424*/	:: atomic { d_step{inp1(p422)		-> out1(p423) ->T=1; F=1}	-> F2N!ig42	}
/*t431*/	:: atomic { d_step{inp1(p431)		-> out2(p1,p432) ->T=1}	-> F2N!ap43 }
/*t432*/	:: atomic { d_step{inp2(p9,p432)	-> out2(p9,p433) ->T=1}	-> F2N!en43 }
/*t433*/	:: atomic { d_step{inp2(p9,p433)	-> out2(p4,p431) ->T=1}	-> F2N!lv43	}
/*t434*/	:: atomic { d_step{inp1(p432)		-> out1(p433) ->T=1; F=1}	-> F2N!ig43	}
/*t441*/	:: atomic { d_step{inp1(p441)		-> out2(p1,p442) ->T=1}	-> F2N!ap44 }
/*t442*/	:: atomic { d_step{inp2(p9,p442)	-> out2(p9,p443) ->T=1}	-> F2N!en44 }
/*t443*/	:: atomic { d_step{inp2(p9,p443)	-> out2(p4,p441) ->T=1}	-> F2N!lv44	}
/*t444*/	:: atomic { d_step{inp1(p442)		-> out1(p443) ->T=1; F=1}	-> F2N!ig44	}
/*t451*/	:: atomic { d_step{inp1(p451)		-> out2(p1,p452) ->T=1}	-> F2N!ap45 }
/*t452*/	:: atomic { d_step{inp2(p9,p452)	-> out2(p9,p453) ->T=1}	-> F2N!en45 }
/*t453*/	:: atomic { d_step{inp2(p9,p453)	-> out2(p4,p451) ->T=1}	-> F2N!lv45	}
/*t454*/	:: atomic { d_step{inp1(p452)		-> out1(p453) ->T=1; F=1}	-> F2N!ig45	}
/*t461*/	:: atomic { d_step{inp1(p461)		-> out2(p1,p462) ->T=1}	-> F2N!ap46 }
/*t462*/	:: atomic { d_step{inp2(p9,p462)	-> out2(p9,p463) ->T=1}	-> F2N!en46 }
/*t463*/	:: atomic { d_step{inp2(p9,p463)	-> out2(p4,p461) ->T=1}	-> F2N!lv46	}
/*t464*/	:: atomic { d_step{inp1(p462)		-> out1(p463) ->T=1; F=1}	-> F2N!ig46	}
/*t471*/	:: atomic { d_step{inp1(p471)		-> out2(p1,p472) ->T=1}	-> F2N!ap47 }
/*t472*/	:: atomic { d_step{inp2(p9,p472)	-> out2(p9,p473) ->T=1}	-> F2N!en47 }
/*t473*/	:: atomic { d_step{inp2(p9,p473)	-> out2(p4,p471) ->T=1}	-> F2N!lv47	}
/*t474*/	:: atomic { d_step{inp1(p472)		-> out1(p473) ->T=1; F=1}	-> F2N!ig47	}
/*t481*/	:: atomic { d_step{inp1(p481)		-> out2(p1,p482) ->T=1}	-> F2N!ap48 }
/*t482*/	:: atomic { d_step{inp2(p9,p482)	-> out2(p9,p483) ->T=1}	-> F2N!en48 }
/*t483*/	:: atomic { d_step{inp2(p9,p483)	-> out2(p4,p481) ->T=1}	-> F2N!lv48	}
/*t484*/	:: atomic { d_step{inp1(p482)		-> out1(p483) ->T=1; F=1}	-> F2N!ig48	}
/*t491*/	:: atomic { d_step{inp1(p491)		-> out2(p1,p492) ->T=1}	-> F2N!ap49 }
/*t492*/	:: atomic { d_step{inp2(p9,p492)	-> out2(p9,p493) ->T=1}	-> F2N!en49 }
/*t493*/	:: atomic { d_step{inp2(p9,p493)	-> out2(p4,p491) ->T=1}	-> F2N!lv49	}
/*t494*/	:: atomic { d_step{inp1(p492)		-> out1(p493) ->T=1; F=1}	-> F2N!ig49	}
/*t501*/	:: atomic { d_step{inp1(p501)		-> out2(p1,p502) ->T=1}	-> F2N!ap50 }
/*t502*/	:: atomic { d_step{inp2(p9,p502)	-> out2(p9,p503) ->T=1}	-> F2N!en50 }
/*t503*/	:: atomic { d_step{inp2(p9,p503)	-> out2(p4,p501) ->T=1}	-> F2N!lv50	}
/*t504*/	:: atomic { d_step{inp1(p502)		-> out1(p503) ->T=1; F=1}	-> F2N!ig50	}
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
Place p311, p312, p313 /* Places Train 31*/
Place p321, p322, p323 /* Places Train 32*/
Place p331, p332, p333 /* Places Train 33*/
Place p341, p342, p343 /* Places Train 34*/
Place p351, p352, p353 /* Places Train 35*/
Place p361, p362, p363 /* Places Train 36*/
Place p371, p372, p373 /* Places Train 37*/
Place p381, p382, p383 /* Places Train 38*/
Place p391, p392, p393 /* Places Train 39*/
Place p401, p402, p403 /* Places Train 40*/
Place p411, p412, p413 /* Places Train 41*/
Place p421, p422, p423 /* Places Train 42*/
Place p431, p432, p433 /* Places Train 43*/
Place p441, p442, p443 /* Places Train 44*/
Place p451, p452, p453 /* Places Train 45*/
Place p461, p462, p463 /* Places Train 46*/
Place p471, p472, p473 /* Places Train 47*/
Place p481, p482, p483 /* Places Train 48*/
Place p491, p492, p493 /* Places Train 49*/
Place p501, p502, p503 /* Places Train 50*/
p2=N; p6=N; p7 = 1; p11 =1; p21 =1; p31 =1; p41 =1; p51 =1; p61 =1; p71 =1; p81 =1; p91 =1; p101 =1; p111 =1; p121 =1; p131 =1; p141 =1; p151 =1; p161 =1; p171 =1; p181 =1; p191 =1; p201 =1; p211 =1; p221 =1; p231 =1; p241 =1; p251 =1; p261 =1; p271 =1; p281 =1; p291 =1; p301 =1; p311 =1; p321 =1; p331 =1; p341 =1; p351 =1; p361 =1; p371 =1; p381 =1; p391 =1; p401 =1; p411 =1; p421 =1; p431 =1; p441 =1; p451 =1; p461 =1; p471 =1; p481 =1; p491 =1; p501 =1; /* initial marking */
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
/*t311*/	:: atomic {F2N?ap31 -> d_step{inp1(p311)		-> out2(p1,p312)} }
/*t312*/	:: atomic {F2N?en31 -> d_step{inp2(p9,p312)	-> out2(p9,p313)} }
/*t313*/	:: atomic {F2N?lv31 -> d_step{inp2(p9,p313)	-> out2(p4,p311)} }
/*t321*/	:: atomic {F2N?ap32 -> d_step{inp1(p321)		-> out2(p1,p322)} }
/*t322*/	:: atomic {F2N?en32 -> d_step{inp2(p9,p322)	-> out2(p9,p323)} }
/*t323*/	:: atomic {F2N?lv32 -> d_step{inp2(p9,p323)	-> out2(p4,p321)} }
/*t331*/	:: atomic {F2N?ap33 -> d_step{inp1(p331)		-> out2(p1,p332)} }
/*t332*/	:: atomic {F2N?en33 -> d_step{inp2(p9,p332)	-> out2(p9,p333)} }
/*t333*/	:: atomic {F2N?lv33 -> d_step{inp2(p9,p333)	-> out2(p4,p331)} }
/*t341*/	:: atomic {F2N?ap34 -> d_step{inp1(p341)		-> out2(p1,p342)} }
/*t342*/	:: atomic {F2N?en34 -> d_step{inp2(p9,p342)	-> out2(p9,p343)} }
/*t343*/	:: atomic {F2N?lv34 -> d_step{inp2(p9,p343)	-> out2(p4,p341)} }
/*t351*/	:: atomic {F2N?ap35 -> d_step{inp1(p351)		-> out2(p1,p352)} }
/*t352*/	:: atomic {F2N?en35 -> d_step{inp2(p9,p352)	-> out2(p9,p353)} }
/*t353*/	:: atomic {F2N?lv35 -> d_step{inp2(p9,p353)	-> out2(p4,p351)} }
/*t361*/	:: atomic {F2N?ap36 -> d_step{inp1(p361)		-> out2(p1,p362)} }
/*t362*/	:: atomic {F2N?en36 -> d_step{inp2(p9,p362)	-> out2(p9,p363)} }
/*t363*/	:: atomic {F2N?lv36 -> d_step{inp2(p9,p363)	-> out2(p4,p361)} }
/*t371*/	:: atomic {F2N?ap37 -> d_step{inp1(p371)		-> out2(p1,p372)} }
/*t372*/	:: atomic {F2N?en37 -> d_step{inp2(p9,p372)	-> out2(p9,p373)} }
/*t373*/	:: atomic {F2N?lv37 -> d_step{inp2(p9,p373)	-> out2(p4,p371)} }
/*t381*/	:: atomic {F2N?ap38 -> d_step{inp1(p381)		-> out2(p1,p382)} }
/*t382*/	:: atomic {F2N?en38 -> d_step{inp2(p9,p382)	-> out2(p9,p383)} }
/*t383*/	:: atomic {F2N?lv38 -> d_step{inp2(p9,p383)	-> out2(p4,p381)} }
/*t391*/	:: atomic {F2N?ap39 -> d_step{inp1(p391)		-> out2(p1,p392)} }
/*t392*/	:: atomic {F2N?en39 -> d_step{inp2(p9,p392)	-> out2(p9,p393)} }
/*t393*/	:: atomic {F2N?lv39 -> d_step{inp2(p9,p393)	-> out2(p4,p391)} }
/*t401*/	:: atomic {F2N?ap40 -> d_step{inp1(p401)		-> out2(p1,p402)} }
/*t402*/	:: atomic {F2N?en40 -> d_step{inp2(p9,p402)	-> out2(p9,p403)} }
/*t403*/	:: atomic {F2N?lv40 -> d_step{inp2(p9,p403)	-> out2(p4,p401)} }
/*t411*/	:: atomic {F2N?ap41 -> d_step{inp1(p411)		-> out2(p1,p412)} }
/*t412*/	:: atomic {F2N?en41 -> d_step{inp2(p9,p412)	-> out2(p9,p413)} }
/*t413*/	:: atomic {F2N?lv41 -> d_step{inp2(p9,p413)	-> out2(p4,p411)} }
/*t421*/	:: atomic {F2N?ap42 -> d_step{inp1(p421)		-> out2(p1,p422)} }
/*t422*/	:: atomic {F2N?en42 -> d_step{inp2(p9,p422)	-> out2(p9,p423)} }
/*t423*/	:: atomic {F2N?lv42 -> d_step{inp2(p9,p423)	-> out2(p4,p421)} }
/*t431*/	:: atomic {F2N?ap43 -> d_step{inp1(p431)		-> out2(p1,p432)} }
/*t432*/	:: atomic {F2N?en43 -> d_step{inp2(p9,p432)	-> out2(p9,p433)} }
/*t433*/	:: atomic {F2N?lv43 -> d_step{inp2(p9,p433)	-> out2(p4,p431)} }
/*t441*/	:: atomic {F2N?ap44 -> d_step{inp1(p441)		-> out2(p1,p442)} }
/*t442*/	:: atomic {F2N?en44 -> d_step{inp2(p9,p442)	-> out2(p9,p443)} }
/*t443*/	:: atomic {F2N?lv44 -> d_step{inp2(p9,p443)	-> out2(p4,p441)} }
/*t451*/	:: atomic {F2N?ap45 -> d_step{inp1(p451)		-> out2(p1,p452)} }
/*t452*/	:: atomic {F2N?en45 -> d_step{inp2(p9,p452)	-> out2(p9,p453)} }
/*t453*/	:: atomic {F2N?lv45 -> d_step{inp2(p9,p453)	-> out2(p4,p451)} }
/*t461*/	:: atomic {F2N?ap46 -> d_step{inp1(p461)		-> out2(p1,p462)} }
/*t462*/	:: atomic {F2N?en46 -> d_step{inp2(p9,p462)	-> out2(p9,p463)} }
/*t463*/	:: atomic {F2N?lv46 -> d_step{inp2(p9,p463)	-> out2(p4,p461)} }
/*t471*/	:: atomic {F2N?ap47 -> d_step{inp1(p471)		-> out2(p1,p472)} }
/*t472*/	:: atomic {F2N?en47 -> d_step{inp2(p9,p472)	-> out2(p9,p473)} }
/*t473*/	:: atomic {F2N?lv47 -> d_step{inp2(p9,p473)	-> out2(p4,p471)} }
/*t481*/	:: atomic {F2N?ap48 -> d_step{inp1(p481)		-> out2(p1,p482)} }
/*t482*/	:: atomic {F2N?en48 -> d_step{inp2(p9,p482)	-> out2(p9,p483)} }
/*t483*/	:: atomic {F2N?lv48 -> d_step{inp2(p9,p483)	-> out2(p4,p481)} }
/*t491*/	:: atomic {F2N?ap49 -> d_step{inp1(p491)		-> out2(p1,p492)} }
/*t492*/	:: atomic {F2N?en49 -> d_step{inp2(p9,p492)	-> out2(p9,p493)} }
/*t493*/	:: atomic {F2N?lv49 -> d_step{inp2(p9,p493)	-> out2(p4,p491)} }
/*t501*/	:: atomic {F2N?ap50 -> d_step{inp1(p501)		-> out2(p1,p502)} }
/*t502*/	:: atomic {F2N?en50 -> d_step{inp2(p9,p502)	-> out2(p9,p503)} }
/*t503*/	:: atomic {F2N?lv50 -> d_step{inp2(p9,p503)	-> out2(p4,p501)} }
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
:: atomic {F2N?ig31 -> skip};
:: atomic {F2N?ig32 -> skip};
:: atomic {F2N?ig33 -> skip};
:: atomic {F2N?ig34 -> skip};
:: atomic {F2N?ig35 -> skip};
:: atomic {F2N?ig36 -> skip};
:: atomic {F2N?ig37 -> skip};
:: atomic {F2N?ig38 -> skip};
:: atomic {F2N?ig39 -> skip};
:: atomic {F2N?ig40 -> skip};
:: atomic {F2N?ig41 -> skip};
:: atomic {F2N?ig42 -> skip};
:: atomic {F2N?ig43 -> skip};
:: atomic {F2N?ig44 -> skip};
:: atomic {F2N?ig45 -> skip};
:: atomic {F2N?ig46 -> skip};
:: atomic {F2N?ig47 -> skip};
:: atomic {F2N?ig48 -> skip};
:: atomic {F2N?ig49 -> skip};
:: atomic {F2N?ig50 -> skip};
/*Release Unobservable actions*/
:: atomic {F2N?bf -> skip};
od
}
