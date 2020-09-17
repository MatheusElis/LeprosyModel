void image(int step)
{

    int i,j,k;
    
    sprintf(cad,"./pictures/picture_%i.xpm",step);
    tp = fopen(cad,"w");

    fprintf(tp,"/* XPM */\n");
    fprintf(tp,"static char *begin[] = {\n");
    fprintf(tp,"/* columns */\n");
    fprintf(tp,"\"%u %u 6 1\",\n",5*L,5*L);
    fprintf(tp,"\"1   c #7CFC00\",\n"); // green for Susceptible
    fprintf(tp,"\"2   c #FFFFFF\",\n"); // white for R
    fprintf(tp,"\"3   c #381DE6\",\n"); // blue for Infectious P
    fprintf(tp,"\"4   c #FF0000\",\n"); // red for for Infectious M
    fprintf(tp,"\"5   c #FFFF00\",\n");  // yellow for latent with all strains
    fprintf(tp,"\"6   c #000000\",\n");  // black for recovered with all strains
   
    fprintf(tp,"/* pixels */\n");
    for(i=1;i<=L;i++)
    {
	for(k=1;k<=5;k++) 
	{
	    fprintf(tp,"\"");
	    for(j=1;j<=L;j++)
	    {
		if(Person[i][j].Health==Susceptible || Person[i][j].Health==Dead)
		    fprintf(tp,"11111");
		else if(Person[i][j].Health==Resistant)
		    fprintf(tp,"22222");
		else if(Person[i][j].Health==Latent_P)
		    fprintf(tp,"55555");
		else if(Person[i][j].Health==Latent_M)
		    fprintf(tp,"55555");
		else if(Person[i][j].Health==Infectious_P || Person[i][j].Health==Infectious_P_Identified || Person[i][j].Health==Infectious_P_UnderTreatment || Person[i][j].Health==InfectiousNotCured_P)
			fprintf(tp,"33333");
	    else if(Person[i][j].Health==Infectious_M || Person[i][j].Health==Infectious_M_Identified || Person[i][j].Health==Infectious_M_UnderTreatment || Person[i][j].Health==InfectiousNotCured_M )
			fprintf(tp,"44444");
		else if(Person[i][j].Health==RecoveredLatent_P || Person[i][j].Health==RecoveredLatent_M || Person[i][j].Health==SelfRecoveredLatent_P)
			fprintf(tp,"66666");
	    }
	    fprintf(tp,"\",\n");
	}
    }
    fprintf(tp,"};");

    fclose(tp);
}
 
