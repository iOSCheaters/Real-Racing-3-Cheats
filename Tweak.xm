/**************************************************************
**************************************************************
* Real Racing Mods
* Includes: Lots of money, lots of coins, high rank
* All tracks unlocked, All tiers unlocked
* Just comment out any hacks you don't want to compile
* *********************Created by razzile*********************
**************************************************************/
 
#include <substrate.h>
 
 
int GetMoney()
{
return 99999999;
}
 
int GetCurrency()
{
return 99999999;
}
 
int GetXP()
{
return 99999999;
}
 
bool IsTrackUnlocked()
{
return true;
}
 
bool IsTierUnlocked()
{
return true;
}
 
 
%ctor
{
/* comment out any hacks you don't want */
MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK10Characters5Money9GetAmountEv")),(void*)GetMoney, NULL);
MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK10Characters8Currency9GetAmountEv")),(void*)GetCurrency, NULL);
MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK10Characters2XP9GetAmountEv")),(void*)GetXP, NULL);
MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK10Characters10TrackStats15IsTrackUnlockedEi")),(void*)IsTrackUnlocked, NULL);
MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK10Characters14CareerProgress14IsTierUnlockedEi")),(void*)IsTierUnlocked, NULL);
}
