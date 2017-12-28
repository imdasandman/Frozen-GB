local LB1Z=0;local N9L=0;local hDc_M=0.0;local qW0lRiD1=0.8;local iD1IUx=0.7;local JLCOx_ak=5;local hPQ=60
local R1FIoQI=hPQ- (JLCOx_ak*2)local NsoTwDs=20;local HGli=CreateFrame("frame","Overlay",UIParent)
HGli:SetPoint("TOP",UIParent,"TOP",300,0)HGli:SetMovable(true)HGli:SetUserPlaced(true)
HGli:EnableMouse(true)HGli:RegisterForDrag("LeftButton")
HGli:SetScript("OnDragStart",HGli.StartMoving)
HGli:SetScript("OnDragStop",HGli.StopMovingOrSizing)HGli:SetSize(280,30)
HGli:SetFrameStrata("TOOLTIP")HGli.t=HGli:CreateTexture()
HGli.t:SetColorTexture(1,1,1,0.2)HGli.t:SetAllPoints(HGli)
button1=CreateFrame("Button",nil,HGli)button2=CreateFrame("Button",nil,HGli)
button3=CreateFrame("Button",nil,HGli)button4=CreateFrame("Button",nil,HGli)
button5=CreateFrame("Button",nil,HGli)
button1:SetPoint("TOPLEFT",HGli,"TOPLEFT",JLCOx_ak,-JLCOx_ak)button1:SetWidth(R1FIoQI)
button1:SetHeight(NsoTwDs)button1:SetText("On")font1=CreateFont("one")
font1:SetFont("Fonts\\FRIZQT__.TTF",12)font1:SetTextColor(1,1,1)
button1:SetNormalFontObject(font1)button1:SetHighlightFontObject(font1)
button1:SetFrameStrata("TOOLTIP")local iy=button1:CreateTexture()
local m6SCS0=button1:CreateTexture()local NUhYw6R4=button1:CreateTexture()
iy:SetColorTexture(qW0lRiD1,0,0,alphaColor)iy:SetAllPoints()button1:SetNormalTexture(iy)
m6SCS0:SetColorTexture(0,0,0,0.5)m6SCS0:SetAllPoints()
button1:SetHighlightTexture(m6SCS0)NUhYw6R4:SetColorTexture(0,0,0,0.5)
NUhYw6R4:SetAllPoints()button1:SetPushedTexture(NUhYw6R4)
button1:RegisterForClicks("AnyUp")
function startStop()
if LB1Z==1 then iy:SetColorTexture(qW0lRiD1,0,0,alphaColor)
LB1Z=0 else iy:SetColorTexture(0,iD1IUx,0,alphaColor)LB1Z=1 end
startStopFrame.t:SetColorTexture(LB1Z,N9L,hDc_M,alphaColor)
startStopFrame.t:SetAllPoints(startStopFrame)end;button1:SetScript("OnClick",startStop)
button2:SetPoint("TOPLEFT",HGli,"TOPLEFT",
JLCOx_ak*2+R1FIoQI,-JLCOx_ak)button2:SetWidth(R1FIoQI)
button2:SetHeight(NsoTwDs)button2:SetText("Burst")font2=CreateFont("two")
font2:SetFont("Fonts\\FRIZQT__.TTF",12)font2:SetTextColor(1,1,1)
button2:SetNormalFontObject(font2)button2:SetHighlightFontObject(font2)
button2:SetFrameStrata("TOOLTIP")local Hv=button2:CreateTexture()
local Ch=button2:CreateTexture()local urkh=button2:CreateTexture()
Hv:SetColorTexture(qW0lRiD1,0,0,alphaColor)Hv:SetAllPoints()button2:SetNormalTexture(Hv)
Ch:SetColorTexture(0,0,0,0.5)Ch:SetAllPoints()button2:SetHighlightTexture(Ch)
urkh:SetColorTexture(0,0,0,0.5)urkh:SetAllPoints()
button2:SetPushedTexture(urkh)button2:RegisterForClicks("AnyUp")
function cooldownOnOff()
if N9L==1 then
Hv:SetColorTexture(qW0lRiD1,0,0,alphaColor)N9L=0 else Hv:SetColorTexture(0,iD1IUx,0,alphaColor)N9L=1 end
startStopFrame.t:SetColorTexture(LB1Z,N9L,hDc_M,alphaColor)
startStopFrame.t:SetAllPoints(startStopFrame)end;button2:SetScript("OnClick",cooldownOnOff)
button3:SetPoint("TOPLEFT",HGli,"TOPLEFT",
JLCOx_ak*3+R1FIoQI*2,-JLCOx_ak)button3:SetWidth(R1FIoQI)
button3:SetHeight(NsoTwDs)button3:SetText("Cleave")font3=CreateFont("three")
font3:SetFont("Fonts\\FRIZQT__.TTF",12)font3:SetTextColor(1,1,1)
button3:SetNormalFontObject(font3)button3:SetHighlightFontObject(font3)
button3:SetFrameStrata("TOOLTIP")local zhzpBSx=button3:CreateTexture()
local rHSjalVy=button3:CreateTexture()local TjhsnP=button3:CreateTexture()
zhzpBSx:SetColorTexture(qW0lRiD1,0,0,alphaColor)zhzpBSx:SetAllPoints()
button3:SetNormalTexture(zhzpBSx)rHSjalVy:SetColorTexture(0,0,0,0.5)
rHSjalVy:SetAllPoints()button3:SetHighlightTexture(rHSjalVy)
TjhsnP:SetColorTexture(0,0,0,0.5)TjhsnP:SetAllPoints()
button3:SetPushedTexture(TjhsnP)button3:RegisterForClicks("AnyUp")
function aoeOnOff()if hDc_M==1 then
button4:Click('LeftButton')end
if hDc_M==0.5 then
zhzpBSx:SetColorTexture(qW0lRiD1,0,0,alphaColor)hDc_M=0 else
zhzpBSx:SetColorTexture(0,iD1IUx,0,alphaColor)hDc_M=0.5 end
startStopFrame.t:SetColorTexture(LB1Z,N9L,hDc_M,alphaColor)
startStopFrame.t:SetAllPoints(startStopFrame)end;button3:SetScript("OnClick",aoeOnOff)
button4:SetPoint("TOPLEFT",HGli,"TOPLEFT",
JLCOx_ak*4+R1FIoQI*3,-JLCOx_ak)button4:SetWidth(R1FIoQI)
button4:SetHeight(NsoTwDs)button4:SetText("Aoe")font4=CreateFont("four")
font4:SetFont("Fonts\\FRIZQT__.TTF",12)font4:SetTextColor(1,1,1)
button4:SetNormalFontObject(font4)button4:SetHighlightFontObject(font4)
button4:SetFrameStrata("TOOLTIP")local t5jzEd9=button4:CreateTexture()
local JZAU2=button4:CreateTexture()local zPXTTg=button4:CreateTexture()
t5jzEd9:SetColorTexture(qW0lRiD1,0,0,alphaColor)t5jzEd9:SetAllPoints()
button4:SetNormalTexture(t5jzEd9)JZAU2:SetColorTexture(0,0,0,0.5)
JZAU2:SetAllPoints()button4:SetHighlightTexture(JZAU2)
zPXTTg:SetColorTexture(0,0,0,0.5)zPXTTg:SetAllPoints()
button4:SetPushedTexture(zPXTTg)button4:RegisterForClicks("AnyUp")
function aoe()if hDc_M==0.5 then
button3:Click('LeftButton')end;if hDc_M==1 then
t5jzEd9:SetColorTexture(qW0lRiD1,0,0,alphaColor)hDc_M=0 else
t5jzEd9:SetColorTexture(0,iD1IUx,0,alphaColor)hDc_M=1 end
startStopFrame.t:SetColorTexture(LB1Z,N9L,hDc_M,alphaColor)
startStopFrame.t:SetAllPoints(startStopFrame)end;button4:SetScript("OnClick",aoe)
button5:SetPoint("TOPLEFT",HGli,"TOPLEFT",
JLCOx_ak*5+R1FIoQI*4,-JLCOx_ak)button5:SetWidth(R1FIoQI)
button5:SetHeight(NsoTwDs)button5:SetText("Keys")font5=CreateFont("five")
font5:SetFont("Fonts\\FRIZQT__.TTF",12)font5:SetTextColor(1,1,1)
button5:SetNormalFontObject(font5)button5:SetHighlightFontObject(font5)
button5:SetFrameStrata("TOOLTIP")local seMLr=button5:CreateTexture()
local qX=button5:CreateTexture()local h_8=button5:CreateTexture()
seMLr:SetColorTexture(qW0lRiD1,0,0,alphaColor)seMLr:SetAllPoints()
button5:SetNormalTexture(seMLr)qX:SetColorTexture(0,0,0,0.5)qX:SetAllPoints()
button5:SetHighlightTexture(qX)h_8:SetColorTexture(0,0,0,0.5)h_8:SetAllPoints()
button5:SetPushedTexture(h_8)button5:RegisterForClicks("AnyUp")function printKeybinds()printKeybinds=1
RefreshKeyBinds()end
button5:SetScript("OnClick",printKeybinds)