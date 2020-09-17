void agedistributionfunc(int i, int j)
{
	
	int mute,k;
	int MaximumAge;
	int MinimumAge;
	
	
	
	//define age
	mute = 0;
	k = 0;
	aleat();
	if(rn<=SumProbBirthAge[k])// SumProbBirthAge[k] is in agestructure.h
	{
		mute = 1;  // this li
		MaximumAge = AgeMax[k];
		MinimumAge = AgeMin[k];
		
	}
	
	else
	{
		do
		{
			if(rn>SumProbBirthAge[k] && rn<=SumProbBirthAge[k+1])
			{
				mute = 1;
				MaximumAge = AgeMax[k+1];
				MinimumAge = AgeMin[k+1];
			}
			else
			{
				mute = 0;
				k++;
				
				
			}
		} while(mute < 1);
	}
	
	aleat();
	Person[i][j].AgeYears = rn*(MaximumAge - MinimumAge) + MinimumAge;
	Person[i][j].AgeDays  = Person[i][j].AgeYears*365;
	
}
