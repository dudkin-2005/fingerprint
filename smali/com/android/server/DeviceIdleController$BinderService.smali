.class final Lcom/android/server/DeviceIdleController$BinderService;
.super Landroid/os/IDeviceIdleController$Stub;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method private constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .line 1677
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/os/IDeviceIdleController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p2, "x1"    # Lcom/android/server/DeviceIdleController$1;

    .line 1677
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;)V

    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userId"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1787
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x50

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1788
    # getter for: Lcom/android/server/DeviceIdleController;->mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$3000(Lcom/android/server/DeviceIdleController;)Lcom/android/server/OnePlusPowerController$LocalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$LocalService;->isInDeepSleep()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1789
    # getter for: Lcom/android/server/DeviceIdleController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip add temp while on ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    :cond_4e
    return-void

    .line 1794
    :cond_4f
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V

    .line 1795
    return-void
.end method

.method public addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1799
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1000(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_WHITELIST_DURATION:J

    .line 1800
    .local v7, "duration":J
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    move-object v2, p1

    move-wide v3, v7

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V

    .line 1801
    return-wide v7
.end method

.method public addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1806
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1000(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_WHITELIST_DURATION:J

    .line 1807
    .local v7, "duration":J
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    move-object v2, p1

    move-wide v3, v7

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V

    .line 1808
    return-wide v7
.end method

.method public addPowerSaveWhitelistApp(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 1679
    # getter for: Lcom/android/server/DeviceIdleController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1680
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPowerSaveWhitelistApp(name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    :cond_21
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1686
    .local v0, "ident":J
    :try_start_31
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2, p1}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_3b

    .line 1688
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1689
    nop

    .line 1690
    return-void

    .line 1688
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1833
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1834
    return-void
.end method

.method public exitIdle(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 1812
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1816
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2, p1}, Lcom/android/server/DeviceIdleController;->exitIdleInternal(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 1818
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1819
    nop

    .line 1820
    return-void

    .line 1818
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getAppIdTempWhitelist()[I
    .registers 2

    .line 1771
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdTempWhitelistInternal()[I

    move-result-object v0

    return-object v0
.end method

.method public getAppIdUserWhitelist()[I
    .registers 2

    .line 1767
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdUserWhitelistInternal()[I

    move-result-object v0

    return-object v0
.end method

.method public getAppIdWhitelist()[I
    .registers 2

    .line 1763
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdWhitelistInternal()[I

    move-result-object v0

    return-object v0
.end method

.method public getAppIdWhitelistExceptIdle()[I
    .registers 2

    .line 1759
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdWhitelistExceptIdleInternal()[I

    move-result-object v0

    return-object v0
.end method

.method public getFullPowerWhitelist()[Ljava/lang/String;
    .registers 2

    .line 1755
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getFullPowerWhitelistInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullPowerWhitelistExceptIdle()[Ljava/lang/String;
    .registers 2

    .line 1751
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getFullPowerWhitelistExceptIdleInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedSystemPowerWhitelistApps()[Ljava/lang/String;
    .registers 2

    .line 1735
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getRemovedSystemPowerWhitelistAppsInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemPowerWhitelist()[Ljava/lang/String;
    .registers 2

    .line 1743
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getSystemPowerWhitelistInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;
    .registers 2

    .line 1739
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getSystemPowerWhitelistExceptIdleInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPowerWhitelist()[Ljava/lang/String;
    .registers 2

    .line 1747
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getUserPowerWhitelistInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPowerSaveWhitelistApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1779
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1775
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1838
    new-instance v0, Lcom/android/server/DeviceIdleController$Shell;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {v0, v1}, Lcom/android/server/DeviceIdleController$Shell;-><init>(Lcom/android/server/DeviceIdleController;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/DeviceIdleController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1839
    return-void
.end method

.method public registerMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/os/IMaintenanceActivityListener;

    .line 1824
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->registerMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)Z

    move-result v0

    return v0
.end method

.method public removePowerSaveWhitelistApp(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 1693
    # getter for: Lcom/android/server/DeviceIdleController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1694
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePowerSaveWhitelistApp(name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_22
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1700
    .local v0, "ident":J
    :try_start_32
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2, p1}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_3c

    .line 1702
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1703
    nop

    .line 1704
    return-void

    .line 1702
    :catchall_3c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public removeSystemPowerWhitelistApp(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 1707
    # getter for: Lcom/android/server/DeviceIdleController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1708
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeAppFromSystemWhitelist(name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :cond_22
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1714
    .local v0, "ident":J
    :try_start_32
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2, p1}, Lcom/android/server/DeviceIdleController;->removeSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_3c

    .line 1716
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1717
    nop

    .line 1718
    return-void

    .line 1716
    :catchall_3c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public restoreSystemPowerWhitelistApp(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 1721
    # getter for: Lcom/android/server/DeviceIdleController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1722
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreAppToSystemWhitelist(name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :cond_22
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1728
    .local v0, "ident":J
    :try_start_32
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2, p1}, Lcom/android/server/DeviceIdleController;->restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_3c

    .line 1730
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1731
    nop

    .line 1732
    return-void

    .line 1730
    :catchall_3c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public unregisterMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/IMaintenanceActivityListener;

    .line 1829
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$BinderService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->unregisterMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)V

    .line 1830
    return-void
.end method
