.class final Lcom/android/server/BatteryService$HealthHalCallback;
.super Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;
.source "BatteryService.java"

# interfaces
.implements Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HealthHalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 1433
    iput-object p1, p0, Lcom/android/server/BatteryService$HealthHalCallback;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/BatteryService;
    .param p2, "x1"    # Lcom/android/server/BatteryService$1;

    .line 1433
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$HealthHalCallback;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public healthInfoChanged(Landroid/hardware/health/V2_0/HealthInfo;)V
    .registers 3
    .param p1, "props"    # Landroid/hardware/health/V2_0/HealthInfo;

    .line 1436
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthHalCallback;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->update(Landroid/hardware/health/V2_0/HealthInfo;)V
    invoke-static {v0, p1}, Lcom/android/server/BatteryService;->access$2200(Lcom/android/server/BatteryService;Landroid/hardware/health/V2_0/HealthInfo;)V

    .line 1437
    return-void
.end method

.method public onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;Ljava/lang/String;)V
    .registers 8
    .param p1, "oldService"    # Landroid/hardware/health/V2_0/IHealth;
    .param p2, "newService"    # Landroid/hardware/health/V2_0/IHealth;
    .param p3, "instance"    # Ljava/lang/String;

    .line 1441
    if-nez p2, :cond_3

    return-void

    .line 1443
    :cond_3
    const-string v0, "HealthUnregisterCallback"

    # invokes: Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2300(Ljava/lang/String;)V

    .line 1445
    if-eqz p1, :cond_53

    .line 1446
    :try_start_a
    invoke-interface {p1, p0}, Landroid/hardware/health/V2_0/IHealth;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v0

    .line 1447
    .local v0, "r":I
    if-eqz v0, :cond_53

    .line 1448
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "health: cannot unregister previous callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    invoke-static {v0}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1448
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2d} :catch_30
    .catchall {:try_start_a .. :try_end_2d} :catchall_2e

    .line 1448
    .end local v0    # "r":I
    goto :goto_53

    .line 1456
    :catchall_2e
    move-exception v0

    goto :goto_4f

    .line 1452
    :catch_30
    move-exception v0

    .line 1453
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_31
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "health: cannot unregister previous callback (transaction error): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1453
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_31 .. :try_end_4e} :catchall_2e

    .line 1453
    .end local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_53

    .line 1456
    :goto_4f
    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$2400()V

    throw v0

    :cond_53
    :goto_53
    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$2400()V

    .line 1457
    nop

    .line 1459
    const-string v0, "HealthRegisterCallback"

    # invokes: Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2300(Ljava/lang/String;)V

    .line 1461
    :try_start_5c
    invoke-interface {p2, p0}, Landroid/hardware/health/V2_0/IHealth;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v0

    .line 1462
    .local v0, "r":I
    if-eqz v0, :cond_83

    .line 1463
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "health: cannot register callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_7f} :catch_8c
    .catchall {:try_start_5c .. :try_end_7f} :catchall_8a

    .line 1473
    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$2400()V

    .line 1464
    return-void

    .line 1468
    :cond_83
    :try_start_83
    invoke-interface {p2}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_86} :catch_8c
    .catchall {:try_start_83 .. :try_end_86} :catchall_8a

    .line 1473
    .end local v0    # "r":I
    :goto_86
    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$2400()V

    .line 1474
    goto :goto_ab

    .line 1473
    :catchall_8a
    move-exception v0

    goto :goto_ac

    .line 1469
    :catch_8c
    move-exception v0

    .line 1470
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_8d
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "health: cannot register callback (transaction error): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1470
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_8d .. :try_end_aa} :catchall_8a

    .line 1470
    .end local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_86

    .line 1475
    :goto_ab
    return-void

    .line 1473
    :goto_ac
    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$2400()V

    throw v0
.end method
