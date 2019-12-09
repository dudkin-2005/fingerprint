.class public abstract Lcom/android/server/fingerprint/EnumerateClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "EnumerateClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V
    .locals 10

    .line 35
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p7

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onAuthenticated(II)Z
    .locals 0

    .line 103
    const-string p1, "FingerprintService"

    const-string p2, "onAuthenticated() called for enumerate!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 p1, 0x1

    return p1
.end method

.method public onEnrollResult(III)Z
    .locals 0

    .line 109
    const-string p1, "FingerprintService"

    const-string p2, "onEnrollResult() called for enumerate!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 p1, 0x1

    return p1
.end method

.method public onEnumerationResult(III)Z
    .locals 7

    .line 90
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v0

    .line 91
    const/4 v6, 0x1

    if-nez v0, :cond_0

    .line 92
    return v6

    .line 94
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getHalDeviceId()J

    move-result-wide v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnumerated(JIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception p1

    .line 96
    const-string p2, "FingerprintService"

    const-string v0, "Failed to notify enumerated:"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    return v6
.end method

.method public onRemoved(III)Z
    .locals 0

    .line 115
    const-string p1, "FingerprintService"

    const-string/jumbo p2, "onRemoved() called for enumerate!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 p1, 0x1

    return p1
.end method

.method public start()I
    .locals 5

    .line 40
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 43
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enumerate()I

    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start enumerate for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getTargetUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "fingerprintd_enum_start_error"

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 48
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/fingerprint/EnumerateClient;->onError(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return v0

    .line 53
    :cond_0
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startEnumeration failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :goto_0
    return v1
.end method

.method public stop(Z)I
    .locals 4

    .line 59
    iget-boolean v0, p0, Lcom/android/server/fingerprint/EnumerateClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    const-string p1, "FingerprintService"

    const-string/jumbo v0, "stopEnumerate: already cancelled!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return v1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 64
    const/4 v2, 0x3

    if-nez v0, :cond_1

    .line 65
    const-string p1, "FingerprintService"

    const-string/jumbo v0, "stopEnumeration: no fingerprint HAL!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v2

    .line 69
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    const-string p1, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stop enumeration failed, result="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return v0

    .line 77
    :cond_2
    nop

    .line 81
    if-eqz p1, :cond_3

    .line 82
    const/4 p1, 0x5

    invoke-virtual {p0, p1, v1}, Lcom/android/server/fingerprint/EnumerateClient;->onError(II)Z

    .line 84
    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/fingerprint/EnumerateClient;->mAlreadyCancelled:Z

    .line 85
    return v1

    .line 74
    :catch_0
    move-exception p1

    .line 75
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "stopEnumeration failed"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    return v2
.end method
