.class final Lcom/android/server/power/PowerManagerService$LocalService;
.super Landroid/os/PowerManagerInternal;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 6195
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/PowerManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .line 6195
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public addExclusiveWakeLock(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 6275
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->addExclusiveWakeLockInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 6276
    return-void
.end method

.method public clearExclusiveWakeLock()V
    .registers 2

    .line 6280
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->clearExclusiveWakeLockInternal()V

    .line 6281
    return-void
.end method

.method public disableExclusiveWakeLocks()V
    .registers 2

    .line 6290
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->disableExclusiveWakeLocksInternal()V

    .line 6291
    return-void
.end method

.method public enableExclusiveWakeLocks()V
    .registers 2

    .line 6295
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->enableExclusiveWakeLocksInternal()V

    .line 6296
    return-void
.end method

.method public finishUidChanges()V
    .registers 2

    .line 6329
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->finishUidChangesInternal()V

    .line 6330
    return-void
.end method

.method public getExclusiveWakeLock()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 6285
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mExclusiveWakeLocks:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$6600(Lcom/android/server/power/PowerManagerService;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getLowPowerState(I)Landroid/os/PowerSaveState;
    .registers 4
    .param p1, "serviceType"    # I

    .line 6249
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/BatterySaverPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 6250
    # getter for: Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v1

    .line 6249
    invoke-virtual {v0, p1, v1}, Lcom/android/server/power/BatterySaverPolicy;->getBatterySaverPolicy(IZ)Landroid/os/PowerSaveState;

    move-result-object v0

    return-object v0
.end method

.method public powerHint(II)V
    .registers 4
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .line 6365
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;II)V

    .line 6366
    return-void
.end method

.method public registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 6255
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->addListener(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 6256
    return-void
.end method

.method public setDeepSleepMode(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 6377
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6378
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/power/PowerManagerService;->setDeepSleepModeInternal(Z)Z

    .line 6379
    monitor-exit v0

    .line 6380
    return-void

    .line 6379
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setDeepSleepWhitelist([I)V
    .registers 3
    .param p1, "appids"    # [I

    .line 6372
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeepSleepWhitelistInternal([I)V

    .line 6373
    return-void
.end method

.method public setDeviceIdleAggressive(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 6336
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6337
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mDeviceIdleAggressive:Z
    invoke-static {v1, p1}, Lcom/android/server/power/PowerManagerService;->access$6702(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 6338
    monitor-exit v0

    .line 6339
    return-void

    .line 6338
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setDeviceIdleMode(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .line 6260
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setDeviceIdleState(I)V
    .registers 3
    .param p1, "state"    # I

    .line 6308
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleStateInternal(I)V

    .line 6309
    return-void
.end method

.method public setDeviceIdleSySWhitelist([I)V
    .registers 3
    .param p1, "appids"    # [I

    .line 6384
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleSySWhitelistInternal([I)V

    .line 6385
    return-void
.end method

.method public setDeviceIdleTempWhitelist([I)V
    .registers 3
    .param p1, "appids"    # [I

    .line 6319
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleTempWhitelistInternal([I)V

    .line 6320
    return-void
.end method

.method public setDeviceIdleWhitelist([I)V
    .registers 3
    .param p1, "appids"    # [I

    .line 6314
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleWhitelistInternal([I)V

    .line 6315
    return-void
.end method

.method public setDozeOverrideFromDreamManager(II)V
    .registers 4
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .line 6207
    packed-switch p1, :pswitch_data_14

    .line 6217
    const/4 p1, 0x0

    goto :goto_6

    .line 6215
    :pswitch_5
    nop

    .line 6220
    :goto_6
    const/4 v0, -0x1

    if-lt p2, v0, :cond_d

    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-le p2, v0, :cond_e

    .line 6222
    :cond_d
    const/4 p2, -0x1

    .line 6224
    :cond_e
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$6200(Lcom/android/server/power/PowerManagerService;II)V

    .line 6225
    return-void

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public setDrawWakeLockOverrideFromSidekick(Z)V
    .registers 3
    .param p1, "keepState"    # Z

    .line 6239
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setDrawWakeLockOverrideFromSidekickInternal(Z)V
    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$6500(Lcom/android/server/power/PowerManagerService;Z)V

    .line 6240
    return-void
.end method

.method public setLightDeviceIdleMode(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .line 6301
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setLightDeviceIdleModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(IJ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "timeMs"    # J

    .line 6244
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromDeviceAdminInternal(IJ)V

    .line 6245
    return-void
.end method

.method public setPackageNameWithScreenFlag(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6392
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setPackageNameWithScreenFlagInternal(Ljava/lang/String;)V

    .line 6393
    return-void
.end method

.method public setScreenBrightnessOverrideFromWindowManager(I)V
    .registers 3
    .param p1, "screenBrightness"    # I

    .line 6198
    const/4 v0, -0x1

    if-lt p1, v0, :cond_7

    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-le p1, v0, :cond_8

    .line 6200
    :cond_7
    const/4 p1, -0x1

    .line 6202
    :cond_8
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$6100(Lcom/android/server/power/PowerManagerService;I)V

    .line 6203
    return-void
.end method

.method public setUserActivityTimeoutOverrideFromWindowManager(J)V
    .registers 4
    .param p1, "timeoutMillis"    # J

    .line 6234
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$6400(Lcom/android/server/power/PowerManagerService;J)V

    .line 6235
    return-void
.end method

.method public setUserInactiveOverrideFromWindowManager()V
    .registers 2

    .line 6229
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setUserInactiveOverrideFromWindowManagerInternal()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$6300(Lcom/android/server/power/PowerManagerService;)V

    .line 6230
    return-void
.end method

.method public setWakeLockRestriction(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .line 6267
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setWakeLockRestrictionInternal(Z)Z

    move-result v0

    return v0
.end method

.method public startUidChanges()V
    .registers 2

    .line 6324
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->startUidChangesInternal()V

    .line 6325
    return-void
.end method

.method public uidActive(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 6355
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidActiveInternal(I)V

    .line 6356
    return-void
.end method

.method public uidGone(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 6350
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidGoneInternal(I)V

    .line 6351
    return-void
.end method

.method public uidIdle(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 6360
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidIdleInternal(I)V

    .line 6361
    return-void
.end method

.method public updateUidProcState(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 6345
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateUidProcStateInternal(II)V

    .line 6346
    return-void
.end method
