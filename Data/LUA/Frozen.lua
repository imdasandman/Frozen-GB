local F2tY=0;local rb21L2=0;local o_v255={}local wUVm=nil
local VQ={["Human"]=0.01,["Dwarf"]=0.02,["NightElf"]=0.03,["Gnome"]=0.04,["Draenei"]=0.05,["Pandaren"]=0.06,["Orc"]=0.07,["Scourge"]=0.08,["Tauren"]=0.09,["Troll"]=0.10,["BloodElf"]=0.11,["Goblin"]=0.12,["Worgen"]=0.13}
local oTYNsnP={[0]=0.00,[250]=0.01,[251]=0.02,[252]=0.03,[577]=0.04,[581]=0.05,[102]=0.06,[103]=0.07,[104]=0.08,[105]=0.09,[253]=0.10,[254]=0.11,[255]=0.12,[62]=0.13,[63]=0.14,[64]=0.15,[268]=0.16,[269]=0.17,[270]=0.18,[65]=0.19,[66]=0.20,[70]=0.21,[256]=0.22,[257]=0.23,[258]=0.24,[259]=0.25,[260]=0.26,[261]=0.27,[262]=0.28,[263]=0.29,[264]=0.30,[265]=0.31,[71]=0.32,[72]=0.33,[73]=0.34,[266]=0.35,[267]=0.36}
local I={[0]="Death Strike",[250]="Death Strike",[251]="Frost Strike",[252]="Festering Strike",[577]="Chaos Strike",[581]="Shear",[102]="Solar Wrath",[103]="Shred",[104]="Mangle",[105]="Solar Wrath",[253]="Counter Shot",[254]="Counter Shot",[255]="Mongoose Bite",[62]="Arcane Blast",[63]="Fireball",[64]="Frostbolt",[268]="Blackout Strike",[269]="Rising Sun Kick",[270]="Rising Sun Kick",[65]="Crusader Strike",[66]="Shield of the Righteous",[70]="Crusader Strike",[256]="Penance",[257]="Smite",[258]="Mind Blast",[259]="Mutilate",[260]="Saber Slash",[261]="Backstab",[262]="Lightning Bolt",[263]="Rockbiter",[264]="Lightning Bolt",[265]="Agony",[71]="Mortal Strike",[72]="Bloodthirst",[73]="Devastate",[266]="Doom",[267]="Incinerate"}local LmR5gwW;local DfbW={}local sh={}local rrFLbCtj={}local YcPea0vg={}local usLpLoaH={}local e7dv={}local inx0={}local A5k5yt={}
local B7SHDx7h={}local EEpoeR=0;local _k=GetSpecialization()local Ef=0;local KfM={}local Vd={}local Oynw={}local QBO={}
local s4ggux={}local hrVI4meU={}local xEq6TAF={}local UIjls={}local jdLnB0vD={}local PSlD=nil;local nN=nil;local J={}local A=nil;local g3Qeqnr=nil
local qHpY64={}local z=nil;local qccJ5b=nil;local ARuba=nil;local Wo53nZ=nil;local XRfQ=nil;local gFPRdEC={}local lw9gLt3={}local TI5={}
local JmE={}local s4={}local FFG={}local a31jEAS={}local LS4h={}local eux092_P=0;local ZA9=0;local hWgmxm=0;local UBg54E=0;local gQGq=0
local OyHc5FEv=nil;local Dn1Xi=1;local _gGmBBE={}local rIX4={}local AI14eFhp={}local iW2O,Gdp,nbqmx=UnitClass("player")
local IWQcC=0;local cvRh=0;local W9yaJm={}local oJ1ec=LibStub("LibRangeCheck-2.0")
PlayerIsInCombat=false;local LMMNWLk=GetCurrentResolution()
local x6Ni=select(LMMNWLk,GetScreenResolutions())local Q2waXkyp,EG72=strsplit("x",x6Ni,2)
local mlTMZ=GetScreenWidth()/Q2waXkyp;parent=CreateFrame("frame","Recount",UIParent)
parent:SetSize(40,25)parent:SetPoint("TOPLEFT",0,0)
parent:SetScale(mlTMZ)parent:RegisterEvent("ADDON_LOADED")
parent:RegisterEvent("NAME_PLATE_UNIT_ADDED")parent:RegisterEvent("PLAYER_ENTERING_WORLD")
parent:RegisterEvent("PLAYER_REGEN_DISABLED")parent:RegisterEvent("PLAYER_REGEN_ENABLED")
parent:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")parent.t=parent:CreateTexture()
parent.t:SetColorTexture(0,0,0,1)parent.t:SetAllPoints(parent)
parent:SetFrameStrata("TOOLTIP")local function q(K,uK)
return(("%%.%df"):format(uK)):format(K)end
local function xb6(s0FU)if
UnitIsDead(s0FU)or UnitIsGhost(s0FU)then return 0 end;local wQl=UnitHealth(s0FU)
local g=UnitHealthMax(s0FU)local m4u=ceil((wQl/g)*100)local StZ="0.0"..m4u;if(m4u>=10)then
StZ="0."..m4u end;val=tonumber(StZ)if m4u==100 then val=1 end;return val end
local function yK()
Ef=_k and
select(1,GetSpecializationInfo(GetSpecialization()))or 0;rb21L2=0;local C1NqzxY=I[Ef]
for T1gVrYq,P5G in pairs(o_v255)do
if P5G~=nil then
if
(









Ef==581 or Ef==70 or Ef==261 or Ef==269 or Ef==263 or Ef==71 or Ef==72 or Ef==73 or Ef==103 or Ef==104 or Ef==66 or Ef==259 or Ef==250 or Ef==251 or Ef==252 or Ef==255 or Ef==268 or Ef==270)then local JC,PDA=oJ1ec:GetRange(T1gVrYq)if PDA==nil then PDA=100 end;local K=8
if(
Ef==261 or Ef==250 or Ef==259)then K=10 end
if UnitCanAttack("player",T1gVrYq)and PDA<=K and UnitIsDead(T1gVrYq)==
false then rb21L2=rb21L2+1 end else
if

UnitCanAttack("player",T1gVrYq)and
LibStub("SpellRange-1.0").IsSpellInRange(C1NqzxY,T1gVrYq)==1 and UnitIsDead(T1gVrYq)==false then rb21L2=rb21L2+1 end end end end;rb21L2=rb21L2/100
wUVm.t:SetColorTexture(1,rb21L2,F2tY,Dn1Xi)end
local function rHLz2GD(qne5Stra)local FKLmmhnQ=false;for F82,wJ6tY_ in pairs(o_v255)do o_v255[F82]=nil end
for TNg=1,30 do
if UnitGUID(
"nameplate"..TNg)~=nil and not
UnitIsPlayer("nameplate"..TNg)then for wO9T,QMcSUqdi in pairs(o_v255)do
if QMcSUqdi==UnitGUID(
"nameplate"..TNg)then FKLmmhnQ=true end end;if FKLmmhnQ==false then
o_v255["nameplate"..
TNg]=UnitGUID("nameplate"..TNg)FKLmmhnQ=false end end;FKLmmhnQ=false end end
local function BlW0RhJA(sKy2P9i,S,...)if S=="PLAYER_REGEN_ENABLED"then PlayerIsInCombat=false
unitCombatFrame.t:SetColorTexture(1,1,1,Dn1Xi)end;if
S=="PLAYER_REGEN_DISABLED"then PlayerIsInCombat=true
unitCombatFrame.t:SetColorTexture(1,0,0,Dn1Xi)end end
local function Uy(AD)under=math.floor(AD)upper=math.floor(AD)+1;underV=-
(under-AD)upperV=upper-AD
if(upperV>underV)then return under else return upper end end
local function n()_k=GetSpecialization()Ef=_k and
select(1,GetSpecializationInfo(_k))or 0
local AkxLdb66={}AllSeven=false
for aUR=1,GetMaxTalentTier()do talenetSelected=false
for c4=1,3 do
local ZNXs3Bwd=select(4,GetTalentInfo(aUR,c4,1))
if(ZNXs3Bwd==true)then AkxLdb66[aUR]=c4/100;talenetSelected=true end
if talenetSelected==false and c4 ==3 then AkxLdb66[aUR]=0 end end;if aUR==7 then AllSeven=true end end;if not AllSeven then
for Ginn=GetMaxTalentTier(),7 do AkxLdb66[Ginn]=0 end end
rIX4[1].t:SetColorTexture(AkxLdb66[1],AkxLdb66[2],AkxLdb66[3],Dn1Xi)
rIX4[2].t:SetColorTexture(AkxLdb66[4],AkxLdb66[5],AkxLdb66[6],Dn1Xi)
rIX4[3].t:SetColorTexture(AkxLdb66[7],VQ[select(2,UnitRace("player"))],0,Dn1Xi)
rIX4[4].t:SetColorTexture(oTYNsnP[Ef],0,0,Dn1Xi)end
local function TKu()if not UnitExists("target")then return end
for h_pK,L in pairs(PlayerBuffs)do
local vBKFXR3=GetSpellInfo(L)
local FP3j,h_pK,h_pK,h_pK,h_pK,h_pK,fe,h_pK,h_pK,h_pK,ggnA=UnitBuff("target",vBKFXR3,nil,"PLAYER")
if(FP3j==vBKFXR3 and fe~=0)then local KaD2ExEO=fe-GetTime()-
select(4,GetNetStats())/1000
KaD2ExEO=q(KaD2ExEO,1)local TpiFT,JCH=strsplit(".",KaD2ExEO)
local sJ05I=tonumber(TpiFT)/100;local HrLCim=tonumber(JCH)/100;if(sJ05I>1)then sJ05I=1 end
FFG[L].t:SetColorTexture(1,sJ05I,HrLCim,Dn1Xi)FFG[L].t:SetAllPoints(false)else
FFG[L].t:SetColorTexture(0,1,1,Dn1Xi)FFG[L].t:SetAllPoints(false)end end end
local function M6kL()local w=0
if nbqmx==2 then w=UnitPower("player",SPELL_POWER_HOLY_POWER)end
if nbqmx==9 then w=UnitPower("player",SPELL_POWER_SOUL_SHARDS)end;if nbqmx==8 then
w=UnitPower("player",SPELL_POWER_ARCANE_CHARGES)end;if nbqmx==4 then
w=UnitPower("player",SPELL_POWER_COMBO_POINTS)end;if nbqmx==11 then
w=UnitPower("player",SPELL_POWER_COMBO_POINTS)end
if nbqmx==6 then
local sUu7z=UnitPower("player",SPELL_POWER_RUNES)local M5oB=6;local xIyIKo=1
for xIyIKo=1,sUu7z do
local f2x=select(3,GetRuneCooldown(xIyIKo))if not f2x then M5oB=M5oB-1 end end;w=M5oB end
if nbqmx==10 then w=UnitPower("player",SPELL_POWER_CHI)end
if w~=gQGq then
unitPowerFrame.t:SetColorTexture(0,w/100,0,Dn1Xi)unitPowerFrame.t:SetAllPoints(false)gQGq=w end end;local M7o_=nil
local function dk2X7J7(Nwl,Xpt_SQ)local Y=UnitExists("pet")
if
(Y==false or UnitIsDead("pet"))then
if(Y~=M7o_)then XRfQ.t:SetColorTexture(1,1,1,Dn1Xi)M7o_=Y end else if Y~=M7o_ and not UnitIsDead("player")then
XRfQ.t:SetColorTexture(1,0,0,Dn1Xi)M7o_=Y end end end;function IsHealer()
if
Ef==270 or Ef==65 or Ef==257 or Ef==256 or Ef==264 or Ef==105 then return true else return false end end
function IsMelee()
if









Ef==250 or Ef==
251 or Ef==252 or Ef==577 or Ef==581 or Ef==103 or Ef==104 or Ef==255 or Ef==268 or Ef==269 or Ef==66 or Ef==70 or
Ef==259 or
Ef==260 or Ef==261 or Ef==263 or Ef==71 or Ef==72 or Ef==73 then return true else return false end end
local function jv(SMa,Bo)
for zF6ZPjQ,nNQG3 in pairs(SpellCooldowns)do local yW,efGM8UMy,zF6ZPjQ=GetSpellCooldown(nNQG3)
local KhH=(
yW+efGM8UMy-GetTime()-select(4,GetNetStats())/1000)if KhH<0 then KhH=0 end;local H4tXd=GetSpellInfo(nNQG3)
local Nq6If,II=IsUsableSpell(H4tXd)
if KhH~=0 then KhH=q(KhH,1)local Y_tefq,i=strsplit(".",KhH)
local a3u=tonumber(Y_tefq)/100;local nzhB=tonumber(i)/100
YcPea0vg[nNQG3].t:SetColorTexture(0,a3u,nzhB,Dn1Xi)
YcPea0vg[nNQG3].t:SetAllPoints(false)else if(II and IsHealer())then
YcPea0vg[nNQG3].t:SetColorTexture(0,1,1,Dn1Xi)else
YcPea0vg[nNQG3].t:SetColorTexture(1,1,1,Dn1Xi)end
YcPea0vg[nNQG3].t:SetAllPoints(false)end end end
local function MW(sTxVGmb,GSIcq)
for Go,DGf in pairs(InventoryItems)do local kgRX7X,JB,Go=GetItemCooldown(DGf)
local GGJhclKa=kgRX7X+JB-GetTime()local KWahIz=0;if GGJhclKa<0 then GGJhclKa=0 end;local X2kyW=0;if IsEquippedItem(DGf)then X2kyW=1 else
X2kyW=0 end;local pVlvW=GetItemCount(DGf)/100;if
pVlvW>=100 then KWahIz=1 end;if GGJhclKa==0 or KWahIz==0 then
a31jEAS[DGf].t:SetColorTexture(0,X2kyW,KWahIz,Dn1Xi)else
a31jEAS[DGf].t:SetColorTexture(1,X2kyW,KWahIz,Dn1Xi)end end end
local function E2OQ(QcKn_,jiM)
for YUdA,lx3cpJ in pairs(SpellCooldowns)do charges,YUdA,YUdA,YUdA=GetSpellCharges(lx3cpJ)
if
(
lx3cpJ==205406 or lx3cpJ==115072 or lx3cpJ==101546)then charges=GetSpellCount(lx3cpJ)end
if(lw9gLt3[lx3cpJ]~=charges)then usLpLoaH[lx3cpJ].t:SetColorTexture(0,
charges/100,0,Dn1Xi)
usLpLoaH[lx3cpJ].t:SetAllPoints(false)lw9gLt3[lx3cpJ]=charges end end end
local function SnbfLb6(Yx9,Mn)
for ut0,ZFhlP6eg in pairs(PlayerBuffs)do local ExUgDG=GetSpellInfo(ZFhlP6eg)if(ExUgDG==nil)then
print(
'Unable to find aura (Buff) with Id: '..ZFhlP6eg)return end
local jc4o42jz,ut0,ut0,jc,ut0,Ojz_,x,ut0,ut0,ut0,Xtecl=UnitBuff("player",ExUgDG)
if(ZFhlP6eg==120694)and UnitBuff("player",ExUgDG)then
local KVcYU=0
for LMMNWLk=1,40 do
local jc4o42jz,ut0,ut0,ut0,ut0,ut0,ut0,ut0,ut0,ut0,Xtecl,ut0,ut0,ut0,ut0,ut0=UnitBuff("player",LMMNWLk)if Xtecl==120694 then KVcYU=KVcYU+1 end end;jc=KVcYU end
if(jc4o42jz==ExUgDG)then local _=GetTime()remainingTime=q(x-_,1)
local C,CJeG=strsplit(".",remainingTime)local F43eMG=tonumber(C)/100;local mCzjh4=tonumber(CJeG)/100;e7dv[ZFhlP6eg].t:SetColorTexture(
jc/100,F43eMG,mCzjh4,Dn1Xi)
e7dv[ZFhlP6eg].t:SetAllPoints(false)else
e7dv[ZFhlP6eg].t:SetColorTexture(1,1,1,Dn1Xi)e7dv[ZFhlP6eg].t:SetAllPoints(false)end end end
local function ay(lU,epQue9)
for cHUJrj,EI0x in pairs(PlayerDebuffs)do local E=GetSpellInfo(EI0x)
if E==nil then if
(s4[EI0x]~="DebuffOff")then
hrVI4meU[EI0x].t:SetColorTexture(1,1,1,Dn1Xi)hrVI4meU[EI0x].t:SetAllPoints(false)
s4[EI0x]="DebuffOff"end;return end
local lacOdjf9,cHUJrj,cHUJrj,R2h4lP4l,cHUJrj,Fh,a2e9fa,cHUJrj,cHUJrj,cHUJrj,Rc9_ZID,cHUJrj,cHUJrj,cHUJrj,cHUJrj,cHUJrj=UnitDebuff("target",E,nil,"PLAYER|HARMFUL")
if EI0x==233490 and(lacOdjf9 ==E)then local H1HF2wD6=0
for LMMNWLk=1,40 do
name2,cHUJrj,cHUJrj,count2,cHUJrj,Fh,expirationTime2,cHUJrj,cHUJrj,cHUJrj,spellId2,cHUJrj,cHUJrj,cHUJrj,cHUJrj,cHUJrj=UnitDebuff("target",LMMNWLk,"PLAYER|HARMFUL")
if

spellId2 ==233490 or spellId2 ==233496 or spellId2 ==233497 or spellId2 ==233498 or spellId2 ==233499 then H1HF2wD6=H1HF2wD6+1 end end;R2h4lP4l=H1HF2wD6 end
if(lacOdjf9 ==E)then local hBph=GetTime()
remainingTime=q(a2e9fa-hBph,1)
if
(s4[EI0x]~="DebuffOn"..R2h4lP4l..remainingTime)then local bxNo9h,Khst=strsplit(".",remainingTime)
local pUT=tonumber(bxNo9h)/100;local ISg1=tonumber(Khst)/100;if Rc9_ZID==34914 then end
hrVI4meU[EI0x].t:SetColorTexture(
R2h4lP4l/100,pUT,ISg1,Dn1Xi)s4[EI0x]="DebuffOn"..R2h4lP4l..remainingTime end else if(s4[EI0x]~="DebuffOff")then
hrVI4meU[EI0x].t:SetColorTexture(1,1,1,Dn1Xi)s4[EI0x]="DebuffOff"end end end end;local W={}
local function WzM(Gh5UJya,k)
for Z8Ue,TXbmx in pairs(SpellCooldowns)do local r=0
local Pqgz415t,Z8Ue,Z8Ue,Z8Ue,Z8Ue,Z8Ue=GetSpellInfo(TXbmx)if(Pqgz415t==nil)then r=0 else
r=LibStub("SpellRange-1.0").IsSpellInRange(TXbmx,"target")end
if W[TXbmx]~=r then if(r==1)then
xEq6TAF[TXbmx].t:SetColorTexture(1,0,0,Dn1Xi)else
xEq6TAF[TXbmx].t:SetColorTexture(1,1,1,Dn1Xi)end
xEq6TAF[TXbmx].t:SetAllPoints(false)W[TXbmx]=r end end end
local function PSx()
if GetUnitSpeed("Player")==0 then Movetime=GetTime()
PlayerMovingFrame.t:SetColorTexture(1,1,1,Dn1Xi)else
PlayerMovingFrame.t:SetColorTexture(1,0,0,Dn1Xi)end end
local function PSx()mountedplayer=0;moveTime=1;if IsMounted()then mountedplayer=.5 end;if
GetUnitSpeed("Player")==0 then moveTime=0 end
PlayerMovingFrame.t:SetColorTexture(moveTime,mountedplayer,1,Dn1Xi)end
local function IwnA()if IsCurrentSpell(6603)then
AutoAtackingFrame.t:SetColorTexture(1,0,0,Dn1Xi)else
AutoAtackingFrame.t:SetColorTexture(1,1,1,Dn1Xi)end end
local function cW()
if UnitGUID("target")==UnitGUID("player")then
targetIsPlayerFrame.t:SetColorTexture(1,0,0,Dn1Xi)else
targetIsPlayerFrame.t:SetColorTexture(1,1,1,Dn1Xi)end end;local function PHpCof2()
if IsOutdoors()then
rrFLbCtj.t:SetColorTexture(1,0,0,Dn1Xi)else rrFLbCtj.t:SetColorTexture(1,1,1,Dn1Xi)end end
local bUPpn4T2=0
local function sode(McNxKV,WcwGYJh)local gJt=UnitLevel("player")local hCs8M=0;local GkjCn_mq=0;local T9sySp=0
local DL0mMXM="0.0"..gJt;if(gJt>=10)then DL0mMXM="0."..gJt end
GkjCn_mq=tonumber(DL0mMXM)
if(gJt>100)then GkjCn_mq=0;gJt=gJt-100;local sX="0.0"..gJt;if(gJt>=10)then
sX="0."..gJt end;T9sySp=tonumber(sX)end;local o4Kvi75g=UnitHealth("player")local ELb=UnitHealthMax("player")local FV5=ceil((
o4Kvi75g/ELb)*100)
if
UnitIsDead("player")or UnitIsGhost("player")then FV5=0 end
if(FV5 ~=bUPpn4T2)then local DH6mUlGB="0.0"..FV5
if(FV5 >=10)then DH6mUlGB="0."..FV5 end;hCs8M=tonumber(DH6mUlGB)
if(FV5 ==100)then
if(gJt==100)then
PSlD.t:SetColorTexture(1,1,0,Dn1Xi)else PSlD.t:SetColorTexture(1,GkjCn_mq,T9sySp,Dn1Xi)end else
PSlD.t:SetColorTexture(hCs8M,GkjCn_mq,T9sySp,Dn1Xi)end;bUPpn4T2=FV5 end end;local G9zkKODk=0
local function MGt(A4ZRczp,rUT)local g=UnitHealth("pet")local JPi=UnitHealthMax("pet")if
JPi==nil then JPi=1 end;if JPi==0 then JPi=1 end
local Kkl6fa=ceil((g/JPi)*100)
if(G9zkKODk~=Kkl6fa)then local t=0;local H="0.0"..Kkl6fa;if(Kkl6fa>=10)then
H="0."..Kkl6fa end;t=tonumber(H)if(Kkl6fa==100)then
petHealthFrame.t:SetColorTexture(1,0,0,Dn1Xi)else
petHealthFrame.t:SetColorTexture(t,0,0,Dn1Xi)end;G9zkKODk=Kkl6fa end end;local ld9GuG4t=0
local function KpCCA(glZrOuSo,Zdzaj)local UxRGyO9e=UnitGUID("target")local fvj_L=0;local _CPU89l=100;local U=0
if
(UxRGyO9e~=nil)then fvj_L=UnitHealth("target")
_CPU89l=UnitHealthMax("target")U=ceil((fvj_L/_CPU89l)*100)end
if(U~=ld9GuG4t)then local Kwxn=0;local yp5DGSwX="0.0"..U
if(U>=10)then yp5DGSwX="0."..U end;Kwxn=tonumber(yp5DGSwX)if(U==100)then
targetHealthFrame.t:SetColorTexture(1,0,0,Dn1Xi)else
targetHealthFrame.t:SetColorTexture(Kwxn,0,0,Dn1Xi)end;ld9GuG4t=U end end
local function H6(Sb1Mw7R,fuF)local pA2=UnitPower("player")local M5lAedm=UnitPowerMax("player")
if(pA2 ~=
EEpoeR)then EEpoeR=pA2
if
(

(nbqmx==7 and Ef==264)or(nbqmx==2)or(nbqmx==5)or(nbqmx==8)or(nbqmx==9)or
(nbqmx==10 and Ef==270)or
(nbqmx==11 and Ef==102)or(nbqmx==11 and
Ef==105))then pA2=ceil((pA2/M5lAedm)*100)end;local _uYRl2kj=0;local tbN=0;local x="0.0"..pA2;if(pA2 >=10)then x="0."..pA2 end
_uYRl2kj=tonumber(x)
if(pA2 >100)then _uYRl2kj=0;pA2=pA2-100;local m="0.0"..pA2;if(pA2 >=10)then
m="0."..pA2 end;tbN=tonumber(m)end;if(pA2 ==100)then
powerFrame.t:SetColorTexture(1,0,0,Dn1Xi)else
powerFrame.t:SetColorTexture(_uYRl2kj,tbN,0,Dn1Xi)end end end;local hgsKvTz=0
local function zEt()local VVQ=math.floor(GetHaste())local Jb=0
if lasthaste==VVQ then return end;lastehaste=VVQ;local qcpea=0
if VVQ==math.abs(VVQ)then qcpea=1 else qcpea=0 end
if(VVQ>=100)then Jb=math.floor(VVQ/100)VVQ=VVQ- (Jb*100)end
local tjDBv=math.abs(tonumber(strsub(tostring(VVQ),1,2))/100)z.t:SetColorTexture(qcpea,Jb,tjDBv,Dn1Xi)end;local Wjojpvg=true
local function l2PqbWw(vmn7v,Au1mzs)isFriend=UnitIsFriend("player","target")
if
(isFriend~=Wjojpvg)then if(isFriend==true)then A.t:SetColorTexture(0,1,0,Dn1Xi)else
A.t:SetColorTexture(0,0,1,Dn1Xi)end;Wjojpvg=isFriend end end;local EJTH9=""
local function qTB82()local u39i=UnitGUID("target")
local Fdg7p=LibStub("LibBossIDs-1.0")local GD3AP=UnitIsDead("target")local jph00k=UnitLevel("player")
if
(u39i~=EJTH9)then
if u39i==nil then g3Qeqnr.t:SetColorTexture(0,0,0,Dn1Xi)else
if
u39i~=nil then local wE_4o,F,F,F,F,bUO1NvT=strsplit(" - ",UnitGUID("target"))
if
Fdg7p.BossIDs[tonumber(bUO1NvT)]then g3Qeqnr.t:SetColorTexture(0,0,1,Dn1Xi)elseif
wE_4o=="Player"then g3Qeqnr.t:SetColorTexture(1,0,0,Dn1Xi)elseif not
Fdg7p.BossIDs[tonumber(bUO1NvT)]then
if bUO1NvT~=nil then
if


tonumber(bUO1NvT)==114631 or
tonumber(bUO1NvT)==114822 or tonumber(bUO1NvT)==90463 or tonumber(bUO1NvT)==90418 or tonumber(bUO1NvT)==90431 then g3Qeqnr.t:SetColorTexture(0,0,0,Dn1Xi)else
g3Qeqnr.t:SetColorTexture(1,0,0,Dn1Xi)end end elseif(u39i~=nil and GD3AP==true)then
g3Qeqnr.t:SetColorTexture(0,0,0,Dn1Xi)end end end;EJTH9=u39i end end;local KL=0;local EATFLbgY=""
local function FF(K,RQG)spell,_,_,_,_,_,_,castID,_=UnitCastingInfo("player")
name,_,text,_,_,_,_,_=UnitChannelInfo("player")
if castID~=nil then if castID~=KL then
qccJ5b.t:SetColorTexture(1,0,0,Dn1Xi)KL=castID end else if castID~=KL then
qccJ5b.t:SetColorTexture(1,1,1,Dn1Xi)KL=castID end end
if name~=nil then if text~=EATFLbgY then
qccJ5b.t:SetColorTexture(0,1,0,Dn1Xi)EATFLbgY=text end else if text~=EATFLbgY then
qccJ5b.t:SetColorTexture(1,1,1,Dn1Xi)EATFLbgY=text end end end
local function rh(tVwI_N,Jkp2lGXG)return math.abs(Jkp2lGXG-GetTime()*1000)/
math.abs(Jkp2lGXG-tVwI_N)end
local function YcCR(ifcyuS,V03W)
spell,_,_,_,startTime,endTime,_,_,notInterrupt=UnitCastingInfo("target")if(spell==nil)then
spell,_,_,_,startTime,endTime,_,notInterrupt=UnitChannelInfo("target")end
if spell~=nil then if notInterrupt==false then
ARuba.t:SetColorTexture(1,rh(startTime,endTime),1,Dn1Xi)else
ARuba.t:SetColorTexture(0,rh(startTime,endTime),1,Dn1Xi)end else
if
spell==nil then ARuba.t:SetColorTexture(0,0,0,Dn1Xi)end end end
local function G3p2Yn()wilds=tonumber("0.0"..IWQcC)
dreadstalkers=tonumber("0.0"..cvRh)nN.t:SetColorTexture(wilds,0,dreadstalkers,Dn1Xi)end;local _jkkD9=nil
local function D(R,X6_)local tN5u=UnitIsVisible("target")
if tN5u==nil then if(tN5u~=_jkkD9)then
Wo53nZ.t:SetColorTexture(1,1,1,Dn1Xi)_jkkD9=tN5u end else if tN5u~=_jkkD9 then
Wo53nZ.t:SetColorTexture(1,0,0,Dn1Xi)_jkkD9=tN5u end end end
local function DMn(Yqc0GWr,UC7,...)if(UC7 =="UNIT_SPELLCAST_SUCCEEDED")then
UpdateCastingFrame("player",B7SHDx7h,...)end end;local function GBzFRjVV()UpdateCastingFrame("target",Vd)end;local function pG4C8fDK()
UpdateCastingFrame("arena1",Oynw)end;local function LLFUU()
UpdateCastingFrame("arena2",QBO)end;local function kdmQtj6()
UpdateCastingFrame("arena3",s4ggux)end
local function Hc35_(WbvvcjER,rOLxXC)
for w762p7sZ,_7jt in pairs(PlayerBuffs)do
local ORXyFQ=GetSpellInfo(_7jt)
if ORXyFQ==nil then if(JmE[_7jt]~="BuffOff")then
A5k5yt[_7jt].t:SetColorTexture(1,1,1,Dn1Xi)A5k5yt[_7jt].t:SetAllPoints(false)
JmE[_7jt]="BuffOff"end;return end
local OL1oV,w762p7sZ,w762p7sZ,Q,w762p7sZ,w762p7sZ,HQvT5,w762p7sZ,w762p7sZ,w762p7sZ,w762p7sZ=UnitBuff("pet",ORXyFQ)
if(OL1oV==ORXyFQ)then local dN=GetTime()remainingTime=q(HQvT5-dN,1)
if(
JmE[_7jt]~="BuffOn"..Q..remainingTime)then
local B35igHj,o8pPC2=strsplit(".",remainingTime)local f7nUIW=tonumber(B35igHj)/100
local bDgD=tonumber(o8pPC2)/100
A5k5yt[_7jt].t:SetColorTexture(Q/100,f7nUIW,bDgD,Dn1Xi)A5k5yt[_7jt].t:SetAllPoints(false)end else if(JmE[_7jt]~="BuffOff")then
A5k5yt[_7jt].t:SetColorTexture(1,1,1,Dn1Xi)A5k5yt[_7jt].t:SetAllPoints(false)
JmE[_7jt]="BuffOff"end end end end
local function ubP(Kg8PhSq,Tcv_)
for lygY,HG in pairs(PlayerDebuffs)do local u="UnitDebuff"local m9i=GetSpellInfo(HG)
if m9i==nil then if(
KfM[HG]~="DebuffOff")then
inx0[HG].t:SetColorTexture(1,1,1,Dn1Xi)inx0[HG].t:SetAllPoints(false)
KfM[HG]="DebuffOff"end;return end
local EqPMP,lygY,lygY,JR,lygY,lygY,G1Cl6,lygY,lygY,lygY,h,lygY,lygY,lygY,lygY,lygY=UnitDebuff("player",m9i,nil,"PLAYER|HARMFUL")
if(EqPMP==m9i)then local fYUikw=GetTime()
local W9qTCm=math.floor(G1Cl6-fYUikw+0.5)
if(KfM[HG]~="DebuffOn"..JR..W9qTCm)then KfM[HG]="DebuffOn"..JR..
W9qTCm
W9qTCm=string.format("%00.2f",tostring(W9qTCm))
local YlaSjEKp=tonumber(strsub(tostring(W9qTCm),1,2))/100
local u_ogp8=tonumber(strsub(tostring(W9qTCm),-2,-1))/100
inx0[HG].t:SetColorTexture(JR/100,YlaSjEKp,u_ogp8,Dn1Xi)inx0[HG].t:SetAllPoints(false)end else if(KfM[HG]~="DebuffOff")then
inx0[HG].t:SetColorTexture(1,1,1,Dn1Xi)inx0[HG].t:SetAllPoints(false)
KfM[HG]="DebuffOff"end end end end
local function eN0UMW(K,ob)
for a3,MvWxr in pairs(SpellCooldowns)do
if IsSpellOverlayed(MvWxr)then
_gGmBBE[MvWxr].t:SetColorTexture(1,0,0,Dn1Xi)_gGmBBE[MvWxr].t:SetAllPoints(false)else
_gGmBBE[MvWxr].t:SetColorTexture(1,1,1,Dn1Xi)_gGmBBE[MvWxr].t:SetAllPoints(false)end end end
local function lAG(HgY6)
for Wc,eQ5 in pairs(DispelThese)do local kvR=GetSpellInfo(eQ5)if kvR==nil then return 0 end;local So,Wc,Wc,Wi,Wc,X1WM,OVBAVy,Wc,Wc,Wc,eQ5,Wc,Wc,Wc,Wc,Wc=UnitDebuff(HgY6,kvR,
nil,"HARMFUL")if
(So==kvR)then return 1 end end;return 0 end;local AvEtR8Y=""
local function rl3MMqfm()if IsHealer()==false then return end
local Jos,NF0=IsActiveBattlefieldArena()local OeF=IsInRaid()and"raid"or"party"
local sawaLtSr=GetNumGroupMembers()
if(AvEtR8Y~=OeF)then if sawaLtSr==0 then OeF="solo"end;AvEtR8Y=OeF end;local KWeL="0.0"..sawaLtSr
if(sawaLtSr>=10)then KWeL="0."..sawaLtSr end
if(IsInRaid())then
inGame.t:SetColorTexture(tonumber(KWeL),1,1,Dn1Xi)else if Jos==1 then
inGame.t:SetColorTexture(tonumber(KWeL),1,0.5,Dn1Xi)else
inGame.t:SetColorTexture(tonumber(KWeL),1,0,Dn1Xi)end end
if(sawaLtSr==0)then health=UnitHealth("player")
maxHealth=UnitHealthMax("player")
percHealth=ceil((health/maxHealth)*100)needToDispel=lAG("player")local K="0.0"..percHealth;if
(percHealth>=10)then K="0."..percHealth end;red=tonumber(K)
for rvhod9t=1,5 do
if
(percHealth==100)then
AI14eFhp[rvhod9t].t:SetColorTexture(1,needToDispel,0,Dn1Xi)else
AI14eFhp[rvhod9t].t:SetColorTexture(red,needToDispel,0,Dn1Xi)end end;return end
for bfx5oN=1,sawaLtSr do local XDKTNXw=0;local RyTb=0
if(OeF=="party")then
if(bfx5oN==1)then
health=UnitHealth("player")maxHealth=UnitHealthMax("player")
XDKTNXw=ceil((health/maxHealth)*100)RyTb=lAG("player")else
health=UnitHealth(OeF.. (bfx5oN-1))maxHealth=UnitHealthMax(OeF.. (bfx5oN-1))XDKTNXw=ceil((
health/maxHealth)*100)RyTb=lAG(OeF.. (
bfx5oN-1))
local K,Ru=oJ1ec:GetRange(OeF.. (bfx5oN-1))if(Ru==nil)then Ru=41 end
if


UnitIsDead(OeF.. (bfx5oN-1))or UnitIsGhost(
OeF.. (bfx5oN-1))or UnitIsConnected(
OeF.. (bfx5oN-1))==false or UnitInPhase(OeF.. (bfx5oN-1))==false or Ru>40 then XDKTNXw=100;RyTb=0 end end end
if(OeF=="raid")then health=UnitHealth(OeF..bfx5oN)maxHealth=UnitHealthMax(OeF..
bfx5oN)
XDKTNXw=ceil((health/maxHealth)*100)RyTb=lAG(OeF..bfx5oN)
local Vy5qF,rokDhenZ=oJ1ec:GetRange(OeF..bfx5oN)if(rokDhenZ==nil)then rokDhenZ=41 end
if

UnitIsDead(OeF..bfx5oN)or UnitIsGhost(
OeF..bfx5oN)or
UnitIsConnected(OeF..bfx5oN)==false or
UnitInPhase(OeF..bfx5oN)==false or rokDhenZ>40 then XDKTNXw=100;RyTb=0 end end;local ImqF1v="0.0"..XDKTNXw
if(XDKTNXw>=10)then ImqF1v="0."..XDKTNXw end;red=tonumber(ImqF1v)if(XDKTNXw==100)then
AI14eFhp[bfx5oN].t:SetColorTexture(1,RyTb,0,Dn1Xi)else
AI14eFhp[bfx5oN].t:SetColorTexture(red,RyTb,0,Dn1Xi)end
AI14eFhp[bfx5oN].t:SetAllPoints(false)end end;inGame=CreateFrame("frame","",parent)
inGame:SetSize(1,1)inGame:SetPoint("TOPLEFT",30,0)
inGame.t=inGame:CreateTexture()inGame.t:SetColorTexture(0,1,0,Dn1Xi)
inGame.t:SetAllPoints(inGame)inGame:Show()
startStopFrame=CreateFrame("frame","",parent)startStopFrame:SetSize(1,1)
startStopFrame:SetPoint("TOPLEFT",29,0)startStopFrame.t=startStopFrame:CreateTexture()
startStopFrame.t:SetColorTexture(0,0,0,Dn1Xi)
startStopFrame.t:SetAllPoints(startStopFrame)startStopFrame:Show()
rangeToTargetFrame=CreateFrame("frame","",parent)rangeToTargetFrame:SetSize(1,1)
rangeToTargetFrame:SetPoint("TOPLEFT",28,0)
rangeToTargetFrame.t=rangeToTargetFrame:CreateTexture()
rangeToTargetFrame.t:SetColorTexture(0,0,0,Dn1Xi)
rangeToTargetFrame.t:SetAllPoints(rangeToTargetFrame)rangeToTargetFrame:Show()
local function nQj()rl3MMqfm()end
local function Eq8jDq()local td8OL,WCS=oJ1ec:GetRange("target")if WCS==nil then WCS=100 end
local td8OL,i=oJ1ec:GetRange("pet")if i==nil then i=100 end;local v2VylMn="0.0"..i
if(i>=10)then v2VylMn="0."..i end;green=tonumber(v2VylMn)local Oi="0.0"..WCS
if(WCS>=10)then Oi="0."..WCS end;red=tonumber(Oi)if(i>=100)then green=1 end
if(WCS>=100)then red=1 end;blue=0;if(UnitExists("Focus"))then blue=1 end
rangeToTargetFrame.t:SetColorTexture(red,green,blue,Dn1Xi)end;function UpdateHealthFrame(KwcrRu,bgFJ)local fqGD1rfW=xb6(KwcrRu)
bgFJ.t:SetColorTexture(fqGD1rfW,0,0,Dn1Xi)end
function UpdateDebuffFrame(K0,_1To2)
for lkzs,Hhwf3oO in
pairs(PlayerDebuffs)do local Oh5=GetSpellInfo(Hhwf3oO)if Oh5 ==nil then
DfbW[Hhwf3oO].t:SetColorTexture(0,0,0,Dn1Xi)return end
local LgQF,lkzs,lkzs,emGbhJGH,lkzs,e_Ev8OQ,zBMvU6,lkzs,lkzs,lkzs,ZmbDgbg,lkzs,lkzs,lkzs,lkzs,lkzs=UnitDebuff(K0,Oh5,nil,"PLAYER|HARMFUL")
if Hhwf3oO==233490 and(LgQF==Oh5)then local hMxy=0
for LMMNWLk=1,40 do
lkzs,lkzs,lkzs,lkzs,lkzs,lkzs,lkzs,lkzs,lkzs,lkzs,spellId2,lkzs,lkzs,lkzs,lkzs,lkzs=UnitDebuff(K0,LMMNWLk,"PLAYER|HARMFUL")
if

spellId2 ==233490 or spellId2 ==233496 or spellId2 ==233497 or spellId2 ==233498 or spellId2 ==233499 then hMxy=hMxy+1 end end;emGbhJGH=hMxy end
if(LgQF==Oh5)then local hj3=GetTime()remainingTime=q(zBMvU6-hj3,1)
local M7q3pa8,guEhw=strsplit(".",remainingTime)local sll=tonumber(M7q3pa8)/100
local BzNBgGvD=tonumber(guEhw)/100
_1To2[Hhwf3oO].t:SetColorTexture(1,sll,BzNBgGvD,Dn1Xi)else
_1To2[Hhwf3oO].t:SetColorTexture(0,0,0,Dn1Xi)end end end
function UpdateCastingFrame(KIQCH,L4bw,...)if not UnitExists(KIQCH)then return end
local XhBEPD=select(10,UnitCastingInfo(KIQCH))
if XhBEPD==nil then local RRESd,RRESd,RRESd,RRESd,S1qoVmFR=...XhBEPD=S1qoVmFR end;if XhBEPD==nil then for f2=1,2 do
L4bw[f2].t:SetColorTexture(0,0,0,Dn1Xi)end;return end
local Uq=""local RmyiI_D=""local w_2iiJwx=""
for O3rHR=1,2 do
if(O3rHR==1)then strRedTemp=strsub(XhBEPD,1,1)if
(strRedTemp=="")then Uq=1 else Uq="0."..strRedTemp end
strGreenTemp=strsub(XhBEPD,2,2)
if(strGreenTemp=="")then w_2iiJwx=1 else w_2iiJwx="0."..strGreenTemp end;strBlueTemp=strsub(XhBEPD,3,3)if(strBlueTemp=="")then RmyiI_D=1 else RmyiI_D="0."..
strBlueTemp end end
if(O3rHR==2)then strRedTemp=strsub(XhBEPD,4,4)if(strRedTemp=="")then Uq=1 else Uq="0."..
strRedTemp end
strGreenTemp=strsub(XhBEPD,5,5)
if(strGreenTemp=="")then w_2iiJwx=1 else w_2iiJwx="0."..strGreenTemp end;strBlueTemp=strsub(XhBEPD,6,6)if(strBlueTemp=="")then RmyiI_D=1 else RmyiI_D="0."..
strBlueTemp end end;local YU80=tonumber(Uq)local ARnO_0E=tonumber(w_2iiJwx)
local Qh=tonumber(RmyiI_D)
L4bw[O3rHR].t:SetColorTexture(YU80,ARnO_0E,Qh,Dn1Xi)end end
function FocusPulse()UpdateHealthFrame("focus",LmR5gwW)
UpdateDebuffFrame("focus",DfbW)UpdateCastingFrame("focus",sh)end;local LnQUN=0;function update(lqxbMC,qOk5Jm)LnQUN=LnQUN+qOk5Jm
if LnQUN>=0.2 then Eq8jDq()nQj()if
(UnitExists("Focus"))then FocusPulse()end;LnQUN=0 end end
local function Gm1()
local tpSe2fs=0;PSlD=CreateFrame("frame","",parent)PSlD:SetSize(1,1)
PSlD:SetPoint("TOPLEFT",0,0)PSlD.t=PSlD:CreateTexture()
PSlD.t:SetColorTexture(1,1,1,Dn1Xi)PSlD.t:SetAllPoints(PSlD)PSlD:Show()
PSlD:RegisterEvent("PLAYER_ENTERING_WORLD")PSlD:RegisterEvent("PLAYER_REGEN_ENABLED")
PSlD:RegisterEvent("PLAYER_REGEN_DISABLED")PSlD:RegisterUnitEvent("UNIT_HEALTH","player")
PSlD:RegisterEvent("PLAYER_TARGET_CHANGED")PSlD:SetScript("OnEvent",sode)
powerFrame=CreateFrame("frame","",parent)powerFrame:SetSize(1,1)
powerFrame:SetPoint("TOPLEFT",1,0)powerFrame.t=powerFrame:CreateTexture()
powerFrame.t:SetColorTexture(1,1,1,Dn1Xi)powerFrame.t:SetAllPoints(powerFrame)
powerFrame:Show()
powerFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
powerFrame:RegisterEvent("PLAYER_REGEN_ENABLED")
powerFrame:RegisterEvent("PLAYER_REGEN_DISABLED")
powerFrame:RegisterUnitEvent("UNIT_POWER","player")powerFrame:SetScript("OnEvent",H6)
targetHealthFrame=CreateFrame("frame","",parent)targetHealthFrame:SetSize(1,1)
targetHealthFrame:SetPoint("TOPLEFT",2,0)
targetHealthFrame.t=targetHealthFrame:CreateTexture()
targetHealthFrame.t:SetColorTexture(1,1,1,Dn1Xi)
targetHealthFrame.t:SetAllPoints(targetHealthFrame)targetHealthFrame:Show()
targetHealthFrame:RegisterEvent("PLAYER_REGEN_ENABLED")
targetHealthFrame:RegisterEvent("PLAYER_REGEN_DISABLED")
targetHealthFrame:RegisterEvent("UNIT_HEALTH","target")
targetHealthFrame:RegisterEvent("PLAYER_TARGET_CHANGED")
targetHealthFrame:RegisterEvent("PLAYER_ENTER_COMBAT")
targetHealthFrame:RegisterEvent("PLAYER_LEAVE_COMBAT")targetHealthFrame:SetScript("OnEvent",KpCCA)
unitCombatFrame=CreateFrame("frame","",parent)unitCombatFrame:SetSize(1,1)
unitCombatFrame:SetPoint("TOPLEFT",3,0)
unitCombatFrame.t=unitCombatFrame:CreateTexture()
unitCombatFrame.t:SetColorTexture(1,1,1,Dn1Xi)
unitCombatFrame.t:SetAllPoints(unitCombatFrame)unitCombatFrame:Show()
unitCombatFrame:RegisterEvent("PLAYER_REGEN_ENABLED")
unitCombatFrame:RegisterEvent("PLAYER_REGEN_DISABLED")unitCombatFrame:SetScript("OnEvent",BlW0RhJA)
unitPowerFrame=CreateFrame("frame","",parent)unitPowerFrame:SetSize(1,1)
unitPowerFrame:SetPoint("TOPLEFT",4,0)unitPowerFrame.t=unitPowerFrame:CreateTexture()
unitPowerFrame.t:SetColorTexture(0,0,0,Dn1Xi)
unitPowerFrame.t:SetAllPoints(unitPowerFrame)unitPowerFrame:Show()
unitPowerFrame:SetScript("OnUpdate",M6kL)A=CreateFrame("frame","",parent)A:SetSize(1,1)
A:SetPoint("TOPLEFT",5,0)A.t=A:CreateTexture()
A.t:SetColorTexture(0,1,0,Dn1Xi)A.t:SetAllPoints(A)A:Show()
A:RegisterEvent("PLAYER_REGEN_ENABLED")A:RegisterEvent("PLAYER_REGEN_DISABLED")
A:RegisterEvent("UNIT_HEALTH","target")A:RegisterEvent("PLAYER_TARGET_CHANGED")
A:RegisterEvent("PLAYER_ENTER_COMBAT")A:RegisterEvent("PLAYER_LEAVE_COMBAT")
A:SetScript("OnEvent",l2PqbWw)g3Qeqnr=CreateFrame("frame","",parent)
g3Qeqnr:SetSize(1,1)g3Qeqnr:SetPoint("TOPLEFT",6,0)
g3Qeqnr.t=g3Qeqnr:CreateTexture()g3Qeqnr.t:SetColorTexture(0,1,0,Dn1Xi)
g3Qeqnr.t:SetAllPoints(g3Qeqnr)g3Qeqnr:Show()
g3Qeqnr:RegisterEvent("PLAYER_TARGET_CHANGED")g3Qeqnr:RegisterEvent("PLAYER_ENTER_COMBAT")
g3Qeqnr:RegisterEvent("PLAYER_LEAVE_COMBAT")g3Qeqnr:SetScript("OnEvent",qTB82)
qccJ5b=CreateFrame("frame","",parent)qccJ5b:SetSize(1,1)
qccJ5b:SetPoint("TOPLEFT",7,0)qccJ5b.t=qccJ5b:CreateTexture()
qccJ5b.t:SetColorTexture(1,1,1,Dn1Xi)qccJ5b.t:SetAllPoints(qccJ5b)qccJ5b:Show()
qccJ5b:SetScript("OnUpdate",FF)ARuba=CreateFrame("frame","",parent)
ARuba:SetSize(1,1)ARuba:SetPoint("TOPLEFT",8,0)
ARuba.t=ARuba:CreateTexture()ARuba.t:SetColorTexture(1,1,1,Dn1Xi)
ARuba.t:SetAllPoints(ARuba)ARuba:Show()ARuba:SetScript("OnUpdate",YcCR)
z=CreateFrame("frame","",parent)z:SetSize(1,1)z:SetPoint("TOPLEFT",9,0)
z.t=z:CreateTexture()z.t:SetColorTexture(1,1,1,Dn1Xi)
z.t:SetAllPoints(z)z:Show()z:RegisterEvent("PLAYER_ENTERING_WORLD")
z:RegisterUnitEvent("UNIT_SPELL_HASTE","player")z:SetScript("OnUpdate",zEt)
Wo53nZ=CreateFrame("frame","",parent)Wo53nZ:SetSize(1,1)
Wo53nZ:SetPoint("TOPLEFT",10,0)Wo53nZ.t=Wo53nZ:CreateTexture()
Wo53nZ.t:SetColorTexture(0,1,0,Dn1Xi)Wo53nZ.t:SetAllPoints(Wo53nZ)Wo53nZ:Show()
Wo53nZ:SetScript("OnUpdate",D)
if(
nbqmx==6 or nbqmx==3 or nbqmx==9 or nbqmx==8 or nbqmx==7)then
XRfQ=CreateFrame("frame","",parent)XRfQ:SetSize(1,1)XRfQ:SetPoint("TOPLEFT",11,0)
XRfQ.t=XRfQ:CreateTexture()XRfQ.t:SetColorTexture(0,1,0,Dn1Xi)
XRfQ.t:SetAllPoints(XRfQ)XRfQ:Show()XRfQ:SetScript("OnUpdate",dk2X7J7)
petHealthFrame=CreateFrame("frame","",parent)petHealthFrame:SetSize(1,1)
petHealthFrame:SetPoint("TOPLEFT",12,0)petHealthFrame.t=petHealthFrame:CreateTexture()
petHealthFrame.t:SetColorTexture(1,1,1,Dn1Xi)
petHealthFrame.t:SetAllPoints(petHealthFrame)petHealthFrame:Show()
petHealthFrame:RegisterEvent("UNIT_HEALTH","pet")petHealthFrame:SetScript("OnEvent",MGt)
nN=CreateFrame("frame","",parent)nN:SetSize(1,1)nN:SetPoint("TOPLEFT",13,0)
nN.t=nN:CreateTexture()nN.t:SetColorTexture(0,1,0,Dn1Xi)
nN.t:SetAllPoints(nN)nN:Show()nN:SetScript("OnUpdate",G3p2Yn)local tpSe2fs=0
for AuVgc7,vxnB in
pairs(PlayerBuffs)do A5k5yt[vxnB]=CreateFrame("frame","",parent)
A5k5yt[vxnB]:SetSize(1,1)A5k5yt[vxnB]:SetPoint("TOPLEFT",tpSe2fs,-9)
A5k5yt[vxnB].t=A5k5yt[vxnB]:CreateTexture()
A5k5yt[vxnB].t:SetColorTexture(1,1,1,Dn1Xi)
A5k5yt[vxnB].t:SetAllPoints(A5k5yt[vxnB])A5k5yt[vxnB]:Show()tpSe2fs=tpSe2fs+1 end
A5k5yt[table.maxn(A5k5yt)]:SetScript("OnUpdate",Hc35_)end;tpSe2fs=0
for ZQOXXXd,cyBmTv in pairs(SpellCooldowns)do
YcPea0vg[cyBmTv]=CreateFrame("frame","",parent)YcPea0vg[cyBmTv]:SetSize(1,1)YcPea0vg[cyBmTv]:SetPoint("TOPLEFT",tpSe2fs,
-1)
YcPea0vg[cyBmTv].t=YcPea0vg[cyBmTv]:CreateTexture()
YcPea0vg[cyBmTv].t:SetColorTexture(1,1,1,Dn1Xi)
YcPea0vg[cyBmTv].t:SetAllPoints(YcPea0vg[cyBmTv])YcPea0vg[cyBmTv]:Show()tpSe2fs=tpSe2fs+1 end
YcPea0vg[table.maxn(YcPea0vg)]:SetScript("OnUpdate",jv)tpSe2fs=0
for _TKd0F,Z in pairs(SpellCooldowns)do
xEq6TAF[Z]=CreateFrame("frame","",parent)xEq6TAF[Z]:SetSize(1,1)
xEq6TAF[Z]:SetPoint("TOPLEFT",tpSe2fs,-2)xEq6TAF[Z].t=xEq6TAF[Z]:CreateTexture()
xEq6TAF[Z].t:SetColorTexture(1,1,1,Dn1Xi)xEq6TAF[Z].t:SetAllPoints(xEq6TAF[Z])
xEq6TAF[Z]:Show()tpSe2fs=tpSe2fs+1 end
xEq6TAF[table.maxn(xEq6TAF)]:SetScript("OnUpdate",WzM)tpSe2fs=0
for Dw,bsFpM in pairs(PlayerDebuffs)do
hrVI4meU[bsFpM]=CreateFrame("frame","",parent)hrVI4meU[bsFpM]:SetSize(1,1)hrVI4meU[bsFpM]:SetPoint("TOPLEFT",tpSe2fs,
-3)
hrVI4meU[bsFpM].t=hrVI4meU[bsFpM]:CreateTexture()
hrVI4meU[bsFpM].t:SetColorTexture(1,1,1,Dn1Xi)
hrVI4meU[bsFpM].t:SetAllPoints(hrVI4meU[bsFpM])hrVI4meU[bsFpM]:Show()tpSe2fs=tpSe2fs+1 end
hrVI4meU[table.maxn(hrVI4meU)]:SetScript("OnUpdate",ay)tpSe2fs=0
for h,doBTofya in pairs(SpellCooldowns)do
usLpLoaH[doBTofya]=CreateFrame("frame","",parent)usLpLoaH[doBTofya]:SetSize(1,1)usLpLoaH[doBTofya]:SetPoint("TOPLEFT",tpSe2fs,
-4)
usLpLoaH[doBTofya].t=usLpLoaH[doBTofya]:CreateTexture()
usLpLoaH[doBTofya].t:SetColorTexture(1,1,1,Dn1Xi)
usLpLoaH[doBTofya].t:SetAllPoints(usLpLoaH[doBTofya])usLpLoaH[doBTofya]:Show()tpSe2fs=tpSe2fs+1 end
usLpLoaH[table.maxn(usLpLoaH)]:RegisterEvent("ACTIONBAR_UPDATE_STATE")
usLpLoaH[table.maxn(usLpLoaH)]:SetScript("OnEvent",E2OQ)tpSe2fs=0
for rNP,TL in pairs(PlayerBuffs)do
FFG[TL]=CreateFrame("frame","",parent)FFG[TL]:SetSize(1,1)
FFG[TL]:SetPoint("TOPLEFT",tpSe2fs,-5)FFG[TL].t=FFG[TL]:CreateTexture()
FFG[TL].t:SetColorTexture(0,1,1,Dn1Xi)FFG[TL].t:SetAllPoints(FFG[TL])
FFG[TL]:Show()tpSe2fs=tpSe2fs+1 end
FFG[table.maxn(FFG)]:SetScript("OnUpdate",TKu)PlayerMovingFrame=CreateFrame("frame","",parent)
PlayerMovingFrame:SetSize(1,1)PlayerMovingFrame:SetPoint("TOPLEFT",0,-6)
PlayerMovingFrame.t=PlayerMovingFrame:CreateTexture()
PlayerMovingFrame.t:SetColorTexture(1,1,1,Dn1Xi)
PlayerMovingFrame.t:SetAllPoints(PlayerMovingFrame)PlayerMovingFrame:Show()
PlayerMovingFrame:SetScript("OnUpdate",PSx)AutoAtackingFrame=CreateFrame("frame","",parent)
AutoAtackingFrame:SetSize(1,1)AutoAtackingFrame:SetPoint("TOPLEFT",1,-6)
AutoAtackingFrame.t=AutoAtackingFrame:CreateTexture()
AutoAtackingFrame.t:SetColorTexture(1,1,1,Dn1Xi)
AutoAtackingFrame.t:SetAllPoints(AutoAtackingFrame)AutoAtackingFrame:Show()
AutoAtackingFrame:RegisterEvent("PLAYER_TARGET_CHANGED")
AutoAtackingFrame:RegisterEvent("PLAYER_ENTER_COMBAT")
AutoAtackingFrame:RegisterEvent("PLAYER_LEAVE_COMBAT")AutoAtackingFrame:SetScript("OnEvent",IwnA)
targetIsPlayerFrame=CreateFrame("frame","",parent)targetIsPlayerFrame:SetSize(1,1)targetIsPlayerFrame:SetPoint("TOPLEFT",2,
-6)
targetIsPlayerFrame.t=targetIsPlayerFrame:CreateTexture()
targetIsPlayerFrame.t:SetColorTexture(1,1,1,Dn1Xi)
targetIsPlayerFrame.t:SetAllPoints(targetIsPlayerFrame)targetIsPlayerFrame:Show()
targetIsPlayerFrame:RegisterEvent("PLAYER_TARGET_CHANGED")targetIsPlayerFrame:SetScript("OnEvent",cW)
rrFLbCtj=CreateFrame("frame","",parent)rrFLbCtj:SetSize(1,1)
rrFLbCtj:SetPoint("TOPLEFT",3,-6)rrFLbCtj.t=rrFLbCtj:CreateTexture()
rrFLbCtj.t:SetColorTexture(1,1,1,Dn1Xi)rrFLbCtj.t:SetAllPoints(rrFLbCtj)
rrFLbCtj:Show()rrFLbCtj:SetScript("OnUpdate",PHpCof2)end
function GetKeyBinding(Tzgj_W)local g0AS39
if Tzgj_W<=24 or Tzgj_W>72 then g0AS39="ACTIONBUTTON".. (
((Tzgj_W-1)%12)+1)elseif Tzgj_W<=36 then g0AS39=
"MULTIACTIONBAR3BUTTON".. (Tzgj_W-24)elseif Tzgj_W<=48 then g0AS39=
"MULTIACTIONBAR4BUTTON".. (Tzgj_W-36)elseif Tzgj_W<=60 then g0AS39=
"MULTIACTIONBAR2BUTTON".. (Tzgj_W-48)else g0AS39="MULTIACTIONBAR1BUTTON"..
(Tzgj_W-60)end;local t2=g0AS39 and GetBindingKey(g0AS39)
if t2 and
strlen(t2)>4 then t2=strupper(t2)t2=gsub(t2,"%s+","")
t2=gsub(t2,"ALT%-","A|")t2=gsub(t2,"CTRL%-","C|")t2=gsub(t2,"SHIFT%-","S|")
t2=gsub(t2,"NUMPAD","N")t2=gsub(t2,"PLUS","+")t2=gsub(t2,"MINUS","-")
t2=gsub(t2,"MULTIPLY","*")t2=gsub(t2,"DIVIDE","/")end
if t2 ~=nil then else
if Bartender4 then
g0AS39="CLICK BT4Button"..Tzgj_W..":LeftButton"t2=g0AS39 and GetBindingKey(g0AS39)
if
t2 and strlen(t2)>4 then t2=strupper(t2)t2=gsub(t2,"%s+","")
t2=gsub(t2,"ALT%-","A|")t2=gsub(t2,"CTRL%-","C|")t2=gsub(t2,"SHIFT%-","S|")
t2=gsub(t2,"NUMPAD","N")t2=gsub(t2,"PLUS","+")t2=gsub(t2,"MINUS","-")
t2=gsub(t2,"MULTIPLY","*")t2=gsub(t2,"DIVIDE","/")end end end;return t2 end
function KeyModifierColor(PDewNmM)local GFlD=strfind(PDewNmM,"|")
if(GFlD~=nil)then
local y3owm5E=strsub(PDewNmM,1,GFlD-1)if(y3owm5E=="S")then return 0.01 end
if(y3owm5E=="C")then return 0.02 end;if(y3owm5E=="A")then return 0.03 end end;return 1 end
function KeyBindColor(psHOEe2)local R1zT=strfind(psHOEe2,"|")if(R1zT~=nil)then
psHOEe2=strsub(psHOEe2,R1zT+1)end
if psHOEe2 =="\\"then return 0.01 elseif psHOEe2 =="["then return 0.02 elseif
psHOEe2 =="]"then return 0.03 elseif psHOEe2 ==";"then return 0.04 elseif psHOEe2 =="'"then return 0.05 elseif psHOEe2 ==","then return 0.06 elseif
psHOEe2 =="."then return 0.07 elseif psHOEe2 =="/"then return 0.08 elseif psHOEe2 =="`"then return 0.09 elseif psHOEe2 =="-"then return 0.10 elseif
psHOEe2 =="="then return 0.11 elseif psHOEe2 =="F1"then return 0.12 elseif psHOEe2 =="F2"then return 0.13 elseif psHOEe2 =="F3"then return 0.14 elseif
psHOEe2 =="F4"then return 0.15 elseif psHOEe2 =="F5"then return 0.16 elseif psHOEe2 =="F6"then return 0.17 elseif psHOEe2 =="F7"then return 0.18 elseif
psHOEe2 =="F8"then return 0.19 elseif psHOEe2 =="F9"then return 0.20 elseif psHOEe2 =="F10"then return 0.21 elseif psHOEe2 =="F11"then return 0.22 elseif psHOEe2 ==
"F12"then return 0.23 elseif psHOEe2 =="1"then return 0.24 elseif psHOEe2 =="2"then return 0.25 elseif psHOEe2 =="3"then return 0.26 elseif
psHOEe2 =="4"then return 0.27 elseif psHOEe2 =="5"then return 0.28 elseif psHOEe2 =="6"then return 0.29 elseif psHOEe2 =="7"then return 0.30 elseif
psHOEe2 =="8"then return 0.31 elseif psHOEe2 =="9"then return 0.32 elseif psHOEe2 =="0"then return 0.33 elseif psHOEe2 =="Q"then return 0.34 elseif
psHOEe2 =="W"then return 0.35 elseif psHOEe2 =="E"then return 0.36 elseif psHOEe2 =="R"then return 0.37 elseif psHOEe2 =="T"then return 0.38 elseif
psHOEe2 =="Y"then return 0.39 elseif psHOEe2 =="U"then return 0.40 elseif psHOEe2 =="I"then return 0.41 elseif psHOEe2 =="O"then return 0.42 elseif
psHOEe2 =="P"then return 0.43 elseif psHOEe2 =="A"then return 0.44 elseif psHOEe2 =="S"then return 0.45 elseif psHOEe2 =="D"then return 0.46 elseif
psHOEe2 =="F"then return 0.47 elseif psHOEe2 =="G"then return 0.48 elseif psHOEe2 =="H"then return 0.49 elseif psHOEe2 =="J"then return 0.50 elseif
psHOEe2 =="K"then return 0.51 elseif psHOEe2 =="L"then return 0.52 elseif psHOEe2 =="Z"then return 0.53 elseif psHOEe2 =="X"then return 0.54 elseif
psHOEe2 =="C"then return 0.55 elseif psHOEe2 =="V"then return 0.56 elseif psHOEe2 =="B"then return 0.57 elseif psHOEe2 =="N"then return 0.58 elseif
psHOEe2 =="M"then return 0.59 elseif psHOEe2 =="N1"then return 0.60 elseif psHOEe2 =="N2"then return 0.61 elseif psHOEe2 =="N3"then
return 0.62 elseif psHOEe2 =="N4"then return 0.63 elseif psHOEe2 =="N5"then return 0.64 elseif psHOEe2 =="N6"then return 0.65 elseif psHOEe2 =="N7"then
return 0.66 elseif psHOEe2 =="N8"then return 0.67 elseif psHOEe2 =="N9"then return 0.68 elseif psHOEe2 =="N0"then return 0.69 end;return 1 end
function fixSlots(J2Df)if(J2Df<10)then return'00'..J2Df end;if(J2Df>=10)then
return'0'..J2Df end;return''..J2Df end;printKeybinds=0
function RefreshKeyBinds()
if(printKeybinds==1)then
ChatFrame1:Clear()if Bartender4 then print('Bartender4 detected')end end
for YyS,o in pairs(SpellCooldowns)do local MY16y=GetSpellInfo(o)bindFound=false
for ZBUghmX=1,120 do
local ncK,Deq,GH3wE=GetActionInfo(ZBUghmX)
if ncK=="spell"then local xZFv=GetKeyBinding(ZBUghmX)
if xZFv~=nil then
if(o==Deq)then
W9yaJm[o].t:SetColorTexture(KeyBindColor(xZFv),KeyModifierColor(xZFv),0,Dn1Xi)
if(printKeybinds==1)then
print('Slot: '..fixSlots(ZBUghmX)..
' '..GetSpellLink(o)..','..

KeyBindColor(xZFv)..','..KeyModifierColor(xZFv)..','..xZFv)end;bindFound=true;break end end end
if ncK=="macro"then actionText=GetActionText(ZBUghmX)
name,rank,id=GetMacroSpell(actionText)local bc0w4j=GetKeyBinding(ZBUghmX)
if bc0w4j~=nil then
if(o==id)then
W9yaJm[o].t:SetColorTexture(KeyBindColor(bc0w4j),KeyModifierColor(bc0w4j),0,Dn1Xi)
if(printKeybinds==1)then
print('Slot: '..
fixSlots(ZBUghmX)..' '..
GetSpellLink(o)..','..

KeyBindColor(bc0w4j)..','..KeyModifierColor(bc0w4j)..','..bc0w4j)end;bindFound=true;break end end end end
if bindFound==false and(printKeybinds==1)then
if
(GetSpellLink(o))~=nil then
print(GetSpellLink(o)..',not bound')else print('Spell Id: '..o..',NOT FOUND')end end end;printKeybinds=0 end
local function Jp()i=0
for Q,yI in pairs(SpellCooldowns)do
W9yaJm[yI]=CreateFrame("frame","",parent)W9yaJm[yI]:SetSize(1,1)
W9yaJm[yI]:SetPoint("TOPLEFT",i,-14)W9yaJm[yI].t=W9yaJm[yI]:CreateTexture()
W9yaJm[yI].t:SetColorTexture(0,0,0,Dn1Xi)W9yaJm[yI].t:SetAllPoints(W9yaJm[yI])
W9yaJm[yI]:Show()i=i+1 end
W9yaJm[table.maxn(W9yaJm)]:RegisterEvent("SPELL_PUSHED_TO_ACTIONBAR")
W9yaJm[table.maxn(W9yaJm)]:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
W9yaJm[table.maxn(W9yaJm)]:RegisterEvent("SPELLS_CHANGED")
W9yaJm[table.maxn(W9yaJm)]:RegisterEvent("PLAYER_ENTERING_WORLD")
W9yaJm[table.maxn(W9yaJm)]:RegisterEvent("UNIT_MODEL_CHANGED")
W9yaJm[table.maxn(W9yaJm)]:SetScript("OnEvent",RefreshKeyBinds)local OGMxal0=0
for OGMxal0=1,2 do
B7SHDx7h[OGMxal0]=CreateFrame("FRAME","",parent)B7SHDx7h[OGMxal0]:SetSize(1,1)B7SHDx7h[OGMxal0]:SetPoint("TOPLEFT",(
OGMxal0+3),-6)
B7SHDx7h[OGMxal0].t=B7SHDx7h[OGMxal0]:CreateTexture()
B7SHDx7h[OGMxal0].t:SetColorTexture(0,0,0,Dn1Xi)
B7SHDx7h[OGMxal0].t:SetAllPoints(B7SHDx7h[OGMxal0])B7SHDx7h[OGMxal0]:Show()end
B7SHDx7h[table.maxn(B7SHDx7h)]:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
B7SHDx7h[table.maxn(B7SHDx7h)]:SetScript("OnEvent",DMn)
for OGMxal0=1,2 do Vd[OGMxal0]=CreateFrame("FRAME","",parent)
Vd[OGMxal0]:SetSize(1,1)
Vd[OGMxal0]:SetPoint("TOPLEFT",(OGMxal0+5),-6)Vd[OGMxal0].t=Vd[OGMxal0]:CreateTexture()
Vd[OGMxal0].t:SetColorTexture(0,0,0,Dn1Xi)
Vd[OGMxal0].t:SetAllPoints(Vd[OGMxal0])Vd[OGMxal0]:Show()end
Vd[table.maxn(Vd)]:SetScript("OnUpdate",GBzFRjVV)
for OGMxal0=1,2 do Oynw[OGMxal0]=CreateFrame("FRAME","",parent)
Oynw[OGMxal0]:SetSize(1,1)
Oynw[OGMxal0]:SetPoint("TOPLEFT",(OGMxal0+7),-6)
Oynw[OGMxal0].t=Oynw[OGMxal0]:CreateTexture()
Oynw[OGMxal0].t:SetColorTexture(0,0,0,Dn1Xi)
Oynw[OGMxal0].t:SetAllPoints(Oynw[OGMxal0])Oynw[OGMxal0]:Show()end
Oynw[table.maxn(Oynw)]:SetScript("OnUpdate",pG4C8fDK)
for OGMxal0=1,2 do QBO[OGMxal0]=CreateFrame("FRAME","",parent)
QBO[OGMxal0]:SetSize(1,1)
QBO[OGMxal0]:SetPoint("TOPLEFT",(OGMxal0+9),-6)
QBO[OGMxal0].t=QBO[OGMxal0]:CreateTexture()
QBO[OGMxal0].t:SetColorTexture(0,0,0,Dn1Xi)
QBO[OGMxal0].t:SetAllPoints(QBO[OGMxal0])QBO[OGMxal0]:Show()end
QBO[table.maxn(QBO)]:SetScript("OnUpdate",LLFUU)
for OGMxal0=1,2 do s4ggux[OGMxal0]=CreateFrame("FRAME","",parent)
s4ggux[OGMxal0]:SetSize(1,1)
s4ggux[OGMxal0]:SetPoint("TOPLEFT",(OGMxal0+11),-6)
s4ggux[OGMxal0].t=s4ggux[OGMxal0]:CreateTexture()
s4ggux[OGMxal0].t:SetColorTexture(0,0,0,Dn1Xi)
s4ggux[OGMxal0].t:SetAllPoints(s4ggux[OGMxal0])s4ggux[OGMxal0]:Show()end
s4ggux[table.maxn(s4ggux)]:SetScript("OnUpdate",kdmQtj6)OGMxal0=0
for EDE3,FpWG11U in pairs(PlayerBuffs)do
e7dv[FpWG11U]=CreateFrame("frame","",parent)e7dv[FpWG11U]:SetSize(1,1)e7dv[FpWG11U]:SetPoint("TOPLEFT",OGMxal0,
-7)
e7dv[FpWG11U].t=e7dv[FpWG11U]:CreateTexture()
e7dv[FpWG11U].t:SetColorTexture(1,1,1,Dn1Xi)
e7dv[FpWG11U].t:SetAllPoints(e7dv[FpWG11U])e7dv[FpWG11U]:Show()OGMxal0=OGMxal0+1 end
e7dv[table.maxn(e7dv)]:SetScript("OnUpdate",SnbfLb6)OGMxal0=0
for kRY46C,MvOaiq in pairs(InventoryItems)do
a31jEAS[MvOaiq]=CreateFrame("frame","",parent)a31jEAS[MvOaiq]:SetSize(1,1)a31jEAS[MvOaiq]:SetPoint("TOPLEFT",OGMxal0,
-8)
a31jEAS[MvOaiq].t=a31jEAS[MvOaiq]:CreateTexture()
a31jEAS[MvOaiq].t:SetColorTexture(1,1,1,Dn1Xi)
a31jEAS[MvOaiq].t:SetAllPoints(a31jEAS[MvOaiq])a31jEAS[MvOaiq]:Show()OGMxal0=OGMxal0+1 end;if(table.getn(InventoryItems)~=0)then
a31jEAS[table.maxn(a31jEAS)]:SetScript("OnUpdate",MW)end;OGMxal0=0
for DUic_1K,rVj9z4 in pairs(PlayerDebuffs)do
inx0[rVj9z4]=CreateFrame("frame","",parent)inx0[rVj9z4]:SetSize(1,1)inx0[rVj9z4]:SetPoint("TOPLEFT",OGMxal0,
-10)
inx0[rVj9z4].t=inx0[rVj9z4]:CreateTexture()
inx0[rVj9z4].t:SetColorTexture(1,1,1,Dn1Xi)
inx0[rVj9z4].t:SetAllPoints(inx0[rVj9z4])inx0[rVj9z4]:Show()
inx0[rVj9z4]:SetScript("OnUpdate",ubP)OGMxal0=OGMxal0+1 end
inx0[table.maxn(inx0)]:SetScript("OnUpdate",ubP)OGMxal0=0
for mWkmCx,qQpo in pairs(SpellCooldowns)do
_gGmBBE[qQpo]=CreateFrame("frame","",parent)_gGmBBE[qQpo]:SetSize(1,1)_gGmBBE[qQpo]:SetPoint("TOPLEFT",OGMxal0,
-11)
_gGmBBE[qQpo].t=_gGmBBE[qQpo]:CreateTexture()
_gGmBBE[qQpo].t:SetColorTexture(1,1,1,Dn1Xi)
_gGmBBE[qQpo].t:SetAllPoints(_gGmBBE[qQpo])_gGmBBE[qQpo]:Show()OGMxal0=OGMxal0+1 end;if(table.getn(SpellCooldowns)~=0)then
_gGmBBE[table.maxn(_gGmBBE)]:SetScript("OnUpdate",eN0UMW)end
for OGMxal0=1,4 do
rIX4[OGMxal0]=CreateFrame("frame","",parent)rIX4[OGMxal0]:SetSize(1,1)rIX4[OGMxal0]:SetPoint("TOPLEFT",(OGMxal0),
-12)
rIX4[OGMxal0].t=rIX4[OGMxal0]:CreateTexture()
rIX4[OGMxal0].t:SetColorTexture(1,1,1,Dn1Xi)
rIX4[OGMxal0].t:SetAllPoints(rIX4[OGMxal0])rIX4[OGMxal0]:Show()end
rIX4[table.maxn(rIX4)]:RegisterEvent("PLAYER_ENTERING_WORLD")
rIX4[table.maxn(rIX4)]:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
rIX4[table.maxn(rIX4)]:RegisterEvent("PLAYER_REGEN_DISABLED")
rIX4[table.maxn(rIX4)]:SetScript("OnEvent",n)wUVm=CreateFrame("frame","",parent)wUVm:SetSize(1,1)wUVm:SetPoint("TOPLEFT",0,
-22)wUVm.t=wUVm:CreateTexture()
wUVm.t:SetColorTexture(1,1,1,Dn1Xi)wUVm.t:SetAllPoints(wUVm)wUVm:Show()
wUVm:SetScript("OnUpdate",yK)local QlewVjkq=IsInRaid()and"raid"or"party"OGMxal0=0
for qXKzBXo0=1,30 do
AI14eFhp[qXKzBXo0]=CreateFrame("frame","",parent)AI14eFhp[qXKzBXo0]:SetSize(1,1)AI14eFhp[qXKzBXo0]:SetPoint("TOPLEFT",OGMxal0,
-13)
AI14eFhp[qXKzBXo0].t=AI14eFhp[qXKzBXo0]:CreateTexture()
AI14eFhp[qXKzBXo0].t:SetColorTexture(0,0,0,Dn1Xi)
AI14eFhp[qXKzBXo0].t:SetAllPoints(AI14eFhp[qXKzBXo0])AI14eFhp[qXKzBXo0]:Show()OGMxal0=OGMxal0+1 end;LmR5gwW=CreateFrame("frame","",parent)
LmR5gwW:SetSize(1,1)LmR5gwW:SetPoint("TOPLEFT",0,-19)
LmR5gwW.t=LmR5gwW:CreateTexture()LmR5gwW.t:SetColorTexture(0,0,0,Dn1Xi)
LmR5gwW.t:SetAllPoints(LmR5gwW)LmR5gwW:Show()OGMxal0=0
for cJ,HI4G3oH in pairs(PlayerDebuffs)do
DfbW[HI4G3oH]=CreateFrame("frame","",parent)DfbW[HI4G3oH]:SetSize(1,1)DfbW[HI4G3oH]:SetPoint("TOPLEFT",OGMxal0,
-20)
DfbW[HI4G3oH].t=DfbW[HI4G3oH]:CreateTexture()
DfbW[HI4G3oH].t:SetColorTexture(0,0,0,Dn1Xi)
DfbW[HI4G3oH].t:SetAllPoints(DfbW[HI4G3oH])DfbW[HI4G3oH]:Show()OGMxal0=OGMxal0+1 end
for OGMxal0=1,2 do sh[OGMxal0]=CreateFrame("FRAME","",parent)
sh[OGMxal0]:SetSize(1,1)sh[OGMxal0]:SetPoint("TOPLEFT",OGMxal0,-19)
sh[OGMxal0].t=sh[OGMxal0]:CreateTexture()
sh[OGMxal0].t:SetColorTexture(0,0,0,Dn1Xi)
sh[OGMxal0].t:SetAllPoints(sh[OGMxal0])sh[OGMxal0]:Show()end end;local function NwBqNl3C()IWQcC=0 end;local function XuqjvYPF()cvRh=0 end
local function Trh(ncWw,kdS,...)local OS60=...
if kdS=="ADDON_LOADED"then if(
OS60 =="[Frozen]")then Gm1()Jp()end end
if kdS=="NAME_PLATE_UNIT_ADDED"then rHLz2GD(select(1,...))yK()end
if kdS=="PLAYER_ENTERING_WORLD"then IWQcC=0;cvRh=0;_k=GetSpecialization()Ef=_k and
select(1,GetSpecializationInfo(_k))or 0
if
GetCVar("nameplateShowEnemies")=="0"then SetCVar("nameplateShowEnemies","1")end;F2tY=1 end;if kdS=="PLAYER_REGEN_DISABLED"then yK()end;if
kdS=="PLAYER_REGEN_ENABLED"then yK()end
if kdS=="COMBAT_LOG_EVENT_UNFILTERED"then
local dl,b2UK,FC0yhp,lL30T,zt,Ofgm3g,z6WE21dc,rJg9H,sNyznm3W,UU,YBciOAz2=...
if lL30T==UnitGUID('player')then
if b2UK=="SPELL_SUMMON"then
local wJvNH,wJvNH,wJvNH,wJvNH,wJvNH,wJvNH,wJvNH,dOvZoN,wJvNH=rJg9H:find('(%S+)-(%d+)-(%d+)-(%d+)-(%d+)-(%d+)-(%S+)')dOvZoN=tonumber(dOvZoN)if(dOvZoN==55659)then IWQcC=IWQcC+1
C_Timer.After(12,NwBqNl3C)end;if(dOvZoN==98035)then cvRh=cvRh+1
C_Timer.After(12,XuqjvYPF)end;return end end end end;parent:SetScript("OnEvent",Trh)
parent:SetScript("OnUpdate",update)