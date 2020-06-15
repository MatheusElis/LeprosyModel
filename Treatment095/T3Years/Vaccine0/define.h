/* Leprosy REAL states */
//--------------------------------------------------------------------------------------------
#define tratamento 0.95 
#define ImmunityVaccine 0.0         /* imunnity due to BCG */
#define TimeIdentificationMax 3*365      /* Maximum prob. to identify a new case in months */
//--------------------------------------------------------------------------------------------
#define  Susceptible       1              /* Susceptible individuals                                 */
#define  Resistant         2               /* Resistant individual. Do NOT get the disease            */
#define  Latent_P          3               /* Latent paucibacillary                                   */
#define  Latent_M          4               /* Latent multibacillary                                   */
#define  Infectious_P      5               /* Infectious individuals paucibacillary                   */
#define  Infectious_P_Identified     6     /* Identified for treatment */
#define  InfectiousNotCured_P        7
#define  Infectious_P_UnderTreatment 8     /* Under treatment */
#define  Infectious_M                9               /* Infectious individuals multibacillary                   */
#define  Infectious_M_Identified     10     /* Identified for treatment */
#define  InfectiousNotCured_M        11
#define  Infectious_M_UnderTreatment 12
#define  RecoveredLatent_P           13               /* Recovered Latent paucibacillary - may relapse           */
#define  RecoveredLatent_M           14               /* Recovered Latent multibacillary - may relapse           */
#define  SelfRecoveredLatent_P       15
#define  Dead                        16      /* Dead individuals                                        */

#define MAXNUM 4294967295.             // for 32 bits compilers

#define YEARS 300                 /* Maximum run time in years */
#define MAXTIME YEARS*365         /* Maximum run time in months */
#define MAXSIM 200              /* Number of simulations to evaluate averages */
#define L 317                 /* Linear size of the lattice */
#define N L*L                     /* Size of population */

#define ProbResistance 0.0                  /* Probability that a susceptible individual be immune to the disease */

#define MaxRandomContacts 1.5
#define MinRandomContacts 0.0

#define LatentIniPB 150               /* Amount of latent PB at t=0 */
#define LatentIniMB 1               /* Amount of latent MB at t=0 */

#define BetaNorth 0.00013232*1.175
#define Beta_M 1.118*BetaNorth
#define Beta_P 0.5*Beta_M

#define OneMinusBetaM 1.0 - Beta_M
#define OneMinusBetaP 1.0 - Beta_P

#define MuM 3.5                /* Increase in mortality MB no under treatmenet*/

//#define ProbLatentP 0.076884              /* Probability that a susceptible to become latent  paucibacillary */
//#define ProbLatentM (1.0 - ProbLatentP)  /* Probability that a susceptible to become latent multibacillary */

#define MaxAgeVaccination 6         /* Maximum age to get vaccine */
//#define ProbVaccine 0.0             /* Prob of being vaccinated. Only until  6 years old*/

#define ProbNewVaccine 1.0 
#define ImmunityNewVaccine 0.87  

#define LatencyMinP 3*365             /* Probability that a susceptible to become latent  paucibacillary 2 years in months*/
#define LatencyMaxP 4*365            /* Probability that a susceptible to become latent multibacillary  12 years in months*/

#define LatencyMinM 3*365             /* Probability that a susceptible to become latent  paucibacillary 2 years in months*/
#define LatencyMaxM 4*365            /* Probability that a susceptible to become latent multibacillary  12 years in months*/

#define ProbSelfRecoveryP 0. //0.000614    /* per day */

#define ProbRecovery_M 0.953      /* after 12 months of tretament */
#define ProbRecovery_P 0.974       /* after 6 months of tretament */

#define ProbRelapse_P 0.0011  	      /* Relapse for recovered from paucibacillary (monthly probability) */
#define ProbRelapse_M 0.0037             /* Relapse for recovered from multibacillary (monthly probability) */

#define BeginOfTreatment  100*365         

#define TimeIdentificationMin 0*365        /* Minimum prob. to identify a new case in months */

#define TotalTimeOfTreatment_P 12*365   /* one year */     
#define TotalTimeOfTreatment_M 12*365   
#define TotalTimeOfPEP         180

//#define ProbNonCompliance 0.0         /* give up the treatment */

#define ProbRecoveryPEP 0.57         /* Prophylaxis for contact tracing */  








