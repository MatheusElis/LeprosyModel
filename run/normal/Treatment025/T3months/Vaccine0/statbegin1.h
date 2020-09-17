void statisticsbeginfunc1()
{
	int t;
	
	
	S_Total                           = 0.0;
	R_Total                           = 0.0;
	Latent_P_Total                    = 0.0;
	Latent_M_Total                    = 0.0;
	Infectious_P_Total                = 0.0;
	Infectious_P_Identified_Total     = 0.0;
	Infectious_P_UnderTreatment_Total = 0.0;
	Infectious_M_Total                = 0.0;
	Infectious_M_Identified_Total     = 0.0;
	Infectious_M_UnderTreatment_Total = 0.0;
	InfectiousNotCured_P_Total        = 0.0;        
	InfectiousNotCured_M_Total        = 0.0;
	SelfRecoveredP_Total              = 0.0;
	Relapse_P_Total                   = 0.0;
	Relapse_M_Total                   = 0.0;
	RecoveredLatent_P_Total           = 0.0;
	RecoveredLatent_M_Total           = 0.0;

	New_S                           = 0;
	New_R                           = 0;
	New_Latent_P                    = 0;
	New_Latent_M                    = 0;
	New_Infectious_P                = 0;
	New_Infectious_P_Identified     = 0;
	New_Infectious_P_UnderTreatment = 0;
	New_Infectious_M                = 0;
	New_Infectious_M_Identified     = 0;
	New_Infectious_M_UnderTreatment = 0;
	New_InfectiousNotCured_P        = 0;      
	New_InfectiousNotCured_M        = 0;
	New_RecoveredLatent_P           = 0;
	New_RecoveredLatent_M           = 0;
	New_SelfRecoveredP              = 0;
	New_Relapse_P                   = 0;
	New_Relapse_M                   = 0;
	  
	for(t=0;t<=YEARS;t++)
	{ 
		S_Sum[t]                           = 0.0;
		R_Sum[t]                           = 0.0;
		Latent_P_Sum[t]                    = 0.0;
		Latent_M_Sum[t]                    = 0.0;
		Infectious_P_Sum[t]                = 0.0;
		Infectious_P_Identified_Sum[t]     = 0.0;
		Infectious_P_UnderTreatment_Sum[t] = 0.0;
		Infectious_M_Sum[t]                = 0.0;
		Infectious_M_Identified_Sum[t]     = 0.0;
		Infectious_M_UnderTreatment_Sum[t] = 0.0;
		InfectiousNotCured_P_Sum[t]        = 0.0;        
		InfectiousNotCured_M_Sum[t]        = 0.0;
		RecoveredLatent_P_Sum[t]           = 0.0;
		RecoveredLatent_M_Sum[t]           = 0.0;
		SelfRecoveredP_Sum[t]              = 0.0;
		Relapse_P_Sum[t]                   = 0.0;
		Relapse_M_Sum[t]                   = 0.0;
		
		New_S_Sum[t]                           = 0.0;
		New_R_Sum[t]                           = 0.0;
		New_Latent_P_Sum[t]                    = 0.0;
		New_Latent_M_Sum[t]                    = 0.0;
		New_Infectious_P_Sum[t]                = 0.0;
		New_Infectious_P_Identified_Sum[t]     = 0.0;
		New_Infectious_P_UnderTreatment_Sum[t] = 0.0;
		New_Infectious_M_Sum[t]                = 0.0;
		New_Infectious_M_Identified_Sum[t]     = 0.0;
		New_Infectious_M_UnderTreatment_Sum[t] = 0.0;
		New_InfectiousNotCured_P_Sum[t]        = 0.0;       
		New_InfectiousNotCured_M_Sum[t]        = 0.0;
		New_RecoveredLatent_P                  = 0.0;
		New_RecoveredLatent_M                  = 0.0;
		New_SelfRecoveredP_Sum[t]              = 0.0;
		New_Relapse_P_Sum[t]                   = 0.0;
		New_Relapse_M_Sum[t]                   = 0.0;
	}
	
	
}
