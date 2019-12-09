.class Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;
.super Landroid/os/Handler;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "oneplusProcessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1245
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 1246
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1247
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1250
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_1a

    .line 1251
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FO]handleMessage(): msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_1a
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_1bc

    goto/16 :goto_1ba

    .line 1378
    :sswitch_23
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const-string v2, "BIND_SERVICE_LOCKED_TIMEOUT"

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->killBlockProcess(IILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->access$3000(IILjava/lang/String;)V

    .line 1379
    goto/16 :goto_1ba

    .line 1375
    :sswitch_2e
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const-string v2, "DISPATCH_RESIZED_TIMEOUT"

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->killBlockProcess(IILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->access$3000(IILjava/lang/String;)V

    .line 1376
    goto/16 :goto_1ba

    .line 1372
    :sswitch_39
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const-string v2, "DISPATCH_APP_VISIBILITY_TIMEOUT"

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->killBlockProcess(IILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->access$3000(IILjava/lang/String;)V

    .line 1373
    goto/16 :goto_1ba

    .line 1369
    :sswitch_44
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const-string v2, "DISPLAY_EVENT_TIMEOUT"

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->killBlockProcess(IILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->access$3000(IILjava/lang/String;)V

    .line 1370
    goto/16 :goto_1ba

    .line 1366
    :sswitch_4f
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const-string v2, "INPUT_DEVICES_CHANGE_TIMEOUT"

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->killBlockProcess(IILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->access$3000(IILjava/lang/String;)V

    .line 1367
    goto/16 :goto_1ba

    .line 1363
    :sswitch_5a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const-string v2, "PUBLISH_SERVICE_TIMEOUT"

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->killBlockProcess(IILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->access$3000(IILjava/lang/String;)V

    .line 1364
    goto/16 :goto_1ba

    .line 1357
    :sswitch_65
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1358
    .local v0, "uid2":I
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->updateForegroundActivityChange(I)V
    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$2900(Lcom/android/server/am/OnePlusProcessManager;I)V

    .line 1359
    goto/16 :goto_1ba

    .line 1352
    .end local v0    # "uid2":I
    :sswitch_6e
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2700()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v0

    if-eqz v0, :cond_1ba

    .line 1353
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2700()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v0

    const-string/jumbo v1, "updateScreenState"

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->resumeAllProcessLock(Ljava/lang/String;)V

    goto/16 :goto_1ba

    .line 1323
    :sswitch_80
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1324
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 1325
    goto/16 :goto_1ba

    .line 1327
    :cond_92
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->computeUidTraffic(I)I
    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$2800(Lcom/android/server/am/OnePlusProcessManager;I)I

    move-result v1

    .line 1328
    .local v1, "again":I
    if-lt v1, v2, :cond_1ba

    .line 1329
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1330
    .local v2, "msg2":Landroid/os/Message;
    const/16 v3, 0x74

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1331
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 1332
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Landroid/os/Handler;

    move-result-object v3

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->computeTrafficTime:J

    int-to-long v6, v1

    mul-long/2addr v4, v6

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1333
    .end local v2    # "msg2":Landroid/os/Message;
    goto/16 :goto_1ba

    .line 1314
    .end local v0    # "uid":I
    .end local v1    # "again":I
    :sswitch_b1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1315
    .local v0, "childpid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1317
    .local v1, "addUid":I
    # invokes: Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(II)V
    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$2600(II)V

    .line 1318
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$200()Z

    move-result v3

    if-ne v3, v2, :cond_1ba

    .line 1319
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2700()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v2

    const-wide/16 v3, 0x2

    sget-wide v5, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    mul-long/2addr v3, v5

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V
    invoke-static {v2, v1, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->access$1600(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    goto/16 :goto_1ba

    .line 1307
    .end local v0    # "childpid":I
    .end local v1    # "addUid":I
    :sswitch_cc
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1308
    .local v0, "uidDelay":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1311
    .local v2, "pidDelay":I
    # invokes: Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(IIZ)V
    invoke-static {v0, v2, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$2500(IIZ)V

    .line 1312
    goto/16 :goto_1ba

    .line 1260
    .end local v0    # "uidDelay":I
    .end local v2    # "pidDelay":I
    :sswitch_d5
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadNPMConfigFiles()V

    .line 1262
    :try_start_da
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$2200(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IAlarmManager;->setBlackAlarm(Ljava/util/List;)V
    :try_end_e7
    .catch Landroid/os/RemoteException; {:try_start_da .. :try_end_e7} :catch_e9

    .line 1264
    goto/16 :goto_1ba

    .line 1263
    :catch_e9
    move-exception v0

    .line 1265
    goto/16 :goto_1ba

    .line 1255
    :sswitch_ec
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    new-instance v1, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const-string v3, "/data/data_bpm/"

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OnePlusProcessManager;Ljava/lang/String;)V

    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$2102(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    .line 1256
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->access$2100(Lcom/android/server/am/OnePlusProcessManager;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->startWatching()V

    .line 1257
    goto/16 :goto_1ba

    .line 1295
    :sswitch_105
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const-string v1, "/data/data_bpm/brd.xml"

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$2402(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;

    .line 1296
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FO]UPDATE_STS: after: mBrdList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->access$2400(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    goto/16 :goto_1ba

    .line 1268
    :sswitch_12e
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$200()Z

    move-result v0

    .line 1270
    .local v0, "oldStatus":Z
    const-string v3, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1271
    .local v3, "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_19a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_19a

    .line 1272
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_15e

    .line 1273
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FO]UPDATE_STS: before: mBPMStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$200()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_15e
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1276
    .local v1, "temp":Z
    if-eq v0, v1, :cond_18e

    .line 1277
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1278
    .local v4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "BPMStatus"

    if-eqz v1, :cond_17a

    const-string/jumbo v6, "true"

    goto :goto_17c

    :cond_17a
    const-string v6, "false"

    :goto_17c
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    if-eqz v5, :cond_18e

    .line 1280
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    const-string v6, "OnePlusProcessManager"

    invoke-virtual {v5, v6, v4}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1284
    .end local v4    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_18e
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2300()I

    move-result v4

    and-int/2addr v2, v4

    if-eqz v2, :cond_19a

    .line 1285
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 1289
    .end local v1    # "temp":Z
    :cond_19a
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FO]UPDATE_STS: after: mBPMStatus="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$200()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusProcessManager;->updateProperties()V

    .line 1292
    nop

    .line 1385
    .end local v0    # "oldStatus":Z
    .end local v3    # "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1ba
    :goto_1ba
    return-void

    nop

    :sswitch_data_1bc
    .sparse-switch
        0x64 -> :sswitch_12e
        0x66 -> :sswitch_105
        0x6f -> :sswitch_ec
        0x70 -> :sswitch_d5
        0x72 -> :sswitch_cc
        0x73 -> :sswitch_b1
        0x74 -> :sswitch_80
        0x76 -> :sswitch_6e
        0x77 -> :sswitch_65
        0x2328 -> :sswitch_5a
        0x238c -> :sswitch_4f
        0x23f0 -> :sswitch_44
        0x2454 -> :sswitch_39
        0x24b8 -> :sswitch_2e
        0x251c -> :sswitch_23
    .end sparse-switch
.end method
