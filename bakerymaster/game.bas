10 poke 53280,10 : rem ramenfarbe
20 poke 53281,1 : rem hintergrundfarbe
30 poke 646, 0 : rem zeichenfarbe

40 print chr$(147)
rem spc number (40 - txt) /2
50 print spc(8) "bakerymaster by ingressy"
60 print spc(8) "version v1 (c) 2017-2025"

70 print ""
80 input "wie viele spieler:in (1-4)"; us
90 if us > 4 or us < 1 then goto 900

100 print chr$(147)
110 print spc(8) "bakerymaster by ingressy"
120 print spc(8) "version v1 (c) 2017-2025"
130 print ""

140 if us = 1 then goto 180
150 if us = 2 then goto 210
160 if us = 3 then goto 260
170 if us = 4 then goto 330

180 input "name spieler:in 1"; a$
190 print "ok. hallo "; a$; "!"
200 goto 420

210 input "name spieler:in 1"; a$
220 print "ok. hallo "; a$; "!"
230 input "name spieler:in 2"; b$
240 print "ok. hallo "; a$; " und "; b$; "!"
250 goto 420

260 input "name spieler:in 1"; a$
270 print "ok. hallo "; a$; "!"
280 input "name spieler:in 2"; b$
290 print "ok. hallo "; a$; " und "; b$; "!"
300 input "name spieler:in 3"; c$
310 print "ok. hallo "; a$; " , "; b$; " und "; c$; "!"
320 goto 420

330 input "name spieler:in 1"; a$
340 print "ok. hallo "; a$; "!"
350 input "name spieler:in 2"; b$
360 print "ok. hallo "; a$; " und "; b$; "!"
370 input "name spieler:in 3"; c$
380 print "ok. hallo "; a$; " , "; b$; " und "; c$; "!"
390 input "name spieler:in 4"; d$
400 print "ok. hallo "; a$; " , "; b$; " , "; c$; " und ";  d$; "!"
410 goto 420

420 input "eingaben richtig (j/n/a)"; er$
430 if er$ = "n" then goto 100
440 if er$ = "a" then end

450 print chr$(147)
460 print spc(8) "bakerymaster by ingressy"
470 print spc(8) "version v1 (c) 2017-2025"
480 print ""

490 print "1. unendlich (9.999.999 dm)"
500 print "2. max upgrades"
510 print "3. 2.000.000 dm"

520 input "welcher spielmodus"; sm
530 if sm > 3 or sm < 0 then goto 940

540 day = 1
550 year = 0
551 z = 5000
552 y = 5000
553 x = 5000
554 w = 5000
560 sl$ = a$

570 print chr$(147)
580 print spc(1) "tag"; day; ",jahr"; year
590 print spc(1) sl$
600 if sl$ = a$ then print z; "dm"
601 if sl$ = b$ then print y; "dm"
602 if sl$ = c$ then print x; "dm"
603 if sl$ = d$ then print w; "dm"
610 print ""

700 print "v - verkaufsstaelle kaufen"
710 print "b - baekerei sachen kaufen"
720 print "s - verkaufen"
730 print "o - ofen"
740 print "l - lager"
750 print "n - naechste runde"
760 print "a - spiel beenden"
770 input "was willst du machen"; ww$

800 if ww$ = "v" then goto 2200
810 if ww$ = "b" then goto 1000
820 if ww$ = "s" then goto 1000
830 if ww$ = "o" then goto 1000
840 if ww$ = "l" then goto 1000
850 if ww$ = "n" then goto 1000
860 if ww$ = "a" then goto 2000
870 if ww$ = "" then goto 570

900 print ""
910 print "kannst du nicht lesen?"
920 print "los nochmal"
930 goto 70

940 print ""
950 print "kannst du nicht lesen?"
960 print "los nochmal"
970 goto 450

1000 if day = 25 then year = year +1 : day = 1

1010 if us = 1 then day = day + 1

1020 if us = 2 then if sl$ = b$ then sl$ = a$ : day = day + 1 : goto 1110
1030 if us = 2 then if sl$ = a$ then sl$ = b$

1040 if us = 3 then if sl$ = c$ then sl$ = a$ : day = day +1 : goto 1110
1050 if us = 3 then if sl$ = b$ then sl$ = c$
1060 if us = 3 then if sl$ = a$ then sl$ = b$

1070 if us = 4 then if sl$ = d$ then sl$ = a$ : day = day +1 : goto 1110
1080 if us = 4 then if sl$ = c$ then sl$ = d$
1090 if us = 4 then if sl$ = b$ then sl$ = c$
1100 if us = 4 then if sl$ = a$ then sl$ = b$

1110 if sm = 3 then if z >= 2000000 then win$ = a$ : goto 2000
1111 if sm = 3 then if x >= 2000000 then win$ = b$ : goto 2000
1112 if sm = 3 then if y >= 2000000 then win$ = c$ : goto 2000
1113 if sm = 3 then if w >= 2000000 then win$ = d$ : goto 2000
1120 goto 570

2000 rem spiel ende
2010 print chr$(147)
2020 print spc(8) "bakerymaster by ingressy"
2040 print spc(8) "version v1 (c) 2017-2025"
2050 print ""
2060 print spc(12) "spiel ende!!"
2070 print ""
2080 print "spieler:in "; win$ ;" hat gewonnen"
2090 print "ende nach"; day; "tage,"; year; "jahre"
2100 end

rem verkaufstellen kaufen screen
2200 print chr$(147)
2210 print spc(1) "tag"; day; ",jahr"; year
2220 print spc(1) sl$
2230 if sl$ = a$ then print z; "dm"
2240 if sl$ = b$ then print y; "dm"
2250 if sl$ = c$ then print x; "dm"
2260 if sl$ = d$ then print w; "dm"
2270 print ""

2280 print "verkaufstellen:"
2290 print "1. eigner laden - 1.000.000dm"; el$
2300 print "2. tante emma - 100dm "; te$
2310 print "3. zurueck"
2320 input "was willst du tun"; dt
2330 if dt = 3 then goto 570
2340 if dt = 1 then goto 0
2350 if dt = 2 then goto 3000
 
3000 print chr$(147)
3010 print spc(1) "tag"; day; ",jahr"; year
3020 print spc(1) sl$
3030 if sl$ = a$ then dm = z : print z; "dm"
3040 if sl$ = b$ then dm = y : print y; "dm"
3050 if sl$ = c$ then dm = x : print x; "dm"
3060 if sl$ = d$ then dm = w : print w; "dm"

3070 print ""
3080 print "tante emma laden kaufen"
3090 input "(j/n)"; tek$
3100 if tek$ = "n" then goto 2200
3200 if dm <= 100 then print "du hast nicht genug dm!"
3210 if dm >= 100 then te$ = "gekauft" : dm = dm - 100

3230 if sl$ = a$ then z = dm
3240 if sl$ = b$ then y = dm
3250 if sl$ = c$ then x = dm 
3260 if sl$ = d$ then w = dm
3270 goto 2200
