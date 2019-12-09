.class public Lcom/android/server/DeviceIdleController$LocalService;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    .line 1842
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V
    .registers 16
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "userId"    # I
    .param p6, "sync"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .line 1846
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 1848
    return-void
.end method

.method public addPowerSaveTempWhitelistAppDirect(IJZLjava/lang/String;)V
    .registers 13
    .param p1, "appId"    # I
    .param p2, "duration"    # J
    .param p4, "sync"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 1853
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    const/4 v1, 0x0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V

    .line 1854
    return-void
.end method

.method public getDeepIdleState()I
    .registers 2

    .line 1935
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mState:I
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$900(Lcom/android/server/DeviceIdleController;)I

    move-result v0

    return v0
.end method

.method public getNotificationWhitelistDuration()J
    .registers 3

    .line 1858
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1000(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_WHITELIST_DURATION:J

    return-wide v0
.end method

.method public getPowerSaveTempWhitelistAppIds()[I
    .registers 2

    .line 1897
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdTempWhitelistInternal()[I

    move-result-object v0

    return-object v0
.end method

.method public getPowerSaveWhitelistApps()[I
    .registers 2

    .line 1911
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdArray:[I
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$3400(Lcom/android/server/DeviceIdleController;)[I

    move-result-object v0

    return-object v0
.end method

.method public getPowerSaveWhitelistAppsExceptIdle()[I
    .registers 2

    .line 1907
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleSystemAppIdArray:[I
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$3300(Lcom/android/server/DeviceIdleController;)[I

    move-result-object v0

    return-object v0
.end method

.method public getPowerSaveWhitelistUserAppIds()[I
    .registers 2

    .line 1893
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistUserAppIds()[I

    move-result-object v0

    return-object v0
.end method

.method public isAppOnWhitelist(I)Z
    .registers 3
    .param p1, "appid"    # I

    .line 1883
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->isAppOnWhitelistInternal(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceDeepIdleMode()Z
    .registers 3

    .line 1903
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mState:I
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$900(Lcom/android/server/DeviceIdleController;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public scheduleAlarm(JZ)V
    .registers 6
    .param p1, "delay"    # J
    .param p3, "idleUntil"    # Z

    .line 1926
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 1927
    :try_start_3
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 1928
    monitor-exit v0

    .line 1929
    return-void

    .line 1928
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public setAlarmsActive(Z)V
    .registers 3
    .param p1, "active"    # Z

    .line 1878
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->setAlarmsActive(Z)V

    .line 1879
    return-void
.end method

.method public setInBatteryStatsServiceInstance(Lcom/android/server/am/BatteryStatsService;)V
    .registers 5
    .param p1, "batteryStatsService"    # Lcom/android/server/am/BatteryStatsService;

    .line 1917
    const-string v0, "DeviceIdleController"

    const-string v1, "[1] Set in BatteryStatsService\'s reference to init OnePlusStandbyAnalyzer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$3500(Lcom/android/server/DeviceIdleController;)Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/DeviceIdleController;Z)V

    # setter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$202(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 1920
    return-void
.end method

.method public setJobsActive(Z)V
    .registers 3
    .param p1, "active"    # Z

    .line 1873
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->setJobsActive(Z)V

    .line 1874
    return-void
.end method
