.class Lcom/android/server/oemlock/VendorLock;
.super Lcom/android/server/oemlock/OemLock;
.source "VendorLock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OemLock"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/oemlock/V1_0/IOemLock;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/server/oemlock/OemLock;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/oemlock/VendorLock;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    .line 55
    return-void
.end method

.method static getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock;
    .locals 2

    .line 43
    :try_start_0
    invoke-static {}, Landroid/hardware/oemlock/V1_0/IOemLock;->getService()Landroid/hardware/oemlock/V1_0/IOemLock;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 44
    :catch_1
    move-exception v0

    .line 45
    const-string v0, "OemLock"

    const-string v1, "OemLock HAL not present on device"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$isOemUnlockAllowedByCarrier$0([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V
    .locals 1

    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p0, v0

    .line 89
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v0

    .line 90
    return-void
.end method

.method static synthetic lambda$isOemUnlockAllowedByDevice$1([Ljava/lang/Integer;[Ljava/lang/Boolean;IZ)V
    .locals 1

    .line 136
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p0, v0

    .line 137
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v0

    .line 138
    return-void
.end method

.method private toByteArrayList([B)Ljava/util/ArrayList;
    .locals 4

    .line 158
    if-nez p1, :cond_0

    .line 159
    const/4 p1, 0x0

    return-object p1

    .line 161
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    .line 163
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_1
    return-object v0
.end method


# virtual methods
.method isOemUnlockAllowedByCarrier()Z
    .locals 4

    .line 83
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    .line 84
    new-array v0, v0, [Ljava/lang/Boolean;

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v3, Lcom/android/server/oemlock/-$$Lambda$VendorLock$Xnx-_jv8ufdo_3b8_MqM0reCecE;

    invoke-direct {v3, v1, v0}, Lcom/android/server/oemlock/-$$Lambda$VendorLock$Xnx-_jv8ufdo_3b8_MqM0reCecE;-><init>([Ljava/lang/Integer;[Ljava/lang/Boolean;)V

    invoke-interface {v2, v3}, Landroid/hardware/oemlock/V1_0/IOemLock;->isOemUnlockAllowedByCarrier(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByCarrierCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    nop

    .line 96
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 102
    const-string v0, "OemLock"

    const-string v1, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :pswitch_0
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 105
    :goto_0
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to get carrier OEM unlock state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "OemLock"

    const-string v2, "Failed to get carrier state from HAL"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isOemUnlockAllowedByDevice()Z
    .locals 4

    .line 131
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    .line 132
    new-array v0, v0, [Ljava/lang/Boolean;

    .line 135
    :try_start_0
    iget-object v2, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    new-instance v3, Lcom/android/server/oemlock/-$$Lambda$VendorLock$dK2aBuDrikkwl1_05rVmZ3bL1zg;

    invoke-direct {v3, v1, v0}, Lcom/android/server/oemlock/-$$Lambda$VendorLock$dK2aBuDrikkwl1_05rVmZ3bL1zg;-><init>([Ljava/lang/Integer;[Ljava/lang/Boolean;)V

    invoke-interface {v2, v3}, Landroid/hardware/oemlock/V1_0/IOemLock;->isOemUnlockAllowedByDevice(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    nop

    .line 144
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 150
    const-string v0, "OemLock"

    const-string v1, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :pswitch_0
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 153
    :goto_0
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to get device OEM unlock state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string v1, "OemLock"

    const-string v2, "Failed to get devie state from HAL"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setOemUnlockAllowedByCarrier(Z[B)V
    .locals 2

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    invoke-direct {p0, p2}, Lcom/android/server/oemlock/VendorLock;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/hardware/oemlock/V1_0/IOemLock;->setOemUnlockAllowedByCarrier(ZLjava/util/ArrayList;)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    .line 70
    const-string p1, "OemLock"

    goto :goto_0

    .line 66
    :pswitch_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Invalid signature used in attempt to carrier unlock"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :pswitch_1
    const-string p2, "OemLock"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated carrier allows OEM lock state to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 70
    :goto_0
    const-string p2, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :pswitch_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to set carrier OEM unlock state"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :catch_0
    move-exception p1

    .line 76
    const-string p2, "OemLock"

    const-string v0, "Failed to set carrier state with HAL"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method setOemUnlockAllowedByDevice(Z)V
    .locals 3

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/server/oemlock/VendorLock;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock;

    invoke-interface {v0, p1}, Landroid/hardware/oemlock/V1_0/IOemLock;->setOemUnlockAllowedByDevice(Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    const-string p1, "OemLock"

    goto :goto_0

    .line 114
    :pswitch_0
    const-string v0, "OemLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated device allows OEM lock state to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 118
    :goto_0
    const-string v0, "Unknown return value indicates code is out of sync with HAL"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :pswitch_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to set device OEM unlock state"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :catch_0
    move-exception p1

    .line 124
    const-string v0, "OemLock"

    const-string v1, "Failed to set device state with HAL"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
