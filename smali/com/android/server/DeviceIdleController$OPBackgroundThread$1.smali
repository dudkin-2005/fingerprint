.class Lcom/android/server/DeviceIdleController$OPBackgroundThread$1;
.super Landroid/os/Handler;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceIdleController$OPBackgroundThread;->prepareThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Looper;

    .line 1354
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1357
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_184

    goto/16 :goto_183

    .line 1403
    :pswitch_7
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==MSG_STANDBY_MIDDLE_CHECK== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_183

    .line 1405
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->middleSpecificCheck()V

    goto/16 :goto_183

    .line 1397
    :pswitch_34
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==MSG_GEN_BATTERT_OUTLIER== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_183

    .line 1399
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatteryOutlier()V

    goto/16 :goto_183

    .line 1391
    :pswitch_61
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==MSG_CHECK_QXDM_IF_READY_ON_SDCARD== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_183

    .line 1393
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->checkIfQXDMReadyOnSdCard()V

    goto/16 :goto_183

    .line 1385
    :pswitch_8e
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==MSG_COPY_QXDM_INTO_SDCARD== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_183

    .line 1387
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->triggerCopyQXDMToSdCard()V

    goto/16 :goto_183

    .line 1379
    :pswitch_bb
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==MSG_CLEAN_QXDM_UNDER_SDCARD== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_183

    .line 1381
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->sendCleanUpQXDMIfAppropriate()V

    goto/16 :goto_183

    .line 1373
    :pswitch_e8
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==MSG_CLEAN_QXDM_UNDER_VENDOR== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_183

    .line 1375
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->triggerCleanUpQXDMUnderVendor()V

    goto :goto_183

    .line 1367
    :pswitch_114
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==MSG_STOP_QXDM_RECORDING_AFTER_120S== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_183

    .line 1369
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v0

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->REACH_120SEC_TIMEOUT:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->enableQXDM(ZLcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V

    goto :goto_183

    .line 1363
    :pswitch_145
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==MSG_BATT_SNAPSHOT_ON_END== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    goto :goto_183

    .line 1359
    :pswitch_164
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==MSG_BATT_SNAPSHOT_ON_START== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    nop

    .line 1409
    :cond_183
    :goto_183
    return-void

    :pswitch_data_184
    .packed-switch 0x3ea
        :pswitch_164
        :pswitch_145
        :pswitch_114
        :pswitch_e8
        :pswitch_bb
        :pswitch_8e
        :pswitch_61
        :pswitch_34
        :pswitch_7
    .end packed-switch
.end method
