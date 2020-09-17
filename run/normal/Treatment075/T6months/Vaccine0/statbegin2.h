void statisticsbeginfunc2()
{
	
	S_TotalTemp[Simulation][0]                           =  S_Total;
	R_TotalTemp[Simulation][0]                           =  R_Total;
	Latent_P_TotalTemp[Simulation][0]                    =  Latent_P_Total;
	Latent_M_TotalTemp[Simulation][0]                    =  Latent_M_Total;
	Infectious_P_TotalTemp[Simulation][0]                =  Infectious_P_Total;
	Infectious_P_Identified_TotalTemp[Simulation][0]     =  Infectious_P_Identified_Total;
	Infectious_P_UnderTreatment_TotalTemp[Simulation][0] =  Infectious_P_UnderTreatment_Total;
	Infectious_M_TotalTemp[Simulation][0]                =  Infectious_M_Total;
	Infectious_M_Identified_TotalTemp[Simulation][0]     =  Infectious_M_Identified_Total;
	Infectious_M_UnderTreatment_TotalTemp[Simulation][0] =  Infectious_M_UnderTreatment_Total;
	InfectiousNotCured_P_TotalTemp[Simulation][0]        =  InfectiousNotCured_P_Total;      
	InfectiousNotCured_M_TotalTemp[Simulation][0]        =  InfectiousNotCured_M_Total;
	RecoveredLatent_P_TotalTemp[Simulation][0]           =  RecoveredLatent_P_Total;          
	RecoveredLatent_M_TotalTemp[Simulation][0]           =  RecoveredLatent_M_Total;       
	SelfRecoveredP_TotalTemp[Simulation][0]              =  SelfRecoveredP_Total;             
	Relapse_P_TotalTemp[Simulation][0]                   =  Relapse_P_Total;                 
	Relapse_M_TotalTemp[Simulation][0]                   =  Relapse_M_Total; 
	
	
	New_S_Temp[Simulation][0]                           =  New_S;
	New_R_Temp[Simulation][0]                           =  New_R;
	New_Latent_P_Temp[Simulation][0]                    =  New_Latent_P;
	New_Latent_M_Temp[Simulation][0]                    =  New_Latent_M;
	New_Infectious_P_Temp[Simulation][0]                =  New_Infectious_P;
	New_Infectious_P_Identified_Temp[Simulation][0]     =  New_Infectious_P_Identified;
	New_Infectious_P_UnderTreatment_Temp[Simulation][0] =  New_Infectious_P_UnderTreatment;
	New_Infectious_M_Temp[Simulation][0]                =  New_Infectious_M;
	New_Infectious_M_Identified_Temp[Simulation][0]     =  New_Infectious_M_Identified;
	New_Infectious_M_UnderTreatment_Temp[Simulation][0] =  New_Infectious_M_UnderTreatment;
	New_InfectiousNotCured_P_Temp[Simulation][0]        =  New_InfectiousNotCured_P;      
	New_InfectiousNotCured_M_Temp[Simulation][0]        =  New_InfectiousNotCured_M;
	New_RecoveredLatent_P_Temp[Simulation][0]           =  New_RecoveredLatent_P;        
	New_RecoveredLatent_M_Temp[Simulation][0]           =  New_RecoveredLatent_M;       
	New_SelfRecoveredP_Temp[Simulation][0]              =  New_SelfRecoveredP;         
	New_Relapse_P_Temp[Simulation][0]                   =  New_Relapse_P;             
	New_Relapse_M_Temp[Simulation][0]                   =  New_Relapse_M; 
	
	S_Sum[0]                           += S_TotalTemp[Simulation][0];
	R_Sum[0]                           += R_TotalTemp[Simulation][0];
	Latent_P_Sum[0]                    += Latent_P_TotalTemp[Simulation][0];
	Latent_M_Sum[0]                    += Latent_M_TotalTemp[Simulation][0];
	Infectious_P_Sum[0]                += Infectious_P_TotalTemp[Simulation][0];
	Infectious_P_Identified_Sum[0]     += Infectious_P_Identified_TotalTemp[Simulation][0];
	Infectious_P_UnderTreatment_Sum[0] += Infectious_P_UnderTreatment_TotalTemp[Simulation][0];
	Infectious_M_Sum[0]                += Infectious_M_TotalTemp[Simulation][0];
	Infectious_M_Identified_Sum[0]     += Infectious_M_Identified_TotalTemp[Simulation][0];
	Infectious_M_UnderTreatment_Sum[0] += Infectious_M_UnderTreatment_TotalTemp[Simulation][0];
	InfectiousNotCured_P_Sum[0]        += InfectiousNotCured_P_TotalTemp[Simulation][0];       
	InfectiousNotCured_M_Sum[0]        += InfectiousNotCured_M_TotalTemp[Simulation][0];
	RecoveredLatent_P_Sum[0]           += RecoveredLatent_P_TotalTemp[Simulation][0];         
	RecoveredLatent_M_Sum[0]           += RecoveredLatent_M_TotalTemp[Simulation][0];         
	SelfRecoveredP_Sum[0]              += SelfRecoveredP_TotalTemp[Simulation][0];             
	Relapse_P_Sum[0]                   += Relapse_P_TotalTemp[Simulation][0];                  
	Relapse_M_Sum[0]                   += Relapse_M_TotalTemp[Simulation][0]; 
	
	
	New_S_Sum[0]                           += New_S_Temp[Simulation][0];
	New_R_Sum[0]                           += New_R_Temp[Simulation][0];
	New_Latent_P_Sum[0]                    += New_Latent_P_Temp[Simulation][0];
	New_Latent_M_Sum[0]                    += New_Latent_M_Temp[Simulation][0];
	New_Infectious_P_Sum[0]                += New_Infectious_P_Temp[Simulation][0];
	New_Infectious_P_Identified_Sum[0]     += New_Infectious_P_Identified_Temp[Simulation][0];
	New_Infectious_P_UnderTreatment_Sum[0] += New_Infectious_P_UnderTreatment_Temp[Simulation][0];
	New_Infectious_M_Sum[0]                += New_Infectious_M_Temp[Simulation][0];
	New_Infectious_M_Identified_Sum[0]     += New_Infectious_M_Identified_Temp[Simulation][0];
	New_Infectious_M_UnderTreatment_Sum[0] += New_Infectious_M_UnderTreatment_Temp[Simulation][0];
	New_InfectiousNotCured_P_Sum[0]        += New_InfectiousNotCured_P_Temp[Simulation][0];     
	New_InfectiousNotCured_M_Sum[0]        += New_InfectiousNotCured_M_Temp[Simulation][0];
	New_RecoveredLatent_P_Sum[0]           += New_RecoveredLatent_P_Temp[Simulation][0];          
	New_RecoveredLatent_M_Sum[0]           += New_RecoveredLatent_M_Temp[Simulation][0];        
	New_SelfRecoveredP_Sum[0]              += New_SelfRecoveredP_Temp[Simulation][0];           
	New_Relapse_P_Sum[0]                   += New_Relapse_P_Temp[Simulation][0];           
	
	
}
