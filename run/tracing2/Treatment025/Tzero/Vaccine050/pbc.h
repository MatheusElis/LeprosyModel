void pbc()
{
	int i;
	
	for(i=1;i<=L;i++) /* Periodic boudandry conditions */
	{
		Person[0][i].Health   = Person[L][i].Health;
		Person[L+1][i].Health = Person[1][i].Health;
		
		Person[i][0].Health   = Person[i][L].Health;
		Person[i][L+1].Health = Person[i][1].Health;
		
		
		Person[0][i].Swap   = Person[L][i].Swap;
		Person[L+1][i].Swap = Person[1][i].Swap;
		
		Person[i][0].Swap   = Person[i][L].Swap;
		Person[i][L+1].Swap = Person[i][1].Swap;
	}
	Person[0][0].Health     = Person[L][L].Health;  /* Periodic boudandry conditions in the borders */
	Person[0][L+1].Health   = Person[L][1].Health;
	Person[L+1][0].Health   = Person[1][L].Health;
	Person[L+1][L+1].Health = Person[1][1].Health;
	  
	Person[0][0].Swap     = Person[L][L].Swap;  /* Periodic boudandry conditions in the borders */
	Person[0][L+1].Swap   = Person[L][1].Swap;
	Person[L+1][0].Swap   = Person[1][L].Swap;
	Person[L+1][L+1].Swap = Person[1][1].Swap;
}
