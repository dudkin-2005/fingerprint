.class final Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;
.super Landroid/os/IBatteryPropertiesRegistrar$Stub;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryPropertiesRegistrar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 1498
    iput-object p1, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/BatteryService;
    .param p2, "x1"    # Lcom/android/server/BatteryService$1;

    .line 1498
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method

.method static synthetic lambda$getProperty$0(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 6
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1514
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1515
    if-nez p2, :cond_8

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1516
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$1(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 6
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1520
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1521
    if-nez p2, :cond_8

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1522
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$2(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 6
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1526
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1527
    if-nez p2, :cond_8

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1528
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$3(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 6
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1532
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1533
    if-nez p2, :cond_8

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1534
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$4(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 6
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # I

    .line 1538
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1539
    if-nez p2, :cond_8

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1540
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$5(Landroid/util/MutableInt;Landroid/os/BatteryProperty;IJ)V
    .registers 5
    .param p0, "outResult"    # Landroid/util/MutableInt;
    .param p1, "prop"    # Landroid/os/BatteryProperty;
    .param p2, "result"    # I
    .param p3, "value"    # J

    .line 1544
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1545
    if-nez p2, :cond_7

    invoke-virtual {p1, p3, p4}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1546
    :cond_7
    return-void
.end method


# virtual methods
.method public getProperty(ILandroid/os/BatteryProperty;)I
    .registers 6
    .param p1, "id"    # I
    .param p2, "prop"    # Landroid/os/BatteryProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1506
    const-string v0, "HealthGetProperty"

    # invokes: Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2300(Ljava/lang/String;)V

    .line 1508
    :try_start_5
    iget-object v0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2700(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->getLastService()Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    .line 1509
    .local v0, "service":Landroid/hardware/health/V2_0/IHealth;
    if-eqz v0, :cond_57

    .line 1510
    new-instance v1, Landroid/util/MutableInt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableInt;-><init>(I)V

    .line 1511
    .local v1, "outResult":Landroid/util/MutableInt;
    packed-switch p1, :pswitch_data_66

    goto :goto_51

    .line 1537
    :pswitch_1b
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$hInbvsihGvN2hXqvdcoFYzdeqHw;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$hInbvsihGvN2hXqvdcoFYzdeqHw;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V

    .line 1541
    goto :goto_51

    .line 1543
    :pswitch_24
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$9z3zqgxtPzBN8Qoni5nHVb0m8EY;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$9z3zqgxtPzBN8Qoni5nHVb0m8EY;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V

    goto :goto_51

    .line 1531
    :pswitch_2d
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$DM4ow6LC--JYWBfhHp2f1JW8nww;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$DM4ow6LC--JYWBfhHp2f1JW8nww;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V

    .line 1535
    goto :goto_51

    .line 1525
    :pswitch_36
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$KZAu97wwr_7_MI0awCjQTzdIuAI;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$KZAu97wwr_7_MI0awCjQTzdIuAI;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V

    .line 1529
    goto :goto_51

    .line 1519
    :pswitch_3f
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$JTQ79fl14NyImudsJhx-Mp1dJI8;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$JTQ79fl14NyImudsJhx-Mp1dJI8;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V

    .line 1523
    goto :goto_51

    .line 1513
    :pswitch_48
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$7Y-B9O7NDYgUY9hQvFzC2FQ2V5w;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$7Y-B9O7NDYgUY9hQvFzC2FQ2V5w;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V

    .line 1517
    nop

    .line 1549
    :goto_51
    iget v2, v1, Landroid/util/MutableInt;->value:I
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_60

    .line 1551
    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$2400()V

    .line 1549
    return v2

    .line 1509
    .end local v1    # "outResult":Landroid/util/MutableInt;
    :cond_57
    :try_start_57
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "no health service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_60

    .line 1551
    .end local v0    # "service":Landroid/hardware/health/V2_0/IHealth;
    :catchall_60
    move-exception v0

    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$2400()V

    throw v0

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_48
        :pswitch_3f
        :pswitch_36
        :pswitch_2d
        :pswitch_24
        :pswitch_1b
    .end packed-switch
.end method

.method public registerListener(Landroid/os/IBatteryPropertiesListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/os/IBatteryPropertiesListener;

    .line 1500
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "health: must not call registerListener on battery properties"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    return-void
.end method

.method public scheduleUpdate()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1555
    const-string v0, "HealthScheduleUpdate"

    # invokes: Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2300(Ljava/lang/String;)V

    .line 1557
    :try_start_5
    iget-object v0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2700(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->getLastService()Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    .line 1558
    .local v0, "service":Landroid/hardware/health/V2_0/IHealth;
    if-eqz v0, :cond_19

    .line 1559
    invoke-interface {v0}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_22

    .line 1561
    .end local v0    # "service":Landroid/hardware/health/V2_0/IHealth;
    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$2400()V

    .line 1562
    nop

    .line 1563
    return-void

    .line 1558
    .restart local v0    # "service":Landroid/hardware/health/V2_0/IHealth;
    :cond_19
    :try_start_19
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "no health service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_22

    .line 1561
    .end local v0    # "service":Landroid/hardware/health/V2_0/IHealth;
    :catchall_22
    move-exception v0

    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$2400()V

    throw v0
.end method

.method public unregisterListener(Landroid/os/IBatteryPropertiesListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/os/IBatteryPropertiesListener;

    .line 1503
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "health: must not call unregisterListener on battery properties"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    return-void
.end method
