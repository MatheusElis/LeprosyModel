void susceptiblefunc(int i, int j)
{
	
	Person[i][j].TimeOnState++;
	
	
	if(NewVaccine==1 && ProbNewVaccine>0.0)
	{
		aleat();
		if(rn < ProbNewVaccine)
			Person[i][j].Immunity = ImmunityNewVaccine;
	}
	
	if(Person[i][j].Swap==-1)
	Person[i][j].Swap = -1;
}


 















     









  
   
  
