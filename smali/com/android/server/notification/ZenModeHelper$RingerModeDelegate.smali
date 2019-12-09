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
    .locals 0

    .line 1033
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRingerModeAffectedStreams(I)I
    .locals 3

    .line 1135
    or-int/lit8 p1, p1, 0x26

    .line 1139
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1141
    or-int/lit8 p1, p1, 0x18

    goto :goto_0

    .line 1144
    :cond_0
    and-int/lit8 p1, p1, -0x19

    .line 1148
    :goto_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v0, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1149
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1152
    and-int/lit8 p1, p1, -0x3

    goto :goto_1

    .line 1154
    :cond_1
    or-int/2addr p1, v1

    .line 1156
    :goto_1
    return p1
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 10

    .line 1092
    nop

    .line 1093
    const/4 p5, 0x0

    const/4 v0, 0x1

    if-eq p1, p2, :cond_0

    .line 1094
    move v1, v0

    goto :goto_0

    .line 1093
    :cond_0
    nop

    .line 1094
    move v1, p5

    :goto_0
    if-ne p4, v0, :cond_1

    .line 1096
    move v2, v0

    goto :goto_1

    .line 1094
    :cond_1
    nop

    .line 1096
    move v2, p5

    .line 1097
    :goto_1
    const/4 v3, -0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_4

    .line 1111
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v0, :cond_5

    .line 1112
    nop

    .line 1116
    move v5, p5

    move p5, p2

    goto :goto_6

    .line 1099
    :pswitch_1
    if-eqz v1, :cond_4

    .line 1100
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v1, v1, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v1, :cond_2

    .line 1101
    nop

    .line 1103
    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    if-eqz v2, :cond_3

    .line 1116
    move p5, v0

    goto :goto_3

    .line 1104
    :cond_3
    nop

    .line 1116
    :goto_3
    move v5, v1

    goto :goto_6

    .line 1106
    :cond_4
    nop

    .line 1108
    nop

    .line 1116
    move p5, p4

    goto :goto_5

    :cond_5
    :goto_4
    move p5, p2

    :goto_5
    move v5, v3

    :goto_6
    if-eq v5, v3, :cond_6

    .line 1117
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v6, 0x0

    const-string/jumbo v7, "ringerModeExternal"

    const/4 v9, 0x0

    move-object v8, p3

    invoke-static/range {v4 .. v9}, Lcom/android/server/notification/ZenModeHelper;->access$600(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1121
    :cond_6
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    .line 1123
    return p5

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 10

    .line 1042
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_0

    .line 1044
    move v2, v1

    goto :goto_0

    .line 1042
    :cond_0
    nop

    .line 1044
    move v2, v0

    .line 1046
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v3, v3, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v3, v3, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v3, v3, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1048
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1051
    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/notification/ZenModeHelper;->access$500(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    .line 1053
    :cond_2
    nop

    .line 1054
    const/4 v3, -0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_3

    .line 1065
    :pswitch_0
    if-eqz v2, :cond_4

    if-nez p1, :cond_4

    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p5, p5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v4, 0x2

    if-eq p5, v4, :cond_3

    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p5, p5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v4, 0x3

    if-eq p5, v4, :cond_3

    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p5, p5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne p5, v1, :cond_4

    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object p5, p5, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1069
    invoke-static {p5}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result p5

    if-eqz p5, :cond_4

    .line 1071
    :cond_3
    goto :goto_2

    .line 1072
    :cond_4
    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p5, p5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz p5, :cond_6

    .line 1073
    nop

    .line 1078
    move p5, v0

    goto :goto_4

    .line 1056
    :pswitch_1
    if-eqz v2, :cond_6

    iget-boolean p5, p5, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz p5, :cond_6

    .line 1057
    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p5, p5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez p5, :cond_5

    .line 1058
    nop

    .line 1060
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p5, v1}, Lcom/android/server/notification/ZenModeHelper;->access$500(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    .line 1078
    :goto_2
    move p5, p2

    goto :goto_5

    :cond_6
    :goto_3
    move p5, p2

    :goto_4
    move v0, v3

    :goto_5
    if-eq v0, v3, :cond_7

    .line 1079
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v6, 0x0

    const-string/jumbo v7, "ringerModeInternal"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, v0

    invoke-static/range {v4 .. v9}, Lcom/android/server/notification/ZenModeHelper;->access$600(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1082
    :cond_7
    if-nez v2, :cond_8

    if-ne v0, v3, :cond_8

    if-eq p4, p5, :cond_9

    .line 1083
    :cond_8
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    .line 1086
    :cond_9
    return p5

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1036
    const-string v0, "ZenModeHelper"

    return-object v0
.end method
