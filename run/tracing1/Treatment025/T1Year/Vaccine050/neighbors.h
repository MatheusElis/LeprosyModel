int neighborsfunc(int i , int j)
{

	void CheckForInfection(int a, int b)
	{
	
	
		int k,l;         
		int NumberOfInfectedNeighborsM;
		int NumberOfInfectedNeighborsP;                 
		int RandomContacts;
		int Randomi;
		int Randomj;
		int mute;

		float ProbContagion; 
		float pm;
		float pb;
		
		int Infection; // variable for neighborhood infection 
         
		NumberOfInfectedNeighborsM = 0;
		NumberOfInfectedNeighborsP = 0;
		Infection = 0;
  
		aleat();
		RandomContacts = rn*(MaxRandomContacts - MinRandomContacts) +  MinRandomContacts;
 
		mute = 0;
		if(RandomContacts > 0)
			do
			{
				do
				{
					aleat();
					Randomi = rn*L + 1;
				}while(Randomi==i);
				
                do
				{
					aleat();
					Randomj = rn*L + 1;
				}while(Randomj==j);
       
				if(Person[Randomi][Randomj].Health>=Infectious_M && Person[Randomi][Randomj].Health<=InfectiousNotCured_M)
					NumberOfInfectedNeighborsM++;
				
				else if(Person[Randomi][Randomj].Health>=Infectious_P &&  Person[Randomi][Randomj].Health<=InfectiousNotCured_P)
					NumberOfInfectedNeighborsP++;
				
				mute++;
			}while(mute < RandomContacts);
			
            for(k=-1;k<=1;k++) 	
				for(l=-1;l<=1;l++)
					if(Person[a+k][b+l].Health>=Infectious_M && Person[a+k][b+l].Health<=InfectiousNotCured_M)
						NumberOfInfectedNeighborsM++;
					else if(Person[a+k][b+l].Health>=Infectious_P && Person[a+k][b+l].Health<=InfectiousNotCured_P)
						NumberOfInfectedNeighborsP++;
			
			
			if((NumberOfInfectedNeighborsM + NumberOfInfectedNeighborsP)>0 )
			{
				if(ContactTracing==1)
					Person[a][b].Tracing = 1; // contact tracing
				else if(ContactTracing==2)
				{
					Person[a][b].Tracing = 2; // contact tracing
				}
			}
			
			
			if((NumberOfInfectedNeighborsM + NumberOfInfectedNeighborsP) > 0) // Calculate ProbContagion
			{
				pm = (pow(OneMinusBetaM, (float)NumberOfInfectedNeighborsM));
				
				pb = (pow(OneMinusBetaP,(float)NumberOfInfectedNeighborsP));
				
				pm = (1.0 - Person[a][b].Immunity)*(1.0- pm);
				
				pb = (1.0 - Person[a][b].Immunity)*(1.0- pb);
				
				aleat();
				if(rn <= pm)
				{
					Person[a][b].Swap = Latent_M;
					
					aleat();
					Person[a][b].StateTime = rn*(LatencyMaxM - LatencyMinM) + LatencyMinM;
					
					
				
					Person[a][b].FactorDeath           = 1.0;
					
					New_Latent_M++;
				}
				else if((rn> pm) && (rn<=(pm+pb)))
				{
					Person[a][b].Swap = Latent_P;
					
					aleat();
					Person[a][b].StateTime = rn*(LatencyMaxP - LatencyMinP) + LatencyMinP;
					
					
					
					Person[a][b].FactorDeath           = 1.0;
					
					New_Latent_P++;
				}
				else
					Person[a][b].Swap = Susceptible;	
			}
			else
				Person[a][b].Swap = Susceptible;
			
	
	}
/******************************************************************************************/     
 
	int k,l;
	int NumberOfSusceptible; 
	
	for(k=-1;k<=1;k++) 	
		for(l=-1;l<=1;l++)
			if(Person[i+k][j+l].Health==Susceptible && Person[i+k][j+l].Swap==-1) // swap = -1 means not tested yet
			{
				CheckForInfection(i+k,j+l);
			}
     
}
