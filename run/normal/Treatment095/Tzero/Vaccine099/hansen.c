#include<stdio.h>
#include<math.h>
#include<stdlib.h>
#include<omp.h>
#include<time.h>
#include"define.h"

struct Individual
{
int Health;               // host health state
int Swap;                 // host health state  to update lattice
int AgeYears;
int AgeDays;
int AgeDeathYears;
int AgeDeathDays;
int AgeDeathYearsLeprosy;
int AgeDeathDaysLeprosy;
int StateTime;
int TimeOnState;
int LatencyTime;
int TimeOfTreatment;
int TimeForIdentification;
int RelapseHistory;
int Tracing;
float Immunity;
float FactorDeath;
}Person[L+2][L+2];



char nome[30];
 
 /* Data files */					  
FILE *fppPB;
FILE *fpiPB;
FILE *gppMB;
FILE *gpiMB;
FILE *allp;
FILE *alli;
FILE *tp;
FILE *infp;
FILE *infp2;
FILE *diag;

int S_Total;
int R_Total;
int Latent_P_Total;
int Latent_M_Total;
int Infectious_P_Total;
int Infectious_P_Identified_Total;
int Infectious_P_UnderTreatment_Total;
int Infectious_M_Total;
int Infectious_M_Identified_Total;
int Infectious_M_UnderTreatment_Total;
int InfectiousNotCured_P_Total;        
int InfectiousNotCured_M_Total;
int RecoveredLatent_P_Total;        
int RecoveredLatent_M_Total;
int SelfRecoveredP_Total;
int Relapse_P_Total;
int Relapse_M_Total;

int New_S;
int New_R;
int New_Latent_P;
int New_Latent_M;
int New_Infectious_P;
int New_Infectious_P_Identified;
int New_Infectious_P_UnderTreatment;
int New_Infectious_M;
int New_Infectious_M_Identified;
int New_Infectious_M_UnderTreatment;
int New_InfectiousNotCured_P;        
int New_InfectiousNotCured_M;
int New_RecoveredLatent_P;        
int New_RecoveredLatent_M;
int New_SelfRecoveredP;
int New_Relapse_P;
int New_Relapse_M;

float S_TotalTemp[MAXSIM+2][MAXTIME+2]; 
float R_TotalTemp[MAXSIM+2][MAXTIME+2]; 
float Latent_P_TotalTemp[MAXSIM+2][MAXTIME+2]; 
float Latent_M_TotalTemp[MAXSIM+2][MAXTIME+2]; 
float Infectious_P_TotalTemp[MAXSIM+2][MAXTIME+2]; 
float Infectious_P_Identified_TotalTemp[MAXSIM+2][MAXTIME+2]; 
float Infectious_P_UnderTreatment_TotalTemp[MAXSIM+2][MAXTIME+2]; 
float Infectious_M_TotalTemp[MAXSIM+2][MAXTIME+2]; 
float Infectious_M_Identified_TotalTemp[MAXSIM+2][MAXTIME+2]; 
float Infectious_M_UnderTreatment_TotalTemp[MAXSIM+2][MAXTIME+2]; 
float InfectiousNotCured_P_TotalTemp[MAXSIM+2][MAXTIME+2];         
float InfectiousNotCured_M_TotalTemp[MAXSIM+2][MAXTIME+2]; 
float RecoveredLatent_P_TotalTemp[MAXSIM+2][MAXTIME+2];         
float RecoveredLatent_M_TotalTemp[MAXSIM+2][MAXTIME+2]; 
float SelfRecoveredP_TotalTemp[MAXSIM+2][MAXTIME+2]; 
float Relapse_P_TotalTemp[MAXSIM+2][MAXTIME+2]; 
float Relapse_M_TotalTemp[MAXSIM+2][MAXTIME+2]; 

float S_Sum[YEARS+2];
float R_Sum[YEARS+2];
float Latent_P_Sum[YEARS+2];
float Latent_M_Sum[YEARS+2];
float Infectious_P_Sum[YEARS+2];
float Infectious_P_Identified_Sum[YEARS+2];
float Infectious_P_UnderTreatment_Sum[YEARS+2];
float Infectious_M_Sum[YEARS+2];
float Infectious_M_Identified_Sum[YEARS+2];
float Infectious_M_UnderTreatment_Sum[YEARS+2];
float InfectiousNotCured_P_Sum[YEARS+2];        
float InfectiousNotCured_M_Sum[YEARS+2];
float RecoveredLatent_P_Sum[YEARS+2];        
float RecoveredLatent_M_Sum[YEARS+2];
float SelfRecoveredP_Sum[YEARS+2];
float Relapse_P_Sum[YEARS+2];
float Relapse_M_Sum[YEARS+2];

float S_Mean[YEARS+2];
float R_Mean[YEARS+2];
float Latent_P_Mean[YEARS+2];
float Latent_M_Mean[YEARS+2];
float Infectious_P_Mean[YEARS+2];
float Infectious_P_Identified_Mean[YEARS+2];
float Infectious_P_UnderTreatment_Mean[YEARS+2];
float Infectious_M_Mean[YEARS+2];
float Infectious_M_Identified_Mean[YEARS+2];
float Infectious_M_UnderTreatment_Mean[YEARS+2];
float InfectiousNotCured_P_Mean[YEARS+2];        
float InfectiousNotCured_M_Mean[YEARS+2];
float RecoveredLatent_P_Mean[YEARS+2];        
float RecoveredLatent_M_Mean[YEARS+2];
float SelfRecoveredP_Mean[YEARS+2];
float Relapse_P_Mean[YEARS+2];
float Relapse_M_Mean[YEARS+2];

float New_S_Temp[MAXSIM+2][MAXTIME+2]; 
float New_R_Temp[MAXSIM+2][MAXTIME+2]; 
float New_Latent_P_Temp[MAXSIM+2][MAXTIME+2]; 
float New_Latent_M_Temp[MAXSIM+2][MAXTIME+2]; 
float New_Infectious_P_Temp[MAXSIM+2][MAXTIME+2];
float New_Infectious_P_Identified_Temp[MAXSIM+2][MAXTIME+2]; 
float New_Infectious_P_UnderTreatment_Temp[MAXSIM+2][MAXTIME+2];  
float New_Infectious_M_Temp[MAXSIM+2][MAXTIME+2]; 
float New_Infectious_M_Identified_Temp[MAXSIM+2][MAXTIME+2]; 
float New_Infectious_M_UnderTreatment_Temp[MAXSIM+2][MAXTIME+2];
float New_InfectiousNotCured_P_Temp[MAXSIM+2][MAXTIME+2];        
float New_InfectiousNotCured_M_Temp[MAXSIM+2][MAXTIME+2]; 
float New_RecoveredLatent_P_Temp[MAXSIM+2][MAXTIME+2];         
float New_RecoveredLatent_M_Temp[MAXSIM+2][MAXTIME+2]; 
float New_SelfRecoveredP_Temp[MAXSIM+2][MAXTIME+2];
float New_Relapse_P_Temp[MAXSIM+2][MAXTIME+2];
float New_Relapse_M_Temp[MAXSIM+2][MAXTIME+2];

float New_S_Sum[YEARS+2];
float New_R_Sum[YEARS+2];
float New_Latent_P_Sum[YEARS+2];
float New_Latent_M_Sum[YEARS+2];
float New_Infectious_P_Sum[YEARS+2];
float New_Infectious_P_Identified_Sum[YEARS+2];
float New_Infectious_P_UnderTreatment_Sum[YEARS+2];
float New_Infectious_M_Sum[YEARS+2];
float New_Infectious_M_Identified_Sum[YEARS+2];
float New_Infectious_M_UnderTreatment_Sum[YEARS+2];
float New_InfectiousNotCured_P_Sum[YEARS+2];        
float New_InfectiousNotCured_M_Sum[YEARS+2];
float New_RecoveredLatent_P_Sum[YEARS+2];        
float New_RecoveredLatent_M_Sum[YEARS+2];
float New_SelfRecoveredP_Sum[YEARS+2];
float New_Relapse_P_Sum[YEARS+2];
float New_Relapse_M_Sum[YEARS+2];

float New_S_Mean[YEARS+2];
float New_R_Mean[YEARS+2];
float New_Latent_P_Mean[YEARS+2];
float New_Latent_M_Mean[YEARS+2];
float New_Infectious_P_Mean[YEARS+2];
float New_Infectious_P_Identified_Mean[YEARS+2];
float New_Infectious_P_UnderTreatment_Mean[YEARS+2];
float New_Infectious_M_Mean[YEARS+2];
float New_Infectious_M_Identified_Mean[YEARS+2];
float New_Infectious_M_UnderTreatment_Mean[YEARS+2];
float New_InfectiousNotCured_P_Mean[YEARS+2];        
float New_InfectiousNotCured_M_Mean[YEARS+2];
float New_RecoveredLatent_P_Mean[YEARS+2];        
float New_RecoveredLatent_M_Mean[YEARS+2];
float New_SelfRecoveredP_Mean[YEARS+2];
float New_Relapse_P_Mean[YEARS+2];
float New_Relapse_M_Mean[YEARS+2];

float ProbNaturalDeath[121];
float SumProbBirthAge[21];
float ProbBirthAge[21];

int AgeMin[21];
int AgeMax[21];

int timesim;
int Simulation;
int CountYears;
int CountDays;
int initializer;
int Tracing;


unsigned R;
unsigned mult;

float rn;
//float Contagion; // variable for neighborhood infection 
float CurrentIsolated;
float MAXISOLATED;
float ProbOfTreatment;
float ProbVaccine;
float ContactTracing;
float NewVaccine;

char cad[35];

int diagnosed;

//////////////////////////////////////////////////////////

float aleat()
{
    R*= mult;
    rn = (float)R/MAXNUM;    /* gerenerate random number [0.0,1.0] */

    return rn;

}
/////////////////////////////////////////////////////////////

#include"statbegin1.h"
#include"statbegin2.h"
#include"statpartial.h"
#include"stattotal.h"
#include"./agebib/agestructureNorth.h"
#include"agedistribution.h"
#include"begin.h"
//#include"image.h"
#include"neighbors.h"
#include"susceptible.h"                     
#include"update.h"
#include"./deathbib/deathNorth.h"
#include"latentP.h"
#include"latentM.h"
#include"infectiousP.h"
#include"infectiousM.h"
#include"recoveredP.h"
#include"recoveredM.h"
#include"pbc.h"




void main(int argc, char *argv[])
{
    int identificador[14];
    int i,j;
    int seed;
    // R0        = atoi(argv[1]);
      
    seed = 1;

    R = 893221891*seed*10000;
    
    mult = 888121;  // for 32 bits compilers
 
    system("rm *.csv");
	
    fppPB = fopen("leprosyPrevalencePB.csv","w");
     
    fpiPB = fopen("leprosyIncidencePB.csv","w");
    
    gppMB = fopen("leprosyPrevalenceMB.csv","w");
     
    gpiMB = fopen("leprosyIncidenceMB.csv","w");
    
    allp = fopen("AllDataPrevalence.csv","w");
    
    alli = fopen("AllDataincidence.csv","w");
    
    infp = fopen("infectiousM.csv","w");
    
    infp2 = fopen("infectiousP.csv","w");
   
   
    agestructureNorth();
    NaturalDeathfuncNorth(); // call the values for natural death probability
   
     statisticsbeginfunc1(); // set variables to initial values
    

    diagnosed = 0;
	printf("Time,Susceptible,Resistant,Latent_P,Latent_M,Infectious_P,Infectious_P_Identified,Infectious_P_UnderTreatment,InfectiousNotCured_P,Infectious_M,Infectious_M_Identified,Infectious_M_UnderTreatment,InfectiousNotCured_M,RecoveredLatent_P,RecoveredLatent_M,Simulation\n");
    for(Simulation=1;Simulation<=MAXSIM;Simulation++)
    {

	//printf("Simulation=%i\n",Simulation);
	
      seed = Simulation*10;
      R = 893221891*seed*10000;
      
	ProbVaccine     = 0.0;
    ProbOfTreatment = 0.0;
	beginfunc();
  	 
  	 CountYears = 0;
	 CountDays  = 0;
	
	//image(0);
	//printf("Atributo=%d\n",Infectious_P_Identified);
	for(timesim=0;timesim<=MAXTIME;timesim++)  
	{  
	  	  ///printf("time=%i\n",timsim);
	
	  pbc(); // periodic boundary conditions
	 
	if(timesim < BeginOfTreatment)
	{
		ProbOfTreatment = 0.0;
		ProbVaccine     = 0.0;
		NewVaccine      = 0;
		ContactTracing  = 0; // = no contact tracing; 1 = tracing with treatment; 2 = tracing with PEP;
	}
	else
	{
		ProbOfTreatment =  tratamento;
		ProbVaccine     = 1.0;
		NewVaccine      = 0;
		ContactTracing  = 0; // 0, 1, 2=PEP
	}
	
	

	for(i=0;i<14;i++)
		identificador[i]=0;
	 for(i=1;i<=L;i++)
	   for(j=1;j<=L;j++)
		{
			switch(Person[i][j].Health)
			{
				case Susceptible:
					susceptiblefunc(i,j);
					identificador[0]++;
				break;
				
				case Resistant:
					susceptiblefunc(i,j);
					identificador[1]++;
				break;
				
				case Latent_P:
					latentpfunc(i,j);
					identificador[2]++;
				break;
				
				case Latent_M:
					latentmfunc(i,j);
					identificador[3]++;
				break;
				
				case Infectious_P:
					infectiouspfunc(i,j);
					identificador[4]++;
				break;
				
				case Infectious_P_Identified:
					infectiouspfunc(i,j);
					identificador[5]++;
				break;
				
				case Infectious_P_UnderTreatment:
					infectiouspfunc(i,j);
					identificador[6]++;
				break;
				
				case InfectiousNotCured_P:
					infectiouspfunc(i,j);
					identificador[7]++;
				break;
				
				case Infectious_M:
					infectiousmfunc(i,j);
					identificador[8]++;
				break;
				
				case Infectious_M_Identified:
					infectiousmfunc(i,j);
					identificador[9]++;
				break;
				
				case Infectious_M_UnderTreatment:
					infectiousmfunc(i,j);
					identificador[10]++;
				break;
				
				case InfectiousNotCured_M:
					infectiousmfunc(i,j);
					identificador[11]++;
				break;
				
				case RecoveredLatent_P:
					 recoveredpfunc(i,j);
					identificador[12]++;
				break;
				
				case RecoveredLatent_M:
					 recoveredmfunc(i,j);
					identificador[13]++;
				break;
			
				
			}
		//if(Person[i][j].Health==Infectious_P_UnderTreatment)
	//			identificador++;
	//	if(Person[i][j].Health==Infectious_P)
	//			doente++;
		}
		if(timesim % 365 ==0)
		printf("%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\n",timesim/365,identificador[0],identificador[1],identificador[2],identificador[3],identificador[4],identificador[5],identificador[6],identificador[7],identificador[8],identificador[9],identificador[10],identificador[11],identificador[12],identificador[13],Simulation);
	   
	  updatefunc();   /* Update lattice */  
	} 
   } // for simulation
    
   
     stattotalfunc();
}


