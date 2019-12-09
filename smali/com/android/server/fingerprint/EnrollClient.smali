.class public abstract Lcom/android/server/fingerprint/EnrollClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "EnrollClient.java"


# static fields
.field private static final ENROLLMENT_TIMEOUT_MS:I = 0xea60

.field private static final MS_PER_SEC:J = 0x3e8L


# instance fields
.field private mCryptoToken:[B

.field private final mHasFod:Z

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 12

    move-object v10, p0

    move-object/from16 v11, p8

    .line 51
    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 52
    array-length v0, v11

    invoke-static {v11, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    .line 53
    move-object/from16 v0, p11

    iput-object v0, v10, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 55
    invoke-static {p1}, Lcom/android/internal/util/custom/FodUtils;->hasFodSupport(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/server/fingerprint/EnrollClient;->mHasFod:Z

    .line 56
    return-void
.end method

.method private sendEnrollResult(III)Z
    .locals 7

    .line 75
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v0

    .line 76
    const/4 v6, 0x1

    if-nez v0, :cond_0

    .line 77
    return v6

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->vibrateSuccess()V

    .line 80
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xfb

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getHalDeviceId()J

    move-result-wide v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(JIII)V

    .line 83
    if-nez p3, :cond_2

    iget-boolean p1, p0, Lcom/android/server/fingerprint/EnrollClient;->mHasFod:Z

    if-eqz p1, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 85
    if-eqz p1, :cond_1

    .line 87
    :try_start_1
    invoke-interface {p1}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->onFinishEnroll()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception p1

    .line 89
    :try_start_2
    const-string p2, "FingerprintService"

    const-string v0, "onFinishEnroll failed"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 93
    :cond_1
    :goto_0
    :try_start_3
    iget-object p1, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p1}, Lcom/android/internal/statusbar/IStatusBarService;->hideInDisplayFingerprintView()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 96
    goto :goto_1

    .line 94
    :catch_1
    move-exception p1

    .line 95
    :try_start_4
    const-string p2, "FingerprintService"

    const-string v0, "hideInDisplayFingerprintView failed"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 98
    :cond_2
    :goto_1
    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    return v6

    .line 99
    :catch_2
    move-exception p1

    .line 100
    const-string p2, "FingerprintService"

    const-string p3, "Failed to notify EnrollResult:"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    return v6
.end method


# virtual methods
.method public onAuthenticated(II)Z
    .locals 0

    .line 190
    const-string p1, "FingerprintService"

    const-string p2, "onAuthenticated() called for enroll!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 p1, 0x1

    return p1
.end method

.method public onEnrollResult(III)Z
    .locals 3

    .line 60
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 61
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groupId != getGroupId(), groupId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " getGroupId():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    if-nez p3, :cond_1

    .line 65
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 66
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getTargetUserId()I

    move-result v2

    .line 65
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;II)V

    .line 68
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/EnrollClient;->sendEnrollResult(III)Z

    move-result p1

    return p1
.end method

.method public onEnumerationResult(III)Z
    .locals 0

    .line 184
    const-string p1, "FingerprintService"

    const-string p2, "onEnumerationResult() called for enroll!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 p1, 0x1

    return p1
.end method

.method public onRemoved(III)Z
    .locals 0

    .line 178
    const-string p1, "FingerprintService"

    const-string/jumbo p2, "onRemoved() called for enroll!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 p1, 0x1

    return p1
.end method

.method public start()I
    .locals 5

    .line 107
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 108
    if-nez v0, :cond_0

    .line 109
    const-string v0, "FingerprintService"

    const-string v1, "enroll: no fingerprint HAL!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x3

    return v0

    .line 112
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/fingerprint/EnrollClient;->mHasFod:Z

    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_1

    .line 116
    :try_start_0
    invoke-interface {v1}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->onStartEnroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "onStartEnroll failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->showInDisplayFingerprintView()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    goto :goto_1

    .line 123
    :catch_1
    move-exception v1

    .line 124
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "showInDisplayFingerprintView failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :cond_2
    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    move-result v3

    const/16 v4, 0x3c

    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enroll([BII)I

    move-result v0

    .line 130
    if-eqz v0, :cond_3

    .line 131
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEnroll failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "fingerprintd_enroll_start_error"

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 133
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/fingerprint/EnrollClient;->onError(II)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 134
    return v0

    .line 138
    :cond_3
    goto :goto_2

    .line 136
    :catch_2
    move-exception v0

    .line 137
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startEnroll failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    :goto_2
    return v1
.end method

.method public stop(Z)I
    .locals 5

    .line 144
    iget-boolean v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 145
    const-string p1, "FingerprintService"

    const-string/jumbo v0, "stopEnroll: already cancelled!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v1

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mHasFod:Z

    if-eqz v0, :cond_1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->hideInDisplayFingerprintView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string v2, "FingerprintService"

    const-string v3, "hideInDisplayFingerprintView failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 156
    if-nez v0, :cond_2

    .line 157
    const-string p1, "FingerprintService"

    const-string/jumbo v0, "stopEnrollment: no fingerprint HAL!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 p1, 0x3

    return p1

    .line 161
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v0

    .line 162
    if-eqz v0, :cond_3

    .line 163
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEnrollCancel failed, result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    return v0

    .line 168
    :cond_3
    goto :goto_1

    .line 166
    :catch_1
    move-exception v0

    .line 167
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "stopEnrollment failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    :goto_1
    if-eqz p1, :cond_4

    .line 170
    const/4 p1, 0x5

    invoke-virtual {p0, p1, v1}, Lcom/android/server/fingerprint/EnrollClient;->onError(II)Z

    .line 172
    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/fingerprint/EnrollClient;->mAlreadyCancelled:Z

    .line 173
    return v1
.end method
