.class final Lcom/android/server/DeviceIdleController$MyHandler;
.super Landroid/os/Handler;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1438
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1439
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1440
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 1443
    move-object/from16 v2, p1

    # getter for: Lcom/android/server/DeviceIdleController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_28
    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_31c

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_36c

    goto/16 :goto_36b

    .line 1649
    :pswitch_38
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1650
    .local v0, "appId":I
    iget v3, v2, Landroid/os/Message;->arg2:I

    if-ne v3, v5, :cond_3f

    goto :goto_40

    :cond_3f
    move v5, v6

    :goto_40
    move v3, v5

    .line 1651
    .local v3, "added":Z
    iget-object v4, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$2900(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZ)V

    .line 1652
    .end local v0    # "appId":I
    .end local v3    # "added":Z
    goto/16 :goto_36b

    .line 1646
    :pswitch_4c
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 1647
    goto/16 :goto_36b

    .line 1630
    :pswitch_53
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_58

    goto :goto_59

    :cond_58
    move v5, v6

    :goto_59
    move v3, v5

    .line 1631
    .local v3, "active":Z
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2800(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    move v4, v0

    .line 1633
    .local v4, "size":I
    nop

    .line 1633
    .local v6, "i":I
    :goto_66
    move v5, v6

    .line 1633
    .end local v6    # "i":I
    .local v5, "i":I
    if-ge v5, v4, :cond_88

    .line 1635
    :try_start_69
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2800(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/IMaintenanceActivityListener;

    .line 1636
    invoke-interface {v0, v3}, Landroid/os/IMaintenanceActivityListener;->onMaintenanceActivityChanged(Z)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_78} :catch_84
    .catchall {:try_start_69 .. :try_end_78} :catchall_79

    .line 1638
    goto :goto_85

    .line 1641
    .end local v5    # "i":I
    :catchall_79
    move-exception v0

    iget-object v5, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$2800(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0

    .line 1637
    .restart local v5    # "i":I
    :catch_84
    move-exception v0

    .line 1633
    :goto_85
    add-int/lit8 v6, v5, 0x1

    .line 1633
    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_66

    .line 1641
    .end local v6    # "i":I
    :cond_88
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2800(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1642
    nop

    .line 1643
    .end local v3    # "active":Z
    .end local v4    # "size":I
    goto/16 :goto_36b

    .line 1625
    :pswitch_94
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1626
    .local v0, "uid":I
    iget-object v3, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3, v0}, Lcom/android/server/DeviceIdleController;->checkTempAppWhitelistTimeout(I)V

    .line 1627
    .end local v0    # "uid":I
    goto/16 :goto_36b

    .line 1580
    :pswitch_9d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1581
    .local v3, "activeReason":Ljava/lang/String;
    iget v4, v2, Landroid/os/Message;->arg1:I

    .line 1583
    .local v4, "activeUid":I
    if-eqz v3, :cond_a8

    .line 1582
    move-object v0, v3

    goto :goto_ab

    .line 1583
    :cond_a8
    const-string/jumbo v0, "unknown"

    .line 1582
    :goto_ab
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1587
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mState:I
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$900(Lcom/android/server/DeviceIdleController;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/os/PowerManagerInternal;->setDeviceIdleState(I)V

    .line 1590
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v5

    .line 1591
    .local v5, "deepChanged":Z
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v0

    move v7, v0

    .line 1593
    .local v7, "lightChanged":Z
    :try_start_d2
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1900(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1594
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2000(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    invoke-interface {v0, v6, v3, v4}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_e4
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_e4} :catch_e5

    .line 1597
    goto :goto_e6

    .line 1596
    :catch_e5
    move-exception v0

    .line 1598
    :goto_e6
    if-eqz v5, :cond_117

    .line 1601
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1800(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/Light;

    move-result-object v0

    if-eqz v0, :cond_f9

    .line 1602
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1800(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/lights/Light;->setIdleMode(Z)V

    .line 1605
    :cond_f9
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;
    invoke-static {v8}, Lcom/android/server/DeviceIdleController;->access$2100(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1609
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getInstance()Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    move-result-object v0

    if-eqz v0, :cond_117

    .line 1610
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getInstance()Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->notifyDozeEvent(ZLjava/lang/String;)V

    .line 1614
    :cond_117
    if-eqz v7, :cond_135

    .line 1617
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2200(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    const-string v8, "LightIdle_Status"

    invoke-virtual {v0, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1619
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->access$2200(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v6

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1621
    :cond_135
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    .line 1622
    .end local v3    # "activeReason":Ljava/lang/String;
    .end local v4    # "activeUid":I
    .end local v5    # "deepChanged":Z
    .end local v7    # "lightChanged":Z
    goto/16 :goto_36b

    .line 1536
    :pswitch_13a
    const-string/jumbo v0, "unknown"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1540
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mState:I
    invoke-static {v7}, Lcom/android/server/DeviceIdleController;->access$900(Lcom/android/server/DeviceIdleController;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->setDeviceIdleState(I)V

    .line 1543
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v7

    .line 1544
    .local v7, "deepChanged":Z
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v0

    move v8, v0

    .line 1546
    .local v8, "lightChanged":Z
    :try_start_164
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1900(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1547
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2000(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    .line 1548
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    .line 1547
    invoke-interface {v0, v6, v4, v9}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_17a
    .catch Landroid/os/RemoteException; {:try_start_164 .. :try_end_17a} :catch_17b

    .line 1550
    goto :goto_17c

    .line 1549
    :catch_17b
    move-exception v0

    .line 1551
    :goto_17c
    if-eqz v7, :cond_1bc

    .line 1554
    new-array v0, v5, [I

    aput v3, v0, v6

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_199

    .line 1555
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1800(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/Light;

    move-result-object v0

    if-eqz v0, :cond_199

    .line 1556
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1800(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/lights/Light;->setIdleMode(Z)V

    .line 1560
    :cond_199
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1561
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2100(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1562
    # getter for: Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2700(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1561
    invoke-virtual/range {v9 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1564
    :cond_1bc
    if-eqz v8, :cond_1ec

    .line 1565
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1568
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2200(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "LightIdle_Status"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1570
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2200(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1571
    # getter for: Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2700(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1570
    invoke-virtual/range {v9 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1575
    :cond_1ec
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 1576
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    .line 1577
    .end local v7    # "deepChanged":Z
    .end local v8    # "lightChanged":Z
    goto/16 :goto_36b

    .line 1452
    :pswitch_1f6
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnStart()V

    .line 1458
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mState:I
    invoke-static {v7}, Lcom/android/server/DeviceIdleController;->access$900(Lcom/android/server/DeviceIdleController;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->setDeviceIdleState(I)V

    .line 1461
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    if-ne v0, v7, :cond_244

    .line 1462
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1463
    .local v0, "deepChanged":Z
    iget-object v8, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v8}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v8

    .line 1466
    .restart local v8    # "lightChanged":Z
    new-array v9, v5, [I

    aput v3, v9, v6

    invoke-static {v9}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_23c

    .line 1467
    iget-object v3, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$1800(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/Light;

    move-result-object v3

    if-eqz v3, :cond_23c

    .line 1468
    iget-object v3, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$1800(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/Light;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/lights/Light;->setIdleMode(Z)V

    .line 1475
    :cond_23c
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->notifyEnterDeepIdle()V

    goto :goto_258

    .line 1478
    .end local v0    # "deepChanged":Z
    .end local v8    # "lightChanged":Z
    :cond_244
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1479
    .restart local v0    # "deepChanged":Z
    iget-object v3, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v8

    .line 1479
    .end local v0    # "deepChanged":Z
    .local v3, "deepChanged":Z
    .restart local v8    # "lightChanged":Z
    :goto_258
    move v3, v0

    move v6, v8

    .line 1482
    .end local v8    # "lightChanged":Z
    .local v6, "lightChanged":Z
    :try_start_25a
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1900(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1483
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2000(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iget v8, v2, Landroid/os/Message;->what:I

    if-ne v8, v7, :cond_26e

    .line 1484
    goto :goto_26f

    .line 1485
    :cond_26e
    move v7, v5

    :goto_26f
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    .line 1483
    invoke-interface {v0, v7, v4, v8}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_276
    .catch Landroid/os/RemoteException; {:try_start_25a .. :try_end_276} :catch_277

    .line 1487
    goto :goto_278

    .line 1486
    :catch_277
    move-exception v0

    .line 1488
    :goto_278
    if-eqz v3, :cond_2a8

    .line 1491
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2100(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "stopGps"

    sget-boolean v7, Lcom/android/server/DeviceIdleController;->mStopGps:Z

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1493
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$2100(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v4

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1497
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getInstance()Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    move-result-object v0

    if-eqz v0, :cond_2a8

    .line 1498
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getInstance()Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    move-result-object v0

    const-string v4, "becomeDeepIdle"

    invoke-virtual {v0, v5, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->notifyDozeEvent(ZLjava/lang/String;)V

    .line 1502
    :cond_2a8
    if-eqz v6, :cond_309

    .line 1505
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2200(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "LightIdle_Status"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1507
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$2200(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v4

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1511
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2300(Lcom/android/server/DeviceIdleController;)Z

    move-result v0

    if-nez v0, :cond_309

    .line 1512
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # setter for: Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z
    invoke-static {v0, v5}, Lcom/android/server/DeviceIdleController;->access$2302(Lcom/android/server/DeviceIdleController;Z)Z

    .line 1513
    const-string v0, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter First LightIdle, schedule to SNAPSHOT in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mDelaySnapShotMillis:J
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$2400(Lcom/android/server/DeviceIdleController;)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms, now="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    new-instance v0, Lcom/android/server/DeviceIdleController$MyHandler$1;

    invoke-direct {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler$1;-><init>(Lcom/android/server/DeviceIdleController$MyHandler;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1528
    # getter for: Lcom/android/server/DeviceIdleController;->mDelaySnapShotMillis:J
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$2400(Lcom/android/server/DeviceIdleController;)J

    move-result-wide v4

    .line 1515
    invoke-static {v0, v4, v5}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    .line 1531
    :cond_309
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnComplete()V

    .line 1532
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1533
    .end local v3    # "deepChanged":Z
    .end local v6    # "lightChanged":Z
    goto :goto_36b

    .line 1447
    :pswitch_316
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->handleWriteConfigFile()V

    .line 1448
    goto :goto_36b

    .line 1657
    :cond_31c
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$3000(Lcom/android/server/DeviceIdleController;)Lcom/android/server/OnePlusPowerController$LocalService;

    move-result-object v0

    if-eqz v0, :cond_33f

    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_33f

    .line 1658
    const-string v0, "DeviceIdleController"

    const-string v3, "[2] Set in OnePlusStandbyAnalyzer\'s reference into LocalOnePlusPowerController"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$3000(Lcom/android/server/DeviceIdleController;)Lcom/android/server/OnePlusPowerController$LocalService;

    move-result-object v0

    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/OnePlusPowerController$LocalService;->setInOnePlusStandbyAnalyzer(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    goto :goto_346

    .line 1661
    :cond_33f
    const-string v0, "DeviceIdleController"

    const-string v3, "[2] Failed to set in OnePlusStandbyAnalyzer\'s reference into LocalOnePlusPowerController"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :goto_346
    # getter for: Lcom/android/server/DeviceIdleController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_353

    .line 1664
    const-string v0, "DeviceIdleController"

    const-string v3, "[OnlineConfig] Try to get OnLineConfig..."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_353
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v3, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    # getter for: Lcom/android/server/DeviceIdleController;->POWERSTANDBY_ONLINECONFIG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$3100()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1666
    .local v0, "grabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v3, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v4

    # invokes: Lcom/android/server/DeviceIdleController;->resolveDeviceIdleConfigFromJSON(Lorg/json/JSONArray;)V
    invoke-static {v3, v4}, Lcom/android/server/DeviceIdleController;->access$3200(Lcom/android/server/DeviceIdleController;Lorg/json/JSONArray;)V

    .line 1670
    .end local v0    # "grabber":Lcom/oneplus/config/ConfigGrabber;
    :goto_36b
    return-void

    :pswitch_data_36c
    .packed-switch 0x1
        :pswitch_316
        :pswitch_1f6
        :pswitch_1f6
        :pswitch_13a
        :pswitch_9d
        :pswitch_94
        :pswitch_53
        :pswitch_4c
        :pswitch_38
    .end packed-switch
.end method
