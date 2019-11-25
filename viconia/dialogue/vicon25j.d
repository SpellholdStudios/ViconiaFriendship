// --------------------------------------
// Viconia Friendship SoA
// --------------------------------------
// Adding new option for friends in joining dialogue

EXTEND_TOP VICON25A 0 #3
  ++ @0 DO ~SetGlobal("I#ViconiaFriendship","GLOBAL",2) SetGlobal("ViconiaSummoned","GLOBAL",2)~ + I#VicJoin1
END

APPEND ~VICON25A~

IF ~~ I#VicJoin1
  SAY @1
  ++ @2 DO ~RealSetGlobalTimer("I#ViconiaToBTimer","GLOBAL",2700) SetGlobal("I#ViconiaToBStart","GLOBAL",1) JoinParty()~ + I#VicJoin2
  ++ @3 + I#VicJoin3
  ++ @4 DO ~RealSetGlobalTimer("I#ViconiaToBTimer","GLOBAL",2700) SetGlobal("I#ViconiaToBStart","GLOBAL",1) JoinParty()~ + I#VicJoin4
  ++ @5 DO ~RealSetGlobalTimer("I#ViconiaToBTimer","GLOBAL",2700) SetGlobal("I#ViconiaToBStart","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ I#VicJoin2
  SAY @6
  = @7
  IF ~~ EXIT
END

IF ~~ I#VicJoin3
  SAY @8
  IF ~~ DO ~MoveToPointNoInterrupt([2458.1473]) Face(0)~ EXIT
END

IF ~~ I#VicJoin4
  SAY @9
  IF ~~ EXIT
END

END

// ---------------------------------------------
// Viconia Friendalks
// ---------------------------------------------
APPEND ~VICON25J~

// 1.
IF ~Global("I#ViconiaToBTalks","GLOBAL",1)~ I#VT1
  SAY @10
  = @11 
  ++ @12 DO ~IncrementGlobal("I#ViconiaToBTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaToBTimer","GLOBAL",2700)~ + I#VT1_1
  ++ @13 DO ~IncrementGlobal("I#ViconiaToBTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaToBTimer","GLOBAL",2700)~ + I#VT1_2
  ++ @14 DO ~IncrementGlobal("I#ViconiaToBTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaToBTimer","GLOBAL",2700)~ + I#VT1_3
  ++ @15 DO ~IncrementGlobal("I#ViconiaToBTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaToBTimer","GLOBAL",2700)~ + I#VT1_4
  ++ @16 DO ~IncrementGlobal("I#ViconiaToBTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaToBTimer","GLOBAL",2700)~ + I#VT1_6
  ++ @17 DO ~IncrementGlobal("I#ViconiaToBTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaToBTimer","GLOBAL",2700)~ + I#VT1_5
END

IF ~~ I#VT1_1
  SAY @18
  IF ~~ + I#VT1_7
END
  
IF ~~ I#VT1_2
  SAY @19
  IF ~~ + I#VT1_7
END

IF ~~ I#VT1_3
  SAY @20
  IF ~~ + I#VT1_8
END

IF ~~ I#VT1_4
  SAY @21
  IF ~~ + I#VT1_7
END

IF ~~ I#VT1_5
  SAY @22
  IF ~~ EXIT
END

IF ~~ I#VT1_6
  SAY @23
  = @24  
  = @25
  IF ~~ + I#VT1_7
END

IF ~~ I#VT1_7
  SAY @26
  ++ @27 + I#VT1_9
  ++ @28 + I#VT1_9
  ++ @29 + I#VT1_9
  ++ @30 + I#VT1_10
END

IF ~~ I#VT1_8
  SAY @31
  = @32
  + ~!Dead("gromnir")~ + @33 + I#VT1_11
  + ~Dead("gromnir")~ + @34 + I#VT1_12
  ++ @35 + I#VT1_13
  ++ @36 + I#VT1_14
  ++ @37 + I#VT1_15
  ++ @38 + I#VT1_16
END

IF ~~ I#VT1_9
  SAY @39
  = @40
  = @41
  IF ~~ + I#VT1_8
END

IF ~~ I#VT1_10
  SAY @42
  IF ~~ + I#VT1_9
END

IF ~~ I#VT1_11
  SAY @43
  IF ~~ + I#VT1_17
END

IF ~~ I#VT1_12
  SAY @44
  IF ~~ + I#VT1_17
END

IF ~~ I#VT1_13
  SAY @45
  = @46
  + ~!Dead("gromnir")~ + @47 + I#VT1_11
  + ~Dead("gromnir")~ + @48 + I#VT1_12
  ++ @49 + I#VT1_14
  ++ @50 + I#VT1_15
  ++ @51 + I#VT1_16
END

IF ~~ I#VT1_14
  SAY @52
  IF ~~ + I#VT1_17
END

IF ~~ I#VT1_15
  SAY @53
  IF ~~ + I#VT1_18
END

IF ~~ I#VT1_16
  SAY @54
  IF ~~ + I#VT1_18
END

IF ~~ I#VT1_17
  SAY @55
  = @56
  IF ~~ EXIT
END

IF ~~ I#VT1_18
  SAY @57
  = @58
  IF ~~ EXIT
END


// 2.  Viconia's history and Valas
IF ~Global("I#ViconiaToBTalks","GLOBAL",3)~ I#VT2
  SAY @59 
  = @60
  ++ @61 DO ~IncrementGlobal("I#ViconiaToBTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaToBTimer","GLOBAL",2700)~ + I#VT2_1
  ++ @62 DO ~IncrementGlobal("I#ViconiaToBTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaToBTimer","GLOBAL",2700)~ + I#VT2_1
  ++ @63 DO ~IncrementGlobal("I#ViconiaToBTalks","GLOBAL",1) SetGlobal("I#ViconiaFriendship","GLOBAL",3)~ + I#VT2_2
END

IF ~~ I#VT2_1
  SAY @64
  = @65
  = @66
  = @67
  = @68
  ++ @69 + I#VT2_3
  ++ @70 + I#VT2_4
  ++ @71 + I#VT2_5
  ++ @72 + I#VT2_6
END

IF ~~ I#VT2_2
  SAY @73
  = @74
  IF ~~ EXIT
END

IF ~~ I#VT2_3
  SAY @75
  = @76
  = @77
  = @78
  ++ @79 + I#VT2_7
  ++ @80 + I#VT2_8
  ++ @81 + I#VT2_9
  ++ @82 + I#VT2_10
END

IF ~~ I#VT2_4
  SAY @83
  IF ~~ + I#VT2_3
END

IF ~~ I#VT2_5
  SAY @84
  = @85
  IF ~~ + I#VT2_3
END

IF ~~ I#VT2_6
  SAY @86
  IF ~~ EXIT
END

IF ~~ I#VT2_7
  SAY @87
  IF ~~ + I#VT2_11
END

IF ~~ I#VT2_8
  SAY @88
  = @89
  IF ~~ + I#VT2_11
END

IF ~~ I#VT2_9
  SAY @90
  IF ~~ + I#VT2_11
END

IF ~~ I#VT2_10
  SAY @91
  = @92
  IF ~~ + I#VT2_11
END

IF ~~ I#VT2_11
  SAY @93
  ++ @94 + I#VT2_12
  ++ @95 + I#VT2_13
  ++ @96 DO ~SetGlobal("I#ViconiaFriendship","GLOBAL",3)~ + I#VT2_13
END

IF ~~ I#VT2_12
  SAY @97
  IF ~~ EXIT
END

IF ~~ I#VT2_13
  SAY @98
  = @99
  IF ~~ EXIT
END


// 3.  Melissan and trust
IF ~Global("I#ViconiaToBTalks","GLOBAL",5)~ I#VT3
  SAY @100 
  = @101
  ++ @102 DO ~IncrementGlobal("I#ViconiaToBTalks","GLOBAL",1)~ + I#VT3_1
  ++ @103 DO ~IncrementGlobal("I#ViconiaToBTalks","GLOBAL",1)~ + I#VT3_1
  ++ @104 DO ~IncrementGlobal("I#ViconiaToBTalks","GLOBAL",1)~ + I#VT3_2
  ++ @105 DO ~IncrementGlobal("I#ViconiaToBTalks","GLOBAL",1)~ + I#VT3_3
END

IF ~~ I#VT3_1
  SAY @106
  IF ~~ + I#VT3_5
END

IF ~~ I#VT3_2
  SAY @107
  ++ @108 + I#VT3_4
  ++ @109 + I#VT3_4
  ++ @110 + I#VT3_14
END

IF ~~ I#VT3_3
  SAY @111
  IF ~~ EXIT
END

IF ~~ I#VT3_4
  SAY @112
  IF ~~ + I#VT3_5
END

IF ~~ I#VT3_5
  SAY @113
  = @114
  ++ @115 + I#VT3_6
  ++ @116 + I#VT3_7
  ++ @117 + I#VT3_8
  ++ @118 + I#VT3_9
END

IF ~~ I#VT3_6
  SAY @119
  IF ~~ + I#VT3_10
END

IF ~~ I#VT3_7
  SAY @120
  IF ~~ + I#VT3_10
END

IF ~~ I#VT3_8
  SAY @121
  IF ~~ + I#VT3_10
END

IF ~~ I#VT3_9
  SAY @122
  = @123
  IF ~~ EXIT
END

IF ~~ I#VT3_10
  SAY @124
  = @125
  ++ @126 + I#VT3_11
  ++ @127 + I#VT3_11
  ++ @128 + I#VT3_12
  ++ @129 + I#VT3_11
END

IF ~~ I#VT3_11
  SAY @130
  = @131
  IF ~~ + I#VT3_13
END

IF ~~ I#VT3_12
  SAY @132
  IF ~~ + I#VT3_11
END

IF ~~ I#VT3_13
  SAY @133
  IF ~~ EXIT
END

IF ~~ I#VT3_14
  SAY @134 
  IF ~~ EXIT
END


// 4.  A proposition
IF ~Global("I#ViconiaToBTalks","GLOBAL",7)~ I#VT4_0
  SAY @135 
  ++ @136 DO ~IncrementGlobal("I#ViconiaToBTalks","GLOBAL",1)~ + I#VT4_1
  ++ @137 DO ~IncrementGlobal("I#ViconiaToBTalks","GLOBAL",1)~ + I#VT4_2
  ++ @138 DO ~IncrementGlobal("I#ViconiaToBTalks","GLOBAL",1)~ + I#VT4_1
  ++ @139 DO ~IncrementGlobal("I#ViconiaToBTalks","GLOBAL",1)~ + I#VT4_3
END

IF ~~ I#VT4_1
  SAY @140
  = @141
  IF ~~ + I#VT4_3
END

IF ~~ I#VT4_2
  SAY @142
  = @143 
  = @144
  IF ~~ + I#VT4_3
END

IF ~~ I#VT4_3
  SAY @145
  = @146
  ++ @147 + I#VT4_4
  ++ @148 + I#VT4_5
  ++ @149 + I#VT4_4
END

IF ~~ I#VT4_4
  SAY @150
  = @151
  = @152
  ++ @153 DO ~SetGlobal("I#ViconiaToB_Enslaves","GLOBAL",1)~ + I#VT4_6
  ++ @154 + I#VT4_7
  ++ @155 + I#VT4_9
END

IF ~~ I#VT4_5
  SAY @156
  IF ~~ + I#VT4_4
END

IF ~~ I#VT4_6
  SAY @157
  IF ~~ EXIT
END

IF ~~ I#VT4_7
  SAY @158
  IF ~~ + I#VT4_10
END

IF ~~ I#VT4_8
  SAY @159
  IF ~~ EXIT
END

IF ~~ I#VT4_9
  SAY @160
  IF ~~ + I#VT4_10
END

IF ~~ I#VT4_10
  SAY @161
  ++ @162 + I#VT4_11
  ++ @163 + I#VT4_12
  ++ @164 + I#VT4_13
  ++ @165 + I#VT4_14
END

IF ~~ I#VT4_11
  SAY @166
  IF ~~ + I#VT4_16
END

IF ~~ I#VT4_12
  SAY @167
  = @168
  ++ @169 + I#VT4_15
  ++ @170 + I#VT4_15
  ++ @171 + I#VT4_15
  ++ @172 + I#VT4_15
END

IF ~~ I#VT4_13
  SAY @173
  IF ~~ + I#VT4_17
END

IF ~~ I#VT4_14
  SAY @174
  IF ~~ + I#VT4_17
END

IF ~~ I#VT4_15
  SAY @175
  IF ~~ EXIT
END
  
IF ~~ I#VT4_16
  SAY @176
  IF ~~ EXIT
END

IF ~~ I#VT4_17
  SAY @177
  IF ~~ + I#VT4_16
END



// --------------------------------------
// Viconia scenery dialogues (2)
// --------------------------------------
// 1.  Saradush & the Bhaalspawn
IF ~Global("I#ViconiaToB_Saradush","GLOBAL",1) RealGlobalTimerExpired("I#ViconiaToB_SaradushTimer","GLOBAL")~ I#VS
  SAY @178 
  ++ @179 DO ~IncrementGlobal("I#ViconiaToB_Saradush","GLOBAL",1)~ + I#VS_1
  ++ @180 DO ~IncrementGlobal("I#ViconiaToB_Saradush","GLOBAL",1)~ + I#VS_2
  ++ @181 DO ~IncrementGlobal("I#ViconiaToB_Saradush","GLOBAL",1)~ + I#VS_2
  ++ @182 DO ~IncrementGlobal("I#ViconiaToB_Saradush","GLOBAL",1)~ + I#VS_2
  ++ @183  DO ~IncrementGlobal("I#ViconiaToB_Saradush","GLOBAL",1)~+ I#VS_3
END

IF ~~ I#VS_1
  SAY @184
  IF ~~ + I#VS_5
END

IF ~~ I#VS_2
  SAY @185
  = @186
  ++ @187 + I#VS_4
  ++ @188 + I#VS_5
  ++ @189 + I#VS_5
END

IF ~~ I#VS_3
  SAY @190
  IF ~~ EXIT
END

IF ~~ I#VS_4
  SAY @191
  = @192
  ++ @193 + I#VS_6
  ++ @194 + I#VS_7
  ++ @195 + I#VS_8
  ++ @196 + I#VS_8
END

IF ~~ I#VS_5
  SAY @197
  IF ~~ + I#VS_4
END
  
IF ~~ I#VS_6
  SAY @198
  IF ~~ + I#VS_7
END

IF ~~ I#VS_7
  SAY @199
  IF ~~ + I#VS_9
END

IF ~~ I#VS_8
  SAY @200
  IF ~~ + I#VS_9
END

IF ~~ I#VS_9
  SAY @201
  = @202
  IF ~~ EXIT
END


// 2. Bhaal's Progeny
IF ~Global("I#ViconiaToB_Sendai","GLOBAL",1) RealGlobalTimerExpired("I#ViconiaToB_SendaiTimer","GLOBAL")~ I#VP
  SAY @203 
  ++ @204 DO ~IncrementGlobal("I#ViconiaToB_Sendai","GLOBAL",1)~ + I#VP_1
  ++ @205 DO ~IncrementGlobal("I#ViconiaToB_Sendai","GLOBAL",1)~ + I#VP_1
  ++ @206 DO ~IncrementGlobal("I#ViconiaToB_Sendai","GLOBAL",1)~ + I#VP_1
  ++ @207 DO ~IncrementGlobal("I#ViconiaToB_Sendai","GLOBAL",1)~ + I#VP_2
END

IF ~~ I#VP_1
  SAY @208
  = @209
  = @210
  ++ @211 + I#VP_3
  ++ @212 + I#VP_4
  ++ @213 + I#VP_5
END

IF ~~ I#VP_2
  SAY @200
  IF ~~ EXIT
END

IF ~~ I#VP_3
  SAY @214
  = @215
  = @216
  ++ @217 + I#VP_8
  ++ @218 + I#VP_6
  + ~!Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF)~ + @219 + I#VP_7
  ++ @220 + I#VP_8
END

IF ~~ I#VP_4
  SAY @221
  IF ~~ + I#VP_3
END

IF ~~ I#VP_5
  SAY @222
  IF ~~ + I#VP_3
END

IF ~~ I#VP_6
  SAY @223
  IF ~~ EXIT
END

IF ~~ I#VP_7
  SAY @224
  IF ~~ EXIT
END

IF ~~ I#VP_8
  SAY @225
  = @226
  IF ~~ EXIT
END

END