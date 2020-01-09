from  deslab import *
import time
start_time = time.time()
syms( 'x0 x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 ap1 cr in1 kd lv1 lw or1 rs ig1 bf' )
X = [x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19]
Sigma = [ap1,cr,in1,kd,lv1,lw,or1,rs,ig1,bf]
X0 = [x0]
Xm = []
T = [(x0,ap1,x1),(x1,cr,x3),(x1,ig1,x2),(x2,cr,x4),(x3,lw,x5),(x3,ig1,x4),(x4,lw,x6),(x5,bf,x7),(x5,ig1,x6),(x5,in1,x6),(x6,bf,x9),(x6,lv1,x8),(x7,ig1,x9),(x7,in1,x9),(x8,bf,x12),(x8,or1,x11),(x8,ap1,x10),(x9,lv1,x12),(x10,bf,x15),(x10,or1,x14),(x10,ig1,x13),(x11,bf,x0),(x11,rs,x0),(x11,ap1,x14),(x12,or1,x0),(x12,ap1,x15),(x13,bf,x17),(x13,or1,x16),(x14,bf,x1),(x14,cr,x18),(x14,ig1,x16),(x14,rs,x1),(x15,or1,x1),(x15,ig1,x17),(x16,bf,x2),(x16,cr,x19),(x16,rs,x2),(x17,or1,x2),(x18,bf,x3),(x18,kd,x5),(x18,ig1,x19),(x19,bf,x4),(x19,kd,x6)]
G1 = fsa(X,Sigma,T,X0,Xm,name='$G$',Sigobs =[ap1,cr,in1,kd,lv1,lw,or1,rs])
print(is_diagnosable(G1,'bf',[ap1,cr,in1,kd,lv1,lw,or1,rs],'Gv'))
print("--- %s seconds ---" % (time.time() - start_time))

G_v=Gv(G1,'bf',[ap1,cr,in1,kd,lv1,lw,or1,rs])
