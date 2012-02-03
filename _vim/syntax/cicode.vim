"
"   @@@@@@@@  @@@@@@@   @@@@@@@@  @@@ @@@   @@@@@@    @@@@@@@   @@@@@@   @@@       @@@@@@@@
"  @@@@@@@@@  @@@@@@@@  @@@@@@@@  @@@ @@@  @@@@@@@   @@@@@@@@  @@@@@@@@  @@@       @@@@@@@@
"  !@@        @@!  @@@  @@!       @@! !@@  !@@       !@@       @@!  @@@  @@!       @@!
"  !@!        !@!  @!@  !@!       !@! @!!  !@!       !@!       !@!  @!@  !@!       !@!
"  !@! @!@!@  @!@!!@!   @!!!:!     !@!@!   !!@@!!    !@!       @!@!@!@!  @!!       @!!!:!
"  !!! !!@!!  !!@!@!    !!!!!:      @!!!    !!@!!!   !!!       !!!@!!!!  !!!       !!!!!:
"  :!!   !!:  !!: :!!   !!:         !!:         !:!  :!!       !!:  !!!  !!:       !!:
"  :!:   !::  :!:  !:!  :!:         :!:        !:!   :!:       :!:  !:!   :!:      :!:
"   ::: ::::  ::   :::   :: ::::     ::    :::: ::    ::: :::  ::   :::   :: ::::   :: ::::
"   :: :: :    :   : :  : :: ::      :     :: : :     :: :: :   :   : :  : :: : :  : :: ::
"
"    .: FILE:          cicode.vim
"    .: CREATED:       2012-02-01 19:11
"    .: AUTHOR:        Andreas Persson (greyscale, grey)
"    .: MAIL:          <andreas(at)greyscale(dot)se>
"    .: VERSION:       1.0
"    .: DESCRIPTION:   Syntax file for CiCode use in CitectSCADA by Schneider Electric.
"
" __________________________________________________________________________________________
"  This file is distributed "as it is", like it? Then use it in whole or parts of it but be
"  minded that it comes with absolutely no warranty. But then again you got it for free..
" __________________________________________________________________________________________
"
"
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

syn keyword cicodeStatement   abstract assert break catch class const continue
syn keyword cicodeStatement   double extends end false final finally function goto
syn keyword cicodeStatement   global implements import instanceof interface native new null package
syn keyword cicodeStatement   private protected public return static strictfp super synchronized
syn keyword cicodeStatement   this threadsafe throw throws transient true try void volatile 

syn keyword cicodeLabel       case default
syn keyword cicodeConditional if else switch
syn keyword cicodeRepeat      do for while
syn keyword cicodeType        int real string object


syn keyword cicodeFunction    Abs AlarmAck AlarmAckRec AlarmActive AlarmClear AlarmComment AlarmDelete AlarmDisable
syn keyword cicodeFunction    AlarmDisableRec AlarmDsp AlarmDspLast AlarmDspNext AlarmDspPrev AlarmEnable AlarmEnableRec
syn keyword cicodeFunction    AlarmFirstCatRec AlarmFirstTagRec AlarmGetDsp AlarmGetFieldRec AlarmGetInfo AlarmHelp
syn keyword cicodeFunction    AlarmNextCatRec AlarmNextTagRec AlarmSaveType AlarmSetInfo AlarmSetPriority AlarmSetPriorityRec
syn keyword cicodeFunction    AlarmSetThreshold AlarmSetThresholdRec AlarmSplit AlarmSumAppend AlarmSumDelete AlarmSumFirst
syn keyword cicodeFunction    AlarmSumGet AlarmSumLast AlarmSumNext AlarmSumPrev AlarmSumSet AlarmSumSplit ArcCos ArcSin ArcTan
syn keyword cicodeFunction    Beep CallEvent ChainEvent CharToStr CitectInfo ClipCopy ClipPaste ClipReadLn ClipWriteLn CodeSetMode
syn keyword cicodeFunction    ComClose ComOpen ComRead ComReset ComWrite Cos DateAdd DateDay DateMonth DateSub DateWeekDay DateYear
syn keyword cicodeFunction    DDEExec DDEPost DDERead DDEWrite Debug DegToRad DevAppend DevClose DevControl DevCurr DevDelete
syn keyword cicodeFunction    DevDisable DevEOF DevFind DevFlush DevGetField DevHistory DevInfo DevNext DevOpen DevPrev DevPrint
syn keyword cicodeFunction    DevRead DevReadLn DevRecNo DevSeek DevSetField DevSize DevWrite DevWriteLn DevZap DLLCall DLLClose
syn keyword cicodeFunction    DLLOpen DspAnGetPos DspAnInfo DspAnInRgn DspAnMove DspAnMoveRel DspAnNew DspAnNewRel DspAnWrite DspBar
syn keyword cicodeFunction    DspBarLoad DspButton DspButtonFn DspChart DspCol DspDel DspDirty DspError DspFile DspFileGetInfo DspFileGetName
syn keyword cicodeFunction    DspFileScroll DspFileSetName DspFlushObj DspFont DspFontHnd DspFullScreen DspGetAnCur DspGetMouse
syn keyword cicodeFunction    DspGetNearestAn DspInfo DspInfoDestroy DspInfoField DspInfoNew DspInfoValid DspKernel DspMarkerMove
syn keyword cicodeFunction    DspMarkerNew DspMCI DspPage DspPlaySound DspStr DspSym DspSymAnm DspSymLoad DspText DspTrend
syn keyword cicodeFunction    DspTrendInfo DspTrnLoad DspVerbose EngToGeneric ErrCom ErrGetHw ErrInfo ErrLog ErrMsg ErrSet ErrSetHw
syn keyword cicodeFunction    ErrSetLevel ErrTrap Exec Exp Fact FileClose FileCopy FileDelete FileEOF FileExist FileFind FileGetTime
syn keyword cicodeFunction    FileMakePath FileOpen FileRead FileReadBlockDODGY FileReadLn FileReName FileSeek FileSelect FileSetTime
syn keyword cicodeFunction    FileSize FileSplitPath FileWrite FileWriteBlockDODGY FileWriteLn FmtClose FmtFieldHnd FmtGetField
syn keyword cicodeFunction    FmtGetFieldHnd FmtOpen FmtSetField FmtSetFieldHnd FmtToSTr FormActive FormAddList FormButton FormCheckBox
syn keyword cicodeFunction    FormComboBox FormCurr FormDestroy FormEdit FormField FormGetCurrInst FormGetData FormGetInst FormGetText
syn keyword cicodeFunction    FormGoto FormGroupBox FormInput FormListBox FormNew FormPassword FormPosition FormPrompt FormRadioButton
syn keyword cicodeFunction    FormRead FormSetData FormSetInst FormSetText FormWndHnd FullName GetArea GetEnv GetEvent GetGlbBool
syn keyword cicodeFunction    GetGlbFlt GetGlbInt GetGlbStr GetPriv GetVar GraphBox GraphClose GraphGetInfo GraphGrid GraphLine
syn keyword cicodeFunction    GraphMarker GraphOpen GraphScaleMarker GraphText GrpClose GrpDelete GrpFirst GrpIn GrpInsert GrpMath
syn keyword cicodeFunction    GrpName GrpNext GrpOpen GrpToStr Halt HexToStr HighByte HighWord Input IntToStr IsError 
syn keyword cicodeFunction    KerCmd KeyAllowCursor KeyBS KeyDown KeyGet KeyGetCursor KeyLeft KeyMove KeyPeek KeyPut KeyPutStr
syn keyword cicodeFunction    KeyReplay KeyReplayAll KeyRight KeySetCursor KeySetSeq KeySetType KeyUp Ln Log Login Logout LowByte LowWord
syn keyword cicodeFunction    MailError MailLogoff MailLogon MailRead MailSend Max Message Min MsgBrdcst MsgClose MsgGetCurr MsgOpen
syn keyword cicodeFunction    MsgRead MsgRPC MsgWrite Name OnEvent PageDisplay PageGetInt PageGoto PageInfo PageLast PageNext
syn keyword cicodeFunction    PagePeekLast PagePopLast PagePrev PagePushLast PageSetInt ParameterGet ParameterPut PathToStr Pi
syn keyword cicodeFunction    PointData PointFree PointNew PointRead PointStatus PointWrite Pow Print PrintLn Prompt
syn keyword cicodeFunction    QueClose QueLength QueOpen QuePeek QueRead QueWrite RadToDeg Rand RdbClose RdbEOF RdbFind RdbFirstRec RdbGet
syn keyword cicodeFunction    rdbGetPath RdbLastRec RdbNextRec RdbNoRec RdbOpen RdbOpenPage RdbOpenSub RdbPosRec RdbPrevRec RdbSet
syn keyword cicodeFunction    rdbSetPath RealToStr RepGetControl Report RepSetControl ReRead Round SemClose SemOpen SemSignal SemWait
syn keyword cicodeFunction    ServerControl ServerInfo SetArea SetEvent SetGlbBool SetGlbFlt SetGlbInt SetGlbStr Shutdown Sign Sin Sleep
syn keyword cicodeFunction    SPCSetLimit SQLAppend SQLBeginTran SQLCommit SQLConnect SQLDisconnect SQLEnd SQLErrMsg SQLExec SQLFieldInfo
syn keyword cicodeFunction    SQLGetField SQLInfo SQLNext SQLNoFields SQLNumChange SQLRollBack SQLSet SQLTraceOff SQLTraceOn Sqrt StrClean
syn keyword cicodeFunction    StrFill StrFormat StrGetChar StrLeft StrLength StrLower StrMid StrPad StrRight StrSearch StrSetChar
syn keyword cicodeFunction    StrToChar StrToDate StrToFmt StrToGrp StrToHex StrToInt StrToPeriod StrToReal StrToTime StrToValue
syn keyword cicodeFunction    StrTrim StrUpper StrWord SysTime SysTimeDelta TableLookUp TableMath TableShift Tan TaskHnd TaskKill
syn keyword cicodeFunction    TaskNew TaskResume TaskSuspend TestRandomWave TestSawWave TestSinWave TestSquareWave TestTriangWave
syn keyword cicodeFunction    TimeCurrent TimeHour TimeMidNight TimeMin TimeSec TimeSecond TimeSet TimeToStr TimeToStrFmt TimeYearDay
syn keyword cicodeFunction    TraceMsg TrnAddHistory TrnDelete TrnDelHistory TrnEcho TrnFlush TrnGetBufTime TrnGetBufValue TrnGetCursorPos
syn keyword cicodeFunction    TrnGetCursorTime TrnGetCursorValue TrnGetCursorValueStr TrnGetDefScale TrnGetFormat TrnGetMode TrnGetPen
syn keyword cicodeFunction    TrnGetPenFocus TrnGetPenNo TrnGetPeriod TrnGetScale TrnGetScaleStr TrnGetTable TrnGetTime TrnGetUnits
syn keyword cicodeFunction    TrnNew TrnScroll TrnSetCursor TrnSetCursorPos TrnSetPen TrnSetPenFocus TrnSetPeriod TrnSetScale TrnSetTable
syn keyword cicodeFunction    TrnSetTime UnitControl UnitInfo UserInfo Version WhoAmI WinCopy WinFile WinFree WinGetFocus WinGetWndHnd
syn keyword cicodeFunction    WinGoto WinMode WinMove WinNew WinNewAt WinNext WinNumber WinPos WinPrev WinPrint WinPrintFile WinSelect
syn keyword cicodeFunction    WinSize WinTitle WndFind WndGetFileProfile WndGetProfile WndHelp WndInfo WndPutFileProfile WndPutProfile WndShow 
syn keyword cicodeFunction    _AlarmDsp _DevClose _DevOpen _DspButton _DspExec _DspSym _DspSymAnm _DspTrendInfo _Exec _KeyReplay _TimeSub
syn keyword cicodeFunction    _TrnNew _Wave _WinPrint _WinPrintFile 

syn match   cicodeSpecial     display contained "\\\(x\x\+\|\o\{1,3}\|.\|$\)"

syn match   cicodeCharacter   "L\='[^\\]'"
syn match   cicodeCharacter   "L'[^']*'" contains=cicodeSpecial

syn region  cicodeString      matchgroup=cicodeString start=+'+ end=+'+
syn region  cicodeString      matchgroup=cicodeString start=+"+ end=+"+

syn match   cicodeNumber      "-\=\<\d\+\>"

syn match   cicodeOperator   "[+\-/*=]"
syn match   cicodeOperator   "[<>]=\=" 
syn match   cicodeOperator   "<>"
syn match   cicodeOperator   "="
syn match   cicodeOperator   "[()]"
syn match   cicodeOperator   "\.\."
syn match   cicodeOperator   "[\^.]"
syn match   cicodelMatrixDelimiter  "[][]"

syn match   cicodeCommentL   "^\s*\zs\/\/.*$"
syn match   cicodeCommentL   "\s*\zs\/\/.*$"
syn match   cicodeCommentL   "\/\/.*$"


hi def link cicodeStatement   Statement
hi def link cicodeType        Type
hi def link cicodeFunction    Function
hi def link cicodeLabel       Label
hi def link cicodeConditional Conditional
hi def link cicodeRepeat      Repeat
hi def link cicodeCharacter   Character
hi def link cicodeSpecial     SpecialChar
hi def link cicodeString      String
hi def link cicodeNumber      Number
hi def link cicodeOperator    Operator
hi def link cicodelMatrixDelimiter  Identifier
hi def link cicodeCommentL    Comment



let b:current_syntax = "cicode"
