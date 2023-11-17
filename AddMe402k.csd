<Cabbage> 
form caption("Addme-402K") size(1000, 600), guiMode("queue") pluginId("def1") colour(18, 18, 18) typeface("ui/NexaText-Trial-Heavy.ttf")
image bounds(220, 30, 200, 27) channel("logo"), file("ui/logo.png")



vslider bounds(22, 66, 85, 494), channel("out"), range(0, 1, 0.8, 1, 0.001), text("GAIN"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
hslider bounds(578, 32, 363, 28), channel("freq"), range(40, 2000, 400, 0.5, 1), text("FREQ"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255), imgFile("Slider", "Fader.png")
;hslider bounds(214, 340, 209, 28), channel("freqosc"), range(0, 100, 0, 1, 1), text("Oscilla freq"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)

; --- BOX: ARMONICHE
groupbox bounds(542, 86, 427, 141), text("A R M O N I C H E") channel("addbox") , fontColour(255, 255, 255, 255) outlineColour(209, 204, 201, 255) colour(20, 20, 20, 255)
rslider bounds(564, 118, 70, 96), channel("reset"), range(0, 1, 1, 1, 0.0001), text("Reset Armonico"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
rslider bounds(642, 118, 70, 96), channel("harm2"), range(0, 1, 0, 1, 0.01), text("II Arm"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
rslider bounds(720, 118, 70, 96), channel("harm3"), range(0, 1, 0, 1, 0.01), text("III Arm"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
rslider bounds(798, 118, 70, 96), channel("harm4"), range(0, 1, 0, 1, 0.01), text("IV Arm"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
rslider bounds(876, 118, 70, 96), channel("harm5"), range(0, 1, 0, 1, 0.01), text("V Arm"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)

; --- BOX: OSCILLATORE
groupbox bounds(136, 86, 364, 222), text("O S C I L L A T O R E") channel("oscbox") , fontColour(255, 255, 255, 255) outlineColour(209, 204, 201, 255) colour(20, 20, 20, 255)
vslider bounds(160, 126, 57, 152), channel("oscGain"), range(0, 1, 1, 0.5, 0.001), text("Gain"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)


combobox bounds(327, 140, 152, 28) channel("env"), colour:0(68, 255, 174, 255), fontColour(0, 0, 0), corners(5), items("GAUSS", "TRAPEZOIDALE", "WAVY")
rslider bounds(318, 186, 80, 80), channel("dens"), range(1, 50, 1, 1, 1), text("Densita"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
rslider bounds(228, 186, 80, 80), channel("spread"), range(0, 400, 0, 1, 0.01), text("Spread"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
rslider bounds(406, 186, 80, 80) channel("durata") outlineColour(0, 0, 0, 50) range(0.01, 3, 1, 0.5, 0.01) text("Durata") textColour(255, 255, 255, 255) trackerColour(68, 255, 174, 255)

; --- BOX: PINK NOISE
groupbox bounds(136, 326, 363, 222), text("N O I S E") channel("pinkbox") , fontColour(255, 255, 255, 255) outlineColour(209, 204, 201, 255) colour(20, 20, 20, 255)
vslider bounds(162, 364, 57, 152), channel("pinkGain"), range(0, 1, 0, 0.5, 0.001), text("Gain"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
combobox bounds(324, 384, 152, 28) channel("envPink"), , fontColour(0, 0, 0, 255), corners(5), colour(68, 255, 174, 255) text("GAUSS", "TRAPEZOIDALE", "WAVY")
rslider bounds(402, 430, 80, 80) channel("durataP") outlineColour(0, 0, 0, 50) range(0.01, 3, 1, 0.5, 0.01) text("Durata") textColour(255, 255, 255, 255) trackerColour(68, 255, 174, 255)
rslider bounds(316, 430, 80, 80), channel("densP"), range(1, 50, 1, 1, 1), text("Densita"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
checkbox bounds(234, 422, 75, 31) channel("lock"),fontColour:0(255, 255, 255, 255), fontColour:1(222, 157, 93, 255) colour:1(68, 255, 174, 255) text("Lock") 

; --- BOX: FM, AM
groupbox bounds(542, 248, 264, 141), text("F M") channel("fmbox") , fontColour(255, 255, 255, 255) outlineColour(209, 204, 201, 255) colour(20, 20, 20, 255)
groupbox bounds(824, 248, 146, 141), text("A M") channel("ambox") , fontColour(255, 255, 255, 255) outlineColour(209, 204, 201, 255) colour(20, 20, 20, 255)


rslider bounds(642, 308, 65, 64), channel("freqdev"), range(0, 500, 0, 1, 1), text("Deviazione"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
rslider bounds(722, 308, 65, 64), channel("freqmod"), range(1, 2000, 400, 0.5, 1), text("Mod"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
rslider bounds(560, 308, 65, 64), channel("fmindex"), range(0, 15, 0, 1, 0.1), text("FM Index"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255) active(0) alpha(0.3)
rslider bounds(904, 308, 54, 64), channel("amamp"), range(0, 1, 0, 1, 0.01), text("Amp"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
rslider bounds(838, 308, 54, 64), channel("amfreq"), range(1, 2000, 250, 0.5, 1), text("Freq"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
checkbox bounds(634, 278, 84, 22) channel("useindex"),fontColour:0(255, 255, 255, 255), fontColour:1(222, 157, 93, 255) colour:1(68, 255, 174, 255) text("Use Index") 


; --- BOX: EFFETTI
groupbox bounds(542, 410, 428, 141), text("E F F E T T I") channel("effectbox") , fontColour(255, 255, 255, 255) outlineColour(209, 204, 201, 255) colour(20, 20, 20, 255)
rslider bounds(744, 472, 59, 58), channel("dist"), range(0, 1, 0, 1, 0.1), text("Distorsione"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
checkbox bounds(736, 450, 75, 20) channel("chdist"),fontColour:0(255, 255, 255, 255), fontColour:1(222, 157, 93, 255) colour:1(68, 255, 174, 255) text("ON/OFF") 
rslider bounds(558, 450, 80, 80), channel("stereo"), range(0, 1, 0, 1, 0.01), text("Stereo"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
rslider bounds(646, 450, 80, 80), channel("lowpass"), range(20, 22000, 22000, 0.5, 1), text("Filtro LP"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
rslider bounds(820, 450, 70, 80), channel("rvb"), range(0, 1, 0, 1, 0.01), text("Riverbero"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
rslider bounds(896, 460, 59, 58), channel("room"), range(0, 1, 0, 1, 0.01), text("Room"), trackerColour(68, 255, 174, 255), outlineColour(0, 0, 0, 50), textColour(255, 255, 255, 255)
</Cabbage>

<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 -m0d --displays
</CsOptions>
<CsInstruments>
; Initialize the global variables. 
ksmps = 64
nchnls = 2
0dbfs = 1

gaL init 0
gaR init 0
 
 
instr 10                                ; ------------------- 10: Strumento dedicato ai controlli della GUI e all'avvio dello strumento 1 ogni N volte al secondo (N determinato dalla densità)

    ; --- CONTROLLI
    gkDen cabbageGetValue "dens"        ; Densità
    gkGain cabbageGetValue "out"        ; Master Gain
    gkSpread cabbageGetValue "spread"   ; Spread frequenze
    gkH2 cabbageGetValue "harm2"        ; Armonica 2 gain
    gkH3 cabbageGetValue "harm3"        ; Armonica 3 gain
    gkH4 cabbageGetValue "harm4"        ; Armonica 4 gain
    gkH5 cabbageGetValue "harm5"        ; Armonica 5 gain
    gkReset cabbageGetValue "reset"     ; Reset armoniche
    gkStereo cabbageGetValue "stereo"   ; Spread pan
    gkFreq cabbageGetValue "freq"       ; Frequenza fondamentale (da 40 a 2000)
    gkLP cabbageGetValue "lowpass"      ; Lowpass
    gkDist cabbageGetValue "dist"       ; Distorsione -- Amount
    gkChDist cabbageGetValue "chdist"   ; Distorsione -- On/Off
    gkFreqLins cabbageGetValue "freqosc"; Oscillazione frequenza
    gkDur cabbageGetValue "durata"      ; Durata oscillazione
    gkRvbSendAmt cabbageGetValue "rvb"  ; Riverbero -- Amount
    gkRoom cabbageGetValue "room"       ; Riverbero -- Room
    giShapes[] fillarray 5, 6, 7
    
    ;PINK NOISE
    kLock cabbageGetValue "lock"
    kTrigLock changed chnget:k("lock") 
    if kLock == 1 then
        
        cabbageSet kTrigLock, "durataP", "active", 0
        cabbageSet kTrigLock, "densP", "active", 0
        cabbageSet kTrigLock, "densP", "alpha", 0.3
        cabbageSet kTrigLock, "durataP", "alpha", 0.3
        kPinkDens = gkDen
        gkPinkDur = gkDur
    else
        cabbageSet kTrigLock, "durataP", "active", 1
        cabbageSet kTrigLock, "densP", "active", 1

        cabbageSet kTrigLock, "densP", "alpha", 1
        cabbageSet kTrigLock, "durataP", "alpha", 1

        kPinkDens cabbageGetValue "densP"
        gkPinkDur cabbageGetValue "durataP"
    endif
    gkPink cabbageGetValue "pinkGain"
    gkGainOsc cabbageGetValue "oscGain" 
    
    
    
    
    
    ;FM & AM
    gkFMmod cabbageGetValue "freqmod"   ; FM -- modulazione
    kUseIndex cabbageGetValue "useindex"
    kTrigfm changed chnget:k("useindex")
    if kUseIndex == 1 then
        gkFMindex cabbageGetValue "fmindex" ; FM -- index
        gkFMdev = gkFMindex*gkFMmod
        cabbageSet kTrigfm, "fmindex", "alpha", 1
        cabbageSet kTrigfm, "freqdev", "alpha", 0.3
        cabbageSet kTrigfm, "fmindex", "active", 1
        cabbageSet kTrigfm, "freqdev", "active", 0
    else
        gkFMdev cabbageGetValue "freqdev"   ; FM -- deviazione
        cabbageSet kTrigfm, "fmindex", "alpha", 0.3
        cabbageSet kTrigfm, "freqdev", "alpha", 1
        cabbageSet kTrigfm, "fmindex", "active", 0
        cabbageSet kTrigfm, "freqdev", "active", 1
    endif 
    gkAMamp cabbageGetValue "amamp"     ; AM -- ampiezza
    gkAMfreq cabbageGetValue "amfreq"   ; AM -- frequenza
    
    gaRvbSend init 0                    ; init mandata riverbero
    
    ; --- AVVIO
    ktrig metro gkDen
    schedkwhen ktrig, 0, 0, 1, 0, gkDur
    
    ktrigP metro kPinkDens
    schedkwhen ktrigP, 0, 0, 2, 0, gkPinkDur
endin

; -----
                                        
instr 1                                 
    ; ------------------- 1: Strumento dedicato agli oscillatori
    iRndSpread = rnd(i(gkSpread)) - (i(gkSpread) / 2)               ; Genarazione numero randomico da aggiungere alla frequenza per lo spread frequenziale
    iAmp = (1/i(gkDen))*(i(gkDen)/2)                                ; Ampiezza
    ;aEnv madsr 0.3, 0.2, 0.1, 0.1
    aEnv poscil3 0.5, 1/i(gkDur), giShapes[cabbageGetValue:i("env")-1]
    
    
    aFMMod oscili gkFMdev, gkFMmod           
    
    ; --- LAYER 1: Frequenza e Armoniche
    aSig1 oscili iAmp, gkFreq + aFMMod                              ; segnale principale, viene sommato alla frequenza 0 ("aFMMod = 0" nell'else di prima) se l'FM non è attiva
    aHarm2 oscili iAmp*gkH2, (gkFreq + iRndSpread)*(2*gkReset)      ; segnale armonica 2
    aHarm3 oscili iAmp*gkH3, (gkFreq + iRndSpread)*(3*gkReset)      ; segnale armonica 3
    aHarm4 oscili iAmp*gkH4, (gkFreq + iRndSpread)*(4*gkReset)      ; segnale armonica 4
    aHarm5 oscili iAmp*gkH5, (gkFreq + iRndSpread)*(5*gkReset)      ; segnale armonica 5
    
    
    aSig1 = (aSig1 + aHarm2 + aHarm3 + aHarm4 + aHarm5)             ; segnale LAYER 1 sommato
    
    ; --- LAYER 2: Spread frequenze
    aSig2 oscili iAmp, gkFreq+iRndSpread + aFMMod                   ; segnale spread frequenziale
    aHarm2Spr oscili iAmp*gkH2, (gkFreq + iRndSpread)*(2*gkReset)   ; spread armonica 2
    aHarm3Spr oscili iAmp*gkH3, (gkFreq + iRndSpread)*(3*gkReset)   ; spread armonica 3
    aHarm4Spr oscili iAmp*gkH4, (gkFreq + iRndSpread)*(4*gkReset)   ; spread armonica 4
    aHarm5Spr oscili iAmp*gkH5, (gkFreq + iRndSpread)*(5*gkReset)   ; spread armonica 5
    aSig2 = (aSig2 + aHarm2Spr + aHarm3Spr + aHarm4Spr + aHarm5Spr) ; segnale LAYER 2 sommato
    
    
    
    ; --- SOMMA E ADSR
    aSum = (aSig1+aSig2)*aEnv*gkGainOsc
    
    
    ; --- DISTORSIONE
    if gkChDist == 1 then
        aSum distort aSum, gkDist, 1
    endif

    
    ; --- SPREAD STEREO
    iPan = 0.5 + (((rnd(2) - 1) / 2) * i(gkStereo))
    aL, aR pan2 aSum, iPan
    
    
    ; --- FILTRO LOWPASS
    aL lowpass2 aL, gkLP, 1
    aR lowpass2 aR, gkLP, 1
    
    ; --- SINTESI AM
    
    aAMMod oscili gkAMamp, gkAMfreq
    aL = (aL*aAMMod)+aL
    aR = (aR*aAMMod)+aR
    
    
   
    ; --- OUT (con display dei due grafici)
    /*
    aDisp = (aL+aR)/2
    dispfft aDisp, .01, 2048
    display aDisp, .05, 1
    
    ;Mandata riverbero
    ;gaRvbSendL = gaRvbSend + (aL * gkRvbSendAmt)
    ;gaRvbSendR = gaRvbSend + (aR * gkRvbSendAmt)
    */
    gaL = aL + gaL
    gaR = aR + gaR
    
endin

instr 2
    iPanP = 0.5 + (((rnd(2) - 1) / 2) * i(gkStereo))
    aEnvP poscil3 0.5, 1/i(gkPinkDur), giShapes[cabbageGetValue:i("envPink")-1]   
    aPink pinker
    aPink = aPink*gkPink*aEnvP
    aPL, aPR pan2 aPink, iPanP
      
    gaL = aPL + gaL
    gaR = aPR + gaR 
endin

instr 3                                 ; ------------------- 3: Strumento dedicato alla mandata del riverbero
    aL = gaL
    aR = gaR
    aRvbL, aRvbR reverbsc aL, aR, gkRoom, 20000
    
    
                                    
    aSumL = (aL  + aRvbL * gkRvbSendAmt )
    aSumR = (aR  + aRvbR * gkRvbSendAmt )
    
    outs aSumL* gkGain, aSumR* gkGain
    
    gaL = 0
    gaR = 0
endin


</CsInstruments>
<CsScore>
f 1 0 16384 10 1

i10 0 z
i3 0 z

f5 0 1025 20 2							; CAMPANA DI GAUSS
f6 0 1025  7 0 128 1 768 1 120 0 8 0		; TRAPEZIO
f7 0 1025 10 1 4 8 ; BOH

</CsScore>
</CsoundSynthesizer>