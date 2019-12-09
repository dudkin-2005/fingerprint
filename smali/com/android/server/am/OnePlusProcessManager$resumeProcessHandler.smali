.class Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;
.super Landroid/os/Handler;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "resumeProcessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1179
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 1180
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1181
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1185
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1186
    .local v0, "suspendDelayTime":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1187
    .local v1, "uid":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1188
    .local v2, "why":Ljava/lang/String;
    const/16 v3, 0x2710

    if-ge v1, v3, :cond_d

    .line 1189
    return-void

    .line 1191
    :cond_d
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_28

    .line 1192
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resumeProcessHandler handleMessage uid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_28
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->isUidSuspended(I)Z

    move-result v3

    if-nez v3, :cond_36

    .line 1195
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V
    invoke-static {v3, v1, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->access$1600(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    .line 1196
    return-void

    .line 1200
    :cond_36
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->access$500(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v3

    add-int/lit16 v4, v1, -0x2710

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1201
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->startResumeUid(I)V
    invoke-static {v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$1900(Lcom/android/server/am/OnePlusProcessManager;I)V

    .line 1202
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_52

    .line 1203
    const-string v3, "OnePlusProcessManager"

    const-string/jumbo v4, "resumeProcessHandler startResumeUid done "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :cond_52
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->resumeRelateUid(I)V
    invoke-static {v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$2000(Lcom/android/server/am/OnePlusProcessManager;I)V

    .line 1207
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1208
    :try_start_5a
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resumeProcessHandler ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    monitor-exit v3
    :try_end_7f
    .catchall {:try_start_5a .. :try_end_7f} :catchall_cb

    .line 1212
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mCharging:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$400()Z

    move-result v3

    if-nez v3, :cond_97

    .line 1213
    const/4 v3, 0x2

    if-ne v0, v3, :cond_90

    .line 1214
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const-wide/16 v4, 0x4e20

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V
    invoke-static {v3, v1, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->access$1600(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    goto :goto_97

    .line 1216
    :cond_90
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V
    invoke-static {v3, v1, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->access$1600(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    .line 1219
    :cond_97
    :goto_97
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1220
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1221
    sget v3, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    if-eq v3, v1, :cond_be

    .line 1222
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v3

    .line 1223
    :try_start_b0
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1224
    monitor-exit v3

    goto :goto_be

    :catchall_bb
    move-exception v4

    monitor-exit v3
    :try_end_bd
    .catchall {:try_start_b0 .. :try_end_bd} :catchall_bb

    throw v4

    .line 1226
    :cond_be
    :goto_be
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_ca

    .line 1227
    const-string v3, "OnePlusProcessManager"

    const-string/jumbo v4, "resumeProcessHandler end ---------"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_ca
    return-void

    .line 1210
    :catchall_cb
    move-exception v4

    :try_start_cc
    monitor-exit v3
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw v4
.end method
