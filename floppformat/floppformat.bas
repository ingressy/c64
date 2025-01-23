10 poke 53280,10 : rem ramenfarbe
20 poke 53281,1 : rem hintergrundfarbe
30 poke 646, 0 : rem zeichenfarbe

40 print chr$(147)
rem spc number (40 - txt) /2
50 print spc(7) "floppformat by backbord it"
60 print spc(7) "version v1.3 (c) 2017-2025"
70 print ""

80 print "welches laufwerk?"
90 input "id (8-11):"; id

rem checkt id
100 if id > 11 or id < 8 then goto 520
110 print "ok."

200 print ""
210 print "welcher name?"
220 input "name:"; ne$

rem checkt name
230 if len(ne$) > 16 then goto 560
240 print "ok."

rem eingaben anzeigen
250 print ""
260 print "angaben:"
270 print "id: "; id; "name: "; ne$

280 input "richtig? (j/n/a)"; ri$
290 if ri$ = "j" then goto 340
300 if ri$ = "n" then goto 40
310 if ri$ = "a" then goto 510

320 print "hallo? bitte richtig antworten!"
330 goto 250

rem formatiert die floppy
340 print chr$(147)
350 print spc(7) "floppformat by backbord it"
360 print spc(7) "version v1.3 (c) 2017-2025"

370 print ""
380 print ""

390 print spc(14) "bitte warten"
400 print spc(7) "floppy wird formatiert ..."
440 open 1, id, 15 : print#1,"n:"; ne$; ",00" : close 1

rem soll eine weitere floppy formatiert werden
450 print ""
460 input "weitere floppy formatieren? (j/n)"; wf$
470 if wf$ = "j" then goto 40
480 if wf$ = "n" then goto 510
490 print "hallo? bitte richtig antworten!"
500 goto 450

rem macht ein kernel reset
510 sys 64738

520 print ""
530 print "falsche floppy-id!"
540 print "bitte noch einmal probieren:"
550 goto 70

560 print ""
570 print "zu langer floppy name"
580 print "bitte noch einmal probieren:"
590 goto 200
