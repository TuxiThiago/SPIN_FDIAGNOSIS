/* Automatically generated file for diagnosability verification of failure of type 1 for 1 Trains*/

#define Place	byte
#define inp1(x)		(x>0) -> x=x-1
#define inp2(x,y)	(x>0&&y>0) -> x = x-1; y=y-1
#define inp3(x,y,z)	(x>0&&y>0&&z>0) -> x = x-1; y=y-1; z=z-1;
#define out1(x)		x=x+1
#define out2(x,y)	x=x+1; y=y+1
#define inT5(x,y,n)	(x>n && y) -> x = x-n; y=y-1
#define outT5(x,y,n)	x=x+n; y=y+1
#define N 1
mtype = {cr,kd,lw,or,rs,bf,ap1,en1,lv1,ig1,bfn}
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
p2=N; p6=N; p7 = 1; p11 =1; /* initial marking */
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
/*Release Unobservable actions*/
:: atomic {F2N!bfn -> T=0};
od
}

active proctype TSN()
{
Place p1, p2, p3, p4, p5, p6, p9; /* Places LC Controller*/
Place p7, p8; /* Places barriers*/
Place p11, p12, p13 /* Places Train 1*/
p2=N; p6=N; p7 = 1; p11 =1; /* initial marking */
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
/*Release Faulty actions*/
:: atomic {F2N?ig1 -> skip};
/*Release Unobservable actions*/
:: atomic {F2N?bf -> skip};
od
}
