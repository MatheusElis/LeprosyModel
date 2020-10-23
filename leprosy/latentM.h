void latentmfunc(int i, int j)
{
	Person[i][j].TimeOnState++;
  
	if(Person[i][j].TimeOnState <= Person[i][j].StateTime)
			Person[i][j].Swap = Latent_M;	
	
	else
	{
		Person[i][j].Swap        = Infectious_M;

		Person[i][j].TimeOnState = 0;
		
		Person[i][j].FactorDeath = 3.5;
	
		New_Infectious_M++;	
	}
}	


	

		
			
		
















     









  
   
  
