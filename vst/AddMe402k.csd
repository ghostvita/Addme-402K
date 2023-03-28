<Cabbage> bounds(0, 0, 0, 0)
form caption("Addme-402K") size(700, 450), guiMode("queue") pluginId("def1") colour(18, 18, 18) typeface("ui/NexaText-Trial-Heavy.ttf")
image bounds(120, 196, 200, 27) channel("logo"), file("ui/logo.png")

; --- BOX: MAIN
signaldisplay bounds(116, 22, 209, 120), colour("white") displayType("waveform"), backgroundColour(0, 0, 0), zoom(0.5), signalVariable("aSum", "aSum"), channel("display")
vslider bounds(10, 22, 85, 401), channel("out"), range(0, 1, 0.8, 1, 0.01), text("GAIN"), trackerColour(68, 255, 174), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
hslider bounds(116, 158, 209, 28), channel("freq"), range(40, 2000, 400, 0.5, 1), text("FREQ"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255), imgFile("Slider", "Fader.png")
hslider bounds(124, 394, 209, 28), channel("freqosc"), range(0, 100, 0, 1, 1), text("Oscilla freq"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)

; --- BOX: ARMONICHE
groupbox bounds(352, 20, 317, 124), text("ARMONICHE") channel("harmbox") , fontColour(255, 255, 255, 255) outlineColour(209, 204, 201, 255) colour(20, 20, 20, 255)
rslider bounds(358, 42, 70, 96), channel("harm2"), range(0, 1, 0, 1, 0.01), text("II Arm"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
rslider bounds(438, 42, 70, 96), channel("harm3"), range(0, 1, 0, 1, 0.01), text("III Arm"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
rslider bounds(516, 42, 70, 96), channel("harm4"), range(0, 1, 0, 1, 0.01), text("IV Arm"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
rslider bounds(594, 42, 70, 96), channel("harmsub"), range(0, 1, 0, 1, 0.01), text("Sub Arm"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)

; --- BOX: CONTROLLI
groupbox bounds(352, 158, 317, 124), text("CONTROLLI") channel("controlbox") , fontColour(255, 255, 255, 255) outlineColour(209, 204, 201, 255) colour(20, 20, 20, 255)
rslider bounds(460, 180, 100, 100), channel("dens"), range(1, 60, 1, 1, 1), text("Densita"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
rslider bounds(360, 180, 100, 100), channel("spread"), range(0, 400, 0, 1, 0.01), text("Spread"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
rslider bounds(560, 180, 100, 100), channel("reset"), range(0, 1, 1, 1, 0.0001), text("Reset Armonico"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)

; --- BOX: EFFETTI
groupbox bounds(352, 298, 317, 124), text("EFFETTI") channel("effectbox") , fontColour(255, 255, 255, 255) outlineColour(209, 204, 201, 255) colour(20, 20, 20, 255)
rslider bounds(580, 322, 69, 68), channel("dist"), range(0, 1, 0, 1, 0.1), text("Distorsione"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
checkbox bounds(578, 394, 75, 20) channel("chdist"),fontColour:0(255, 255, 255, 255), fontColour:1(222, 157, 93, 255) colour:1(68, 255, 174, 255) text("ON/OFF") 
rslider bounds(360, 320, 95, 99), channel("stereo"), range(0, 1, 0, 1, 0.01), text("Stereo"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
rslider bounds(460, 320, 100, 100), channel("lowpass"), range(20, 22000, 22000, 0.5, 1), text("Filtro LP"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)


</Cabbage>

<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 -m0d --displays
</CsOptions>
<CsInstruments>
; Initialize the global variables. 
ksmps = 32
nchnls = 2
0dbfs = 1
 
 
instr 10
    ; --- CONTROLLI
    gkDen cabbageGetValue "dens"        ; Densità
    gkGain cabbageGetValue "out"        ; Master Gain
    gkSpread cabbageGetValue "spread"   ; Spread
    gkH2 cabbageGetValue "harm2"        ; Armonica 2 gain
    gkH3 cabbageGetValue "harm3"        ; Armonica 3 gain
    gkH4 cabbageGetValue "harm4"        ; Armonica 4 gain
    gkHSub cabbageGetValue "harmsub"    ; Armonica sub gain
    gkReset cabbageGetValue "reset"     ; Reset armoniche
    gkStereo cabbageGetValue "stereo"   ; Spread pan
    gkFreq cabbageGetValue "freq"       ; Frequenza
    gkLP cabbageGetValue "lowpass"      ; Lowpass
    gkDist cabbageGetValue "dist"  
    gkChDist cabbageGetValue "chdist"
    gkFreqLins cabbageGetValue "freqosc"
    
    ; --- DENSITA' AL SECONDO
    ktrig metro gkDen
    schedkwhen ktrig, 0, 0, 1, 0, 1
endin

; -----

instr 1
    
    iRndSpread = rnd(i(gkSpread)) - (i(gkSpread) / 2)
    iAmp = (1/i(gkDen))*(i(gkDen)/2)    
    aEnv madsr 0.3, 0.2, 0.1, 0.1   ;ADSR
    
    if gkFreqLins > 0 then
        kAdd = (gkFreq)+rnd(gkFreqLins)
        gkFreq linseg i(gkFreq), 0.5, i(kAdd), 1, i(gkFreq)
    endif
    
    ; --- LAYER 1: Frequenza e Armoniche
    aSig1 oscili iAmp, gkFreq
    aHarm2 oscili iAmp*gkH2, (gkFreq + iRndSpread)*(2*gkReset)
    aHarm3 oscili iAmp*gkH3, (gkFreq + iRndSpread)*(3*gkReset)
    aHarm4 oscili iAmp*gkH4, (gkFreq + iRndSpread)*(4*gkReset)
    aHarmSub oscili iAmp*gkHSub, (gkFreq + iRndSpread)*(0.5*gkReset)
    ;segnale layer1
    aSig1 = (aSig1 + aHarm2 + aHarm3 + aHarm4 + aHarmSub)
    
    ; --- LAYER 2: Spread frequenze
    aSig2 oscili iAmp, gkFreq+iRndSpread
    aHarm2Spr oscili iAmp*gkH2, (gkFreq + iRndSpread)*(2*gkReset)
    aHarm3Spr oscili iAmp*gkH3, (gkFreq + iRndSpread)*(3*gkReset)
    aHarm4Spr oscili iAmp*gkH4, (gkFreq + iRndSpread)*(4*gkReset)
    aHarmSubSpr oscili iAmp*gkHSub, (gkFreq + iRndSpread)*(0.5*gkReset)
    aSig2 = (aSig2 + aHarm2Spr + aHarm3Spr + aHarm4Spr + aHarmSubSpr)
    
    ; --- SOMMA E OUT
    aSum = (aSig1+aSig2)*aEnv
    iPan = 0.5 + (((rnd(2) - 1) / 2) * i(gkStereo))
    
    ;distort
    if gkChDist == 1 then
        aSum distort aSum, gkDist, 1
    endif
   
    
    ;panning
    gaL, gaR pan2 aSum, iPan
    
    
    
    ;lowpass
    gaL butterlp gaL, gkLP
    gaR butterlp gaR, gkLP
    
    ;out
    outs gaL*gkGain*0.2, gaR*gkGain*0.2
    
    if gkChDist == 1 then
        aSum = aSum*1.5
        display	aSum, .05, 1
    else
        display	aSum, .05, 1
    endif
   
endin



</CsInstruments>
<CsScore>
f 1 0 16384 10 1
i10 0 [60*60*24*7]
i2 0 [60*60*24*7]
</CsScore>
</CsoundSynthesizer>