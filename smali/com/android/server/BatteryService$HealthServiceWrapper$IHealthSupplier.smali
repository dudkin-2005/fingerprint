.class interface abstract Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService$HealthServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IHealthSupplier"
.end annotation


# virtual methods
.method public get(Ljava/lang/String;)Landroid/hardware/health/V2_0/IHealth;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1582
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/hardware/health/V2_0/IHealth;->getService(Ljava/lang/String;Z)Landroid/hardware/health/V2_0/IHealth;

    move-result-object p1

    return-object p1
.end method
