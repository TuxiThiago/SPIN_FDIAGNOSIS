# maxx 1
# maxx 2
wm title . "scenario"
wm geometry . 640x600+650+100
canvas .c -width 800 -height 800 \
	-scrollregion {0c -1c 30c 100c} \
	-xscrollcommand ".hscroll set" \
	-yscrollcommand ".vscroll set" \
	-bg white -relief raised -bd 2
scrollbar .vscroll -relief sunken  -command ".c yview"
scrollbar .hscroll -relief sunken -orient horiz  -command ".c xview"
pack append . \
	.vscroll {right filly} \
	.hscroll {bottom fillx} \
	.c {top expand fill}
.c yview moveto 0
# ProcLine[3] stays at 0 (Used 0 nobox 0)
.c create rectangle 435 0 489 20 -fill black
# ProcLine[3] stays at 0 (Used 0 nobox 0)
.c create rectangle 434 -2 486 18 -fill ivory
.c create text 460 8 -text "2:Diag"
# ProcLine[2] stays at 0 (Used 0 nobox 0)
.c create rectangle 278 0 326 20 -fill black
# ProcLine[2] stays at 0 (Used 0 nobox 0)
.c create rectangle 276 -2 324 18 -fill ivory
.c create text 300 8 -text "1:TSF"
# ProcLine[1] stays at 0 (Used 0 nobox 0)
.c create rectangle 123 0 161 20 -fill black
# ProcLine[1] stays at 0 (Used 0 nobox 0)
.c create rectangle 122 -2 158 18 -fill ivory
.c create text 140 8 -text "0:L1"
.c create text 70 32 -fill #eef -text "1"
.c create line 140 32 460 32 -fill #eef -dash {6 4}
.c create line 140 36 140 20 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 0 to 1 (Used 1 nobox 0)
# ProcLine[1] stays at 1 (Used 1 nobox 1)
.c create rectangle 132 22 148 42 -fill white -width 0
.c create text 140 32 -text "#4"
.c create line 300 66 380 66 -fill darkblue -tags mesg -width 2
.c create line 380 66 460 66 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 56 -fill #eef -text "3"
.c create line 140 56 460 56 -fill #eef -dash {6 4}
.c create line 300 36 300 44 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 0 to 3 (Used 1 nobox 1)
# ProcLine[2] stays at 3 (Used 1 nobox 1)
.c create rectangle 276 46 324 66 -fill white -width 0
.c create text 300 56 -text "F2D!a"
.c create text 70 80 -fill #eef -text "5"
.c create line 140 80 460 80 -fill #eef -dash {6 4}
.c create line 460 36 460 68 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 0 to 5 (Used 1 nobox 1)
# ProcLine[3] stays at 5 (Used 1 nobox 1)
.c create rectangle 436 70 484 90 -fill white -width 0
.c create text 460 80 -text "F2D?a"
.c create line 300 114 380 114 -fill darkblue -tags mesg -width 2
.c create line 380 114 460 114 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 104 -fill #eef -text "7"
.c create line 140 104 460 104 -fill #eef -dash {6 4}
.c create line 300 72 300 92 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 3 to 7 (Used 1 nobox 1)
# ProcLine[2] stays at 7 (Used 1 nobox 1)
.c create rectangle 250 94 350 114 -fill white -width 0
.c create text 300 104 -text "F2D!sigma_f"
.c create text 70 128 -fill #eef -text "9"
.c create line 140 128 460 128 -fill #eef -dash {6 4}
.c create line 460 96 460 116 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 5 to 9 (Used 1 nobox 1)
# ProcLine[3] stays at 9 (Used 1 nobox 1)
.c create rectangle 410 118 510 138 -fill white -width 0
.c create text 460 128 -text "F2D?sigma_f"
.c create text 70 152 -fill #eef -text "11"
.c create line 140 152 460 152 -fill #eef -dash {6 4}
.c create line 140 48 140 140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 1 to 11 (Used 1 nobox 1)
# ProcLine[1] stays at 11 (Used 1 nobox 1)
.c create rectangle 132 142 148 162 -fill white -width 0
.c create text 140 152 -text "#3"
.c create line 300 186 380 186 -fill darkblue -tags mesg -width 2
.c create line 380 186 460 186 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 176 -fill #eef -text "13"
.c create line 140 176 460 176 -fill #eef -dash {6 4}
.c create line 300 120 300 164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 7 to 13 (Used 1 nobox 1)
# ProcLine[2] stays at 13 (Used 1 nobox 1)
.c create rectangle 276 166 324 186 -fill white -width 0
.c create text 300 176 -text "F2D!b"
.c create text 70 200 -fill #eef -text "15"
.c create line 140 200 460 200 -fill #eef -dash {6 4}
.c create line 460 144 460 188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 9 to 15 (Used 1 nobox 1)
# ProcLine[3] stays at 15 (Used 1 nobox 1)
.c create rectangle 436 190 484 210 -fill white -width 0
.c create text 460 200 -text "F2D?b"
.c create text 70 224 -fill #eef -text "17"
.c create line 140 224 460 224 -fill #eef -dash {6 4}
.c create line 140 168 140 212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 11 to 17 (Used 1 nobox 1)
# ProcLine[1] stays at 17 (Used 1 nobox 1)
.c create rectangle 132 214 148 234 -fill white -width 0
.c create text 140 224 -text "#8"
.c create line 300 258 380 258 -fill darkblue -tags mesg -width 2
.c create line 380 258 460 258 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 248 -fill #eef -text "19"
.c create line 140 248 460 248 -fill #eef -dash {6 4}
.c create line 300 192 300 236 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 13 to 19 (Used 1 nobox 1)
# ProcLine[2] stays at 19 (Used 1 nobox 1)
.c create rectangle 276 238 324 258 -fill white -width 0
.c create text 300 248 -text "F2D!c"
.c create text 70 272 -fill #eef -text "21"
.c create line 140 272 460 272 -fill #eef -dash {6 4}
.c create line 460 216 460 260 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 15 to 21 (Used 1 nobox 1)
# ProcLine[3] stays at 21 (Used 1 nobox 1)
.c create rectangle 436 262 484 282 -fill white -width 0
.c create text 460 272 -text "F2D?c"
.c create line 300 306 380 306 -fill darkblue -tags mesg -width 2
.c create line 380 306 460 306 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 296 -fill #eef -text "23"
.c create line 140 296 460 296 -fill #eef -dash {6 4}
.c create line 300 264 300 284 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 19 to 23 (Used 1 nobox 1)
# ProcLine[2] stays at 23 (Used 1 nobox 1)
.c create rectangle 276 286 324 306 -fill white -width 0
.c create text 300 296 -text "F2D!a"
.c create text 70 320 -fill #eef -text "25"
.c create line 140 320 460 320 -fill #eef -dash {6 4}
.c create line 460 288 460 308 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 21 to 25 (Used 1 nobox 1)
# ProcLine[3] stays at 25 (Used 1 nobox 1)
.c create rectangle 436 310 484 330 -fill white -width 0
.c create text 460 320 -text "F2D?a"
.c create text 70 344 -fill #eef -text "27"
.c create line 140 344 460 344 -fill #eef -dash {6 4}
.c create line -20 36 -20 332 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[0] from 0 to 27 (Used 0 nobox 1)
# ProcLine[0] stays at 27 (Used 0 nobox 0)
.c create rectangle -57 334 17 354 -fill ivory
.c create text -20 344 -text " CYCLE>"
.c create line 300 378 380 378 -fill darkblue -tags mesg -width 2
.c create line 380 378 460 378 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 368 -fill #eef -text "29"
.c create line 140 368 460 368 -fill #eef -dash {6 4}
.c create line 300 312 300 356 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 23 to 29 (Used 1 nobox 0)
# ProcLine[2] stays at 29 (Used 1 nobox 1)
.c create rectangle 250 358 350 378 -fill white -width 0
.c create text 300 368 -text "F2D!sigma_u"
.c create text 70 392 -fill #eef -text "31"
.c create line 140 392 460 392 -fill #eef -dash {6 4}
.c create line 460 336 460 380 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 25 to 31 (Used 1 nobox 1)
# ProcLine[3] stays at 31 (Used 1 nobox 1)
.c create rectangle 410 382 510 402 -fill white -width 0
.c create text 460 392 -text "F2D?sigma_u"
.c lower grid
.c raise mesg
