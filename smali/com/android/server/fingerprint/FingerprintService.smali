.class public Lcom/android/server/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;,
        Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;,
        Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    }
.end annotation


# static fields
.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

.field private static final CANCEL_TIMEOUT_LIMIT:J = 0xbb8L

.field static final DEBUG:Z = true

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field private static final FP_DATA_DIR:Ljava/lang/String; = "fpdata"

.field private static final KEY_LOCKOUT_RESET_USER:Ljava/lang/String; = "lockout_reset_user"

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_PERMANENT:I = 0x14

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_TIMED:I = 0xa

.field private static final MSG_USER_SWITCHING:I = 0xa

.field static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mCleanupUnusedFingerprints:Z

.field private final mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCryptoPerformanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

.field private mCurrentUserId:I

.field private mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

.field private mFailedAttempts:Landroid/util/SparseIntArray;

.field private mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

.field private final mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

.field private mHalDeviceId:J

.field private mHandler:Landroid/os/Handler;

.field private final mHasFod:Z

.field private final mKeyguardPackage:Ljava/lang/String;

.field private final mLockoutMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockoutReceiver:Landroid/content/BroadcastReceiver;

.field private final mNotifyClient:Z

.field private mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

.field private mPerformanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;",
            ">;"
        }
    .end annotation
.end field

.field private mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mResetClientState:Ljava/lang/Runnable;

.field private final mResetFailedAttemptsForCurrentUserRunnable:Ljava/lang/Runnable;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mTaskStackListener:Landroid/app/TaskStackListener;

.field private mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

.field private mToken:Landroid/os/IBinder;

.field private mUnknownFingerprints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 256
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    .line 137
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 138
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    .line 158
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mToken:Landroid/os/IBinder;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    .line 176
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 190
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$2;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$3;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsForCurrentUserRunnable:Ljava/lang/Runnable;

    .line 208
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$4;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$4;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    .line 229
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$5;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 1122
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$12;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$12;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 257
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    .line 260
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    .line 261
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    .line 262
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 263
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 265
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUserManager:Landroid/os/UserManager;

    .line 266
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 267
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 268
    const-string/jumbo v0, "statusbar"

    .line 269
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 268
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 270
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 271
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mActivityManager:Landroid/app/IActivityManager;

    .line 272
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mNotifyClient:Z

    .line 274
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCleanupUnusedFingerprints:Z

    .line 277
    invoke-static {p1}, Lcom/android/internal/util/custom/FodUtils;->hasFodSupport(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHasFod:Z

    .line 278
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)Lcom/android/server/fingerprint/ClientMonitor;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/fingerprint/FingerprintService;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->scheduleLockoutResetForUser(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/fingerprint/FingerprintService;)J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct/range {p0 .. p7}, Lcom/android/server/fingerprint/FingerprintService;->startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z
    .locals 0

    .line 106
    invoke-direct/range {p0 .. p5}, Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;ZIII)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;Z)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/HashMap;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/HashMap;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/server/fingerprint/FingerprintService;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$2400(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .locals 0

    .line 106
    invoke-direct/range {p0 .. p11}, Lcom/android/server/fingerprint/FingerprintService;->startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/fingerprint/FingerprintService;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/android/server/fingerprint/FingerprintService;->mNotifyClient:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/android/server/fingerprint/FingerprintService;ILjava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintUtils;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/FileDescriptor;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsForCurrentUserRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/IActivityManager;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/fingerprint/FingerprintService;->mActivityManager:Landroid/app/IActivityManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->userActivity()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/TaskStackListener;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTaskStackListener:Landroid/app/TaskStackListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/fingerprint/FingerprintService;)I
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result p0

    return p0
.end method

.method private addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    :cond_0
    return-void
.end method

.method private canUseFingerprint(Ljava/lang/String;ZIII)Z
    .locals 3

    .line 864
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    const-string v0, "android.permission.USE_BIOMETRIC"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 869
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 870
    return v1

    .line 872
    :cond_1
    invoke-virtual {p0, p5}, Lcom/android/server/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result p5

    const/4 v0, 0x0

    if-nez p5, :cond_2

    .line 873
    const-string p2, "FingerprintService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Rejecting "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ; not a current user or profile"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return v0

    .line 876
    :cond_2
    iget-object p5, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x37

    invoke-virtual {p5, v2, p3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p5

    if-eqz p5, :cond_3

    .line 878
    const-string p2, "FingerprintService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Rejecting "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ; permission denied"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return v0

    .line 881
    :cond_3
    if-eqz p2, :cond_4

    invoke-direct {p0, p3, p4}, Lcom/android/server/fingerprint/FingerprintService;->isForegroundActivity(II)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->currentClient(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 882
    const-string p2, "FingerprintService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Rejecting "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ; not in foreground"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    return v0

    .line 885
    :cond_4
    return v1
.end method

.method private cancelLockoutResetForUser(I)V
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 596
    return-void
.end method

.method private cleanupUnknownFingerprints()V
    .locals 10

    .line 387
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;

    .line 389
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 390
    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    .line 391
    xor-int/lit8 v8, v1, 0x1

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mToken:Landroid/os/IBinder;

    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->f:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->f:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v5

    iget v6, v0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->userId:I

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/fingerprint/FingerprintService;->startRemove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V

    .line 393
    goto :goto_0

    .line 394
    :cond_0
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    .line 396
    :goto_0
    return-void
.end method

.method private clearEnumerateState()V
    .locals 2

    .line 375
    const-string v0, "FingerprintService"

    const-string v1, "clearEnumerateState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 377
    return-void
.end method

.method private currentClient(Ljava/lang/String;)Z
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private doFingerprintCleanupForUser(I)V
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCleanupUnusedFingerprints:Z

    if-eqz v0, :cond_0

    .line 370
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->enumerateUser(I)V

    .line 372
    :cond_0
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 9

    .line 1495
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1497
    :try_start_0
    const-string/jumbo v1, "service"

    const-string v2, "Fingerprint Manager"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1499
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1500
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1501
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1502
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 1503
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1504
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1505
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1506
    const-string v8, "id"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1507
    const-string v3, "count"

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1508
    const-string v3, "accept"

    const/4 v4, 0x0

    if-eqz v5, :cond_0

    iget v8, v5, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    goto :goto_1

    :cond_0
    move v8, v4

    :goto_1
    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1509
    const-string/jumbo v3, "reject"

    if-eqz v5, :cond_1

    iget v8, v5, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    goto :goto_2

    :cond_1
    move v8, v4

    :goto_2
    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1510
    const-string v3, "acquire"

    if-eqz v5, :cond_2

    iget v8, v5, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    goto :goto_3

    :cond_2
    move v8, v4

    :goto_3
    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1511
    const-string v3, "lockout"

    if-eqz v5, :cond_3

    iget v8, v5, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    goto :goto_4

    :cond_3
    move v8, v4

    :goto_4
    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1512
    const-string/jumbo v3, "permanentLockout"

    if-eqz v5, :cond_4

    iget v5, v5, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    goto :goto_5

    :cond_4
    move v5, v4

    :goto_5
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1515
    const-string v3, "acceptCrypto"

    if-eqz v6, :cond_5

    iget v5, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    goto :goto_6

    :cond_5
    move v5, v4

    :goto_6
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1516
    const-string/jumbo v3, "rejectCrypto"

    if-eqz v6, :cond_6

    iget v5, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    goto :goto_7

    :cond_6
    move v5, v4

    :goto_7
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1517
    const-string v3, "acquireCrypto"

    if-eqz v6, :cond_7

    iget v5, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    goto :goto_8

    :cond_7
    move v5, v4

    :goto_8
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1518
    const-string v3, "lockoutCrypto"

    if-eqz v6, :cond_8

    iget v5, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    goto :goto_9

    :cond_8
    move v5, v4

    :goto_9
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1519
    const-string/jumbo v3, "permanentLockoutCrypto"

    .line 1520
    if-eqz v6, :cond_9

    iget v4, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    nop

    .line 1519
    :cond_9
    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1521
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1522
    goto/16 :goto_0

    .line 1524
    :cond_a
    const-string/jumbo v2, "prints"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1527
    goto :goto_a

    .line 1525
    :catch_0
    move-exception v1

    .line 1526
    const-string v2, "FingerprintService"

    const-string v3, "dump formatting failure"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1528
    :goto_a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1529
    return-void
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1532
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1533
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1534
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1536
    const-wide v4, 0x20b00000001L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1538
    const-wide v6, 0x10500000001L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1539
    iget-object v8, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v9, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    .line 1540
    invoke-virtual {v8, v9, v3}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 1539
    const-wide v9, 0x10500000002L

    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1543
    iget-object v8, v0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1544
    const-wide v11, 0x10500000003L

    if-eqz v8, :cond_0

    .line 1545
    const-wide v13, 0x10b00000003L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 1546
    iget v15, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    invoke-virtual {v1, v6, v7, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1547
    iget v15, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    invoke-virtual {v1, v9, v10, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1548
    iget v15, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1549
    iget v15, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    const-wide v11, 0x10500000004L

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1550
    iget v8, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    const-wide v11, 0x10500000005L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1551
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1556
    :cond_0
    iget-object v8, v0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1557
    if-eqz v3, :cond_1

    .line 1558
    const-wide v11, 0x10b00000004L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 1559
    iget v8, v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1560
    iget v6, v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1561
    iget v6, v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    const-wide v7, 0x10500000003L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1562
    iget v6, v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    const-wide v7, 0x10500000004L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1563
    iget v3, v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    const-wide v6, 0x10500000005L

    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1564
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1567
    :cond_1
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1568
    goto/16 :goto_0

    .line 1569
    :cond_2
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1570
    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1571
    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1572
    return-void
.end method

.method private enumerateUser(I)V
    .locals 7

    .line 380
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerating user("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v0, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    .line 382
    xor-int/lit8 v5, v0, 0x1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/fingerprint/FingerprintService;->startEnumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V

    .line 383
    return-void
.end method

.method private getLockoutMode()I
    .locals 4

    .line 576
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 577
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 578
    const/16 v3, 0x14

    if-lt v1, v3, :cond_0

    .line 579
    const/4 v0, 0x2

    return v0

    .line 580
    :cond_0
    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 581
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_1

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_1

    .line 583
    const/4 v0, 0x1

    return v0

    .line 585
    :cond_1
    return v2
.end method

.method private getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "lockout_reset_user"

    .line 600
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 599
    const/high16 v2, 0x8000000

    invoke-static {v0, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getUserOrWorkProfileId(Ljava/lang/String;I)I
    .locals 0

    .line 1631
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->isWorkProfile(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1632
    return p2

    .line 1634
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result p1

    return p1
.end method

.method private isForegroundActivity(II)Z
    .locals 6

    .line 842
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 843
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 844
    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 845
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 846
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_0

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p1, :cond_0

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x7d

    if-gt v4, v5, :cond_0

    .line 848
    const/4 p1, 0x1

    return p1

    .line 844
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 853
    :cond_1
    goto :goto_1

    .line 851
    :catch_0
    move-exception p1

    .line 852
    const-string p1, "FingerprintService"

    const-string p2, "am.getRunningAppProcesses() failed"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :goto_1
    return v0
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isWorkProfile(I)Z
    .locals 3

    .line 1642
    nop

    .line 1643
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1645
    :try_start_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1647
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1648
    nop

    .line 1649
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 1647
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public static synthetic lambda$getFingerprintInScreenDaemon$0(Lcom/android/server/fingerprint/FingerprintService;J)V
    .locals 0

    .line 335
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    .line 336
    return-void
.end method

.method private listenForUserSwitches()V
    .locals 3

    .line 1654
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$13;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$13;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    const-string v2, "FingerprintService"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1664
    goto :goto_0

    .line 1662
    :catch_0
    move-exception v0

    .line 1663
    const-string v1, "FingerprintService"

    const-string v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1665
    :goto_0
    return-void
.end method

.method private loadAuthenticatorIds()V
    .locals 7

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 350
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 351
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 352
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    invoke-direct {p0, v4, v3}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v3

    .line 353
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 354
    invoke-direct {p0, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 356
    :cond_0
    goto :goto_0

    .line 358
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 359
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 360
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAuthenticatorIds() taking too long: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_2
    return-void
.end method

.method private notifyClientActiveCallbacks(Z)V
    .locals 4

    .line 922
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 923
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 925
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    invoke-interface {v2, p1}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onClientActiveChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    goto :goto_1

    .line 926
    :catch_0
    move-exception v2

    .line 928
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 923
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 931
    :cond_0
    return-void
.end method

.method private notifyLockoutResetMonitors()V
    .locals 2

    .line 916
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->sendLockoutReset()V

    .line 916
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 919
    :cond_0
    return-void
.end method

.method private removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V
    .locals 3

    .line 559
    if-eqz p1, :cond_1

    .line 560
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->destroy()V

    .line 561
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_1

    .line 562
    const-string v0, "FingerprintService"

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    .line 562
    :goto_0
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_2

    .line 567
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done with client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 570
    :cond_2
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-nez p1, :cond_3

    .line 571
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->notifyClientActiveCallbacks(Z)V

    .line 573
    :cond_3
    return-void
.end method

.method private removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 913
    return-void
.end method

.method private scheduleLockoutResetForUser(I)V
    .locals 5

    .line 589
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 590
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    .line 591
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 589
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 592
    return-void
.end method

.method private startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .locals 18

    move-object/from16 v15, p0

    move-object/from16 v12, p9

    .line 936
    move/from16 v8, p5

    invoke-direct {v15, v8, v12}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 938
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAuthentication("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    new-instance v14, Lcom/android/server/fingerprint/FingerprintService$10;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v15, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    iget v7, v15, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    iget-object v13, v15, Lcom/android/server/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object v0, v14

    move-object v1, v15

    move-object/from16 v5, p1

    move-object/from16 v6, p6

    move-wide/from16 v9, p2

    move/from16 v11, p8

    move-object/from16 v16, v13

    move-object/from16 v13, p10

    move-object/from16 v17, v14

    move-object/from16 v14, p11

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/android/server/fingerprint/FingerprintService$10;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 1003
    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v0

    .line 1004
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1005
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In lockout mode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") ; disallowing authentication"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    if-ne v0, v1, :cond_0

    .line 1008
    const/4 v0, 0x7

    goto :goto_0

    .line 1009
    :cond_0
    const/16 v0, 0x9

    .line 1010
    :goto_0
    const/4 v1, 0x0

    move-object/from16 v2, v17

    invoke-virtual {v2, v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1011
    const-string v0, "FingerprintService"

    const-string v1, "Cannot send permanent lockout message to client"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_1
    return-void

    .line 1015
    :cond_2
    move-object/from16 v2, v17

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 1016
    return-void
.end method

.method private startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V
    .locals 4

    .line 640
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 641
    if-eqz v0, :cond_3

    .line 642
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request stop current client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 656
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/fingerprint/ClientMonitor;->stop(Z)I

    goto :goto_1

    .line 648
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 649
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal cleanup in progress but trying to start client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), initiatedByClient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 649
    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 659
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 660
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 661
    :cond_3
    if-eqz p1, :cond_4

    .line 662
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 663
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), initiatedByClient = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 663
    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->notifyClientActiveCallbacks(Z)V

    .line 669
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->start()I

    .line 671
    :cond_4
    :goto_2
    return-void
.end method

.method private startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .locals 15

    move-object v13, p0

    .line 1021
    move/from16 v8, p3

    move-object/from16 v11, p7

    invoke-direct {v13, v8, v11}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 1023
    nop

    .line 1025
    new-instance v14, Lcom/android/server/fingerprint/FingerprintService$11;

    invoke-virtual {v13}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v13, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    iget-object v12, v13, Lcom/android/server/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object v0, v14

    move-object v1, v13

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move v7, v8

    move-object/from16 v9, p2

    move/from16 v10, p6

    invoke-direct/range {v0 .. v12}, Lcom/android/server/fingerprint/FingerprintService$11;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 1043
    const/4 v0, 0x1

    invoke-direct {v13, v14, v0}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 1044
    return-void
.end method

.method private updateActiveGroup(ILjava/lang/String;)V
    .locals 4

    .line 1582
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1584
    if-eqz v0, :cond_6

    .line 1586
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result p1

    .line 1587
    iget p2, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    if-eq p1, p2, :cond_4

    .line 1588
    sget p2, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    .line 1589
    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 1590
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First SDK version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is invalid; must be at least VERSION_CODES.BASE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_0
    const/16 v1, 0x1b

    if-gt p2, v1, :cond_1

    .line 1595
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p2

    goto :goto_0

    .line 1597
    :cond_1
    invoke-static {p1}, Landroid/os/Environment;->getDataVendorDeDirectory(I)Ljava/io/File;

    move-result-object p2

    .line 1600
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, "fpdata"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1601
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1602
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1603
    const-string p1, "FingerprintService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot make directory: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    return-void

    .line 1609
    :cond_2
    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1610
    const-string p1, "FingerprintService"

    const-string p2, "Restorecons failed. Directory will have wrong label."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    return-void

    .line 1615
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setActiveGroup(ILjava/lang/String;)I

    .line 1616
    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 1618
    :cond_4
    iget-object p2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1619
    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getAuthenticatorId()J

    move-result-wide v2

    goto :goto_1

    :cond_5
    const-wide/16 v2, 0x0

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1618
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1622
    goto :goto_2

    .line 1620
    :catch_0
    move-exception p1

    .line 1621
    const-string p2, "FingerprintService"

    const-string v0, "Failed to setActiveGroup():"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1624
    :cond_6
    :goto_2
    return-void
.end method

.method private userActivity()V
    .locals 5

    .line 543
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 544
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 545
    return-void
.end method


# virtual methods
.method checkPermission(Ljava/lang/String;)V
    .locals 3

    .line 801
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    return-void
.end method

.method public getAuthenticatorId(Ljava/lang/String;)J
    .locals 3

    .line 1672
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result p1

    .line 1673
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method getEffectiveUserId(I)I
    .locals 3

    .line 806
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 807
    if-eqz v0, :cond_0

    .line 808
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 809
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 810
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 811
    goto :goto_0

    .line 812
    :cond_0
    const-string v0, "FingerprintService"

    const-string v1, "Unable to acquire UserManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :goto_0
    return p1
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .locals 7

    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    if-nez v0, :cond_2

    .line 290
    const-string v0, "FingerprintService"

    const-string v1, "mDaemon was null, reconnect to fingerprint"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :try_start_1
    invoke-static {}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getService()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    :try_start_2
    const-string v1, "FingerprintService"

    const-string v2, "Failed to get biometric interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 293
    :catch_1
    move-exception v0

    .line 297
    :goto_0
    nop

    .line 298
    :goto_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 299
    const-string v0, "FingerprintService"

    const-string v2, "fingerprint HIDL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    monitor-exit p0

    return-object v1

    .line 303
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 306
    :try_start_4
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    invoke-interface {v0, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 310
    goto :goto_2

    .line 307
    :catch_2
    move-exception v0

    .line 308
    :try_start_5
    const-string v4, "FingerprintService"

    const-string v5, "Failed to open fingerprint HAL"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 312
    :goto_2
    const-string v0, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fingerprint HAL id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-wide v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 314
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->loadAuthenticatorIds()V

    .line 315
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 316
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->doFingerprintCleanupForUser(I)V

    goto :goto_3

    .line 318
    :cond_1
    const-string v0, "FingerprintService"

    const-string v2, "Failed to open Fingerprint HAL!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v2, "fingerprintd_openhal_error"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 320
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 323
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;
    .locals 4

    monitor-enter p0

    .line 327
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHasFod:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 328
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 330
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 332
    :try_start_2
    invoke-static {}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->getService()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    .line 333
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    invoke-interface {v0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$fYEKmVRoCWZ4FZKBP6r1rGjFFig;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$FingerprintService$fYEKmVRoCWZ4FZKBP6r1rGjFFig;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    :cond_1
    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    :try_start_3
    const-string v1, "FingerprintService"

    const-string v2, "Failed to get IFingerprintInscreen interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintInscreenDaemon:Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected handleAcquired(JII)V
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object p1

    .line 512
    if-eqz p1, :cond_1

    .line 514
    :try_start_0
    invoke-interface {p1, p3, p4}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->handleAcquired(II)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 515
    return-void

    .line 519
    :cond_0
    goto :goto_0

    .line 517
    :catch_0
    move-exception p1

    .line 518
    const-string p2, "FingerprintService"

    const-string v0, "handleAcquired failed"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 522
    if-eqz p1, :cond_2

    invoke-virtual {p1, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(II)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 523
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 525
    :cond_2
    iget-object p2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result p2

    if-nez p2, :cond_3

    instance-of p1, p1, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz p1, :cond_3

    .line 528
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget p2, p1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    .line 530
    :cond_3
    return-void
.end method

.method protected handleAuthenticated(JIILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 490
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 491
    if-eqz p3, :cond_1

    .line 493
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [B

    .line 494
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 495
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, p2, v0

    .line 494
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p5

    invoke-virtual {p5, p2}, Landroid/security/KeyStore;->addAuthToken([B)I

    .line 500
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onAuthenticated(II)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 501
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 503
    :cond_2
    if-eqz p3, :cond_3

    .line 504
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget p2, p1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    goto :goto_1

    .line 506
    :cond_3
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget p2, p1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    .line 508
    :goto_1
    return-void
.end method

.method protected handleEnrollResult(JIII)V
    .locals 0

    .line 533
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 534
    if-eqz p1, :cond_0

    invoke-virtual {p1, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onEnrollResult(III)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 535
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 538
    const/4 p1, 0x0

    invoke-direct {p0, p4, p1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 540
    :cond_0
    return-void
.end method

.method protected handleEnumerate(JIII)V
    .locals 1

    .line 399
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 401
    instance-of p2, p1, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-nez p2, :cond_0

    instance-of p2, p1, Lcom/android/server/fingerprint/EnumerateClient;

    if-nez p2, :cond_0

    .line 402
    return-void

    .line 404
    :cond_0
    invoke-virtual {p1, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onEnumerationResult(III)Z

    .line 407
    if-nez p5, :cond_4

    .line 408
    instance-of p2, p1, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-eqz p2, :cond_3

    .line 409
    move-object p2, p1

    check-cast p2, Lcom/android/server/fingerprint/InternalEnumerateClient;

    .line 410
    invoke-virtual {p2}, Lcom/android/server/fingerprint/InternalEnumerateClient;->getUnknownFingerprints()Ljava/util/List;

    move-result-object p2

    .line 412
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 413
    const-string p3, "FingerprintService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Adding "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " fingerprints for deletion"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/fingerprint/Fingerprint;

    .line 417
    iget-object p4, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    new-instance p5, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getTargetUserId()I

    move-result v0

    invoke-direct {p5, p0, p3, v0}, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/Fingerprint;I)V

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    goto :goto_0

    .line 419
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 420
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->cleanupUnknownFingerprints()V

    .line 421
    goto :goto_1

    .line 422
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 425
    :cond_4
    :goto_1
    return-void
.end method

.method protected handleError(JII)V
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintInScreenDaemon()Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;

    move-result-object p1

    .line 429
    if-eqz p1, :cond_1

    .line 431
    :try_start_0
    invoke-interface {p1, p3, p4}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;->handleError(II)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 432
    return-void

    .line 436
    :cond_0
    goto :goto_0

    .line 434
    :catch_0
    move-exception p1

    .line 435
    const-string p2, "FingerprintService"

    const-string v0, "handleError failed"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 439
    instance-of p2, p1, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-nez p2, :cond_2

    instance-of p2, p1, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-eqz p2, :cond_3

    .line 440
    :cond_2
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    .line 442
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 443
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 446
    :cond_4
    const-string p2, "FingerprintService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleError(client="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const-string p1, "null"

    :goto_1
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 446
    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 p1, 0x5

    const/4 p2, 0x0

    if-ne p3, p1, :cond_6

    .line 450
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 451
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz p1, :cond_7

    .line 452
    const-string p1, "FingerprintService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "start pending client "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {p4}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 454
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    goto :goto_2

    .line 456
    :cond_6
    const/4 p1, 0x1

    if-ne p3, p1, :cond_7

    .line 458
    const-string p1, "FingerprintService"

    const-string p3, "Got ERROR_HW_UNAVAILABLE; try reconnecting next client."

    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    monitor-enter p0

    .line 460
    :try_start_1
    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 461
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 462
    const/16 p1, -0x2710

    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 463
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 465
    :cond_7
    :goto_2
    return-void
.end method

.method protected handleRemoved(JIII)V
    .locals 3

    .line 468
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed: fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", gid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", rem="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 474
    if-eqz p1, :cond_0

    invoke-virtual {p1, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onRemoved(III)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 475
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 477
    invoke-virtual {p0, p4}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 478
    const/4 p2, 0x0

    invoke-direct {p0, p4, p2}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 481
    :cond_0
    instance-of p1, p1, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 482
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->cleanupUnknownFingerprints()V

    goto :goto_0

    .line 483
    :cond_1
    if-eqz p1, :cond_2

    .line 484
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    .line 486
    :cond_2
    :goto_0
    return-void
.end method

.method handleUserSwitching(I)V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v0, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v0, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-eqz v0, :cond_1

    .line 550
    :cond_0
    const-string v0, "FingerprintService"

    const-string v1, "User switched while performing cleanup"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 552
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    .line 554
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 555
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->doFingerprintCleanupForUser(I)V

    .line 556
    return-void
.end method

.method public hasEnrolledFingerprints(I)Z
    .locals 2

    .line 789
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 790
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method hasPermission(Ljava/lang/String;)Z
    .locals 1

    .line 796
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isCurrentUserOrProfile(I)Z
    .locals 7

    .line 818
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 819
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 820
    const-string p1, "FingerprintService"

    const-string v0, "Unable to acquire UserManager"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return v1

    .line 824
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 827
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    array-length v4, v0

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    if-ne v6, p1, :cond_1

    .line 829
    nop

    .line 833
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 829
    const/4 p1, 0x1

    return p1

    .line 827
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 833
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 834
    nop

    .line 836
    return v1

    .line 833
    :catchall_0
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onStart()V
    .locals 3

    .line 1576
    const-string v0, "fingerprint"

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1577
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$l42rkDmfSgEoarEM7da3vinr3Iw;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$l42rkDmfSgEoarEM7da3vinr3Iw;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    const-string v2, "FingerprintService.onStart"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1578
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->listenForUserSwitches()V

    .line 1579
    return-void
.end method

.method protected resetFailedAttemptsForUser(ZI)V
    .locals 3

    .line 1049
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset fingerprint lockout, clearAttemptCounter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_0
    if-eqz p1, :cond_1

    .line 1053
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1055
    :cond_1
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1058
    invoke-direct {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->cancelLockoutResetForUser(I)V

    .line 1059
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->notifyLockoutResetMonitors()V

    .line 1060
    return-void
.end method

.method public serviceDied(J)V
    .locals 2

    .line 282
    const-string p1, "FingerprintService"

    const-string p2, "fingerprint HAL died"

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string p2, "fingerprintd_died"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 284
    iget-wide p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JII)V

    .line 286
    return-void
.end method

.method startEnumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V
    .locals 15

    move-object v12, p0

    .line 734
    invoke-virtual {v12}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 735
    if-nez v0, :cond_0

    .line 736
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startEnumerate: no fingerprint HAL!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-void

    .line 739
    :cond_0
    const/4 v13, 0x1

    if-eqz p5, :cond_1

    .line 740
    move/from16 v8, p2

    invoke-virtual {v12, v8}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v11

    .line 741
    invoke-virtual {v12}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 742
    new-instance v14, Lcom/android/server/fingerprint/FingerprintService$8;

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 743
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    move-object v0, v14

    move-object v1, v12

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move v7, v8

    move/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/FingerprintService$8;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Ljava/util/List;)V

    .line 760
    invoke-direct {v12, v14, v13}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 761
    goto :goto_0

    .line 763
    :cond_1
    move/from16 v8, p2

    new-instance v11, Lcom/android/server/fingerprint/FingerprintService$9;

    invoke-virtual {v12}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 764
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v11

    move-object v1, v12

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move v7, v8

    move/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/fingerprint/FingerprintService$9;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 780
    invoke-direct {v12, v11, v13}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 782
    :goto_0
    return-void
.end method

.method public startPostEnroll(Landroid/os/IBinder;)I
    .locals 3

    .line 619
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p1

    .line 620
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 621
    const-string p1, "FingerprintService"

    const-string/jumbo v1, "startPostEnroll: no fingerprint HAL!"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return v0

    .line 625
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->postEnroll()I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 626
    :catch_0
    move-exception p1

    .line 627
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "startPostEnroll failed"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    return v0
.end method

.method public startPreEnroll(Landroid/os/IBinder;)J
    .locals 4

    .line 605
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p1

    .line 606
    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    .line 607
    const-string p1, "FingerprintService"

    const-string/jumbo v2, "startPreEnroll: no fingerprint HAL!"

    invoke-static {p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return-wide v0

    .line 611
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->preEnroll()J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 612
    :catch_0
    move-exception p1

    .line 613
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startPreEnroll failed"

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    return-wide v0
.end method

.method startRemove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V
    .locals 15

    move-object v12, p0

    .line 675
    if-nez p1, :cond_0

    .line 676
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startRemove: token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return-void

    .line 679
    :cond_0
    if-nez p5, :cond_1

    .line 680
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startRemove: receiver is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return-void

    .line 684
    :cond_1
    invoke-virtual {v12}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 685
    if-nez v0, :cond_2

    .line 686
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startRemove: no fingerprint HAL!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return-void

    .line 690
    :cond_2
    const/4 v13, 0x1

    if-eqz p7, :cond_3

    .line 691
    invoke-virtual {v12}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 692
    new-instance v14, Lcom/android/server/fingerprint/FingerprintService$6;

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 694
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    move-object v0, v14

    move-object v1, v12

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/FingerprintService$6;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V

    .line 708
    invoke-direct {v12, v14, v13}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 709
    goto :goto_0

    .line 711
    :cond_3
    new-instance v14, Lcom/android/server/fingerprint/FingerprintService$7;

    invoke-virtual {v12}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 712
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v14

    move-object v1, v12

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/FingerprintService$7;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V

    .line 728
    invoke-direct {v12, v14, v13}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 730
    :goto_0
    return-void
.end method
