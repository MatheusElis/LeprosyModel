void updatefunc()
{
	int i,j;
	
	CountDays++;
	
	S_Total                           = 0;
	R_Total                           = 0;
	Latent_P_Total                    = 0;
	Latent_M_Total                    = 0;
	Infectious_P_Total                = 0;
	Infectious_P_Identified_Total     = 0;
	Infectious_P_UnderTreatment_Total = 0;
	Infectious_M_Total                = 0;
	Infectious_M_Identified_Total     = 0;
	InfectiousNotCured_P_Total        = 0;        
	InfectiousNotCured_M_Total        = 0;
	Infectious_M_UnderTreatment_Total = 0;
	RecoveredLatent_P_Total           = 0;
	RecoveredLatent_M_Total           = 0;
	
	
	for(i=1;i<=L;i++) 
		for(j=1;j<=L;j++)
		{
			Person[i][j].Health = Person[i][j].Swap; //Update the lattice
			
			if(Person[i][j].Health==-1)
				Person[i][j].Health = Susceptible;
			
			//printf("Person[i][j].Health=%i\n",Person[i][j].Health);
			
			Person[i][j].AgeDays++;
  
			if(CountDays==365)
			{
				Person[i][j].AgeYears++;
				
				aleat();
				if(rn < Person[i][j].FactorDeath*ProbNaturalDeath[Person[i][j].AgeYears])
				{
					Person[i][j].Health = Dead;
					//printf("Died\n");  
				}
			}
			
			if(Person[i][j].Health==Dead)
			{
				Person[i][j].Health                = Susceptible; 
				Person[i][j].Swap                  = -1; 
				Person[i][j].Immunity              = 0;
				New_S++;
				S_Total++;  
				
				
				Person[i][j].StateTime             = 0;
				Person[i][j].TimeOnState           = 0;
				Person[i][j].LatencyTime           = 0; 
				Person[i][j].TimeOfTreatment       = 0;
				Person[i][j].RelapseHistory        = 0;                         
				Person[i][j].TimeForIdentification = 0;
				Person[i][j].Tracing               = 0;
				Person[i][j].FactorDeath           = 1.0;
				
				agedistributionfunc(i,j);
				
				if(Person[i][j].AgeYears <= MaxAgeVaccination)
				{
					aleat();
					if(rn < ProbVaccine)
						Person[i][j].Immunity = ImmunityVaccine;
				}
				
				if(NewVaccine==1 && ProbNewVaccine>0.0)
				{
					aleat();
					if(rn < ProbNewVaccine)
						Person[i][j].Immunity = ImmunityNewVaccine;
				}
	
			} // if(Person[i][j].Health==Dead)	
			
			if(Person[i][j].Health==Susceptible) 
				Person[i][j].Swap = -1; 
			
			switch(Person[i][j].Health)
			{
				case Susceptible:
					 S_Total++;
				break;
				
				case Resistant:
					R_Total++;
				break;
				
				case Latent_P:
					Latent_P_Total++;
				break;
				
				case Latent_M:
					Latent_M_Total++;
				break;
				
				case Infectious_P:
					Infectious_P_Total++;
				break;
				
				case Infectious_P_Identified:
					Infectious_P_Identified_Total++;
				break;
				
				case Infectious_P_UnderTreatment:
					Infectious_P_UnderTreatment_Total++;
				break;
				
				case InfectiousNotCured_P:
					InfectiousNotCured_P_Total++;
				break;
				
				case Infectious_M:
					Infectious_M_Total++;
				break;
				
				case Infectious_M_Identified:
					Infectious_M_Identified_Total++;
				break;
				
				case Infectious_M_UnderTreatment:
					Infectious_M_UnderTreatment_Total++;
				break;
				
				case InfectiousNotCured_M:
					InfectiousNotCured_M_Total++;
				break;
				
				case RecoveredLatent_P:
					 RecoveredLatent_P_Total++; 
				break;
				
				case RecoveredLatent_M:
					 RecoveredLatent_M_Total++;
				break;
				
				case SelfRecoveredLatent_P:
					 RecoveredLatent_M_Total++;
				break;
				
			}
		}
		
		
		
		if(CountDays==365)
		{
			CountDays = 0;
			CountYears++;
			
			statpartialfunc(); // generate output files
			
		} //if(CountDays==365)



}


    


