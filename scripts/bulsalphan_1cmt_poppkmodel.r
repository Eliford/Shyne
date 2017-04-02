code<-"
$CMT CENT

$SET end=168, delta=1

$PARAM WT=4.5, AGE=0.1153846

$THETA @annotated
2.3                     : CL L/h
6.4                     : V  L/kg
0.46                    : Maturation magnitude effect for age
1.4                     : Rate constant for effect of age on CL



$OMEGA  @block @correlation @name PK
0.0606
0.74 0.0606


$SIGMA @annotated
ADD: 0.0001             
PROP: 0.08

$MAIN
//CL-RELATIONS START
double WTCL = pow((WT/8),0.75);
double AGECL = THETA3+((1-THETA3)*(1-exp(-THETA4*AGE)));
double CLCOV=WTCL*AGECL;
// CL-RELATIONS END

//V-RELATIONS START
double WTVC = WT/8;
double VCCOV=WTVC;
// V-RELATIONS END


double CL =THETA1*CLCOV*exp(ETA(1));
double VC =THETA2*VCCOV*exp(ETA(2));

double S4 =VC/1000;
double K10 = CL/VC;

D_CENT=DUR;

$ODE
double FRMCENT=CENT*K10;

dxdt_CENT= -FRMCENT;

$TABLE
double CP = (CENT/S4);

$CAPTURE ID CENT CP CL VC WT AGE

"