/* Automatically generated file for diagnosability verification of failure of type 2 for 3 Trains*/

#define Place	byte
#define inp1(x)		(x>0) -> x=x-1
#define inp2(x,y)	(x>0&&y>0) -> x = x-1; y=y-1
#define inp3(x,y,z)	(x>0&&y>0&&z>0) -> x = x-1; y=y-1; z=z-1;
#define out1(x)		x=x+1
#define out2(x,y)	x=x+1; y=y+1
#define inT5(x,y,n)	(x>n && y) -> x = x-n; y=y-1
#define outT5(x,y,n)	x=x+n; y=y+1
#define N 3
mtype = {cr,kd,lw,or,rs,bf,ap1,en1,lv1,ig1,ap2,en2,lv2,ig2,ap3,en3,lv3,ig3,ig1n,ig2n,ig3n}
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
p2=N; p6=N; p7 = 1; p11 =1; p21 =1; p31 =1; /* initial marking */
do
/*t1*/		:: atomic { d_step{inp3(p1,p2,p6)	-> out2(p5,p3) ->T=1}  -> F2N!cr }
/*t2*/		:: atomic { d_step{inp2(p3,p4)		-> out2(p2,p6) ->T=1}	-> F2N!or	 }
/*t3*/		:: atomic { d_step{inp2(p5,p8)		-> out2(p8,p9) ->T=1}	-> F2N!kd	 }
/*t4*/		:: atomic { d_step{inp2(p5,p7)		-> out2(p8,p9) ->T=1}	-> F2N!lw }
/*t5*/		:: atomic { d_step{inT5(p6,p8,N) 	-> outT5(p6,p7,N) ->T=1}	-> F2N!rs }
/*t6*/		:: atomic { d_step{inp1(p8)		-> out1(p7) ->T=1; F=1 }		-> F2N!bf }
/*t11*/	:: atomic { d_step{inp1(p11)		-> out2(p1,p12) ->T=1}	-> F2N!ap1 }
/*t12*/	:: atomic { d_step{inp2(p9,p12)	-> out2(p9,p13) ->T=1}	-> F2N!en1 }
/*t13*/	:: atomic { d_step{inp2(p9,p13)	-> out2(p4,p11) ->T=1}	-> F2N!lv1	}
/*t14*/	:: atomic { d_step{inp1(p12)		-> out1(p13) ->T=1}	-> F2N!ig1	}
/*t21*/	:: atomic { d_step{inp1(p21)		-> out2(p1,p22) ->T=1}	-> F2N!ap2 }
/*t22*/	:: atomic { d_step{inp2(p9,p22)	-> out2(p9,p23) ->T=1}	-> F2N!en2 }
/*t23*/	:: atomic { d_step{inp2(p9,p23)	-> out2(p4,p21) ->T=1}	-> F2N!lv2	}
/*t24*/	:: atomic { d_step{inp1(p22)		-> out1(p23) ->T=1}	-> F2N!ig2	}
/*t31*/	:: atomic { d_step{inp1(p31)		-> out2(p1,p32) ->T=1}	-> F2N!ap3 }
/*t32*/	:: atomic { d_step{inp2(p9,p32)	-> out2(p9,p33) ->T=1}	-> F2N!en3 }
/*t33*/	:: atomic { d_step{inp2(p9,p33)	-> out2(p4,p31) ->T=1}	-> F2N!lv3	}
/*t34*/	:: atomic { d_step{inp1(p32)		-> out1(p33) ->T=1}	-> F2N!ig3	}
/*Release Unobservable actions*/
:: atomic {F2N!ig1n -> T=0};
:: atomic {F2N!ig2n -> T=0};
:: atomic {F2N!ig3n -> T=0};
od
}

active proctype TSN()
{
Place p1, p2, p3, p4, p5, p6, p9; /* Places LC Controller*/
Place p7, p8; /* Places barriers*/
Place p11, p12, p13 /* Places Train 1*/
Place p21, p22, p23 /* Places Train 2*/
Place p31, p32, p33 /* Places Train 3*/
p2=N; p6=N; p7 = 1; p11 =1; p21 =1; p31 =1; /* initial marking */
do
/*t1*/		:: atomic {F2N?cr -> d_step{inp3(p1,p2,p6)	-> out2(p5,p3)} }
/*t2*/		:: atomic {F2N?or -> d_step{inp2(p3,p4)		-> out2(p2,p6)} }
/*t3*/		:: atomic {F2N?kd -> d_step{inp2(p5,p8)		-> out2(p8,p9)} }
/*t4*/		:: atomic {F2N?lw -> d_step{inp2(p5,p7)		-> out2(p8,p9)}	}
/*t5*/		:: atomic {F2N?rs -> d_step{inT5(p6,p8,N) -> outT5(p6,p7,N)} }
/*t11*/	:: atomic {F2N?ap1 -> d_step{inp1(p11)		-> out2(p1,p12)} }
/*t12*/	:: atomic {F2N?en1 -> d_step{inp2(p9,p12)	-> out2(p9,p13)} }
/*t13*/	:: atomic {F2N?lv1 -> d_step{inp2(p9,p13)	-> out2(p4,p11)} }
/*t14*/	:: atomic {F2N?ig1n -> d_step{inp1(p12)		-> out1(p13)} }
/*t21*/	:: atomic {F2N?ap2 -> d_step{inp1(p21)		-> out2(p1,p22)} }
/*t22*/	:: atomic {F2N?en2 -> d_step{inp2(p9,p22)	-> out2(p9,p23)} }
/*t23*/	:: atomic {F2N?lv2 -> d_step{inp2(p9,p23)	-> out2(p4,p21)} }
/*t24*/	:: atomic {F2N?ig2n -> d_step{inp1(p22)		-> out1(p23)} }
/*t31*/	:: atomic {F2N?ap3 -> d_step{inp1(p31)		-> out2(p1,p32)} }
/*t32*/	:: atomic {F2N?en3 -> d_step{inp2(p9,p32)	-> out2(p9,p33)} }
/*t33*/	:: atomic {F2N?lv3 -> d_step{inp2(p9,p33)	-> out2(p4,p31)} }
/*t34*/	:: atomic {F2N?ig3n -> d_step{inp1(p32)		-> out1(p33)} }
/*Release Faulty actions*/
:: atomic {F2N?bf -> skip};
/*Release Unobservable actions*/
:: atomic {F2N?ig1 -> skip};
:: atomic {F2N?ig2 -> skip};
:: atomic {F2N?ig3 -> skip};
od
}
