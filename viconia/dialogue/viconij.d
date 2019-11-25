// --------------------------------------
// Viconia Friendship SoA
// --------------------------------------
APPEND ~VICONIJ~

// --------------------------------------
// Viconia's "Trust" dialogues (3)
// --------------------------------------

// Trust 1: Gratefulness
IF WEIGHT #-2 ~Global("I#ViconiaTrustTalks","GLOBAL",1)~ I#VT1
  SAY @0 
  ++ @1 DO ~IncrementGlobal("I#ViconiaTrustTalks","GLOBAL",1) IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",-1) RealSetGlobalTimer("I#ViconiaTrustTimer","GLOBAL",3600)~ + I#VT1_1
  ++ @2 DO ~IncrementGlobal("I#ViconiaTrustTalks","GLOBAL",1) IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",2) RealSetGlobalTimer("I#ViconiaTrustTimer","GLOBAL",3600)~ + I#VT1_2
  ++ @3 DO ~IncrementGlobal("I#ViconiaTrustTalks","GLOBAL",1) IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",2)  RealSetGlobalTimer("I#ViconiaTrustTimer","GLOBAL",3600)~ + I#VT1_3
  ++ @4 DO ~IncrementGlobal("I#ViconiaTrustTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaTrustTimer","GLOBAL",3600)~ + I#VT1_4
  ++ @5 DO ~IncrementGlobal("I#ViconiaTrustTalks","GLOBAL",1) IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",2) RealSetGlobalTimer("I#ViconiaTrustTimer","GLOBAL",3600)~ + I#VT1_3
END

IF ~~ I#VT1_1
  SAY @6
  ++ @7 + I#VT1_11
  ++ @8 + I#VT1_11
  ++ @9 DO ~IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",1)~ + I#VT1_12
END

IF ~~ I#VT1_2
SAY @10
  ++ @11 + I#VT1_21
  ++ @12 DO ~IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",2)~ + I#VT1_23
  ++ @13 DO ~IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",-1)~ + I#VT1_22
  ++ @14 DO ~IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",-3)~ + I#VT1_1
END

IF ~~ I#VT1_3
  SAY @15
  IF ~~ EXIT
END

IF ~~ I#VT1_4
  SAY @16
  ++ @17 DO ~IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",1)~ + I#VT1_41
  ++ @18 DO ~IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",2)~ + I#VT1_3
  ++ @19 DO ~IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",1)~ + I#VT1_42
END

IF ~~ I#VT1_11
  SAY @20
  ++ @21 DO ~IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",-2)~ + I#VT1_111
  ++ @22 + I#VT1_112
  ++ @23 DO ~IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",1)~ + I#VT1_113
  ++ @24 + I#VT1_113
END

IF ~~ I#VT1_12
  SAY @25
  IF ~~ + I#VT1_11
END

IF ~~ I#VT1_21
  SAY @26
  IF ~~ EXIT
END

IF ~~ I#VT1_22
  SAY @27
  IF ~~ EXIT
END

IF ~~ I#VT1_23
  SAY @28
  IF ~~ EXIT
END

IF ~~ I#VT1_41
  SAY @29
  IF ~~ EXIT
END

IF ~~ I#VT1_42
  SAY @30
  IF ~~ EXIT
END

IF ~~ I#VT1_111
  SAY @31
  IF ~~ EXIT
END

IF ~~ I#VT1_112
  SAY @32
  IF ~~ EXIT
END

IF ~~ I#VT1_113
  SAY @33
  IF ~~ EXIT
END


// Trust 2: What draws you to this part of Amn? Athkatla?
IF WEIGHT #-2 ~Global("I#ViconiaTrustTalks","GLOBAL",3)~ I#VT2_0
  SAY @34 
  ++ @35 DO ~IncrementGlobal("I#ViconiaTrustTalks","GLOBAL",1) IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",1) RealSetGlobalTimer("I#ViconiaTrustTimer","GLOBAL",3600)~ + I#VT2_1
  ++ @36 DO ~IncrementGlobal("I#ViconiaTrustTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaTrustTimer","GLOBAL",3600)~ + I#VT2_2
  ++ @37 DO ~IncrementGlobal("I#ViconiaTrustTalks","GLOBAL",1) IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",2) RealSetGlobalTimer("I#ViconiaTrustTimer","GLOBAL",3600)~ + I#VT2_2
END

IF ~~ I#VT2_1
  SAY @38
  ++ @39 DO ~IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",1)~ + I#VT2_11
  ++ @40 DO ~IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",2)~ + I#VT2_12
  ++ @41 DO ~IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",1)~ + I#VT2_13
END

IF ~~ I#VT2_2
  SAY @42
  ++ @43 DO ~IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",1)~ + I#VT2_21
  ++ @44 + I#VT2_22
  ++ @45 DO ~IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",-2)~ + I#VT2_23
  ++ @46 DO ~IncrementGlobal("I#ViconiaTrustsPC","GLOBAL",-1)~ + I#VT2_24
END

IF ~~ I#VT2_11
  SAY @47
  = @48
  = @49
  IF ~~ EXIT
END

IF ~~ I#VT2_12
  SAY @50
  = @51
  IF ~~ EXIT
END

IF ~~ I#VT2_13
  SAY @52
  = @53
  IF ~~ EXIT
END

IF ~~ I#VT2_21
  SAY @54
  IF ~~ EXIT
END

IF ~~ I#VT2_22
  SAY @55
  = @56
  IF ~~ EXIT
END

IF ~~ I#VT2_23
  SAY @57
  IF ~~ EXIT
END

IF ~~ I#VT2_24
  SAY @58
  = @56
  IF ~~ EXIT
END


// Trust 3: Interested in spite of herself
IF WEIGHT #-2 ~Global("I#ViconiaTrustTalks","GLOBAL",5)~ I#VT3_0
  SAY @59 
  ++ @60 DO ~IncrementGlobal("I#ViconiaTrustTalks","GLOBAL",1)~ + I#VT3_1
  ++ @61 DO ~IncrementGlobal("I#ViconiaTrustTalks","GLOBAL",1)~ + I#VT3_2
  ++ @62 DO ~IncrementGlobal("I#ViconiaTrustTalks","GLOBAL",1)~ + I#VT3_3
END

IF ~~ I#VT3_1
  SAY @63
  IF ~~ + I#VT3_4
END

IF ~~ I#VT3_2
  SAY @64
  = @65
  IF ~~ + I#VT3_4
END

IF ~~ I#VT3_3
  SAY @66
  IF ~~ + I#VT3_4
END

IF ~~ I#VT3_4
  SAY @67
  = @68
  = @69
  ++ @70 + I#VT3_5
  ++ @71 + I#VT3_6
  ++ @72 + I#VT3_7
  ++ @73 + I#VT3_8
END

IF ~~ I#VT3_5
  SAY @74
  IF ~~ EXIT
END

IF ~~ I#VT3_6
  SAY @75
  IF ~~ DO ~SetGlobal("I#ViconiaFriendship","GLOBAL",3)~ EXIT
END

IF ~~ I#VT3_7
  SAY @76
  IF ~~ EXIT
END

IF ~~ I#VT3_8
  SAY @77
  IF ~~ EXIT
END


// --------------------------------------
// Viconia's early-romance post-breakup dialogues (2)
// --------------------------------------

// Trust 1: Bah, I'm not interested in discourse with such as yourself, fool.
IF WEIGHT #-2 ~Global("I#ViconiaBreakupTalks","GLOBAL",1)~ I#VRE1_0
  SAY @78 
  ++ @79 DO ~IncrementGlobal("I#ViconiaBreakupTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaBreakupTimer","GLOBAL",3600)~ + I#VRE1_1
  ++ @80 DO ~IncrementGlobal("I#ViconiaBreakupTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaBreakupTimer","GLOBAL",3600)~ + I#VRE1_2
  ++ @81 DO ~IncrementGlobal("I#ViconiaBreakupTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaBreakupTimer","GLOBAL",3600)~ + I#VRE1_3
  ++ @82 DO ~IncrementGlobal("I#ViconiaBreakupTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaBreakupTimer","GLOBAL",3600)~ + I#VRE1_4
END        

IF ~~ I#VRE1_1
  SAY @83
  IF ~~ + I#VRE1_3
END
  
IF ~~ I#VRE1_2
  SAY @84
  IF ~~ + I#VRE1_3
END

IF ~~ I#VRE1_3
  SAY @85
  ++ @86 + I#VRE1_5
  ++ @87 + I#VRE1_6
  ++ @88 + I#VRE1_7
  ++ @89 + I#VRE1_5
  ++ @32 + I#VRE1_4
END

IF ~~ I#VRE1_4
  SAY @90
  IF ~~ DO ~SetGlobal("I#ViconiaFriendship","GLOBAL",3)~ EXIT
END

IF ~~ I#VRE1_5
  SAY @91
  ++ @92 + I#VRE1_6
  ++ @93 + I#VRE1_7
  ++ @94 + I#VRE1_4
END

IF ~~ I#VRE1_6
  SAY @95
  = @96
  = @97
  ++ @98 + I#VRE1_8
  ++ @99 + I#VRE1_8
  ++ @32 + I#VRE1_4
END

IF ~~ I#VRE1_7
  SAY @100
  ++ @98 + I#VRE1_8
  ++ @99 + I#VRE1_8
  ++ @101 + I#VRE1_4
END

IF ~~ I#VRE1_8
  SAY @102
  IF ~~ EXIT
END


// Trust 2: What do you want from me?
IF WEIGHT #-2 ~Global("I#ViconiaBreakupTalks","GLOBAL",3)~ I#VRE2
  SAY @103
  =
  @104
  ++ @105 DO ~IncrementGlobal("I#ViconiaBreakupTalks","GLOBAL",1)~ + I#VRE2_1
  ++ @106 DO ~IncrementGlobal("I#ViconiaBreakupTalks","GLOBAL",1)~ + I#VRE2_2
  ++ @107 DO ~IncrementGlobal("I#ViconiaBreakupTalks","GLOBAL",1)~ + I#VRE2_3
  ++ @108 DO ~IncrementGlobal("I#ViconiaBreakupTalks","GLOBAL",1)~ + I#VRE2_4
END

IF ~~ I#VRE2_1
  SAY @109
  IF ~~ + I#VRE2_5
END

IF ~~ I#VRE2_2
  SAY @110
  IF ~~ + I#VRE2_5
END

IF ~~ I#VRE2_3
  SAY @111
  ++ @112 + I#VRE2_5
  ++ @113 + I#VRE2_5
  ++ @114 + I#VRE2_5
  ++ @115 + I#VRE2_6
END

IF ~~ I#VRE2_4
  SAY @116
  IF ~~ + I#VRE2_5
END

IF ~~ I#VRE2_5
  SAY @117
  = @118
  ++ @119 + I#VRE2_7
  ++ @120 + I#VRE2_8
  ++ @121 + I#VRE2_8
  ++ @122 + I#VRE2_8
END

IF ~~ I#VRE2_6
  SAY @123
  IF ~~ DO ~SetGlobal("I#ViconiaFriendship","GLOBAL",3)~ EXIT
END

IF ~~ I#VRE2_7
  SAY @124
  IF ~~ + I#VRE2_8
END

IF ~~ I#VRE2_8
  SAY @125
  IF ~~ EXIT
END


// --------------------------------------
// Viconia's Friendship dialogues (9)
// --------------------------------------

// Friendtalk 1
IF WEIGHT #-2 ~Global("I#ViconiaFriendTalks","GLOBAL",1)~ I#VF1
  SAY @126 
  ++ @127 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF1_1
  ++ @128 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF1_2
  ++ @129 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF1_2
  ++ @130 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF1_3
END

IF ~~ I#VF1_1
  SAY @131
  IF ~~ + I#VF1_1_1
END

IF ~~ I#VF1_1_1
  SAY @132
  = @133
  = @134
  ++ @135 + I#VF1_11
  ++ @136 + I#VF1_12
  ++ @137 + I#VF1_13
END

IF ~~ I#VF1_2
  SAY @138
  IF ~~ + I#VF1_1_1
END

IF ~~ I#VF1_3
  SAY @139
  IF ~~ + I#VF1_1_1
END

IF ~~ I#VF1_11
  SAY @140
  ++ @141 + I#VF1_12
  + ~Gender(Player1,FEMALE)~ + @142 + I#VF1_111
  + ~Gender(Player1,MALE)~ + @142 + I#VF1_112
  ++ @143 + I#VF1_12
END

IF ~~ I#VF1_12
  SAY @144
  IF ~~ EXIT
END

IF ~~ I#VF1_13
  SAY @145
  IF ~~ EXIT
END

IF ~~ I#VF1_111
  SAY @146
  =
  @147 
  IF ~~ EXIT
END

IF ~~ I#VF1_112
  SAY @148
  =
  @149
  IF ~~ EXIT
END


// Friendtalk 2
IF WEIGHT #-2 ~Global("I#ViconiaFriendTalks","GLOBAL",3)~ I#VF2
  SAY @150 
  ++ @151 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF2_1
  ++ @152 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF2_1
  ++ @153 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF2_1
  ++ @154 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF2_12
END

IF ~~ I#VF2_1
  SAY @155
  ++ @156 + I#VF2_11
  ++ @157 + I#VF2_12
  ++ @158 + I#VF2_13
  ++ @159 + I#VF2_14
END

IF ~~ I#VF2_2
  SAY @160
  IF ~~ + I#VF2_1
END

IF ~~ I#VF2_11
  SAY @161
  =
  @162
  ++ @163 + I#VF2_111
  ++ @164 + I#VF2_112
  ++ @165 + I#VF2_113
  ++ @166 + I#VF2_114
  ++ @167 + I#VF2_114
END

IF ~~ I#VF2_12
  SAY @168
  ++ @169 + I#VF2_113
  ++ @170 + I#VF2_121
  ++ @171 + I#VF2_113
  ++ @172 + I#VF2_111
END

IF ~~ I#VF2_13
  SAY @173
  IF ~~ EXIT
END

IF ~~ I#VF2_14
  SAY @174
  ++ @175 + I#VF2_1121
  ++ @176 + I#VF2_1122
  ++ @177 + I#VF2_1123
  ++ @178 + I#VF2_141
  ++ @179 + I#VF2_1124
  ++ @180 + I#VF2_1124
END

IF ~~ I#VF2_111
  SAY @181
  IF ~~ EXIT
END

IF ~~ I#VF2_112
  SAY @182
  ++ @175 + I#VF2_1121
  ++ @176 + I#VF2_1122
  ++ @177 + I#VF2_1123
  ++ @183 + I#VF2_1123
  ++ @179 + I#VF2_1124
  ++ @180 + I#VF2_1124
END

IF ~~ I#VF2_113
  SAY @184
  IF ~~ + I#VF2_1131
END

IF ~~ I#VF2_1131
  SAY @185
  = @186
  IF ~~ EXIT
END

IF ~~ I#VF2_114
  SAY @187
  IF ~~ EXIT
END

IF ~~ I#VF2_121
  SAY @188
  IF ~~ EXIT
END

IF ~~ I#VF2_141
  SAY @189
  IF ~~ EXIT
END

IF ~~ I#VF2_1121
  SAY @190
  IF ~~ + I#VF2_1131
END

IF ~~ I#VF2_1122
  SAY @191
  IF ~~ + I#VF2_11221
END
 
IF ~~ I#VF2_11221
  SAY @192
  IF ~~ EXIT
END

IF ~~ I#VF2_1123
  SAY @193
  = @194
  = @195
  IF ~~ + I#VF2_11221
END

IF ~~ I#VF2_1124
  SAY @196
  = @197
  IF ~~ + I#VF2_11221
END


// Friendtalk 3
IF WEIGHT #-2 ~Global("I#ViconiaFriendTalks","GLOBAL",5)~ I#VF3
  SAY @198 
  ++ @199 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF3_1
  ++ @200 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF3_2
  ++ @201 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF3_3
  ++ @202 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF3_4
END

IF ~~ I#VF3_1
  SAY @203
  IF ~~ + I#VF3_1_1
END

IF ~~ I#VF3_1_1
  SAY @204
  ++ @205 + I#VF3_11
  ++ @206 + I#VF3_3
  ++ @207 + I#VF3_3
END

IF ~~ I#VF3_2
  SAY @208
  IF ~~ + I#VF3_1_1
END

IF ~~ I#VF3_3
  SAY @209
  ++ @210 + I#VF3_31
  ++ @211 + I#VF3_32
  ++ @212 + I#VF3_33
END

IF ~~ I#VF3_4
  SAY @213
  IF ~~ + I#VF3_1_1
END

IF ~~ I#VF3_11
  SAY @214
  IF ~~ + I#VF3_3
END

IF ~~ I#VF3_31
  SAY @215
  IF ~~ + I#VF3_311
END

IF ~~ I#VF3_311
  SAY @216
  IF ~~ + I#VF3_3111
END

IF ~~ I#VF3_3111
  SAY @217
  IF ~~ EXIT
END

IF ~~ I#VF3_32
  SAY @218
  IF ~~ EXIT
END

IF ~~ I#VF3_33
  SAY @219
  IF ~~ + I#VF3_3111
END


// Friendship 4: Been a bit heavy recently.  Vic tries to convince you you mean nothing to her.  Trust is for the weak.  Emotions cloud judgement.
IF WEIGHT #-2 ~Global("I#ViconiaFriendTalks","GLOBAL",7)~ I#VF4_0
  SAY @220 
  ++ @221 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF4_1
  ++ @222 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF4_2
  ++ @223 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF4_3
END

IF ~~ I#VF4_1
  SAY @224
  IF ~~ + I#VF4_2
END

IF ~~ I#VF4_2
  SAY @225
  ++ @226 + I#VF4_4
  ++ @227 + I#VF4_6
  ++ @228 + I#VF4_4
  ++ @229 + I#VF4_5
END

IF ~~ I#VF4_3
  SAY @230
  IF ~~ + I#VF4_2
END

IF ~~ I#VF4_4
  SAY @231
  IF ~~ + I#VF4_6
END

IF ~~ I#VF4_5
  SAY @232
  IF ~~ + I#VF4_6
END

IF ~~ I#VF4_6
  SAY @233
  = @234
  = @235
  IF ~~ EXIT
END


// Friendship 5: What interests you about me?
IF WEIGHT #-2 ~Global("I#ViconiaFriendtalks","GLOBAL",9)~ I#VF5_0
  SAY @236 
  ++ @237 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) SetGlobal("I#ViconiaFriendTalks","GLOBAL",10)~ + I#VF5_1
  ++ @238 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) SetGlobal("I#ViconiaFriendTalks","GLOBAL",10)~ + I#VF5_2
  ++ @239 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) SetGlobal("I#ViconiaFriendTalks","GLOBAL",10)~ + I#VF5_3
  ++ @240 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) SetGlobal("I#ViconiaFriendTalks","GLOBAL",10)~ + I#VF5_4
  ++ @241 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) SetGlobal("I#ViconiaFriendTalks","GLOBAL",10)~ + I#VF5_5
  ++ @242 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) SetGlobal("I#ViconiaFriendTalks","GLOBAL",10)~ + I#VF5_15
END

IF ~~ I#VF5_1
  SAY @243
  IF ~~ + I#VF5_3
END

IF ~~ I#VF5_2
  SAY @244
  IF ~~ + I#VF5_3
END

IF ~~ I#VF5_3
  SAY @245
  ++ @246 + I#VF5_6
  ++ @247 + I#VF5_7
  ++ @248 + I#VF5_8
  ++ @249 + I#VF5_9
  ++ @250 + I#VF5_10
END

IF ~~ I#VF5_4
  SAY @251
  ++ @252 + I#VF5_16
  ++ @253 + I#VF5_7
  ++ @254 + I#VF5_8
  ++ @255 + I#VF5_9
  ++ @250 + I#VF5_10
  ++ @256 + I#VF5_13
END

IF ~~ I#VF5_5
  SAY @257
  IF ~~ + I#VF5_3
END

IF ~~ I#VF5_6
  SAY @258
  IF ~~ + I#VF5_11
END
  
IF ~~ I#VF5_7
  SAY @259
  ++ @260 + I#VF5_12
  ++ @261 + I#VF5_13
  ++ @262 + I#VF5_12
END

IF ~~ I#VF5_8
  SAY @263
  = @264
  IF ~~ + I#VF5_14
END

IF ~~ I#VF5_9
  SAY @265
  IF ~~ + I#VF5_11
END

IF ~~ I#VF5_10
  SAY @266
  IF ~~ + I#VF5_14
END

IF ~~ I#VF5_11
  SAY @267
  IF ~~ + I#VF5_14
END

IF ~~ I#VF5_12
  SAY @268
  IF ~~ + I#VF5_14
END

IF ~~ I#VF5_13
  SAY @269
  IF ~~ + I#VF5_14
END

IF ~~ I#VF5_14
  SAY @270
  IF ~~ EXIT
END

IF ~~ I#VF5_15
  SAY @271
  = @272
  ++ @273 + I#VF5_4
  ++ @274 + I#VF5_1
  ++ @275 + I#VF5_4
END

IF ~~ I#VF5_16
  SAY @276
  IF ~~ + I#VF5_3
END


// Friendship 6: Prayers to Shar; at night, before rest-
IF WEIGHT #-2 ~Global("I#ViconiaFriendtalks","GLOBAL",11)~ I#VF6
  SAY @277 
  = @278 
  = @279
  ++ @280 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF6_1
  ++ @281 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF6_2
  ++ @282 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF6_3
  ++ @283 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF6_4
END

IF ~~ I#VF6_1
  SAY @284
  = @285
  ++ @286 + I#VF6_5
  ++ @287 + I#VF6_4
  ++ @288 + I#VF6_4
END

IF ~~ I#VF6_2
  SAY @289
  ++ @290 + I#VF6_5
  ++ @287 + I#VF6_4
  ++ @288 + I#VF6_4
END

IF ~~ I#VF6_3
  SAY @291
  = @292
  = @293
  ++ @286 + I#VF6_5
  ++ @287 + I#VF6_4
  ++ @288 + I#VF6_4
END

IF ~~ I#VF6_4
  SAY @294
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ I#VF6_5
  SAY @295
  ++ @296 + I#VF6_6
  ++ @297 + I#VF6_7
  ++ @298 + I#VF6_8
END

IF ~~ I#VF6_6
  SAY @299
  IF ~~ + I#VF6_8
END

IF ~~ I#VF6_7
  SAY @300
  = @301
  IF ~~ + I#VF6_8
END

IF ~~ I#VF6_8
  SAY @302
  IF ~~ DO ~RestParty()~ EXIT
END


// Friendship #7: Of How Viconia Came To Shar
IF WEIGHT #-2 ~Global("I#ViconiaFriendtalks","GLOBAL",13)~ I#VF7_0
  SAY @303 
  ++ @304 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF7_1
  ++ @305 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF7_1
  ++ @306 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF7_2
  ++ @307 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaFriendTimer","GLOBAL",3600)~ + I#VF7_1
END

IF ~~ I#VF7_1
  SAY @308
  = @309
  ++ @310 + I#VF7_3
  ++ @311 + I#VF7_4
  ++ @312 + I#VF7_3
  ++ @313 + I#VF7_5
END

IF ~~ I#VF7_2
  SAY @314
  IF ~~ EXIT
END

IF ~~ I#VF7_3
  SAY @315
  IF ~~ + I#VF7_6
END

IF ~~ I#VF7_4
  SAY @316
  = @317
  IF ~~ + I#VF7_6
END

IF ~~ I#VF7_5
  SAY @318
  IF ~~ + I#VF7_6
END

IF ~~ I#VF7_6
  SAY @319
  = @320
  = @321
  = @322
  = @323
  ++ @324 + I#VF7_7
  ++ @325 + I#VF7_8
  ++ @326 + I#VF7_9
END

IF ~~ I#VF7_7
  SAY @327
  IF ~~ + I#VF7_8
END

IF ~~ I#VF7_8
  SAY @328
  = @329
  = @330
  ++ @331 + I#VF7_10
  ++ @332 + I#VF7_11
  ++ @333 + I#VF7_12
  ++ @334 + I#VF7_13
END

IF ~~ I#VF7_9
  SAY @335
  IF ~~ + I#VF7_8
END

IF ~~ I#VF7_10
  SAY @336
  IF ~~ + I#VF7_14
END

IF ~~ I#VF7_11
  SAY @337
  IF ~~ + I#VF7_14
END

IF ~~ I#VF7_12
  SAY @338
  IF ~~ + I#VF7_14
END

IF ~~ I#VF7_13
  SAY @339
  IF ~~ + I#VF7_14
END

IF ~~ I#VF7_14
  SAY @340
  IF ~~ EXIT
END


// Friendship 8: Dammit, not again.  I hate you!
IF WEIGHT #-2 ~Global("I#ViconiaFriendTalks","GLOBAL",15)~ I#VF8
  SAY @341 
  ++ @342 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1)~ + I#VF8_1
  ++ @343 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1)~ + I#VF8_2
  ++ @344 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1)~ + I#VF8_3
  ++ @345 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1)~ + I#VF8_4
END

IF ~~ I#VF8_1
  SAY @346
  IF ~~ + I#VF8_5
END

IF ~~ I#VF8_2
  SAY @347
  IF ~~ + I#VF8_5
END

IF ~~ I#VF8_3
  SAY @348
  IF ~~ + I#VF8_5
END

IF ~~ I#VF8_4
  SAY @349
  IF ~~ + I#VF8_2
END

IF ~~ I#VF8_5
  SAY @350
  = @351
  = @352
  ++ @353 + I#VF8_6
  ++ @354 + I#VF8_7
  ++ @355 + I#VF8_8
  ++ @356 + I#VF8_6
END

IF ~~ I#VF8_6
  SAY @357
  IF ~~ + I#VF8_9
END

IF ~~ I#VF8_7
  SAY @358
  IF ~~ + I#VF8_9
END

IF ~~ I#VF8_8
  SAY @359
  IF ~~ + I#VF8_9
END

IF ~~ I#VF8_9
  SAY @360
  ++ @361 + I#VF8_10
  ++ @362 + I#VF8_11
  ++ @363 + I#VF8_12
  ++ @364 + I#VF8_13
  ++ @365 + I#VF8_14
END

IF ~~ I#VF8_10
  SAY @366
  IF ~~ + I#VF8_15
END

IF ~~ I#VF8_11
  SAY @367
  IF ~~ + I#VF8_15
END

IF ~~ I#VF8_12
  SAY @368
  IF ~~ + I#VF8_15
END

IF ~~ I#VF8_13
  SAY @369
  IF ~~ + I#VF8_15
END

IF ~~ I#VF8_14
  SAY @370
  IF ~~ + I#VF8_15
END

IF ~~ I#VF8_15
  SAY @371
  = @372
  = @373
  = @374
  IF ~~ EXIT
END


// Friendship 9: Thanks.  You're not so bad.
IF WEIGHT #-2 ~Global("I#ViconiaFriendTalks","GLOBAL",17)~ I#VF12
  SAY @375 
  = @376 
  = @377 
  ++ @378 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1)~ + I#VF12_1
  ++ @379 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1)~ + I#VF12_2
  ++ @380 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1)~ + I#VF12_3
  ++ @381 DO ~IncrementGlobal("I#ViconiaFriendTalks","GLOBAL",1)~ + I#VF12_1
END

IF ~~ I#VF12_1
  SAY @382
  ++ @383 + I#VF12_4
  ++ @384 + I#VF12_5
  ++ @385 + I#VF12_4
  ++ @386 + I#VF12_5
END

IF ~~ I#VF12_2
  SAY @387
  IF ~~ + I#VF12_1
END

IF ~~ I#VF12_3
  SAY @388
  IF ~~ + I#VF12_4
END

IF ~~ I#VF12_4
  SAY @389
  = @390
  IF ~~ EXIT
END

IF ~~ I#VF12_5
  SAY @391
  IF ~~ + I#VF12_4
END



// ---------------------------
// Lolth Dialogues (3)
// ---------------------------

// Lolth dialogue #1
IF WEIGHT #-2 ~Global("I#ViconiaLolthTalks","GLOBAL",1)~ I#VF9
  SAY @392 
  ++ @393 DO ~IncrementGlobal("I#ViconiaLolthTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaLolthTimer","GLOBAL",3600)~ + I#VF9_1
  ++ @394 DO ~IncrementGlobal("I#ViconiaLolthTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaLolthTimer","GLOBAL",3600)~ + I#VF9_2
  ++ @395 DO ~IncrementGlobal("I#ViconiaLolthTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaLolthTimer","GLOBAL",3600)~ + I#VF9_3
  ++ @396 DO ~IncrementGlobal("I#ViconiaLolthTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaLolthTimer","GLOBAL",3600)~ + I#VF9_2
  ++ @397 DO ~IncrementGlobal("I#ViconiaLolthTalks","GLOBAL",1) RealSetGlobalTimer("I#ViconiaLolthTimer","GLOBAL",3600)~ + I#VF9_21
END

IF ~~ I#VF9_1
  SAY @398
  IF ~~ THEN + I#VF9_2
END

IF ~~ I#VF9_2
  SAY @399
  =
  @400
  ++ @401 + I#VF9_21
  ++ @402 + I#VF9_22
  ++ @403 + I#VF9_31
  ++ @404 + I#VF9_22
END

IF ~~ I#VF9_3
  SAY @405
  ++ @406 + I#VF9_31
  ++ @407 + I#VF9_31
  ++ @408 + I#VF9_32
END

IF ~~ I#VF9_21
  SAY @409
  IF ~~ + I#VF9_31
END

IF ~~ I#VF9_22
  SAY @410
  IF ~~ + I#VF9_31
END

IF ~~ I#VF9_31
  SAY @411
  ++ @412 + I#VF9_311
  ++ @413 + I#VF9_312
  ++ @414 + I#VF9_313
END

IF ~~ I#VF9_32
  SAY @415
  IF ~~ + I#VF9_31
END

IF ~~ I#VF9_311
  SAY @416
  IF ~~ EXIT
END

IF ~~ I#VF9_312
  SAY @417
  IF ~~ EXIT
END

IF ~~ I#VF9_313
  SAY @418
  IF ~~ EXIT
END


// Lolth dialogue #2
IF WEIGHT #-2 ~Global("I#ViconiaLolthTalks","GLOBAL",3)~ I#VF10
  SAY @419 
  =
  @420
  =
  @421 IF ~~ DO ~
  CreateCreatureObjectDoor("i#vhand",Myself,0,0,0) // Handmaiden of Lolth
  CreateCreatureObjectDoor("i#vyoch",Myself,0,0,0) // Yochlol
  IncrementGlobal("I#ViconiaLolthTalks","GLOBAL",1)
  ActionOverride("i#vhand",Wait(2))
  ActionOverride("i#vhand",StartDialogueNoSet(Player1))
  ~ EXIT
END


// Lolth dialogue #3
IF WEIGHT #-2 ~Global("I#ViconiaLolthTalks","GLOBAL",5)~ I#VF11
  SAY @422 
  ++ @423 DO ~IncrementGlobal("I#ViconiaLolthTalks","GLOBAL",1)~ + I#VF11_1
  ++ @424 DO ~IncrementGlobal("I#ViconiaLolthTalks","GLOBAL",1)~ + I#VF11_2
  ++ @425 DO ~IncrementGlobal("I#ViconiaLolthTalks","GLOBAL",1)~ + I#VF11_12
  ++ @426 DO ~IncrementGlobal("I#ViconiaLolthTalks","GLOBAL",1)~ + I#VF11_2
END

IF ~~ I#VF11_1
  SAY @427
  ++ @428 + I#VF11_2
  ++ @429 + I#VF11_12
END

IF ~~ I#VF11_2
  SAY @430
  ++ @431 + I#VF11_21
  ++ @432 + I#VF11_22
  ++ @433 + I#VF11_23
  ++ @434 + I#VF11_24
END

IF ~~ I#VF11_12
  SAY @435
  IF ~~ THEN + I#VF11_2
END

IF ~~ I#VF11_21
  SAY @436
  IF ~~ EXIT
END

IF ~~ I#VF11_22
  SAY @437
  IF ~~ EXIT
END

IF ~~ I#VF11_23
  SAY @438
  IF ~~ EXIT
END

IF ~~ I#VF11_24
  SAY @439
  ++ @440 + I#VF11_241
  ++ @441 + I#VF11_242
  ++ @442 + I#VF11_243
  ++ @443 + I#VF11_244
  ++ @444 + I#VF11_245
END

IF ~~ I#VF11_241
  SAY @445
  IF ~~ THEN DO ~SetGlobal("ViconiaJoined","GLOBAL",0) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ I#VF11_242
  SAY @446
  IF ~~ THEN DO ~SetGlobal("ViconiaJoined","GLOBAL",0) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ I#VF11_243
  SAY @447
  IF ~~ EXIT
END

IF ~~ I#VF11_244
  SAY @448
  IF ~~ EXIT
END

IF ~~ I#VF11_245
  SAY @449
  IF ~~ EXIT
END



// --------------------------------------
// Viconia's scenery dialogues (4)
// --------------------------------------

// --------------------------------------
// Viconia's scenery dialogues (4)
// --------------------------------------

// Scenery dialogue #1: Of marriage: Tiana, Rumar and Priss
IF ~Global("I#Viconia_Marriage","GLOBAL",1)~ I#VM_0
  SAY @450
  ++ @451 DO ~IncrementGlobal("I#Viconia_Marriage","GLOBAL",1)~ + I#VM_1
  ++ @452 DO ~IncrementGlobal("I#Viconia_Marriage","GLOBAL",1)~ + I#VM_2
  ++ @453 DO ~IncrementGlobal("I#Viconia_Marriage","GLOBAL",1)~ + I#VM_3
  + ~Gender(Player1,FEMALE)~ + @454 DO ~IncrementGlobal("I#Viconia_Marriage","GLOBAL",1)~ + I#VM_4
  + ~Gender(Player1,MALE)~ + @455 DO ~IncrementGlobal("I#Viconia_Marriage","GLOBAL",1)~ + I#VM_3
END

IF ~~ I#VM_1
  SAY @456
  IF ~~ + I#VM_5
END

IF ~~ I#VM_2
  SAY @457
  IF ~~ + I#VM_5
END

IF ~~ I#VM_3
  SAY @458
  IF ~~ + I#VM_5
END

IF ~~ I#VM_4
  SAY @459
  IF ~~ + I#VM_5
END

IF ~~ I#VM_5
  SAY @460
  ++ @461 + I#VM_6
  ++ @462 + I#VM_7
  ++ @463 + I#VM_8
END

IF ~~ I#VM_6
  SAY @464
  IF ~~ + I#VM_8
END

IF ~~ I#VM_7
  SAY @465
  IF ~~ + I#VM_9
END

IF ~~ I#VM_8
  SAY @466
  IF ~~ + I#VM_9
END

IF ~~ I#VM_9
  SAY @467
  ++ @468 + I#VM_10
  ++ @469 + I#VM_11
  ++ @470 + I#VM_12
END

IF ~~ I#VM_10
  SAY @471
  IF ~~ + I#VM_13
 END

IF ~~ I#VM_11
  SAY @472
  IF ~~ + I#VM_13
END

IF ~~ I#VM_12
  SAY @473
  IF ~~ EXIT
END

IF ~~ I#VM_13
  SAY @474
  IF ~~ EXIT
END


// Scenery dialogue #2: Fate of House DeVir
IF WEIGHT #-2 ~Global("I#Viconia_UD_Devir","GLOBAL",1)~ I#VUD1
  SAY @475 
  ++ @476 DO ~IncrementGlobal("I#Viconia_UD_Devir","GLOBAL",2)~ + I#VUD1_1
  ++ @477 DO ~IncrementGlobal("I#Viconia_UD_Devir","GLOBAL",2)~ + I#VUD1_2
  ++ @478 DO ~IncrementGlobal("I#Viconia_UD_Devir","GLOBAL",2)~ + I#VUD1_3
  ++ @479 DO ~IncrementGlobal("I#Viconia_UD_Devir","GLOBAL",2)~ + I#VUD1_3
  ++ @480 DO ~IncrementGlobal("I#Viconia_UD_Devir","GLOBAL",2)~ + I#VUD1_3
END

IF ~~ I#VUD1_1
  SAY @481
  IF ~~ + I#VUD1_3
END

IF ~~ I#VUD1_2
  SAY @482
  = @483
  IF ~~ + I#VUD1_3
END

IF ~~ I#VUD1_3
  SAY @484
  = @485
  ++ @486 + I#VUD1_4
  ++ @487 + I#VUD1_5
  ++ @488 + I#VUD1_6
  ++ @489 + I#VUD1_7
  ++ @490 + I#VUD1_7
END

IF ~~ I#VUD1_4
  SAY @491
  ++ @492 + I#VUD1_8
  ++ @493 + I#VUD1_9
  ++ @494 + I#VUD1_10
  ++ @495 + I#VUD1_7
END

IF ~~ I#VUD1_5
  SAY @496
  = @497
  ++ @498 + I#VUD1_11
  ++ @499 + I#VUD1_10
  ++ @500 + I#VUD1_4
END

IF ~~ I#VUD1_6
  SAY @501
  IF ~~ EXIT
END

IF ~~ I#VUD1_7
  SAY @502
  IF ~~ EXIT
END

IF ~~ I#VUD1_8
  SAY @503
  = @504
  ++ @505 + I#VUD1_12
  ++ @506 + I#VUD1_12
  ++ @507 + I#VUD1_12
END

IF ~~ I#VUD1_9
  SAY @508
  IF ~~ EXIT
END

IF ~~ I#VUD1_10
  SAY @509
  IF ~~ + I#VUD1_7
END

IF ~~ I#VUD1_11
  SAY @510
  IF ~~ + I#VUD1_7
END

IF ~~ I#VUD1_12
  SAY @511
  IF ~~ EXIT
END


// Underdark Scenery 3
IF WEIGHT #-2 ~Global("I#ViconiaUnderdark","GLOBAL",1)~ I#VUD2_0
  SAY @512 
  ++ @513 DO ~IncrementGlobal("I#ViconiaUnderdark","GLOBAL",1)~ + I#VUD2_1
  ++ @514 DO ~IncrementGlobal("I#ViconiaUnderdark","GLOBAL",1)~ + I#VUD2_1
  ++ @515 DO ~IncrementGlobal("I#ViconiaUnderdark","GLOBAL",1)~ + I#VUD2_1
  ++ @516 DO ~IncrementGlobal("I#ViconiaUnderdark","GLOBAL",1)~ + I#VUD2_2
END

IF ~~ I#VUD2_1
  SAY @517
  = @518
  ++ @519 + I#VUD2_3
  ++ @520 + I#VUD2_4
  ++ @521 + I#VUD2_5
END

IF ~~ I#VUD2_2
  SAY @522
  IF ~~ DO ~SetGlobal("I#ViconiaFriendship","GLOBAL",2)~ EXIT
END

IF ~~ I#VUD2_3
  SAY @523
  IF ~~ + I#VUD2_6
END

IF ~~ I#VUD2_4
  SAY @524
  IF ~~ + I#VUD2_6
END

IF ~~ I#VUD2_5
  SAY @525
  IF ~~ + I#VUD2_6
END

IF ~~ I#VUD2_6
  SAY @526
  = @527
  = @528
  = @529
  ++ @530 + I#VUD2_7
  ++ @531 + I#VUD2_8
  ++ @532 + I#VUD2_9
END

IF ~~ I#VUD2_7
  SAY @533
  IF ~~ + I#VUD2_10
END

IF ~~ I#VUD2_8
  SAY @534
  IF ~~ + I#VUD2_10
END

IF ~~ I#VUD2_9
  SAY @535
  IF ~~ + I#VUD2_10
END
  
IF ~~ I#VUD2_10
  SAY @536
  = @537
  = @538
  = @539
  IF ~~ EXIT
END


// Scenery dialogue #4: Elhan
IF WEIGHT #-2 ~Global("I#ViconiaElhan","GLOBAL",1)~ I#VE1_0
  SAY @540 
  ++ @541 DO ~IncrementGlobal("I#ViconiaElhan","GLOBAL",1)~ + I#VE1_1
  + ~Race(Player1,ELF)~ + @542 DO ~IncrementGlobal("I#ViconiaElhan","GLOBAL",1)~ + I#VE1_2
  + ~!Race(Player1,ELF)~ + @542 DO ~IncrementGlobal("I#ViconiaElhan","GLOBAL",1)~ + I#VE1_3
  ++ @543 DO ~IncrementGlobal("I#ViconiaElhan","GLOBAL",1)~ + I#VE1_4
  ++ @544 DO ~IncrementGlobal("I#ViconiaElhan","GLOBAL",1)~ + I#VE1_5
END

IF ~~ I#VE1_1
  SAY @545
  IF ~~ + I#VE1_6
END

IF ~~ I#VE1_2
  SAY @546
  IF ~~ + I#VE1_1
END

IF ~~ I#VE1_3
  SAY @547
  IF ~~ + I#VE1_1
END

IF ~~ I#VE1_4
  SAY @548
  IF ~~ EXIT
END

IF ~~ I#VE1_5
  SAY @549
  IF ~~ + I#VE1_1
END

IF ~~ I#VE1_6
  SAY @550
  IF ~~ EXIT
END

END

// Handmaiden dialogue
BEGIN ~I#VHAND~

IF ~NumTimesTalkedTo(0)~ I#VHandmaiden
  SAY @551
  IF ~~ DO ~Enemy() Shout(89)~  EXIT
END