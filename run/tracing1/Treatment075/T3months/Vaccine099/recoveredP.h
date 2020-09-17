void recoveredpfunc(int i, int j)
{
	Person[i][j].TimeOnState++;
	aleat();
	
	if(rn < ProbRelapse_P)
	{
		Person[i][j].Swap           = Infectious_P;
		Person[i][j].RelapseHistory = 1;
		Person[i][j].TimeOnState    = 0;  
		Person[i][j].FactorDeath    = 3.5;
		New_Infectious_P_UnderTreatment++;		
	}
	else
	{
		Person[i][j].Swap           = RecoveredLatent_P;
		Person[i][j].RelapseHistory = 0;
	}
}


   
   












     









  
   
  
