.class public abstract Lcom/android/server/fingerprint/AuthenticationClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "AuthenticationClient.java"


# static fields
.field public static final LOCKOUT_NONE:I = 0x0

.field public static final LOCKOUT_PERMANENT:I = 0x2

.field public static final LOCKOUT_TIMED:I = 0x1


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field protected mDialogDismissed:Z

.field protected mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHasFod:Z

.field private mInLockout:Z

.field private final mKeyguardPackage:Ljava/lang/String;

.field private mOpId:J

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 11

    move-object v10, p0

    .line 101
    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 67
    new-instance v0, Lcom/android/server/fingerprint/AuthenticationClient$1;

    invoke-direct {v0, v10}, Lcom/android/server/fingerprint/AuthenticationClient$1;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 102
    move-wide/from16 v0, p8

    iput-wide v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    .line 103
    move-object/from16 v0, p12

    iput-object v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    .line 104
    move-object/from16 v0, p13

    iput-object v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 105
    move-object/from16 v0, p14

    iput-object v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 106
    invoke-virtual {v10}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fingerprint"

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mKeyguardPackage:Ljava/lang/String;

    .line 111
    invoke-static {p1}, Lcom/android/internal/util/custom/FodUtils;->hasFodSupport(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mHasFod:Z

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/os/Bundle;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/biometrics/IBiometricPromptReceiver;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    return-object p0
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/android/server/fingerprint/ClientMonitor;->binderDied()V

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    .line 121
    return-void
.end method

.method public abstract handleFailedAttempt()I
.end method

.method public onAcquired(II)Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 128
    if-eqz p1, :cond_2

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 130
    invoke-virtual {v1, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(II)Ljava/lang/String;

    move-result-object p2

    .line 129
    invoke-interface {v0, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintHelp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 138
    :catchall_0
    move-exception p2

    goto :goto_0

    .line 133
    :catch_0
    move-exception p2

    .line 134
    :try_start_1
    const-string v0, "FingerprintService"

    const-string v1, "Remote exception when sending acquired message"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    const/4 p2, 0x1

    .line 138
    if-nez p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    .line 135
    :cond_0
    return p2

    .line 138
    :goto_0
    if-nez p1, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    :cond_1
    throw p2

    .line 132
    :cond_2
    :goto_1
    const/4 p2, 0x0

    .line 138
    if-nez p1, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    .line 132
    :cond_3
    return p2

    .line 143
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(II)Z

    move-result p1

    return p1
.end method

.method public onAuthenticated(II)Z
    .locals 11

    .line 169
    nop

    .line 170
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 173
    move v2, v1

    goto :goto_0

    .line 170
    :cond_0
    nop

    .line 173
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 175
    if-eqz v2, :cond_1

    .line 176
    :try_start_0
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintAuthenticated()V

    goto :goto_1

    .line 181
    :catch_0
    move-exception v3

    goto :goto_2

    .line 178
    :cond_1
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104029c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintHelp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_1
    goto :goto_3

    .line 181
    :goto_2
    nop

    .line 182
    const-string v4, "FingerprintService"

    const-string v5, "Failed to notify Authenticated:"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v3

    .line 187
    if-eqz v3, :cond_5

    .line 189
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0xfc

    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 191
    if-nez v2, :cond_3

    .line 192
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide p1

    invoke-interface {v3, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V

    goto :goto_5

    .line 195
    :cond_3
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAuthenticated(owner="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", gp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getIsRestricted()Z

    move-result v4

    if-nez v4, :cond_4

    .line 199
    new-instance v4, Landroid/hardware/fingerprint/Fingerprint;

    const-string v6, ""

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v9

    move-object v5, v4

    move v7, p2

    move v8, p1

    invoke-direct/range {v5 .. v10}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    goto :goto_4

    .line 200
    :cond_4
    const/4 v4, 0x0

    .line 201
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v5

    invoke-interface {v3, p1, p2, v4, v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    :goto_5
    nop

    .line 210
    move p1, v0

    goto :goto_7

    .line 203
    :catch_1
    move-exception p1

    .line 204
    const-string p2, "FingerprintService"

    const-string v4, "Failed to notify Authenticated:"

    invoke-static {p2, v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    nop

    .line 206
    goto :goto_6

    .line 208
    :cond_5
    nop

    .line 210
    :goto_6
    move p1, v1

    :goto_7
    if-nez v2, :cond_b

    .line 211
    if-eqz v3, :cond_6

    .line 212
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->vibrateError()V

    .line 215
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->handleFailedAttempt()I

    move-result p2

    .line 216
    if-eqz p2, :cond_9

    .line 218
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    .line 219
    const-string v2, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Forcing lockout (fp driver code should do this!), mode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    .line 222
    if-ne p2, v1, :cond_7

    .line 223
    const/4 v2, 0x7

    goto :goto_8

    .line 224
    :cond_7
    const/16 v2, 0x9

    .line 229
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v2, v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JII)V

    .line 232
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_8

    .line 233
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 234
    invoke-virtual {v4, v2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-interface {v3, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintError(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 238
    :cond_8
    goto :goto_9

    .line 236
    :catch_2
    move-exception v2

    .line 237
    const-string v3, "FingerprintService"

    const-string v4, "Failed to notify lockout:"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    :cond_9
    :goto_9
    if-eqz p2, :cond_a

    move v0, v1

    nop

    :cond_a
    or-int/2addr p1, v0

    .line 241
    goto :goto_a

    .line 242
    :cond_b
    if-eqz v3, :cond_c

    .line 243
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->vibrateSuccess()V

    .line 245
    :cond_c
    or-int/2addr p1, v1

    .line 246
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->resetFailedAttempts()V

    .line 247
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStop()V

    .line 249
    :goto_a
    if-eqz p1, :cond_d

    iget-boolean p2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHasFod:Z

    if-eqz p2, :cond_d

    .line 251
    :try_start_3
    iget-object p2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p2}, Lcom/android/internal/statusbar/IStatusBarService;->hideInDisplayFingerprintView()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 254
    goto :goto_b

    .line 252
    :catch_3
    move-exception p2

    .line 253
    const-string v0, "FingerprintService"

    const-string v1, "hideInDisplayFingerprintView failed"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    :cond_d
    :goto_b
    return p1
.end method

.method public onEnrollResult(III)Z
    .locals 0

    .line 368
    const-string p1, "FingerprintService"

    const-string p2, "onEnrollResult() called for authenticate!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 p1, 0x1

    return p1
.end method

.method public onEnumerationResult(III)Z
    .locals 0

    .line 380
    const-string p1, "FingerprintService"

    const-string p2, "onEnumerationResult() called for authenticate!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 p1, 0x1

    return p1
.end method

.method public onError(II)Z
    .locals 3

    .line 149
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-eqz v0, :cond_0

    .line 154
    const/4 p1, 0x1

    return p1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 159
    invoke-virtual {v1, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const-string v1, "FingerprintService"

    const-string v2, "Remote exception when sending error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    move-result p1

    return p1
.end method

.method public onRemoved(III)Z
    .locals 0

    .line 374
    const-string p1, "FingerprintService"

    const-string/jumbo p2, "onRemoved() called for authenticate!"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 p1, 0x1

    return p1
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract resetFailedAttempts()V
.end method

.method public start()I
    .locals 6

    .line 264
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 265
    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 266
    const-string v0, "FingerprintService"

    const-string/jumbo v2, "start authentication: no fingerprint HAL!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return v1

    .line 269
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHasFod:Z

    if-eqz v2, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object v2

    .line 271
    if-eqz v2, :cond_1

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->isKeyguard(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->setLongPressEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    goto :goto_0

    .line 274
    :catch_0
    move-exception v2

    .line 275
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "setLongPressEnabled failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->showInDisplayFingerprintView()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 282
    goto :goto_1

    .line 280
    :catch_1
    move-exception v2

    .line 281
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "showInDisplayFingerprintView failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStart()V

    .line 286
    :try_start_2
    iget-wide v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getGroupId()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->authenticate(JI)I

    move-result v0

    .line 287
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 288
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startAuthentication failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "fingeprintd_auth_start_error"

    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 290
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    .line 291
    return v0

    .line 293
    :cond_3
    const-string v0, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is authenticating..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHasFod:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v0, :cond_4

    .line 298
    :try_start_3
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    invoke-interface {v0, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 301
    goto :goto_2

    .line 299
    :catch_2
    move-exception v0

    .line 300
    :try_start_4
    const-string v3, "FingerprintService"

    const-string v4, "Unable to show fingerprint dialog"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 306
    :cond_4
    :goto_2
    nop

    .line 307
    return v2

    .line 303
    :catch_3
    move-exception v0

    .line 304
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startAuthentication failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    return v1
.end method

.method public stop(Z)I
    .locals 4

    .line 320
    iget-boolean p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 321
    const-string p1, "FingerprintService"

    const-string/jumbo v1, "stopAuthentication: already cancelled!"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return v0

    .line 325
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHasFod:Z

    if-eqz p1, :cond_1

    .line 327
    :try_start_0
    iget-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p1}, Lcom/android/internal/statusbar/IStatusBarService;->hideInDisplayFingerprintView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    goto :goto_0

    .line 328
    :catch_0
    move-exception p1

    .line 329
    const-string v1, "FingerprintService"

    const-string v2, "hideInDisplayFingerprintView failed"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStop()V

    .line 334
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p1

    .line 335
    const/4 v1, 0x3

    if-nez p1, :cond_2

    .line 336
    const-string p1, "FingerprintService"

    const-string/jumbo v0, "stopAuthentication: no fingerprint HAL!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return v1

    .line 340
    :cond_2
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result p1

    .line 341
    if-eqz p1, :cond_4

    .line 342
    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopAuthentication failed, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    nop

    .line 354
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHasFod:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v0, :cond_3

    .line 356
    :try_start_2
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 359
    goto :goto_1

    .line 357
    :catch_1
    move-exception v0

    .line 358
    const-string v1, "FingerprintService"

    const-string v2, "Unable to hide fingerprint dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    :cond_3
    :goto_1
    return p1

    .line 345
    :cond_4
    :try_start_3
    const-string p1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is no longer authenticating"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 354
    iget-boolean p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHasFod:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez p1, :cond_5

    .line 356
    :try_start_4
    iget-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p1}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 357
    :catch_2
    move-exception p1

    .line 358
    const-string v1, "FingerprintService"

    const-string v2, "Unable to hide fingerprint dialog"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    :goto_2
    nop

    .line 362
    :cond_5
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    .line 363
    return v0

    .line 354
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 346
    :catch_3
    move-exception p1

    .line 347
    :try_start_5
    const-string v0, "FingerprintService"

    const-string/jumbo v2, "stopAuthentication failed"

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 348
    nop

    .line 354
    iget-boolean p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHasFod:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez p1, :cond_6

    .line 356
    :try_start_6
    iget-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p1}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 359
    goto :goto_3

    .line 357
    :catch_4
    move-exception p1

    .line 358
    const-string v0, "FingerprintService"

    const-string v2, "Unable to hide fingerprint dialog"

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    :cond_6
    :goto_3
    return v1

    .line 354
    :goto_4
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHasFod:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v0, :cond_7

    .line 356
    :try_start_7
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    .line 359
    goto :goto_5

    .line 357
    :catch_5
    move-exception v0

    .line 358
    const-string v1, "FingerprintService"

    const-string v2, "Unable to hide fingerprint dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    :cond_7
    :goto_5
    throw p1
.end method
