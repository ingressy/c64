10 poke 53280,10 : rem ramenfarbe
20 poke 53281,1 : rem hintergrundfarbe
30 poke 646, 0 : rem zeichenfarbe

40 print chr$(147)
rem spc number (40 - txt) /2
50 print spc(7) "floppformat by backbard it"
60 print spc(7) "version v1.1 (c) 2017-2025"
70 print ""

80 print "welches laufwerk?"
90 input "id (8-11):"; id

rem checkt id
100 if id > 11 or id < 8 then goto 500
110 print "ok."

200 print ""
210 print "welcher name?"
220 input "name:"; ne$

rem checkt name
230 if len(ne$) > 16 then goto 540
240 print "ok."

rem eingaben anzeigen
250 print ""
260 print "angaben:"
270 print "id: "; id; "name: "; ne$

280 input "richtig? (j/n)"; ri$
290 if ri$ = "j" then goto 330
300 if ri$ = "n" then goto 80
310 print "hallo? bitte richtig antworten!"
320 goto 250

rem formatiert die floppy
330 print chr$(147)
340 print spc(7) "floppformat by backbard it"
350 print spc(7) "version v1.1 (c) 2017-2025"

360 print ""
370 print ""

380 print spc(14) "bitte warten"
390 print spc(7) "floppy wird formatiert ..."
400 open 1, id, 15 : print#1,"n:"; ne$; ",00" : close 1

rem soll eine weitere floppy formatiert werden
410 print ""
420 input "weitere floppy formatieren? (j/n)"; wf$
430 if wf$ = "j" then goto 40
440 if wf$ = "n" then goto 480
450 print "hallo? bitte richtig antworten!"
460 goto 400

rem macht ein kernel reset
480 sys 64738

490 print ""
500 print "falsche floppy-id!"
510 print "bitte noch einmal probieren:"
520 goto 90

530 print ""
540 print "zu langer floppy name"
550 print "bitte noch einmal probieren:"
560 goto 130
