/* Automatically generated file for diagnosability verification of failure of type 1 for 12 Trains*/

#define Place	byte
#define inp1(x)		(x>0) -> x=x-1
#define inp2(x,y)	(x>0&&y>0) -> x = x-1; y=y-1
#define inp3(x,y,z)	(x>0&&y>0&&z>0) -> x = x-1; y=y-1; z=z-1;
#define out1(x)		x=x+1
#define out2(x,y)	x=x+1; y=y+1
#define inT5(x,y,n)	(x>n && y) -> x = x-n; y=y-1
#define outT5(x,y,n)	x=x+n; y=y+1
#define N 12
mtype = {cr,kd,lw,or,rs,bf,ap1,en1,lv1,ig1,ap2,en2,lv2,ig2,ap3,en3,lv3,ig3,ap4,en4,lv4,ig4,ap5,en5,lv5,ig5,ap6,en6,lv6,ig6,ap7,en7,lv7,ig7,ap8,en8,lv8,ig8,ap9,en9,lv9,ig9,ap10,en10,lv10,ig10,ap11,en11,lv11,ig11,ap12,en12,lv12,ig12,bfn}
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
p2=N; p6=N; p7 = 1; p11 =1; p21 =1; p31 =1; p41 =1; p51 =1; p61 =1; p71 =1; p81 =1; p91 =1; p101 =1; p111 =1; p121 =1; /* initial marking */
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
p2=N; p6=N; p7 = 1; p11 =1; p21 =1; p31 =1; p41 =1; p51 =1; p61 =1; p71 =1; p81 =1; p91 =1; p101 =1; p111 =1; p121 =1; /* initial marking */
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
/*Release Unobservable actions*/
:: atomic {F2N?bf -> skip};
od
}
