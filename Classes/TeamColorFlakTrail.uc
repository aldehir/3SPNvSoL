class TeamColorFlakTrail extends FlakTrail;

var int TeamNum;
var bool bColorSet;

function SetColors()
{
    if(bColorSet)
        return;

    if(class'Misc_Player'.default.bTeamColorFlak && Level.NetMode == NM_Client)
    {
        if(TeamNum == 0)
        {
            mColorRange[0].R=255;
            mColorRange[0].G=0;
            mColorRange[0].B=0;

            mColorRange[1].R=255;
            mColorRange[1].G=0;
            mColorRange[1].B=0;
            bColorSet=true;
        }
        else if(TeamNum == 1)
        {
            mColorRange[0].R=0;
            mColorRange[0].G=0;
            mColorRange[0].B=255;

            mColorRange[1].R=0;
            mColorRange[1].G=0;
            mColorRange[1].B=255;
            bColorSet=true;
        }
    }
}

simulated function Tick(float DT)
{
    super.Tick(DT);
    SetColors();
}

defaultproperties
{
    TeamNum=255
}