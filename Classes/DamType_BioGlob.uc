class DamType_BioGlob extends DamTypeBioGlob;

var int AwardLevel;

static function IncrementKills(Controller Killer)
{
	local Misc_PRI xPRI;

	xPRI = Misc_PRI(Killer.PlayerReplicationInfo);
	if(xPRI != None)
	{
		++xPRI.BioCount;
		if((xPRI.BioCount == Default.AwardLevel) && (Misc_Player(Killer) != None))
			Misc_Player(Killer).BroadcastAward(class'Message_Bukkake');

		if((xPRI.BioCount == Default.AwardLevel) && (Misc_Bot(Killer) != None))
			Misc_Bot(Killer).BroadcastAward(class'Message_Bukkake');
	} 	
}

defaultproperties
{
     AwardLevel=5
}
