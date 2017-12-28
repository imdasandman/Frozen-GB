using System;
using System.Diagnostics;
using System.Drawing;
using System.Windows.Forms;

namespace FrozenNamespace
{
    public class BalanceDruid : CombatRoutine
    {
        private readonly Stopwatch pullwatch = new Stopwatch();
       
        public override Form SettingsForm { get; set; }

        public override void Initialize()
        {
            
                Log.Write("Welcome to Balance rotation, originally written by ScottishDwarf. Rewritten by Myrex", Color.Green);
		}
        private bool validtarget;
        public override void Stop()
        {
        }

        public override void Pulse()
        {
			validtarget = WoW.HasTarget && WoW.IsInCombat && !WoW.PlayerIsChanneling && WoW.TargetIsVisible && WoW.RangeToTarget < 41;
			
			// Cooldown rotation
                if (validtarget && WoW.CooldownsOn && WoW.PlayerHasBuff("Moonkin"))
                {
                    // Incarnation
                    // TODO : Confugrable usage
		    if(WoW.Talent(5) == 2 && WoW.CurrentAstralPower >= 40)
		    {
                    	WoW.CastSpell("Incarnation");
			return;
		    }
		    if(WoW.Talent(5) != 2 && WoW.CurrentAstralPower >= 40)
		    {
		    	WoW.CastSpell("CelestialAlignment");
			return;
		    }
					
                    // Astral Communion if Astral Power smaller than 25
                    // TODO : Confugrable usage
                    //WoW.CastSpell("Astral Communion", WoW.Talent(6) == 2 && WoW.CurrentAstralPower <= 25);
                    
                }
			
			
            if (WoW.SingleTargetOn && validtarget && WoW.Talent(1) == 3)
	    {
				// If Blessing of the Ancients get it up.
		if(WoW.Talent(6) == 3 && !WoW.PlayerHasBuff("BlessingOfElune") && !WoW.PlayerHasBuff("BlessingOfAnshe") && WoW.PlayerHealthPercent >= 10)
		{				
                	WoW.CastSpell("BlessingOfAncients");
			return;
		}
		if(WoW.Talent(6) == 3 && WoW.PlayerHasBuff("BlessingOfAnshe") && WoW.PlayerHealthPercent >= 10)
		{
                	WoW.CastSpell("BlessingOfAncients");
			return;
		}
                
				// Stellar Drift
                if (WoW.Talent(7) == 2 && WoW.IsMoving && WoW.PlayerHasBuff("StarfallP"))
                {
			if(WoW.PlayerHasBuff("StarfallP") && WoW.PlayerBuffTimeRemaining("StarfallP") >= 300)
			{
				WoW.CastSpell("FullMoon");
				return;
			}
			if(WoW.PlayerHasBuff("StarfallP") && WoW.PlayerBuffTimeRemaining("StarfallP") >= 250)
                    	{
				WoW.CastSpell("LStrike");
				return;
			}
			if(WoW.PlayerHasBuff("StarfallP") && WoW.PlayerBuffTimeRemaining("StarfallP") >= 120)
			{
                    		WoW.CastSpell("Moon");
				return;
			}
			if(WoW.PlayerHasBuff("StarfallP") && WoW.PlayerBuffTimeRemaining("StarfallP") >= 200)
			{
                    		WoW.CastSpell("HalfMoon");
				return;
			}
			if(WoW.PlayerHasBuff("StarfallP") && WoW.PlayerBuffTimeRemaining("StarfallP") >= 200)
			{
                    		WoW.CastSpell("SolarW");
				return;
			}
                    
                }
				
				// Priority execute order
		if(WoW.CurrentAstralPower >= 80 &&(!WoW.PlayerHasBuff("SolarEmp") || WoW.PlayerBuffStacks("SolarEmp") < 3) &&(!WoW.PlayerHasBuff("LunarEmp") || WoW.PlayerBuffStacks("LunarEmp") < 3))
		{
			WoW.CastSpell("Starsurge");
			return;
		}
                                        // New Moon
                    // Moonfire if not on target
		    if(!WoW.TargetHasDebuff("Moonfire"))
		    {
	                    WoW.CastSpell("Moonfire");
			    return;
		    }
                    // Sunfire if not on target
		    if(!WoW.TargetHasDebuff("Sunfire")) 
		    {
                    	WoW.CastSpell("Sunfire");
			return;
		    }
					//moon shizz
		    if(WoW.PlayerSpellCharges("Moon") == 3&& WoW.TargetHasDebuff("Moonfire")&& WoW.TargetHasDebuff("Sunfire"))
		    {
					WoW.CastSpell("Moon");
					return;
		    } 
                    // HalfMoon
		    if(WoW.PlayerSpellCharges("HalfMoon") == 3&& WoW.TargetHasDebuff("Moonfire")&& WoW.TargetHasDebuff("Sunfire"))
		    {
                    	WoW.CastSpell("HalfMoon");
		    	return;
		    }
                    // FullMoon
		    if(WoW.PlayerSpellCharges("FullMoon") == 3&& WoW.TargetHasDebuff("Moonfire") && WoW.TargetHasDebuff("Sunfire"))
		    {
                     	WoW.CastSpell("FullMoon");
			return;
		    }
                    // Moonfire if under 6.6 remaining (no Natures Balance)
		    if(WoW.Talent(7) == 2 && WoW.TargetDebuffTimeRemaining("Moonfire") <= 660)
		    {
                    	WoW.CastSpell("Moonfire");
			return;
		    }
                    // Sunfire if under 5.4 remaining (no Natures Balance)
                    if(WoW.Talent(7) == 2 && WoW.TargetDebuffTimeRemaining("Sunfire") <= 540)
		    {
		    	WoW.CastSpell("Sunfire");
			return;
		    }
                    // Solar Wrath if natures balance and betwean 5-2seconds left on sunfire
		    if(WoW.Talent(7) == 3 && WoW.TargetDebuffTimeRemaining("Sunfire") <= 500 && WoW.TargetDebuffTimeRemaining("Sunfire") >= 200)
		    {
                    	WoW.CastSpell("SolarW");
			return;
		    }
                    // Lunar Strike if natures abalnce and betwean 5-2seconds left on moonfire
                    if(WoW.Talent(7) == 3 && WoW.TargetDebuffTimeRemaining("Moonfire") <= 600 && WoW.TargetDebuffTimeRemaining("Moonfire") >= 300)
		    {
		    	WoW.CastSpell("LStrike");
			return;
		    }
					// Solar Wrath at 3 solar empowerement
                    if(WoW.PlayerBuffStacks("SolarEmp") == 3)
		    {
		    	WoW.CastSpell("SolarW");
			return;
		    }
                    // Lunar Strike at 3 solar empowerement
		    if(WoW.PlayerBuffStacks("LunarEmp") == 3)
		    {
                    	WoW.CastSpell("LStrike");
			return;
		    }
                    
                     // Secondary priority execute order
                    // New Moon
		    if(WoW.CurrentAstralPower <= 90&& WoW.TargetHasDebuff("Moonfire")&& WoW.TargetHasDebuff("Sunfire"))
		    {
                    	WoW.CastSpell("Moon");
			return;
		    }
                    // HalfMoon
		    if(WoW.CurrentAstralPower <= 80&& WoW.TargetHasDebuff("Moonfire")&& WoW.TargetHasDebuff("Sunfire"))
		    {
                    	WoW.CastSpell("HalfMoon");
			return;
		    }
                    // FullMoon
		    if(WoW.CurrentAstralPower <= 60&& WoW.TargetHasDebuff("Moonfire")&& WoW.TargetHasDebuff("Sunfire"))
		    {
                    	WoW.CastSpell("FullMoon");
		    	return;
		    }
                    // Starsurge for Emerald Dreamcatcher
		    if(WoW.PlayerSpellCharges("Starsurge") <= 2 && WoW.CurrentAstralPower >= 40)
		    {
                    	WoW.CastSpell("Starsurge");
			return;
		    }
                    // Starsurge
		    if(WoW.CurrentAstralPower >= 80 && (!WoW.PlayerHasBuff("SolarEmp") || WoW.PlayerBuffStacks("SolarEmp") < 3) && (!WoW.PlayerHasBuff("LunarEmp") || WoW.PlayerBuffStacks("LunarEmp") < 3))
		    {
                    	WoW.CastSpell("Starsurge");
			return;
		    }
                    // Solar Wrath at solar empowerement
		    if(WoW.PlayerBuffStacks("SolarEmp") <= 1)
		    {
                    	WoW.CastSpell("SolarW");
			return;
		    }
                    // Cast LunarStrike if no SolarEmp and have LunarEmp
		    if(WoW.PlayerHasBuff("LunarEmp") && !WoW.PlayerHasBuff("SolarEmp"))
		    {
                    	WoW.CastSpell("LStrike");
		    	return;
		    }
                    // Cast SolarWrath when nothing else to do
		    if(validtarget)
		    {
                    	WoW.CastSpell("SolarW");
			return;
		    }
		}
               
           
            if (combatRoutine.Type == RotationType.AOE)
            {
				
			
            }
        }
	}
}
		
	
    


/*
[AddonDetails.db]
AddonAuthor=Myrex
AddonName=Frozen
WoWVersion=Legion - 70300
[SpellBook.db]
Spell,8921,Moonfire,D4
Spell,93402,Sunfire,F8
Spell,202767,Moon,G
Spell,78674,Starsurge,D3
Spell,191034,Starfall,D8
Spell,194153,LStrike,D2
Spell,190984,SolarW,D1
Spell,202771,FullMoon,G
Spell,202768,HalfMoon,G
Spell,194223,CelestialAlignment,Z
Spell,202359,Astral Communion,F10
Spell,102560,Incarnation,Z
Spell,18562,Swiftmend,D4
Spell,774,Rejuvenation,D1
Spell,24858,Moonkin,F11
Spell,108238,Renewal,F7
Spell,202360,BlessingOfAncients,F10
Aura,164547,LunarEmp
Aura,164545,SolarEmp
Aura,164812,Moonfire
Aura,93402,Sunfire
Aura,24858,Moonkin
Aura,194223,CelestialAlignment
Aura,102560,Incarnation
Aura,80353,Timewarp
Aura,2825,Heroism
Aura,774,Rejuvenation
Aura,215632,FulminationCharge
Aura,202737,BlessingOfElune
Aura,202739,BlessingOfAnshe
Aura,157228,OwlkinFrenzy
Aura,191034,StarfallP
Aura,197637,StarfallT
*/
