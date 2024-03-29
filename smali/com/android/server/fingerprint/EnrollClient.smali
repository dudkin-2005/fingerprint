.class public abstract Lcom/android/server/fingerprint/EnrollClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "EnrollClient.java"


# static fields
.field private static final ENROLLMENT_TIMEOUT_MS:I = 0xea60

.field private static final MS_PER_SEC:J = 0x3e8L


# instance fields
.field private mCryptoToken:[B

.field private mEnrollRemain:I

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;Lcom/android/internal/statusbar/IStatusBarService;)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "userId"    # I
    .param p7, "groupId"    # I
    .param p8, "cryptoToken"    # [B
    .param p9, "restricted"    # Z
    .param p10, "owner"    # Ljava/lang/String;
    .param p11, "statusBarService"    # Lcom/android/internal/statusbar/IStatusBarService;

    move-object v10, p0

    move-object/from16 v11, p8

    .line 60
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

    .line 54
    const/4 v0, 0x0

    iput v0, v10, Lcom/android/server/fingerprint/EnrollClient;->mEnrollRemain:I

    .line 61
    array-length v0, v11

    invoke-static {v11, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    .line 65
    move-object/from16 v0, p11

    iput-object v0, v10, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 67
    return-void
.end method

.method private sendEnrollResult(III)Z
    .registers 12
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 94
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v6

    .line 95
    .local v6, "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    const/4 v7, 0x1

    if-nez v6, :cond_8

    .line 96
    return v7

    .line 100
    :cond_8
    iget v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mEnrollRemain:I

    if-eq v0, p3, :cond_11

    .line 101
    iput p3, p0, Lcom/android/server/fingerprint/EnrollClient;->mEnrollRemain:I

    .line 102
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->vibrateSuccess()V

    .line 106
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xfb

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 108
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getHalDeviceId()J

    move-result-wide v1

    move-object v0, v6

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(JIII)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_25} :catch_2a

    .line 109
    if-nez p3, :cond_28

    goto :goto_29

    :cond_28
    const/4 v7, 0x0

    :goto_29
    return v7

    .line 110
    :catch_2a
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to notify EnrollResult:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    return v7
.end method


# virtual methods
.method public destroy()V
    .registers 4

    .line 229
    invoke-super {p0}, Lcom/android/server/fingerprint/ClientMonitor;->destroy()V

    .line 230
    iget-boolean v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mSupportCustomFingerprint:Z

    if-eqz v0, :cond_15

    .line 232
    :try_start_7
    iget-object v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 235
    goto :goto_15

    .line 233
    :catch_d
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Unable to hide fingerprint dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method public onAcquired(II)Z
    .registers 4
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(II)Z

    move-result v0

    return v0
.end method

.method public onAuthenticated(II)Z
    .registers 5
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .line 254
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onAuthenticated() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(III)Z
    .registers 7
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 78
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    move-result v0

    if-eq p2, v0, :cond_29

    .line 79
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "groupId != getGroupId(), groupId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " getGroupId():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_29
    if-nez p3, :cond_3a

    .line 84
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 85
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getTargetUserId()I

    move-result v2

    .line 84
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;II)V

    .line 87
    :cond_3a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/EnrollClient;->sendEnrollResult(III)Z

    move-result v0

    return v0
.end method

.method public onEnumerationResult(III)Z
    .registers 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 248
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public onRemoved(III)Z
    .registers 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 242
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public resume()V
    .registers 4

    .line 170
    iget-boolean v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mSupportCustomFingerprint:Z

    if-eqz v0, :cond_22

    .line 172
    :try_start_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "key_fingerprint_package_name"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1a

    .line 177
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_22

    .line 175
    :catch_1a
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Unable to show fingerprint dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    :goto_22
    return-void
.end method

.method public start()I
    .registers 8

    .line 118
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 119
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v0, :cond_f

    .line 120
    const-string v1, "FingerprintService"

    const-string v2, "enroll: no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x3

    return v1

    .line 123
    :cond_f
    const/16 v1, 0x3c

    move v2, v1

    .line 125
    .local v2, "timeout":I
    const/4 v3, 0x0

    :try_start_13
    iget-object v4, p0, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    move-result v5

    invoke-interface {v0, v4, v5, v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enroll([BII)I

    move-result v1

    .line 126
    .local v1, "result":I
    if-eqz v1, :cond_44

    .line 127
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startEnroll failed, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "fingerprintd_enroll_start_error"

    invoke-static {v4, v5, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 129
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v3}, Lcom/android/server/fingerprint/EnrollClient;->onError(II)Z

    .line 130
    return v1

    .line 135
    :cond_44
    iget-boolean v4, p0, Lcom/android/server/fingerprint/EnrollClient;->mSupportCustomFingerprint:Z
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_46} :catch_69

    if-eqz v4, :cond_66

    .line 137
    :try_start_48
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "key_fingerprint_package_name"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v5, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lcom/android/internal/statusbar/IStatusBarService;->showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_5d} :catch_5e

    .line 142
    .end local v4    # "bundle":Landroid/os/Bundle;
    goto :goto_66

    .line 140
    :catch_5e
    move-exception v4

    .line 141
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_5f
    const-string v5, "FingerprintService"

    const-string v6, "Unable to show fingerprint dialog"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_66
    :goto_66
    iput v3, p0, Lcom/android/server/fingerprint/EnrollClient;->mEnrollRemain:I
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_68} :catch_69

    .line 153
    .end local v1    # "result":I
    goto :goto_72

    .line 151
    :catch_69
    move-exception v1

    .line 152
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "startEnroll failed"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_72
    return v3
.end method

.method public stop(Z)I
    .registers 8
    .param p1, "initiatedByClient"    # Z

    .line 184
    iget-boolean v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 185
    const-string v0, "FingerprintService"

    const-string/jumbo v2, "stopEnroll: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v1

    .line 188
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 189
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v0, :cond_1e

    .line 190
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "stopEnrollment: no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v1, 0x3

    return v1

    .line 194
    :cond_1e
    :try_start_1e
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v2

    .line 195
    .local v2, "result":I
    if-eqz v2, :cond_4f

    .line 196
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startEnrollCancel failed, result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_3b} :catch_64
    .catchall {:try_start_1e .. :try_end_3b} :catchall_62

    .line 197
    nop

    .line 209
    iget-boolean v1, p0, Lcom/android/server/fingerprint/EnrollClient;->mSupportCustomFingerprint:Z

    if-eqz v1, :cond_4e

    .line 211
    :try_start_40
    iget-object v1, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_45} :catch_46

    .line 214
    goto :goto_4e

    .line 212
    :catch_46
    move-exception v1

    .line 213
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4e
    :goto_4e
    return v2

    .line 209
    .end local v2    # "result":I
    :cond_4f
    iget-boolean v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mSupportCustomFingerprint:Z

    if-eqz v2, :cond_77

    .line 211
    :try_start_53
    iget-object v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_58} :catch_59

    goto :goto_61

    .line 212
    :catch_59
    move-exception v2

    .line 213
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_61
    goto :goto_77

    .line 209
    :catchall_62
    move-exception v1

    goto :goto_81

    .line 199
    :catch_64
    move-exception v2

    .line 200
    .restart local v2    # "e":Landroid/os/RemoteException;
    :try_start_65
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "stopEnrollment failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_62

    .line 209
    .end local v2    # "e":Landroid/os/RemoteException;
    iget-boolean v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mSupportCustomFingerprint:Z

    if-eqz v2, :cond_77

    .line 211
    :try_start_71
    iget-object v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_76} :catch_59

    goto :goto_61

    .line 218
    :cond_77
    :goto_77
    if-eqz p1, :cond_7d

    .line 219
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v1}, Lcom/android/server/fingerprint/EnrollClient;->onError(II)Z

    .line 221
    :cond_7d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mAlreadyCancelled:Z

    .line 222
    return v1

    .line 209
    :goto_81
    iget-boolean v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mSupportCustomFingerprint:Z

    if-eqz v2, :cond_93

    .line 211
    :try_start_85
    iget-object v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_8a} :catch_8b

    .line 214
    goto :goto_93

    .line 212
    :catch_8b
    move-exception v2

    .line 213
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_93
    :goto_93
    throw v1
.end method

.method public suspend()V
    .registers 4

    .line 160
    iget-boolean v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mSupportCustomFingerprint:Z

    if-eqz v0, :cond_12

    .line 162
    :try_start_4
    iget-object v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 165
    goto :goto_12

    .line 163
    :catch_a
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Unable to hide fingerprint dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method
