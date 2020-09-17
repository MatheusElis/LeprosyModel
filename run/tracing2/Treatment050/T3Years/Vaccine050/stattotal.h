void stattotalfunc()
{
	
	//clock_t clock_timer;
	
	int t;
	double ToTalInfectiousP;
	double ToTalInfectiousM;
	double Total;
	
	double New_ToTalInfectiousP;
	double New_ToTalInfectiousM;
	double New_ToTal;
	
	ToTalInfectiousP = 0;
	ToTalInfectiousM = 0;
	
	New_ToTalInfectiousP = 0;
	New_ToTalInfectiousM = 0;
	
	fprintf(infpre,"Time,\tLatent,\tInfectious,\tInfectiousIdentified,\tInfectiousUnderTreatmean,\tInfectiousNotCured,\tTotalInfectious,\tRecoveredLatent,\tRelapse\n");//InfectiousPrevalence
	
   	fprintf(infpreP,"Time,\tLatentPB,\tInfectiousPB,\tInfectiousIdentifiedPB,\tInfectiousUnderTreatmeanPB,\tInfectiousNotCuredPB,\tTotalInfectiousPB,\tRecoveredLatentPB,\tRelapsePB\n");//InfectiousPrevalencePB

    fprintf(infpreM,"Time,\tLatentMB,\tInfectiousMB,\tInfectiousIdentifiedMB,\tInfectiousUnderTreatmeanMB,\tInfectiousNotCuredMB,\tTotalInfectiousMB,\tRecoveredLatentMB,\tRelapseMB\n");//InfectiousPrevalenceMB

    fprintf(infinc,"Time,\tNewLatent,\tNewInfectious,\tNewInfectiousIdentified,\tNewInfectiousUnderTreatmean,\tNewInfectiousNotCured,\tNewRecoveredLatent,\tNewRelapse\n");//InfectiousPrevalence
	
   	fprintf(infincP,"Time,\tNewLatentPB,\tNewInfectiousPB,\tNewInfectiousIdentifiedPB,\tNewInfectiousUnderTreatmeanPB,\tNewInfectiousNotCuredPB,\tNewRecoveredLatentPB,\tNewRelapsePB\n");//InfectiousPrevalencePB

    fprintf(infincM,"Time,\tNewLatentMB,\tNewInfectiousMB,\tNewInfectiousIdentifiedMB,\tNewInfectiousUnderTreatmeanMB,\tNewInfectiousNotCuredMB,\tNewRecoveredLatentMB,\tNewRelapseMB\n");//InfectiousPrevalenceMB
	
	
	for(t=0;t<=YEARS;t++)
	{
		S_Mean[t]                           = S_Sum[t]/((double)MAXSIM);
		R_Mean[t]                           = R_Sum[t]/((double)MAXSIM);
		Latent_P_Mean[t]                    = Latent_P_Sum[t]/((double)MAXSIM);
		Latent_M_Mean[t]                    = Latent_M_Sum[t]/((double)MAXSIM);
		Infectious_P_Mean[t]                = Infectious_P_Sum[t]/((double)MAXSIM);
		Infectious_P_Identified_Mean[t]     = Infectious_P_Identified_Sum[t]/((double)MAXSIM);
		Infectious_P_UnderTreatment_Mean[t] = Infectious_P_UnderTreatment_Sum[t]/((double)MAXSIM);
		Infectious_M_Mean[t]                = Infectious_M_Sum[t]/((double)MAXSIM);
		Infectious_M_Identified_Mean[t]     = Infectious_M_Identified_Sum[t]/((double)MAXSIM);
		Infectious_M_UnderTreatment_Mean[t] = Infectious_M_UnderTreatment_Sum[t]/((double)MAXSIM);
		InfectiousNotCured_P_Mean[t]        = InfectiousNotCured_P_Sum[t]/((double)MAXSIM); 
		InfectiousNotCured_M_Mean[t]        = InfectiousNotCured_M_Sum[t]/((double)MAXSIM);
		RecoveredLatent_P_Mean[t]           = RecoveredLatent_P_Sum[t]/((double)MAXSIM);      
		RecoveredLatent_M_Mean[t]           = RecoveredLatent_M_Sum[t]/((double)MAXSIM);
		SelfRecoveredP_Mean[t]              = SelfRecoveredP_Sum[t]/((double)MAXSIM);
		Relapse_P_Mean[t]                   = Relapse_P_Sum[t]/((double)MAXSIM);
		Relapse_M_Mean[t]                   = Relapse_M_Sum[t]/((double)MAXSIM);
		
		New_S_Mean[t]                           = New_S_Sum[t]/((double)MAXSIM);
		New_R_Mean[t]                           = New_R_Sum[t]/((double)MAXSIM);
		New_Latent_P_Mean[t]                    = New_Latent_P_Sum[t]/((double)MAXSIM);
		New_Latent_M_Mean[t]                    = New_Latent_M_Sum[t]/((double)MAXSIM);
		New_Infectious_P_Mean[t]                = New_Infectious_P_Sum[t]/((double)MAXSIM);
		New_Infectious_P_Identified_Mean[t]     = New_Infectious_P_Identified_Sum[t]/((double)MAXSIM);  
		New_Infectious_P_UnderTreatment_Mean[t] = New_Infectious_P_UnderTreatment_Sum[t]/((double)MAXSIM);
		New_Infectious_M_Mean[t]                = New_Infectious_M_Sum[t]/((double)MAXSIM);  
		New_Infectious_M_Identified_Mean[t]     = New_Infectious_M_Identified_Sum[t]/((double)MAXSIM);  
		New_Infectious_M_UnderTreatment_Mean[t] = New_Infectious_M_UnderTreatment_Sum[t]/((double)MAXSIM);  
		New_InfectiousNotCured_P_Mean[t]        = New_InfectiousNotCured_P_Sum[t]/((double)MAXSIM);     
		New_InfectiousNotCured_M_Mean[t]        = New_InfectiousNotCured_M_Sum[t]/((double)MAXSIM); 
		New_RecoveredLatent_P_Mean[t]           = New_RecoveredLatent_P_Sum[t]/((double)MAXSIM);       
		New_RecoveredLatent_M_Mean[t]           = New_RecoveredLatent_M_Sum[t]/((double)MAXSIM); 
		New_SelfRecoveredP_Mean[t]              = New_SelfRecoveredP_Sum[t]/((double)MAXSIM);  
		New_Relapse_P_Mean[t]                   = New_Relapse_P_Sum[t]/((double)MAXSIM);  
		New_Relapse_M_Mean[t]                   = New_Relapse_M_Sum[t]/((double)MAXSIM);  
		
		ToTalInfectiousP = Infectious_P_Mean[t] + Infectious_P_Identified_Mean[t] + InfectiousNotCured_P_Mean[t];
		
		ToTalInfectiousM = Infectious_M_Mean[t] + Infectious_M_Identified_Mean[t] + InfectiousNotCured_M_Mean[t];
		
		Total = (ToTalInfectiousP + ToTalInfectiousM);
		
		
		
		fprintf(infpreP,"%i,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf\n",t ,Latent_P_Mean[t] ,Infectious_P_Mean[t] ,Infectious_P_Identified_Mean[t] ,Infectious_P_UnderTreatment_Mean[t] ,InfectiousNotCured_P_Mean[t] ,ToTalInfectiousP ,RecoveredLatent_P_Mean[t] + SelfRecoveredP_Mean[t] ,Relapse_P_Mean[t]);
        
        fprintf(infpreM,"%i,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf\n",t ,Latent_M_Mean[t] ,Infectious_M_Mean[t] ,Infectious_M_Identified_Mean[t] ,Infectious_M_UnderTreatment_Mean[t] ,InfectiousNotCured_M_Mean[t] ,ToTalInfectiousM ,RecoveredLatent_M_Mean[t] ,Relapse_M_Mean[t] );
		
		fprintf(infpre,"%i,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf\n",t ,(Latent_P_Mean[t]+Latent_M_Mean[t]),(Infectious_P_Mean[t]+Infectious_M_Mean[t]),(Infectious_P_Identified_Mean[t]+Infectious_M_Identified_Mean[t]), (Infectious_P_UnderTreatment_Mean[t]+Infectious_M_UnderTreatment_Mean[t]),(InfectiousNotCured_P_Mean[t]+InfectiousNotCured_M_Mean[t]),Total ,(RecoveredLatent_P_Mean[t]+SelfRecoveredP_Mean[t]+RecoveredLatent_M_Mean[t]),(Relapse_P_Mean[t]+Relapse_M_Mean[t]));
        
        fprintf(infincP,"%i,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf\n",t ,New_Latent_P_Mean[t] ,New_Infectious_P_Mean[t] ,New_Infectious_P_Identified_Mean[t] ,New_Infectious_P_UnderTreatment_Mean[t] ,New_InfectiousNotCured_P_Mean[t] ,New_RecoveredLatent_P_Mean[t] + New_SelfRecoveredP_Mean[t] ,New_Relapse_P_Mean[t]);
        
        fprintf(infincM,"%i,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf\n",t ,New_Latent_M_Mean[t] ,New_Infectious_M_Mean[t] ,New_Infectious_M_Identified_Mean[t] ,New_Infectious_M_UnderTreatment_Mean[t] ,New_InfectiousNotCured_M_Mean[t] ,New_RecoveredLatent_M_Mean[t] ,New_Relapse_M_Mean[t] );
		
		fprintf(infinc,"%i,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf,\t%lf\n",t ,(New_Latent_P_Mean[t]+New_Latent_M_Mean[t]),(New_Infectious_P_Mean[t]+New_Infectious_M_Mean[t]),(New_Infectious_P_Identified_Mean[t]+New_Infectious_M_Identified_Mean[t]), (New_Infectious_P_UnderTreatment_Mean[t]+New_Infectious_M_UnderTreatment_Mean[t]) ,(New_InfectiousNotCured_P_Mean[t]+New_InfectiousNotCured_M_Mean[t]) ,(New_RecoveredLatent_P_Mean[t]+New_SelfRecoveredP_Mean[t]+New_RecoveredLatent_M_Mean[t]),(New_Relapse_P_Mean[t]+New_Relapse_M_Mean[t]));
        
       
		
	} // t=0,t<YEARS

          
}
