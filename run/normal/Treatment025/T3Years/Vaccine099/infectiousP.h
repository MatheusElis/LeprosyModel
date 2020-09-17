void infectiouspfunc(int i, int j)
{
  
	void SelfRecovery(int i, int j)
	{
		aleat();	
		if(rn < ProbSelfRecoveryP)
		{
			Person[i][j].Swap           = RecoveredLatent_P;
			Person[i][j].RelapseHistory = 0; 
			Person[i][j].TimeOnState    = 0;
			Person[i][j].Tracing        = 0;
			Person[i][j].FactorDeath    = 1.0;
			New_RecoveredLatent_P++;
		}
		else
			Person[i][j].Swap = Infectious_P;
	}  
  
   
	void TestInfectious_P(int i, int j) 
	{
		switch(Person[i][j].Tracing)
			{
				case 1:
					aleat();
					Person[i][j].TimeForIdentification = 1;
					Person[i][j].Swap = Infectious_P_Identified; // at least one day only identified and not under treatment
					Person[i][j].TimeOnState = 0;
					Person[i][j].FactorDeath = 3.5;
					New_Infectious_P_Identified++;
                    
				break;
				
				case 2:
					aleat();
					Person[i][j].TimeForIdentification = 1;
					Person[i][j].Swap = Infectious_P_Identified; // at least one day only identified and not under treatment
					Person[i][j].TimeOnState = 0;
					Person[i][j].FactorDeath = 3.5;
					New_Infectious_P_Identified++;
                    
				break;
				
			
				case 0:
					if(Person[i][j].TimeOnState==1 && ProbOfTreatment>0.0)
					{	
						
						aleat();
						if(rn < ProbOfTreatment)
						{                                                                                                                                                    
							aleat();
							Person[i][j].TimeForIdentification = rn*(TimeIdentificationMax - TimeIdentificationMin) + TimeIdentificationMin;
							Person[i][j].Swap = Infectious_P_Identified; // at least one day only identified and not under treatment
							Person[i][j].TimeOnState = 0;
							Person[i][j].FactorDeath = 3.5;
							New_Infectious_P_Identified++;
                        
						}
						else
						{
							Person[i][j].Swap = Infectious_P;
							
							SelfRecovery(i,j);
						}
					}	
					
				break;
			}	
		
	}
/************************************************************************************/
	void TestInfectious_P_Identified(int i, int j)
	{
		if(Person[i][j].TimeOnState>=Person[i][j].TimeForIdentification)
		{
			Person[i][j].Swap = Infectious_P_UnderTreatment;			
			Person[i][j].TimeOnState = 0; 
			Person[i][j].FactorDeath = 1.0;
			New_Infectious_P_UnderTreatment++;
            
				
			diagnosed++;
			diag = fopen("timediagnosis.dat","a+");
			fprintf(diag,"%i\t%i\n",diagnosed,Person[i][j].TimeForIdentification);
			fclose(diag);
		}
		else
			Person[i][j].Swap = Infectious_P_Identified;	  
	}   
/***********************************************************************************/   
	void TestInfectious_P_UnderTreatmentNoRelapse(int i, int j)
	{ 
		if(Person[i][j].TimeOnState >= TotalTimeOfTreatment_P) // at least one day under treatment
		{
			aleat();
			if(rn < ProbRecovery_P)
			{
				Person[i][j].Swap           = RecoveredLatent_P;
				Person[i][j].RelapseHistory = 0; 
				Person[i][j].TimeOnState    = 0;
				Person[i][j].Tracing        = 0;
				Person[i][j].FactorDeath    = 1.0;
				New_RecoveredLatent_P++;
                
			}
			else
			{
				Person[i][j].Swap = InfectiousNotCured_P;
				Person[i][j].RelapseHistory = 0; 
				Person[i][j].TimeOnState    = 0;
				Person[i][j].Tracing        = 0;
				Person[i][j].FactorDeath    = 3.5;
				New_InfectiousNotCured_P++;
                
			}
		}
		else
			Person[i][j].Swap = Infectious_P_UnderTreatment;
	}

/***************************************************************************************************/
	void TestInfectious_P_UnderTreatmentWithRelapse(int i,  int j)
	{ 
		if(Person[i][j].TimeOnState >= TotalTimeOfTreatment_P)
		{
			aleat();
			if(rn < ProbRecovery_P)
			{
				Person[i][j].Swap           = RecoveredLatent_P;
				Person[i][j].RelapseHistory = 1; 
				Person[i][j].TimeOnState    = 0;
				Person[i][j].FactorDeath    = 1.0;
				New_RecoveredLatent_P++;
                
			}
			else
			{
				Person[i][j].Swap           = InfectiousNotCured_P;
				Person[i][j].RelapseHistory = 1;
				Person[i][j].TimeOnState    = 0;
				Person[i][j].FactorDeath    = 3.5;
				New_InfectiousNotCured_P++;
                
			}
		}
		else
		{
			Person[i][j].Swap           = Infectious_P_UnderTreatment;
			Person[i][j].RelapseHistory = 1;
		}
	}
/****************************************************************************************************/
	void TestInfectiousNotCured_P(int i,  int j)
	{
		Person[i][j].Swap = InfectiousNotCured_P;
		Person[i][j].FactorDeath    = 3.5;
	}

/****************************************************************************************************/

	Person[i][j].TimeOnState++;

	


	switch(Person[i][j].Health)
	{
		case Infectious_P:
			neighborsfunc(i,j);
			TestInfectious_P(i,j);	
		break;
			
		case Infectious_P_Identified:
			neighborsfunc(i,j);
			TestInfectious_P_Identified(i,j);	
		break;
		
		case Infectious_P_UnderTreatment:
			if(Person[i][j].RelapseHistory==0)
				TestInfectious_P_UnderTreatmentNoRelapse(i,j); 
			else 	
				TestInfectious_P_UnderTreatmentWithRelapse(i,j);
		break;

		case InfectiousNotCured_P:
			neighborsfunc(i,j);
			TestInfectiousNotCured_P(i,j);
		break;
	}

}




 















     









  
   
  
