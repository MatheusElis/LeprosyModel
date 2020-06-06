void beginfunc()
{
	
	void Vaccination(int i, int j)
	{
	aleat();
	if(rn < ProbVaccine)
		Person[i][j].Immunity = ImmunityVaccine;
	}
/********************************************************************/

	void InitializeLattice()
	{
		int i,j;
		
		/* Set all variable to zero and define all individuals as susceptible */
		for(i=1;i<=L;i++)
			for(j=1;j<=L;j++)
			{
				aleat();
				if(rn < ProbResistance)
				{
					Person[i][j].Health         = Resistant; 
					Person[i][j].Swap           = -1;  
					Person[i][j].RelapseHistory = 0; 
					Person[i][j].Immunity       = 1;
					New_R++;
					R_Total++;  
				}
				else
				{
					Person[i][j].Health   = Susceptible;
					Person[i][j].Swap     = -1;
					Person[i][j].RelapseHistory = 0;
					Person[i][j].Immunity = 0;
					New_S++;
					S_Total++;
				}
				
				Person[i][j].StateTime             = 0;
				Person[i][j].TimeOnState           = 0;
				Person[i][j].LatencyTime           = 0;
				Person[i][j].RelapseHistory        = 0;
				Person[i][j].TimeForIdentification = 0;
				Person[i][j].Tracing               = 0;
				Person[i][j].FactorDeath           = 1.0;
				
				agedistributionfunc(i,j);
				
				if(Person[i][j].AgeYears <= MaxAgeVaccination)
					Vaccination(i,j);
			} // for j
	}  
	/*****************************************************************************************/
	void RandomDistributeSick()
	{
		int i,j,k;
		
		/* Random distribution of latent individuals in t=0 */
		k=0;
		if(LatentIniPB > 0)
			do
			{
				aleat();
				i = rn*L + 1;
				aleat();
				j = rn*L + 1;
				
				if(Person[i][j].Health==Susceptible)
				{
					Person[i][j].Health      = Latent_P; 
					Person[i][j].TimeOnState = 0;
					aleat();
					Person[i][j].LatencyTime = rn*(LatencyMaxP - LatencyMinP) + LatencyMinP;
					Person[i][j].FactorDeath = 1.0;
					New_S--;
					S_Total--;
					New_Latent_P++;
					Latent_P_Total++;
					k++;
				}
			}while(k<LatentIniPB);
			
			k=0;
			if(LatentIniMB > 0)
			do
			{
				aleat();
				i = rn*L + 1;
				aleat();
				j = rn*L + 1;
				
				if(Person[i][j].Health==Susceptible)
				{
					Person[i][j].Health      = Latent_M;
					Person[i][j].TimeOnState = 0;
					aleat();
					Person[i][j].LatencyTime = rn*(LatencyMaxM - LatencyMinM) + LatencyMinM;
					Person[i][j].FactorDeath = 1.0;
					New_S--;
					S_Total--;
					New_Latent_M++;
					Latent_M_Total++;
					
					k++;
				}
			}while(k<LatentIniMB);
	}	
	
	/*********************************************************************************/	
	InitializeLattice();
	
	RandomDistributeSick();
	
	statisticsbeginfunc2();
	
}

