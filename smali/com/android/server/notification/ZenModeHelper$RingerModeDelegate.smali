.class public final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method protected constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    .line 1111
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .registers 2

    .line 1206
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getRingerModeAffectedStreams(I)I
    .registers 5
    .param p1, "streams"    # I

    .line 1213
    or-int/lit8 p1, p1, 0x26

    .line 1217
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 1219
    or-int/lit8 p1, p1, 0x18

    goto :goto_e

    .line 1222
    :cond_c
    and-int/lit8 p1, p1, -0x19

    .line 1226
    :goto_e
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v0, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1227
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1230
    and-int/lit8 p1, p1, -0x3

    goto :goto_23

    .line 1232
    :cond_22
    or-int/2addr p1, v1

    .line 1234
    :goto_23
    return p1
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 22
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    .line 1170
    move v4, v2

    .line 1171
    .local v4, "ringerModeInternalOut":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v2, :cond_f

    move v7, v6

    goto :goto_10

    :cond_f
    move v7, v5

    .line 1172
    .local v7, "isChange":Z
    :goto_10
    if-ne v3, v6, :cond_14

    move v8, v6

    goto :goto_15

    :cond_14
    move v8, v5

    .line 1174
    .local v8, "isVibrate":Z
    :goto_15
    const/4 v9, -0x1

    .line 1175
    .local v9, "newZen":I
    packed-switch v2, :pswitch_data_4a

    goto :goto_33

    .line 1189
    :pswitch_1a
    iget-object v5, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v5, :cond_33

    .line 1190
    const/4 v9, 0x0

    goto :goto_33

    .line 1177
    :pswitch_22
    if-eqz v7, :cond_31

    .line 1178
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v10, v10, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v10, :cond_2b

    .line 1179
    const/4 v9, 0x1

    .line 1181
    :cond_2b
    if-eqz v8, :cond_2f

    .line 1182
    move v5, v6

    nop

    :cond_2f
    move v4, v5

    goto :goto_33

    .line 1184
    :cond_31
    move v4, v3

    .line 1186
    nop

    .line 1194
    :cond_33
    :goto_33
    const/4 v5, -0x1

    if-eq v9, v5, :cond_43

    .line 1195
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v12, 0x0

    const-string/jumbo v13, "ringerModeExternal"

    const/4 v15, 0x0

    move v11, v9

    move-object/from16 v14, p3

    # invokes: Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v10 .. v15}, Lcom/android/server/notification/ZenModeHelper;->access$500(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1199
    :cond_43
    move-object/from16 v5, p3

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    .line 1201
    return v4

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 22
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    .line 1120
    const/4 v4, 0x1

    if-eq v1, v2, :cond_d

    move v5, v4

    goto :goto_e

    :cond_d
    const/4 v5, 0x0

    .line 1122
    .local v5, "isChange":Z
    :goto_e
    move v6, v2

    .line 1124
    .local v6, "ringerModeExternalOut":I
    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v7, v7, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v7, :cond_25

    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v7, v7, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v7, v4, :cond_2e

    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v7, v7, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1126
    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v7

    if-nez v7, :cond_2e

    .line 1129
    :cond_25
    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    # invokes: Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    invoke-static {v7, v8}, Lcom/android/server/notification/ZenModeHelper;->access$400(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    .line 1131
    :cond_2e
    const/4 v7, -0x1

    .line 1132
    .local v7, "newZen":I
    packed-switch v2, :pswitch_data_9a

    goto :goto_5e

    .line 1143
    :pswitch_33
    if-eqz v5, :cond_57

    if-nez v1, :cond_57

    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v8, v8, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_55

    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v8, v8, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_55

    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v8, v8, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v8, v4, :cond_57

    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v4, v4, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1147
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 1149
    :cond_55
    const/4 v7, 0x0

    goto :goto_5e

    .line 1150
    :cond_57
    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v4, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v4, :cond_5e

    .line 1151
    const/4 v6, 0x0

    .line 1156
    :cond_5e
    :goto_5e
    move-object/from16 v4, p5

    goto :goto_79

    .line 1134
    :pswitch_61
    if-eqz v5, :cond_5e

    move-object/from16 v4, p5

    iget-boolean v8, v4, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v8, :cond_79

    .line 1135
    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v8, v8, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v8, :cond_70

    .line 1136
    const/4 v7, 0x1

    .line 1138
    :cond_70
    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    # invokes: Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    invoke-static {v8, v9}, Lcom/android/server/notification/ZenModeHelper;->access$400(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    .line 1156
    :cond_79
    :goto_79
    const/4 v8, -0x1

    if-eq v7, v8, :cond_88

    .line 1157
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v12, 0x0

    const-string/jumbo v13, "ringerModeInternal"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v11, v7

    # invokes: Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v10 .. v15}, Lcom/android/server/notification/ZenModeHelper;->access$500(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1160
    :cond_88
    if-nez v5, :cond_92

    if-ne v7, v8, :cond_92

    if-eq v3, v6, :cond_8f

    goto :goto_92

    .line 1164
    :cond_8f
    move-object/from16 v8, p3

    goto :goto_97

    .line 1161
    :cond_92
    :goto_92
    move-object/from16 v8, p3

    invoke-static {v1, v2, v8, v3, v6}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    .line 1164
    :goto_97
    return v6

    nop

    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_61
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1114
    const-string v0, "ZenModeHelper"

    return-object v0
.end method
