BEGIN ~B_wand1~


IF ~Global("B_WAN","GLOBAL",-1)~ THEN BEGIN B_Wand001
SAY @115022
IF ~~ THEN EXIT
END

//IF ~Global("B_ARTWD","GLOBAL",-1)~ THEN BEGIN B_Wand002
//SAY @115228
//IF ~~ THEN EXIT
//END


IF ~True()~ THEN BEGIN B_Wand004
SAY @115023
IF ~~ THEN GOTO B_Wand005
END


IF ~~ THEN BEGIN B_Wand005
SAY @115019
IF ~GlobalGT("B_WAN","GLOBAL",0)~ THEN REPLY @115033 GOTO B_Wand100
IF ~GlobalGT("B_WAN","GLOBAL",1)~ THEN REPLY @115034 GOTO B_Wand200
IF ~GlobalGT("B_WAN","GLOBAL",2)~ THEN REPLY @115035 GOTO B_Wand300
IF ~GlobalGT("B_WAN","GLOBAL",3)~ THEN REPLY @115036 GOTO B_Wand400
IF ~GlobalGT("B_WAN","GLOBAL",4)~ THEN REPLY @115037 GOTO B_Wand500
IF ~GlobalGT("B_WAN","GLOBAL",5)~ THEN REPLY @115133 GOTO B_Wand600
IF ~GlobalGT("B_WAN","GLOBAL",6)~ THEN REPLY @115150 GOTO B_Wand700
IF ~GlobalGT("B_ARTWD","GLOBAL",0)~ THEN REPLY @115033 GOTO B_Wand100_1
IF ~GlobalGT("B_ARTWD","GLOBAL",1)~ THEN REPLY @115034 GOTO B_Wand200_1
IF ~GlobalGT("B_ARTWD","GLOBAL",2)~ THEN REPLY @115035 GOTO B_Wand300_1
IF ~GlobalGT("B_ARTWD","GLOBAL",3)~ THEN REPLY @115036 GOTO B_Wand400_1
IF ~GlobalGT("B_ARTWD","GLOBAL",4)~ THEN REPLY @115037 GOTO B_Wand500_1
IF ~GlobalGT("B_ARTWD","GLOBAL",5)~ THEN REPLY @115133 GOTO B_Wand600_1
IF ~GlobalGT("B_ARTWD","GLOBAL",6)~ THEN REPLY @115150 GOTO B_Wand700_1   
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand100
SAY @115083
IF ~Global("B_MMW","GLOBAL",1)~ THEN REPLY @115082 GOTO B_Wand101
IF ~Global("B_SW","GLOBAL",1)~ THEN REPLY @115089 GOTO B_Wand102
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand100_1
SAY @115083
IF ~Global("B_MMW","GLOBAL",1)~ THEN REPLY @115082 GOTO B_Wand101_1
IF ~Global("B_SW","GLOBAL",1)~ THEN REPLY @115089 GOTO B_Wand102_1
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand101    //MM
SAY @115084
IF ~HaveSpell(WIZARD_MAGIC_MISSILE)~ THEN REPLY @115086 DO ~TakePartyGold(900) DestroyGold(900) RemoveSpell(WIZARD_MAGIC_MISSILE) GiveItemCreate("B_WND01",Myself,60,1,1)~ EXIT
IF ~PartyHasItemIdentified("SCRL77")~ THEN REPLY @115085 DO ~TakePartyGold(900) DestroyGold(900) TakePartyItemNum("SCRL77",1) DestroyItem("SCRL77") GiveItemCreate("B_WND01",Myself,60,1,1)~ EXIT
IF ~~ THEN REPLY @115088 GOTO B_Wand100
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand101_1    //MM
SAY @115084
IF ~HaveSpell(WIZARD_MAGIC_MISSILE)~ THEN REPLY @115086 DO ~TakePartyGold(450) DestroyGold(450) RemoveSpell(WIZARD_MAGIC_MISSILE) GiveItemCreate("B_WND01",Myself,60,1,1)~ EXIT
IF ~PartyHasItemIdentified("SCRL77")~ THEN REPLY @115085 DO ~TakePartyGold(450) DestroyGold(450) TakePartyItemNum("SCRL77",1) DestroyItem("SCRL77") GiveItemCreate("B_WND01",Myself,60,1,1)~ EXIT
IF ~~ THEN REPLY @115088 GOTO B_Wand100_1
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand102   //Sleep
SAY @115084
IF ~HaveSpell(WIZARD_SLEEP)~ THEN REPLY @115077 DO ~TakePartyGold(900) DestroyGold(900) RemoveSpell(WIZARD_SLEEP) GiveItemCreate("B_WND02",Myself,60,1,1)~ EXIT
IF ~PartyHasItemIdentified("SCRL81")~ THEN REPLY @115076 DO ~TakePartyGold(900) DestroyGold(900) TakePartyItemNum("SCRL81",1) DestroyItem("SCRL81") GiveItemCreate("B_WND02",Myself,60,1,1)~ EXIT
IF ~~ THEN REPLY @115088 GOTO B_Wand100
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand102_1   //Sleep
SAY @115084
IF ~HaveSpell(WIZARD_SLEEP)~ THEN REPLY @115077 DO ~TakePartyGold(450) DestroyGold(450) RemoveSpell(WIZARD_SLEEP) GiveItemCreate("B_WND02",Myself,60,1,1)~ EXIT
IF ~PartyHasItemIdentified("SCRL81")~ THEN REPLY @115076 DO ~TakePartyGold(450) DestroyGold(450) TakePartyItemNum("SCRL81",1) DestroyItem("SCRL81") GiveItemCreate("B_WND02",Myself,60,1,1)~ EXIT
IF ~~ THEN REPLY @115088 GOTO B_Wand100_1
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand200
SAY @115083
IF ~Global("B_HW","GLOBAL",1)~ THEN REPLY @115048 GOTO B_Wand201
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand200_1
SAY @115083
IF ~Global("B_HW","GLOBAL",1)~ THEN REPLY @115048 GOTO B_Wand201_1
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand201         //fear
SAY @115084
IF ~HaveSpell(WIZARD_HORROR)~ THEN REPLY @115052 DO ~TakePartyGold(1500) DestroyGold(1500) RemoveSpell(WIZARD_HORROR) GiveItemCreate("B_WND03",Myself,24,1,1)~ EXIT
IF ~PartyHasItemIdentified("SCRL89")~ THEN REPLY @115051 DO ~TakePartyGold(1500) DestroyGold(1500) TakePartyItemNum("SCRL89",1) DestroyItem("SCRL89") GiveItemCreate("B_WND03",Myself,24,1,1)~ EXIT
IF ~~ THEN REPLY @115090 GOTO B_Wand200
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand201_1         //fear
SAY @115084
IF ~HaveSpell(WIZARD_HORROR)~ THEN REPLY @115052 DO ~TakePartyGold(750) DestroyGold(750) RemoveSpell(WIZARD_HORROR) GiveItemCreate("B_WND03",Myself,24,1,1)~ EXIT
IF ~PartyHasItemIdentified("SCRL89")~ THEN REPLY @115051 DO ~TakePartyGold(750) DestroyGold(750) TakePartyItemNum("SCRL89",1) DestroyItem("SCRL89") GiveItemCreate("B_WND03",Myself,24,1,1)~ EXIT
IF ~~ THEN REPLY @115090 GOTO B_Wand200_1
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand300
SAY @115083
IF ~Global("B_FW","GLOBAL",1)~ THEN REPLY @115056 GOTO B_Wand301   //Wand of Fire
IF ~Global("B_LW","GLOBAL",1)~ THEN REPLY @115058 GOTO B_Wand302   //Wand of Lightning
IF ~Global("B_MSW","GLOBAL",1)~ THEN REPLY @115055 GOTO B_Wand303   //Wand of Monster Summoning
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand300_1
SAY @115083
IF ~Global("B_FW","GLOBAL",1)~ THEN REPLY @115056 GOTO B_Wand301_1   //Wand of Fire
IF ~Global("B_LW","GLOBAL",1)~ THEN REPLY @115058 GOTO B_Wand302_1   //Wand of Lightning
IF ~Global("B_MSW","GLOBAL",1)~ THEN REPLY @115055 GOTO B_Wand303_1   //Wand of Monster Summoning
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand301    //Wand of Fire
SAY @115084
IF ~HaveSpell(WIZARD_FIREBALL)~ THEN REPLY @115091 DO ~TakePartyGold(5000) DestroyGold(5000) RemoveSpell(WIZARD_FIREBALL) GiveItemCreate("B_WND05",Myself,15,15,1) ~ EXIT
IF ~PartyHasItemIdentified("SCRL5Z")~ THEN REPLY @115101 DO ~TakePartyGold(5000) DestroyGold(5000) TakePartyItemNum("SCRL5Z",1) DestroyItem("SCRL5Z") GiveItemCreate("B_WND03",Myself,15,15,1)~ EXIT
IF ~PartyHasItemIdentified("SCRL1G")~ THEN REPLY @115101 DO ~TakePartyGold(5000) DestroyGold(5000) TakePartyItemNum("SCRL1G",1) DestroyItem("SCRL1G") GiveItemCreate("B_WND03",Myself,15,15,1)~ EXIT
IF ~~ THEN REPLY @115092 GOTO B_Wand300
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand301_1    //Wand of Fire
SAY @115084
IF ~HaveSpell(WIZARD_FIREBALL)~ THEN REPLY @115091 DO ~TakePartyGold(2500) DestroyGold(2500) RemoveSpell(WIZARD_FIREBALL) GiveItemCreate("B_WND05",Myself,15,15,1) ~ EXIT
IF ~PartyHasItemIdentified("SCRL5Z")~ THEN REPLY @115101 DO ~TakePartyGold(2500) DestroyGold(2500) TakePartyItemNum("SCRL5Z",1) DestroyItem("SCRL5Z") GiveItemCreate("B_WND03",Myself,15,15,1)~ EXIT
IF ~PartyHasItemIdentified("SCRL1G")~ THEN REPLY @115101 DO ~TakePartyGold(2500) DestroyGold(2500) TakePartyItemNum("SCRL1G",1) DestroyItem("SCRL1G") GiveItemCreate("B_WND03",Myself,15,15,1)~ EXIT
IF ~~ THEN REPLY @115092 GOTO B_Wand300_1
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand302    //Wand of Lightning
SAY @115084
IF ~HaveSpell(WIZARD_LIGHTNING_BOLT)~ THEN REPLY @115115 DO ~TakePartyGold(5000) DestroyGold(5000) RemoveSpell(WIZARD_LIGHTNING_BOLT) GiveItemCreate("B_WND07",Myself,15,1,1) ~ EXIT
IF ~PartyHasItemIdentified("SCRL1K")~ THEN REPLY @115114 DO ~TakePartyGold(5000) DestroyGold(5000) TakePartyItemNum("SCRL1K",1) DestroyItem("SCRL1K") GiveItemCreate("B_WND07",Myself,15,1,1)~ EXIT
IF ~~ THEN REPLY @115092 GOTO B_Wand300
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand302_1    //Wand of Lightning
SAY @115084
IF ~HaveSpell(WIZARD_LIGHTNING_BOLT)~ THEN REPLY @115115 DO ~TakePartyGold(2500) DestroyGold(2500) RemoveSpell(WIZARD_LIGHTNING_BOLT) GiveItemCreate("B_WND07",Myself,15,1,1) ~ EXIT
IF ~PartyHasItemIdentified("SCRL1K")~ THEN REPLY @115114 DO ~TakePartyGold(2500) DestroyGold(2500) TakePartyItemNum("SCRL1K",1) DestroyItem("SCRL1K") GiveItemCreate("B_WND07",Myself,15,1,1)~ EXIT
IF ~~ THEN REPLY @115092 GOTO B_Wand300_1
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand303    //Wand of Monster Summoning
SAY @115084
IF ~HaveSpell(WIZARD_MONSTER_SUMMONING_1)~ THEN REPLY @115116 DO ~TakePartyGold(5000) DestroyGold(5000) RemoveSpell(WIZARD_MONSTER_SUMMONING_1) GiveItemCreate("B_WND04",Myself,15,1,1) ~ EXIT
IF ~PartyHasItemIdentified("SCRL1L")~ THEN REPLY @115117 DO ~TakePartyGold(5000) DestroyGold(5000) TakePartyItemNum("SCRL1L",1) DestroyItem("SCRL1L") GiveItemCreate("B_WND04",Myself,15,1,1)~ EXIT
IF ~~ THEN REPLY @115092 GOTO B_Wand300
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand303_1    //Wand of Monster Summoning
SAY @115084
IF ~HaveSpell(WIZARD_MONSTER_SUMMONING_1)~ THEN REPLY @115116 DO ~TakePartyGold(2500) DestroyGold(2500) RemoveSpell(WIZARD_MONSTER_SUMMONING_1) GiveItemCreate("B_WND04",Myself,15,1,1) ~ EXIT
IF ~PartyHasItemIdentified("SCRL1L")~ THEN REPLY @115117 DO ~TakePartyGold(2500) DestroyGold(2500) TakePartyItemNum("SCRL1L",1) DestroyItem("SCRL1L") GiveItemCreate("B_WND04",Myself,15,1,1)~ EXIT
IF ~~ THEN REPLY @115092 GOTO B_Wand300_1
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand400
SAY @115083
IF ~Global("B_ISW","GLOBAL",1)~ THEN REPLY @115121 GOTO B_Wand401   //Wand of Freezing Death
IF ~Global("B_SAW","GLOBAL",1)~ THEN REPLY @115125 GOTO B_Wand402   //Wand of Armory
IF ~Global("B_POW","GLOBAL",1)~ THEN REPLY @115136 GOTO B_Wand403   //Wand of Polymorphing
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand400_1
SAY @115083
IF ~Global("B_ISW","GLOBAL",1)~ THEN REPLY @115121 GOTO B_Wand401_1   //Wand of Freezing Death
IF ~Global("B_SAW","GLOBAL",1)~ THEN REPLY @115125 GOTO B_Wand402_1   //Wand of Armory
IF ~Global("B_POW","GLOBAL",1)~ THEN REPLY @115136 GOTO B_Wand403_1   //Wand of Polymorphing
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand401    //Wand of Freezing Death
SAY @115084
IF ~HaveSpell(WIZARD_ICE_STORM)~ THEN REPLY @115122 DO ~TakePartyGold(10000) DestroyGold(10000) RemoveSpell(WIZARD_ICE_STORM) GiveItemCreate("B_WND11",Myself,10,10,10) ~ EXIT
IF ~PartyHasItemIdentified("SCRL1X")~ THEN REPLY @115123 DO ~TakePartyGold(10000) DestroyGold(10000) TakePartyItemNum("SCRL1X",1) DestroyItem("SCRL1X") GiveItemCreate("B_WND11",Myself,10,10,10)~ EXIT
IF ~~ THEN REPLY @115124 GOTO B_Wand400
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand401_1    //Wand of Freezing Death
SAY @115084
IF ~HaveSpell(WIZARD_ICE_STORM)~ THEN REPLY @115122 DO ~TakePartyGold(5000) DestroyGold(5000) RemoveSpell(WIZARD_ICE_STORM) GiveItemCreate("B_WND11",Myself,10,10,10) ~ EXIT
IF ~PartyHasItemIdentified("SCRL1X")~ THEN REPLY @115123 DO ~TakePartyGold(5000) DestroyGold(5000) TakePartyItemNum("SCRL1X",1) DestroyItem("SCRL1X") GiveItemCreate("B_WND11",Myself,10,10,10)~ EXIT
IF ~~ THEN REPLY @115124 GOTO B_Wand400_1
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand402    //Wand of Armory
SAY @115084
IF ~HaveSpell(WIZARD_SPIRIT_ARMOR)~ THEN REPLY @115127 DO ~TakePartyGold(10000) DestroyGold(10000) RemoveSpell(WIZARD_SPIRIT_ARMOR) GiveItemCreate("B_WND10",Myself,10,10,1) ~ EXIT
IF ~PartyHasItemIdentified("SCRL5K")~ THEN REPLY @115128 DO ~TakePartyGold(10000) DestroyGold(10000) TakePartyItemNum("SCRL5K",1) DestroyItem("SCRL5K") GiveItemCreate("B_WND10",Myself,10,10,1)~ EXIT
IF ~~ THEN REPLY @115124 GOTO B_Wand400
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand402_1    //Wand of Armory
SAY @115084
IF ~HaveSpell(WIZARD_SPIRIT_ARMOR)~ THEN REPLY @115127 DO ~TakePartyGold(5000) DestroyGold(5000) RemoveSpell(WIZARD_SPIRIT_ARMOR) GiveItemCreate("B_WND10",Myself,10,10,1) ~ EXIT
IF ~PartyHasItemIdentified("SCRL5K")~ THEN REPLY @115128 DO ~TakePartyGold(5000) DestroyGold(5000) TakePartyItemNum("SCRL5K",1) DestroyItem("SCRL5K") GiveItemCreate("B_WND10",Myself,10,10,1)~ EXIT
IF ~~ THEN REPLY @115124 GOTO B_Wand400_1
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand403    //Wand of Polymorphing
SAY @115084
IF ~HaveSpell(WIZARD_POLYMORPH_OTHER)~ THEN REPLY @115142 DO ~TakePartyGold(10000) DestroyGold(10000) RemoveSpell(WIZARD_POLYMORPH_OTHER) GiveItemCreate("B_WND14",Myself,10,1,1) ~ EXIT
IF ~PartyHasItemIdentified("SCRL5L")~ THEN REPLY @115143 DO ~TakePartyGold(10000) DestroyGold(10000) TakePartyItemNum("SCRL5L",1) DestroyItem("SCRL5L") GiveItemCreate("B_WND14",Myself,10,1,1)~ EXIT
IF ~~ THEN REPLY @115124 GOTO B_Wand400
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand403_1    //Wand of Polymorphing
SAY @115084
IF ~HaveSpell(WIZARD_POLYMORPH_OTHER)~ THEN REPLY @115142 DO ~TakePartyGold(5000) DestroyGold(5000) RemoveSpell(WIZARD_POLYMORPH_OTHER) GiveItemCreate("B_WND14",Myself,10,1,1) ~ EXIT
IF ~PartyHasItemIdentified("SCRL5L")~ THEN REPLY @115143 DO ~TakePartyGold(5000) DestroyGold(5000) TakePartyItemNum("SCRL5L",1) DestroyItem("SCRL5L") GiveItemCreate("B_WND14",Myself,10,1,1)~ EXIT
IF ~~ THEN REPLY @115124 GOTO B_Wand400_1
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand500
SAY @115083
IF ~Global("B_HMW","GLOBAL",1)~ THEN REPLY @115057 GOTO B_Wand501   //Wand of Paralysis
IF ~Global("B_FRW","GLOBAL",1)~ THEN REPLY @115132 GOTO B_Wand502   //Wand of FRost
IF ~Global("B_CCW","GLOBAL",1)~ THEN REPLY @115132 GOTO B_Wand503   //Wand of Cloudkill
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand500_1
SAY @115083
IF ~Global("B_HMW","GLOBAL",1)~ THEN REPLY @115057 GOTO B_Wand501_1   //Wand of Paralysis
IF ~Global("B_FRW","GLOBAL",1)~ THEN REPLY @115132 GOTO B_Wand502_1   //Wand of FRost
IF ~Global("B_CCW","GLOBAL",1)~ THEN REPLY @115132 GOTO B_Wand503_1   //Wand of Cloudkill
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand501    //Wand of Paralysis
SAY @115084
IF ~HaveSpell(WIZARD_HOLD_MONSTER)~ THEN REPLY @115129 DO ~TakePartyGold(15000) DestroyGold(15000) RemoveSpell(WIZARD_HOLD_MONSTER) GiveItemCreate("B_WND06",Myself,8,1,1) ~ EXIT
IF ~PartyHasItemIdentified("SCHMON")~ THEN REPLY @115130 DO ~TakePartyGold(15000) DestroyGold(15000) TakePartyItemNum("SCHMON",1) DestroyItem("SCHMON") GiveItemCreate("B_WND06",Myself,8,1,1)~ EXIT
IF ~PartyHasItemIdentified("SCRL5O")~ THEN REPLY @115130 DO ~TakePartyGold(15000) DestroyGold(15000) TakePartyItemNum("SCRL5O",1) DestroyItem("SCRL5O") GiveItemCreate("B_WND06",Myself,8,1,1)~ EXIT
IF ~~ THEN REPLY @115131 GOTO B_Wand500
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand501_1    //Wand of Paralysis
SAY @115084
IF ~HaveSpell(WIZARD_HOLD_MONSTER)~ THEN REPLY @115129 DO ~TakePartyGold(7500) DestroyGold(7500) RemoveSpell(WIZARD_HOLD_MONSTER) GiveItemCreate("B_WND06",Myself,8,1,1) ~ EXIT
IF ~PartyHasItemIdentified("SCHMON")~ THEN REPLY @115130 DO ~TakePartyGold(7500) DestroyGold(7500) TakePartyItemNum("SCHMON",1) DestroyItem("SCHMON") GiveItemCreate("B_WND06",Myself,8,1,1)~ EXIT
IF ~PartyHasItemIdentified("SCRL5O")~ THEN REPLY @115130 DO ~TakePartyGold(7500) DestroyGold(7500) TakePartyItemNum("SCRL5O",1) DestroyItem("SCRL5O") GiveItemCreate("B_WND06",Myself,8,1,1)~ EXIT
IF ~~ THEN REPLY @115131 GOTO B_Wand500_1
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand502   //Wand of Frost
SAY @115084
IF ~HaveSpell(WIZARD_CONE_OF_COLD)~ THEN REPLY @115138 DO ~TakePartyGold(15000) DestroyGold(15000) RemoveSpell(WIZARD_CONE_OF_COLD) GiveItemCreate("B_WND08",Myself,8,1,1) ~ EXIT
IF ~PartyHasItemIdentified("SCRL2F")~ THEN REPLY @115139 DO ~TakePartyGold(15000) DestroyGold(15000) TakePartyItemNum("SCRL2F",1) DestroyItem("SCRL2F") GiveItemCreate("B_WND08",Myself,8,1,1)~ EXIT
IF ~~ THEN REPLY @115131 GOTO B_Wand500
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand502_1   //Wand of Frost
SAY @115084
IF ~HaveSpell(WIZARD_CONE_OF_COLD)~ THEN REPLY @115138 DO ~TakePartyGold(7500) DestroyGold(7500) RemoveSpell(WIZARD_CONE_OF_COLD) GiveItemCreate("B_WND08",Myself,8,1,1) ~ EXIT
IF ~PartyHasItemIdentified("SCRL2F")~ THEN REPLY @115139 DO ~TakePartyGold(7500) DestroyGold(7500) TakePartyItemNum("SCRL2F",1) DestroyItem("SCRL2F") GiveItemCreate("B_WND08",Myself,8,1,1)~ EXIT
IF ~~ THEN REPLY @115131 GOTO B_Wand500_1
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand503   //Wand of Cloudkill
SAY @115084
IF ~HaveSpell(WIZARD_CLOUDKILL)~ THEN REPLY @115156 DO ~TakePartyGold(15000) DestroyGold(15000) RemoveSpell(WIZARD_CLOUDKILL) GiveItemCreate("B_WND19",Myself,8,1,1) ~ EXIT
IF ~PartyHasItemIdentified("SCRL2E")~ THEN REPLY @115157 DO ~TakePartyGold(15000) DestroyGold(15000) TakePartyItemNum("SCRL2E",1) DestroyItem("SCRL2E") GiveItemCreate("B_WND19",Myself,8,1,1)~ EXIT
IF ~~ THEN REPLY @115131 GOTO B_Wand500
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand503_1   //Wand of Cloudkill
SAY @115084
IF ~HaveSpell(WIZARD_CLOUDKILL)~ THEN REPLY @115156 DO ~TakePartyGold(7500) DestroyGold(7500) RemoveSpell(WIZARD_CLOUDKILL) GiveItemCreate("B_WND19",Myself,8,1,1) ~ EXIT
IF ~PartyHasItemIdentified("SCRL2E")~ THEN REPLY @115157 DO ~TakePartyGold(7500) DestroyGold(7500) TakePartyItemNum("SCRL2E",1) DestroyItem("SCRL2E") GiveItemCreate("B_WND19",Myself,8,1,1)~ EXIT
IF ~~ THEN REPLY @115131 GOTO B_Wand500_1
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand600
SAY @115083
IF ~Global("B_PMW","GLOBAL",1)~ THEN REPLY @115134 GOTO B_Wand601   //Wand of Spell Striking
IF ~Global("B_PWSW","GLOBAL",1)~ THEN REPLY @115144 GOTO B_Wand602   //Wand of Cursing
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand600_1
SAY @115083
IF ~Global("B_PMW","GLOBAL",1)~ THEN REPLY @115134 GOTO B_Wand601_1   //Wand of Spell Striking
IF ~Global("B_PWSW","GLOBAL",1)~ THEN REPLY @115144 GOTO B_Wand602_1   //Wand of Cursing
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand601   //Wand of Spell Strike
SAY @115084
IF ~HaveSpell(WIZARD_PIERCE_MAGIC)~ THEN REPLY @115140 DO ~TakePartyGold(25000) DestroyGold(25000) RemoveSpell(WIZARD_PIERCE_MAGIC) GiveItemCreate("B_WND09",Myself,7,7,1) ~ EXIT
IF ~PartyHasItemIdentified("SCRL7L")~ THEN REPLY @115141 DO ~TakePartyGold(25000) DestroyGold(25000) TakePartyItemNum("SCRL7L",1) DestroyItem("SCRL7L") GiveItemCreate("B_WND09",Myself,7,7,1)~ EXIT
IF ~~ THEN REPLY @115135 GOTO B_Wand600
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand601_1   //Wand of Spell Strike
SAY @115084
IF ~HaveSpell(WIZARD_PIERCE_MAGIC)~ THEN REPLY @115140 DO ~TakePartyGold(12500) DestroyGold(12500) RemoveSpell(WIZARD_PIERCE_MAGIC) GiveItemCreate("B_WND09",Myself,7,7,1) ~ EXIT
IF ~PartyHasItemIdentified("SCRL7L")~ THEN REPLY @115141 DO ~TakePartyGold(12500) DestroyGold(12500) TakePartyItemNum("SCRL7L",1) DestroyItem("SCRL7L") GiveItemCreate("B_WND09",Myself,7,7,1)~ EXIT
IF ~~ THEN REPLY @115135 GOTO B_Wand600_1
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand602   //Wand of Cursing
SAY @115084
IF ~HaveSpell(WIZARD_POWER_WORD_SILENCE)~ THEN REPLY @115140 DO ~TakePartyGold(25000) DestroyGold(25000) RemoveSpell(WIZARD_POWER_WORD_SILENCE) GiveItemCreate("B_WND15",Myself,7,1,1) ~ EXIT
IF ~PartyHasItemIdentified("SCPWS")~ THEN REPLY @115141 DO ~TakePartyGold(25000) DestroyGold(25000) TakePartyItemNum("SCPWS",1) DestroyItem("SCPWS") GiveItemCreate("B_WND15",Myself,7,1,1)~ EXIT
IF ~~ THEN REPLY @115135 GOTO B_Wand600
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand602_1   //Wand of Cursing
SAY @115084
IF ~HaveSpell(WIZARD_POWER_WORD_SILENCE)~ THEN REPLY @115140 DO ~TakePartyGold(12500) DestroyGold(12500) RemoveSpell(WIZARD_POWER_WORD_SILENCE) GiveItemCreate("B_WND15",Myself,7,1,1) ~ EXIT
IF ~PartyHasItemIdentified("SCPWS")~ THEN REPLY @115141 DO ~TakePartyGold(12500) DestroyGold(12500) TakePartyItemNum("SCPWS",1) DestroyItem("SCPWS") GiveItemCreate("B_WND15",Myself,7,1,1)~ EXIT
IF ~~ THEN REPLY @115135 GOTO B_Wand600_1
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END


IF ~~ THEN BEGIN B_Wand700
SAY @115083
IF ~Global("B_ASW","GLOBAL",1)~ THEN REPLY @115146 GOTO B_Wand701   //Wand of Corrosion
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand700_1
SAY @115083
IF ~Global("B_ASW","GLOBAL",1)~ THEN REPLY @115146 GOTO B_Wand701_1   //Wand of Corrosion
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand701   //Wand of Corrosion
SAY @115084
IF ~HaveSpell(WIZARD_ACID_STORM)~ THEN REPLY @115140 DO ~TakePartyGold(50000) DestroyGold(50000) RemoveSpell(WIZARD_ACID_STORM) GiveItemCreate("B_WND17",Myself,6,6,1) ~ EXIT
IF ~PartyHasItemIdentified("SCACID")~ THEN REPLY @115141 DO ~TakePartyGold(50000) DestroyGold(50000) TakePartyItemNum("SCACID",1) DestroyItem("SCACID") GiveItemCreate("B_WND17",Myself,6,6,1)~ EXIT
IF ~PartyHasItemIdentified("SCRL7P")~ THEN REPLY @115141 DO ~TakePartyGold(50000) DestroyGold(50000) TakePartyItemNum("SCRL7P",1) DestroyItem("SCRL7P") GiveItemCreate("B_WND17",Myself,6,6,1)~ EXIT
IF ~~ THEN REPLY @115153 GOTO B_Wand700
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END

IF ~~ THEN BEGIN B_Wand701_1   //Wand of Corrosion
SAY @115084
IF ~HaveSpell(WIZARD_ACID_STORM)~ THEN REPLY @115140 DO ~TakePartyGold(25000) DestroyGold(25000) RemoveSpell(WIZARD_ACID_STORM) GiveItemCreate("B_WND17",Myself,6,6,1) ~ EXIT
IF ~PartyHasItemIdentified("SCACID")~ THEN REPLY @115141 DO ~TakePartyGold(25000) DestroyGold(25000) TakePartyItemNum("SCACID",1) DestroyItem("SCACID") GiveItemCreate("B_WND17",Myself,6,6,1)~ EXIT
IF ~PartyHasItemIdentified("SCRL7P")~ THEN REPLY @115141 DO ~TakePartyGold(25000) DestroyGold(25000) TakePartyItemNum("SCRL7P",1) DestroyItem("SCRL7P") GiveItemCreate("B_WND17",Myself,6,6,1)~ EXIT
IF ~~ THEN REPLY @115153 GOTO B_Wand700_1
IF ~~ THEN REPLY @115087 GOTO B_Wand005
IF ~~ THEN REPLY @115015 EXIT
END
