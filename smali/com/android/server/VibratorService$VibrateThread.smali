.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field private mForceStop:Z

.field private final mUid:I

.field private final mUsageHint:I

.field private final mWaveform:Landroid/os/VibrationEffect$Waveform;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;II)V
    .locals 0

    .line 1063
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1064
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    .line 1065
    iput p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    .line 1066
    iput p4, p0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    .line 1067
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$500(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/os/WorkSource;->set(I)V

    .line 1068
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$500(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1069
    return-void
.end method

.method private delayLocked(J)J
    .locals 9

    .line 1072
    const-string v0, "delayLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1074
    nop

    .line 1075
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-lez v0, :cond_2

    .line 1076
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v5, p1

    .line 1079
    move-wide v7, p1

    :cond_0
    :try_start_1
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1081
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1082
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v0, :cond_1

    .line 1083
    goto :goto_1

    .line 1085
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v7, v5, v7

    .line 1086
    cmp-long v0, v7, v3

    if-gtz v0, :cond_0

    .line 1087
    :goto_1
    sub-long/2addr p1, v7

    .line 1091
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1087
    return-wide p1

    .line 1091
    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p1

    .line 1089
    :cond_2
    nop

    .line 1091
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1089
    return-wide v3
.end method

.method private getTotalOnDuration([J[III)J
    .locals 6

    .line 1177
    nop

    .line 1178
    nop

    .line 1179
    const-wide/16 v0, 0x0

    move-wide v1, v0

    move v0, p3

    :cond_0
    aget v3, p2, v0

    if-eqz v3, :cond_2

    .line 1180
    add-int/lit8 v3, v0, 0x1

    aget-wide v4, p1, v0

    add-long/2addr v1, v4

    .line 1181
    array-length v0, p1

    if-lt v3, v0, :cond_1

    .line 1182
    if-ltz p4, :cond_2

    .line 1183
    nop

    .line 1188
    move v0, p4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-ne v0, p3, :cond_0

    .line 1189
    const-wide/16 p1, 0x3e8

    return-wide p1

    .line 1192
    :cond_2
    return-wide v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1165
    monitor-enter p0

    .line 1166
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$900(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    .line 1167
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$900(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1168
    monitor-exit p0

    .line 1169
    return-void

    .line 1168
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public playWaveform()Z
    .locals 21

    .line 1114
    move-object/from16 v1, p0

    const-string/jumbo v0, "playWaveform"

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1116
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1117
    :try_start_1
    iget-object v0, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v0

    .line 1118
    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Waveform;->getAmplitudes()[I

    move-result-object v4

    .line 1119
    array-length v5, v0

    .line 1120
    iget-object v6, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v6}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v6

    .line 1122
    const/4 v7, 0x0

    .line 1123
    nop

    .line 1124
    const-wide/16 v8, 0x0

    move-wide v10, v8

    :goto_0
    iget-boolean v12, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v12, :cond_6

    .line 1125
    if-ge v7, v5, :cond_4

    .line 1126
    aget v12, v4, v7

    .line 1127
    add-int/lit8 v19, v7, 0x1

    aget-wide v14, v0, v7

    .line 1128
    cmp-long v7, v14, v8

    if-gtz v7, :cond_0

    .line 1129
    nop

    .line 1124
    move/from16 v7, v19

    goto :goto_0

    .line 1131
    :cond_0
    if-eqz v12, :cond_2

    .line 1132
    cmp-long v7, v10, v8

    if-gtz v7, :cond_1

    .line 1139
    add-int/lit8 v7, v19, -0x1

    invoke-direct {v1, v0, v4, v7, v6}, Lcom/android/server/VibratorService$VibrateThread;->getTotalOnDuration([J[III)J

    move-result-wide v10

    .line 1141
    iget-object v13, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget v7, v1, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iget v8, v1, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    move-wide v2, v14

    move-wide v14, v10

    move/from16 v16, v12

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-static/range {v13 .. v18}, Lcom/android/server/VibratorService;->access$700(Lcom/android/server/VibratorService;JIII)V

    goto :goto_1

    .line 1143
    :cond_1
    move-wide v2, v14

    iget-object v7, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v7, v12}, Lcom/android/server/VibratorService;->access$800(Lcom/android/server/VibratorService;I)V

    goto :goto_1

    .line 1147
    :cond_2
    move-wide v2, v14

    :goto_1
    invoke-direct {v1, v2, v3}, Lcom/android/server/VibratorService$VibrateThread;->delayLocked(J)J

    move-result-wide v2

    .line 1148
    if-eqz v12, :cond_3

    .line 1149
    sub-long/2addr v10, v2

    .line 1151
    :cond_3
    nop

    .line 1124
    move/from16 v7, v19

    goto :goto_2

    .line 1151
    :cond_4
    if-gez v6, :cond_5

    .line 1152
    goto :goto_3

    .line 1154
    :cond_5
    nop

    .line 1124
    move v7, v6

    :goto_2
    const-wide/32 v2, 0x800000

    const-wide/16 v8, 0x0

    goto :goto_0

    .line 1157
    :cond_6
    :goto_3
    iget-boolean v0, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1160
    const-wide/32 v1, 0x800000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1157
    return v0

    .line 1158
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1160
    :catchall_1
    move-exception v0

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public run()V
    .locals 2

    .line 1096
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1097
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1099
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibrateThread;->playWaveform()Z

    move-result v0

    .line 1100
    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-virtual {v0}, Lcom/android/server/VibratorService;->onVibrationFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1105
    nop

    .line 1106
    return-void

    .line 1104
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
