10 CLS: RESTORE: COLOR 5: PRINT "Drawing Demo": PRINT : PRINT
20 DATA PLOT, LINE, RECT, ELLIPSE, POLY, IMAGE
30 FOR I = 1 TO 6: READ A$: PRINT TAB(10); I; ". "; A$: NEXT
40 PRINT: PRINT "Select (ESC to quit): ";
50 GET K: PRINT CHR$(K): IF K = 27 OR K = ASC("0") THEN END
55 COLOR 3: FILL OFF
60 K = K - ASC("0"): ON K GOSUB 100, 200, 300, 400, 500, 600
70 GOTO 10

100 REM PLOT
109 PRINT TAB(30,17); "PLOT 600,300: PLOT 650,300"
110 PLOT 600,300: PLOT 650,300: WAIT
112 PRINT TAB(30,18); "FOR I = 0 TO 10"
113 PRINT TAB(30,19); "X(I)=600+20*I: Y(I)=300+100*SIN(I/5)"
114 PRINT TAB(30,20); "NEXT I"
115 PRINT TAB(30,21); "PLOT X(), Y()"
120 FOR I = 0 TO 10: X(I)=600+20*I: Y(I)=300+100*SIN(I/5): NEXT I
130 PLOT X(), Y(): WAIT
190 GOSUB 1000: RETURN

200 REM LINE
209 PRINT TAB(35,17); "PLOT 600,300"
210 PLOT 600,300: WAIT
219 PRINT TAB(35,18); "LINE TO 700,350"
220 LINE TO 700,350: WAIT
229 PRINT TAB(35,19); "LINE 600,290 TO 700,280"
230 LINE 600,290 TO 700,280: WAIT
239 PRINT TAB(35,20); "LINE TO 800,350"
240 LINE TO 800,350
290 GOSUB 1000: RETURN

300 REM RECT
309 PRINT TAB(35,18); "RECT 500, 300 TO 650, 400"
310 RECT 500, 300 TO 650, 400: WAIT
319 PRINT TAB(35,19); "FILL ON: RECT TO 750, 500"
320 FILL ON: RECT TO 750, 500
390 GOSUB 1000: RETURN

400 REM ELLIPSE
409 PRINT TAB(35,18); "ELLIPSE 500, 300 TO 650, 400"
410 ELLIPSE 500, 300 TO 650, 400: WAIT
419 PRINT TAB(35,19); "FILL ON: ELLIPSE TO 750, 500"
420 FILL ON: ELLIPSE TO 750, 500
490 GOSUB 1000: RETURN

500 REM POLY
590 GOSUB 1000: RETURN

600 REM IMAGE
690 GOSUB 1000: RETURN

1000 REM Wait for a keypress
1005 COLOR 5
1010 PRINT TAB(21, 26); "(Press any key to continue)";
1020 GET K$: IF K$ = CHR$(27) THEN PRINT: END
1030 RETURN
