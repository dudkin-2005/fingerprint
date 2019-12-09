.class Lcom/android/server/OnePlusPowerController$5;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;

    .line 1210
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1215
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1216
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2100(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1219
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v1, "OnePlusPowerController"

    const-string v2, "In light device idle mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_3b
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2200(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->disableExclusiveWakeLocks()V

    goto/16 :goto_1e8

    .line 1225
    :cond_46
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_53

    const-string v1, "OnePlusPowerController"

    const-string v2, "Leave light device idle mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_53
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2100(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    if-nez v1, :cond_1e8

    .line 1229
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2200(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->enableExclusiveWakeLocks()V

    goto/16 :goto_1e8

    .line 1232
    :cond_6a
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 1233
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2100(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    if-nez v1, :cond_1e8

    .line 1236
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_a1

    const-string v1, "OnePlusPowerController"

    const-string v2, "Leave device idle mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_a1
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2200(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->enableExclusiveWakeLocks()V

    goto/16 :goto_1e8

    .line 1243
    :cond_ac
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c5

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 1244
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be

    goto/16 :goto_1c5

    .line 1254
    :cond_be
    const-string/jumbo v1, "net.oneplus.powercontroller.intent.OPSM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_f4

    .line 1255
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$000(Lcom/android/server/OnePlusPowerController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1256
    :try_start_cf
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I
    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$600(Lcom/android/server/OnePlusPowerController;)I

    move-result v3

    if-lez v3, :cond_ee

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mDozeState:I
    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$700(Lcom/android/server/OnePlusPowerController;)I

    move-result v3

    if-ne v3, v2, :cond_ee

    .line 1257
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;
    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v2

    const/16 v3, 0x15be

    invoke-virtual {v2, v3}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1259
    :cond_ee
    monitor-exit v1

    goto/16 :goto_1e8

    :catchall_f1
    move-exception v2

    monitor-exit v1
    :try_end_f3
    .catchall {:try_start_cf .. :try_end_f3} :catchall_f1

    throw v2

    .line 1260
    :cond_f4
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_112

    .line 1261
    const-string/jumbo v1, "plugged"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1262
    .local v1, "plugged":I
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    and-int/lit8 v4, v1, 0x7

    if-eqz v4, :cond_10d

    const/4 v3, 0x1

    nop

    :cond_10d
    # setter for: Lcom/android/server/OnePlusPowerController;->mIsCharging:Z
    invoke-static {v2, v3}, Lcom/android/server/OnePlusPowerController;->access$302(Lcom/android/server/OnePlusPowerController;Z)Z

    .line 1263
    .end local v1    # "plugged":I
    goto/16 :goto_1e8

    :cond_112
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_1e8

    .line 1264
    const-string/jumbo v1, "net.oneplus.powercontroller.action.RECORD_IDLE_ITEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 1265
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1268
    :cond_12e
    const-string/jumbo v1, "net.oneplus.powercontroller.action.RESTORE_IDLE_ITEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_145

    .line 1269
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1272
    :cond_145
    const-string/jumbo v1, "net.oneplus.powercontroller.action.PROCESS_KMEANS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 1273
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1276
    :cond_15c
    const-string/jumbo v1, "net.oneplus.powercontroller.action.IDLE_STATS_CONFIG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e8

    .line 1277
    const-string/jumbo v1, "seed"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1278
    .local v1, "seed":I
    const-string v2, "cluster"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1279
    .local v2, "cluster":I
    const-string/jumbo v4, "min_rec"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1280
    .local v4, "min_rec":I
    const-string/jumbo v5, "min_idle"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1281
    .local v5, "min_idle":I
    const-string/jumbo v6, "max_idle"

    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1282
    .local v6, "max_idle":I
    const-string/jumbo v7, "min_len"

    invoke-virtual {p2, v7, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1283
    .local v7, "min_len":I
    const-string/jumbo v8, "max_len"

    invoke-virtual {p2, v8, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1284
    .local v8, "max_len":I
    const-string/jumbo v9, "tolerance"

    invoke-virtual {p2, v9, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1286
    .local v3, "tolerance":I
    if-lez v1, :cond_1a1

    # setter for: Lcom/android/server/OnePlusPowerController;->mRandomSeed:I
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2302(I)I

    .line 1287
    :cond_1a1
    if-lez v2, :cond_1a6

    # setter for: Lcom/android/server/OnePlusPowerController;->mNumCluster:I
    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$2402(I)I

    .line 1288
    :cond_1a6
    if-lez v4, :cond_1ab

    # setter for: Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I
    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$2502(I)I

    .line 1289
    :cond_1ab
    if-lez v5, :cond_1b0

    # setter for: Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I
    invoke-static {v5}, Lcom/android/server/OnePlusPowerController;->access$2602(I)I

    .line 1290
    :cond_1b0
    if-lez v6, :cond_1b5

    # setter for: Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I
    invoke-static {v6}, Lcom/android/server/OnePlusPowerController;->access$2702(I)I

    .line 1291
    :cond_1b5
    if-lez v7, :cond_1ba

    # setter for: Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I
    invoke-static {v7}, Lcom/android/server/OnePlusPowerController;->access$2802(I)I

    .line 1292
    :cond_1ba
    if-lez v8, :cond_1bf

    # setter for: Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I
    invoke-static {v8}, Lcom/android/server/OnePlusPowerController;->access$2902(I)I

    .line 1293
    :cond_1bf
    if-lez v3, :cond_1e8

    # setter for: Lcom/android/server/OnePlusPowerController;->mTolerance:I
    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$3002(I)I

    .line 1293
    .end local v1    # "seed":I
    .end local v2    # "cluster":I
    .end local v3    # "tolerance":I
    .end local v4    # "min_rec":I
    .end local v5    # "min_idle":I
    .end local v6    # "max_idle":I
    .end local v7    # "min_len":I
    .end local v8    # "max_len":I
    goto :goto_1e8

    .line 1245
    :cond_1c5
    :goto_1c5
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$000(Lcom/android/server/OnePlusPowerController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1252
    :try_start_1e2
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked()V

    .line 1253
    monitor-exit v1

    .line 1296
    :cond_1e8
    :goto_1e8
    return-void

    .line 1253
    :catchall_1e9
    move-exception v2

    monitor-exit v1
    :try_end_1eb
    .catchall {:try_start_1e2 .. :try_end_1eb} :catchall_1e9

    throw v2
.end method
