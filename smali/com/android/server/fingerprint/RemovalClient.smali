.class public abstract Lcom/android/server/fingerprint/RemovalClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "RemovalClient.java"


# instance fields
.field private mFingerId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V
    .locals 10

    .line 38
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p8

    move/from16 v7, p7

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 39
    move/from16 v1, p6

    iput v1, v0, Lcom/android/server/fingerprint/RemovalClient;->mFingerId:I

    .line 40
    return-void
.end method

.method private sendRemoved(III)Z
    .locals 6

    .line 90
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getHalDeviceId()J

    move-result-wide v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(JIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception p1

    .line 96
    const-string p2, "FingerprintService"

    const-string v0, "Failed to notify Removed:"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 97
    :cond_0
    :goto_0
    nop

    .line 98
    :goto_1
    if-nez p3, :cond_1

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    return p1
.end method


# virtual methods
.method public onAuthenticated(II)Z
    .locals 0

    .line 118
    const-string p1, "FingerprintService"

    const-string p2, "onAuthenticated() called for remove!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 p1, 0x1

    return p1
.end method

.method public onEnrollResult(III)Z
    .locals 0

    .line 112
    const-string p1, "FingerprintService"

    const-string p2, "onEnrollResult() called for remove!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 p1, 0x1

    return p1
.end method

.method public onEnumerationResult(III)Z
    .locals 0

    .line 124
    const-string p1, "FingerprintService"

    const-string p2, "onEnumerationResult() called for remove!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 p1, 0x1

    return p1
.end method

.method public onRemoved(III)Z
    .locals 2

    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getTargetUserId()I

    move-result v1

    .line 104
    invoke-virtual {p2, v0, p1, v1}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getGroupId()I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/RemovalClient;->sendRemoved(III)Z

    move-result p1

    return p1
.end method

.method public start()I
    .locals 5

    .line 44
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 47
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getGroupId()I

    move-result v2

    iget v3, p0, Lcom/android/server/fingerprint/RemovalClient;->mFingerId:I

    invoke-interface {v0, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->remove(II)I

    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRemove with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/fingerprint/RemovalClient;->mFingerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "fingerprintd_remove_start_error"

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 51
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/fingerprint/RemovalClient;->onError(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return v0

    .line 56
    :cond_0
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startRemove failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :goto_0
    return v1
.end method

.method public stop(Z)I
    .locals 4

    .line 62
    iget-boolean p1, p0, Lcom/android/server/fingerprint/RemovalClient;->mAlreadyCancelled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 63
    const-string p1, "FingerprintService"

    const-string/jumbo v1, "stopRemove: already cancelled!"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return v0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p1

    .line 67
    const/4 v1, 0x3

    if-nez p1, :cond_1

    .line 68
    const-string p1, "FingerprintService"

    const-string/jumbo v0, "stopRemoval: no fingerprint HAL!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return v1

    .line 72
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopRemoval failed, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return p1

    .line 77
    :cond_2
    const-string p1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is no longer removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .line 82
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/fingerprint/RemovalClient;->mAlreadyCancelled:Z

    .line 83
    return v0

    .line 78
    :catch_0
    move-exception p1

    .line 79
    const-string v0, "FingerprintService"

    const-string/jumbo v2, "stopRemoval failed"

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    return v1
.end method
