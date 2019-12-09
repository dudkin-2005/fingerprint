.class public abstract Lcom/android/server/fingerprint/AuthenticationClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "AuthenticationClient.java"


# static fields
.field public static final LOCKOUT_NONE:I = 0x0

.field public static final LOCKOUT_PERMANENT:I = 0x2

.field public static final LOCKOUT_TIMED:I = 0x1


# instance fields
.field private final FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER:I

.field private final FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER_THREE_TIMES:I

.field private final FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER_TWICE:I

.field private mBundle:Landroid/os/Bundle;

.field protected mDialogDismissed:Z

.field protected mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mInLockout:Z

.field private mIsDoubleAccount:Z

.field private mOpId:J

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;Lcom/android/internal/statusbar/IStatusBarService;)V
    .registers 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "targetUserId"    # I
    .param p7, "groupId"    # I
    .param p8, "opId"    # J
    .param p10, "restricted"    # Z
    .param p11, "owner"    # Ljava/lang/String;
    .param p12, "bundle"    # Landroid/os/Bundle;
    .param p13, "dialogReceiver"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;
    .param p14, "statusBarService"    # Lcom/android/internal/statusbar/IStatusBarService;

    move-object v10, p0

    .line 111
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

    .line 58
    const/4 v0, 0x4

    iput v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER:I

    .line 59
    const/4 v0, 0x5

    iput v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER_TWICE:I

    .line 60
    const/4 v0, 0x6

    iput v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER_THREE_TIMES:I

    .line 77
    new-instance v0, Lcom/android/server/fingerprint/AuthenticationClient$1;

    invoke-direct {v0, v10}, Lcom/android/server/fingerprint/AuthenticationClient$1;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 113
    invoke-static {p1}, Lcom/oneplus/onlineconfig/MdmLogger;->init(Landroid/content/Context;)V

    .line 115
    move-wide/from16 v0, p8

    iput-wide v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    .line 116
    move-object/from16 v2, p12

    iput-object v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    .line 117
    move-object/from16 v3, p13

    iput-object v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 118
    move-object/from16 v4, p14

    iput-object v4, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 119
    invoke-virtual {v10}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "fingerprint"

    .line 120
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v5, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/AuthenticationClient;

    .line 47
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/biometrics/IBiometricPromptReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/AuthenticationClient;

    .line 47
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    return-object v0
.end method

.method private static shouldVibrate(Landroid/content/Context;)Z
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "haptic_feedback_enabled"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 438
    .local v0, "enabled":I
    if-ne v0, v2, :cond_10

    .line 439
    return v2

    .line 441
    :cond_10
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 132
    invoke-super {p0}, Lcom/android/server/fingerprint/ClientMonitor;->binderDied()V

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    .line 137
    return-void
.end method

.method public abstract handleFailedAttempt()I
.end method

.method public onAcquired(II)Z
    .registers 8
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 142
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-nez v0, :cond_47

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "isKeyguardAuthenticate":Z
    :try_start_b
    const-string v3, "com.android.systemui"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    if-ne p1, v2, :cond_1a

    .line 148
    const/4 v0, 0x1

    .line 151
    :cond_1a
    if-eqz p1, :cond_29

    if-nez v0, :cond_29

    .line 154
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 155
    invoke-virtual {v3, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(II)Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-interface {v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintHelp(Ljava/lang/String;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_29} :catch_32
    .catchall {:try_start_b .. :try_end_29} :catchall_30

    .line 157
    :cond_29
    nop

    .line 163
    if-nez p1, :cond_2f

    .line 164
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    .line 157
    :cond_2f
    return v1

    .line 163
    .end local v0    # "isKeyguardAuthenticate":Z
    :catchall_30
    move-exception v0

    goto :goto_41

    .line 158
    :catch_32
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_33
    const-string v1, "FingerprintService"

    const-string v2, "Remote exception when sending acquired message"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_30

    .line 160
    const/4 v1, 0x1

    .line 163
    if-nez p1, :cond_40

    .line 164
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    .line 160
    :cond_40
    return v1

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_41
    if-nez p1, :cond_46

    .line 164
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    :cond_46
    throw v0

    .line 169
    :cond_47
    const/4 v0, 0x4

    if-eq p2, v0, :cond_55

    const/4 v0, 0x5

    if-eq p2, v0, :cond_55

    if-ne p2, v2, :cond_50

    goto :goto_55

    .line 194
    :cond_50
    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(II)Z

    move-result v0

    return v0

    .line 172
    :cond_55
    :goto_55
    const-string v0, "com.android.systemui"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 173
    packed-switch p2, :pswitch_data_a6

    .line 187
    const-string v0, "FingerprintService"

    const-string/jumbo v2, "incorrect situation"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 184
    :pswitch_6d
    const-string/jumbo v0, "lock_unlock_success"

    const-string v2, "finger"

    const-string v3, "3"

    invoke-static {v0, v2, v3}, Lcom/oneplus/onlineconfig/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    goto :goto_8e

    .line 180
    :pswitch_78
    const-string/jumbo v0, "lock_unlock_success"

    const-string v2, "finger"

    const-string v3, "2"

    invoke-static {v0, v2, v3}, Lcom/oneplus/onlineconfig/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    goto :goto_8e

    .line 176
    :pswitch_83
    const-string/jumbo v0, "lock_unlock_failed"

    const-string v2, "finger"

    const-string v3, "2"

    invoke-static {v0, v2, v3}, Lcom/oneplus/onlineconfig/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    nop

    .line 190
    :cond_8e
    :goto_8e
    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive fake finger info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return v1

    nop

    :pswitch_data_a6
    .packed-switch 0x4
        :pswitch_83
        :pswitch_78
        :pswitch_6d
    .end packed-switch
.end method

.method public onAuthenticated(II)Z
    .registers 16
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "result":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_7

    move v3, v2

    goto :goto_8

    :cond_7
    move v3, v1

    .line 226
    .local v3, "authenticated":Z
    :goto_8
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_37

    iget-boolean v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-nez v4, :cond_37

    .line 228
    if-eqz v3, :cond_1a

    .line 229
    :try_start_12
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintAuthenticated()V

    goto :goto_2e

    .line 234
    :catch_18
    move-exception v4

    goto :goto_2f

    .line 231
    :cond_1a
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040245

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintHelp(Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_2e} :catch_18

    .line 236
    :goto_2e
    goto :goto_37

    .line 234
    :goto_2f
    nop

    .line 235
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "FingerprintService"

    const-string v6, "Failed to notify Authenticated:"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_37
    :goto_37
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v4

    .line 241
    .local v4, "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    if-eqz v4, :cond_b9

    .line 243
    :try_start_3d
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0xfc

    invoke-static {v5, v6, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 245
    if-nez v3, :cond_50

    .line 246
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V

    goto :goto_b8

    .line 249
    :cond_50
    const-string v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAuthenticated(owner="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", gp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getIsRestricted()Z

    move-result v5

    const/16 v6, 0x3e7

    if-nez v5, :cond_9d

    .line 256
    new-instance v5, Landroid/hardware/fingerprint/Fingerprint;

    const-string v8, ""

    .line 257
    iget-boolean v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsDoubleAccount:Z

    if-eqz v7, :cond_92

    .line 258
    move v9, v6

    goto :goto_93

    :cond_92
    move v9, p2

    :goto_93
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v11

    move-object v7, v5

    move v10, p1

    invoke-direct/range {v7 .. v12}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    goto :goto_9e

    .line 259
    :cond_9d
    const/4 v5, 0x0

    .line 261
    .local v5, "fp":Landroid/hardware/fingerprint/Fingerprint;
    :goto_9e
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v7

    .line 262
    iget-boolean v9, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsDoubleAccount:Z

    if-eqz v9, :cond_a7

    goto :goto_ab

    :cond_a7
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v6

    .line 261
    :goto_ab
    invoke-interface {v4, v7, v8, v5, v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_ae} :catch_af

    .line 261
    .end local v5    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    goto :goto_b8

    .line 265
    :catch_af
    move-exception v5

    .line 266
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "FingerprintService"

    const-string v7, "Failed to notify Authenticated:"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    const/4 v0, 0x1

    .line 268
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_b8
    goto :goto_ba

    .line 270
    :cond_b9
    const/4 v0, 0x1

    .line 272
    :goto_ba
    if-nez v3, :cond_126

    .line 273
    if-eqz v4, :cond_d1

    .line 275
    iget-boolean v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-eqz v5, :cond_ce

    const-string v5, "com.android.systemui"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d1

    .line 276
    :cond_ce
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->vibrateError()V

    .line 281
    :cond_d1
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->handleFailedAttempt()I

    move-result v5

    .line 282
    .local v5, "lockoutMode":I
    if-eqz v5, :cond_120

    .line 284
    :try_start_d7
    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    .line 285
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Forcing lockout (fp driver code should do this!), mode("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    .line 288
    if-ne v5, v2, :cond_fb

    .line 289
    const/4 v6, 0x7

    goto :goto_fd

    .line 290
    :cond_fb
    const/16 v6, 0x9

    .line 295
    .local v6, "errorCode":I
    :goto_fd
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v7

    invoke-interface {v4, v7, v8, v6, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JII)V

    .line 299
    iget-object v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v7, :cond_10c

    iget-boolean v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-nez v7, :cond_117

    .line 300
    :cond_10c
    iget-object v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v8, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 301
    invoke-virtual {v8, v6, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v8

    .line 300
    invoke-interface {v7, v8}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintError(Ljava/lang/String;)V
    :try_end_117
    .catch Landroid/os/RemoteException; {:try_start_d7 .. :try_end_117} :catch_118

    .line 306
    .end local v6    # "errorCode":I
    :cond_117
    goto :goto_120

    .line 304
    :catch_118
    move-exception v6

    .line 305
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "FingerprintService"

    const-string v8, "Failed to notify lockout:"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_120
    :goto_120
    if-eqz v5, :cond_124

    move v1, v2

    nop

    :cond_124
    or-int/2addr v0, v1

    .line 309
    .end local v5    # "lockoutMode":I
    goto :goto_14c

    .line 310
    :cond_126
    if-eqz v4, :cond_145

    .line 313
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/fingerprint/AuthenticationClient;->shouldVibrate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_145

    const-string v1, "com.android.systemui"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_142

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-nez v1, :cond_145

    .line 314
    :cond_142
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->vibrateSuccess()V

    .line 319
    :cond_145
    or-int/2addr v0, v2

    .line 320
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->resetFailedAttempts()V

    .line 321
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStop()V

    .line 323
    :goto_14c
    return v0
.end method

.method public onEnrollResult(III)Z
    .registers 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 418
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnrollResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(III)Z
    .registers 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 430
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v0, 0x1

    return v0
.end method

.method public onError(II)Z
    .registers 6
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 200
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-eqz v0, :cond_6

    .line 205
    const/4 v0, 0x1

    return v0

    .line 207
    :cond_6
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-nez v0, :cond_22

    .line 209
    :try_start_e
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 210
    invoke-virtual {v1, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintError(Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1a

    .line 213
    goto :goto_22

    .line 211
    :catch_1a
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Remote exception when sending error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    :goto_22
    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    move-result v0

    return v0
.end method

.method public onRemoved(III)Z
    .registers 6
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 424
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract resetFailedAttempts()V
.end method

.method public setDoubleAccount()V
    .registers 2

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsDoubleAccount:Z

    .line 127
    return-void
.end method

.method public start()I
    .registers 8

    .line 331
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 332
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const/4 v1, 0x3

    if-nez v0, :cond_10

    .line 333
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "start authentication: no fingerprint HAL!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return v1

    .line 336
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStart()V

    .line 338
    :try_start_13
    iget-wide v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getGroupId()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->authenticate(JI)I

    move-result v2

    .line 339
    .local v2, "result":I
    const/4 v3, 0x0

    if-eqz v2, :cond_45

    .line 340
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startAuthentication failed, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "fingeprintd_auth_start_error"

    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 342
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    .line 343
    return v2

    .line 345
    :cond_45
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is authenticating..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v4, :cond_6c

    iget-boolean v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_6a} :catch_97

    if-eqz v4, :cond_95

    .line 354
    :cond_6c
    :try_start_6c
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v4, :cond_77

    .line 355
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    .line 357
    :cond_77
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v5, "key_fingerprint_package_name"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    invoke-interface {v4, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService;->showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_8c} :catch_8d

    .line 361
    goto :goto_95

    .line 359
    :catch_8d
    move-exception v4

    .line 360
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_8e
    const-string v5, "FingerprintService"

    const-string v6, "Unable to show fingerprint dialog"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_95} :catch_97

    .line 366
    .end local v2    # "result":I
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_95
    :goto_95
    nop

    .line 368
    return v3

    .line 363
    :catch_97
    move-exception v2

    .line 364
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "startAuthentication failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    return v1
.end method

.method public stop(Z)I
    .registers 9
    .param p1, "initiatedByClient"    # Z

    .line 373
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 374
    const-string v0, "FingerprintService"

    const-string/jumbo v2, "stopAuthentication: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return v1

    .line 378
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStop()V

    .line 379
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 380
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const/4 v2, 0x3

    if-nez v0, :cond_21

    .line 381
    const-string v1, "FingerprintService"

    const-string/jumbo v3, "stopAuthentication: no fingerprint HAL!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return v2

    .line 385
    :cond_21
    :try_start_21
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v3

    .line 386
    .local v3, "result":I
    if-eqz v3, :cond_5a

    .line 387
    const-string v1, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopAuthentication failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_3e} :catch_9a
    .catchall {:try_start_21 .. :try_end_3e} :catchall_98

    .line 388
    nop

    .line 403
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v1, :cond_47

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-eqz v1, :cond_59

    :cond_47
    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v1, :cond_59

    .line 406
    :try_start_4b
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_50} :catch_51

    .line 409
    goto :goto_59

    .line 407
    :catch_51
    move-exception v1

    .line 408
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_59
    :goto_59
    return v3

    .line 390
    :cond_5a
    :try_start_5a
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is no longer authenticating"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_79} :catch_9a
    .catchall {:try_start_5a .. :try_end_79} :catchall_98

    .line 403
    .end local v3    # "result":I
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_81

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-eqz v2, :cond_94

    :cond_81
    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v2, :cond_94

    .line 406
    :try_start_85
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_8a} :catch_8b

    goto :goto_93

    .line 407
    :catch_8b
    move-exception v2

    .line 408
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_93
    nop

    .line 412
    :cond_94
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    .line 413
    return v1

    .line 403
    :catchall_98
    move-exception v1

    goto :goto_bf

    .line 391
    :catch_9a
    move-exception v1

    .line 392
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_9b
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "stopAuthentication failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_9b .. :try_end_a3} :catchall_98

    .line 393
    nop

    .line 403
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v3, :cond_ac

    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-eqz v3, :cond_be

    :cond_ac
    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v3, :cond_be

    .line 406
    :try_start_b0
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_b5} :catch_b6

    .line 409
    goto :goto_be

    .line 407
    :catch_b6
    move-exception v3

    .line 408
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string v5, "Unable to hide fingerprint dialog"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_be
    :goto_be
    return v2

    .line 403
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_bf
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_c7

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-eqz v2, :cond_d9

    :cond_c7
    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v2, :cond_d9

    .line 406
    :try_start_cb
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_d0} :catch_d1

    .line 409
    goto :goto_d9

    .line 407
    :catch_d1
    move-exception v2

    .line 408
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_d9
    :goto_d9
    throw v1
.end method
