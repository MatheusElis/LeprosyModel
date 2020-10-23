void infectiousmfunc(int i, int j)
{
    
	void TestInfectious_M(int i, int j) 
	{
		switch(Person[i][j].Tracing)
		{
			case 1:
				Person[i][j].Swap = Infectious_M_UnderTreatment;			
				Person[i][j].TimeOnState = 0; 
				Person[i][j].FactorDeath = 1.0;
				New_Infectious_M_UnderTreatment++;
			break;
			
			
			case 2:
				Person[i][j].Swap = Infectious_M_UnderTreatment;			
				Person[i][j].TimeOnState = 0; 
				Person[i][j].FactorDeath = 1.0;
				New_Infectious_M_UnderTreatment++;

			break;
			
			case 0:
				if(Person[i][j].TimeOnState==1 && ProbOfTreatment>0.0)
				{	
					aleat();
					if(rn < ProbOfTreatment)
					{                                                                                                                                                    
						aleat();
						Person[i][j].TimeForIdentification = rn*(TimeIdentificationMax - TimeIdentificationMin) + TimeIdentificationMin;
						Person[i][j].Swap = Infectious_M_Identified; // at least one day only identified and not under treatment
						Person[i][j].TimeOnState = 0;
						Person[i][j].FactorDeath = 3.5;
						New_Infectious_M_Identified++;

					}
				}
				else
						Person[i][j].Swap = Infectious_M;
				break;
		}
		
	}
/************************************************************************************/
	void TestInfectious_M_Identified(int i, int j)
	{	
		if(Person[i][j].TimeOnState>=Person[i][j].TimeForIdentification)
		{	
			Person[i][j].Swap = Infectious_M_UnderTreatment;			
			Person[i][j].TimeOnState = 0; 
			Person[i][j].FactorDeath = 1.0;
			New_Infectious_M_UnderTreatment++;
            
			
			diagnosed++;
			diag = fopen("timediagnosis.dat","a+");
			fprintf(diag,"%i\t%i\n",diagnosed,Person[i][j].TimeForIdentification);
			fclose(diag);
		}
		else
		Person[i][j].Swap = Infectious_M_Identified;	  
	}   
/***********************************************************************************/   
	void TestInfectious_M_UnderTreatmentNoRelapse(int i, int j)
	{ 
		if(Person[i][j].TimeOnState >= TotalTimeOfTreatment_M) // at least one day under treatment
		{
			aleat();
			if(rn < ProbRecovery_M)
			{
				Person[i][j].Swap           = RecoveredLatent_M;
				Person[i][j].RelapseHistory = 0; 
				Person[i][j].TimeOnState    = 0;
				Person[i][j].Tracing        = 0;
				Person[i][j].FactorDeath    = 1.0;
				Person[i][j].TimeForIdentification = -1; // to flag for relapse
				New_RecoveredLatent_M++;
                
			}
			else
			{
				Person[i][j].Swap = InfectiousNotCured_M;
				Person[i][j].RelapseHistory = 0; 
				Person[i][j].TimeOnState    = 0;
				Person[i][j].Tracing        = 0;
				Person[i][j].FactorDeath    = 3.5;
				New_InfectiousNotCured_M++;
                
			}
		}
		else
		Person[i][j].Swap = Infectious_M_UnderTreatment;
	}

/***************************************************************************************************/
	void TestInfectious_M_UnderTreatmentWithRelapse(int i,  int j)
	{ 
		if(Person[i][j].TimeOnState >= TotalTimeOfTreatment_M)
		{
			aleat();
			if(rn < ProbRecovery_M)
			{
				Person[i][j].Swap           = RecoveredLatent_M;
				Person[i][j].RelapseHistory = 1; 
				Person[i][j].TimeOnState    = 0;
				Person[i][j].TimeForIdentification = -1; // to flag for relapse
				Person[i][j].TimeOnState    = 0;
				Person[i][j].FactorDeath    = 1.0;
				New_RecoveredLatent_M++;
                
			}
			else
			{
				Person[i][j].Swap           = InfectiousNotCured_M;
				Person[i][j].RelapseHistory = 1;
				Person[i][j].TimeOnState    = 0;
				Person[i][j].FactorDeath    = 3.5;
				New_InfectiousNotCured_M++;
                
			}
		}
		else
			{
				Person[i][j].Swap           = Infectious_M_UnderTreatment;
				Person[i][j].RelapseHistory = 1;
			}
	}
/****************************************************************************************************/
	void TestInfectiousNotCured_M(int i,  int j)
	{
		Person[i][j].Swap = InfectiousNotCured_M;
		Person[i][j].FactorDeath    = 3.5;
	}
 
 
 
	Person[i][j].TimeOnState++;
	switch(Person[i][j].Health)
	{
		case Infectious_M:
			neighborsfunc(i,j);
			TestInfectious_M(i,j);
		break;
	
		case Infectious_M_Identified:
			neighborsfunc(i,j);
			TestInfectious_M_Identified(i,j);	
		break;
		
		case Infectious_M_UnderTreatment: 
			if(Person[i][j].RelapseHistory==0)
				TestInfectious_M_UnderTreatmentNoRelapse(i,j); 
			else
				TestInfectious_M_UnderTreatmentWithRelapse(i,j);
		break;

		case InfectiousNotCured_M:
			neighborsfunc(i,j);
			TestInfectiousNotCured_M(i,j);
		break;
	}

}




 















     









  
   
  
