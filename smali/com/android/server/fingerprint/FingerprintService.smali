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

.field private static final CLEANUP_UNUSED_FP:Z = false

.field static final DEBUG:Z = true

.field private static final DISABLE_FP_LONGPRESS:I = 0x4

.field private static final ENABLE_FP_LONGPRESS:I = 0x3

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field private static final FINISH_FP_ENROLL:I = 0xa

.field private static final FP_DATA_DIR:Ljava/lang/String; = "fpdata"

.field private static final IS_SUPPORT_FINGERPRINT_POCKET:Z

.field private static final KEY_LOCKOUT_RESET_USER:Ljava/lang/String; = "lockout_reset_user"

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_PERMANENT:I = 0x14

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_TIMED:I = 0x5

.field private static final MSG_USER_SWITCHING:I = 0xa

.field private static final RESUME_FP_ENROLL:I = 0x8

.field private static final SUSPEND_FP_ENROLL:I = 0x9

.field static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field private final DOUBLE_ACCOUNT_UID:I

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

.field private mBlockX:I

.field private mBlockXEnd:I

.field private mBlockY:I

.field private mBlockYEnd:I

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

.field private mCurrentParam:I

.field private mCurrentUserId:I

.field private mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

.field mDiagnoseManager:Landroid/os/OPDiagnoseManager;

.field private mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

.field private mFailedAttempts:Landroid/util/SparseIntArray;

.field private mFingerprintConfig:Lcom/oneplus/onlineconfig/FingerprintConfig;

.field private final mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

.field private mHalDeviceId:J

.field private mHandler:Landroid/os/Handler;

.field private mIsCustomFingerprint:Z

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
.method static constructor <clinit>()V
    .registers 3

    .line 184
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x48

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 327
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 131
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->DOUBLE_ACCOUNT_UID:I

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    .line 156
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 157
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    .line 187
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mToken:Landroid/os/IBinder;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockX:I

    .line 204
    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockY:I

    .line 205
    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockXEnd:I

    .line 206
    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockYEnd:I

    .line 211
    const/16 v1, 0x65

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentParam:I

    .line 214
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x47

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsCustomFingerprint:Z

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    .line 231
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 245
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$2;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$3;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsForCurrentUserRunnable:Ljava/lang/Runnable;

    .line 267
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$4;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$4;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    .line 298
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$5;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 1307
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$12;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$12;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    .line 328
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    .line 331
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    .line 332
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    .line 333
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 336
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 337
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsCustomFingerprint:Z

    if-eqz v1, :cond_d6

    .line 339
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    :cond_d6
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 345
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mUserManager:Landroid/os/UserManager;

    .line 346
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 347
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 348
    const-string/jumbo v1, "statusbar"

    .line 349
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 348
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 350
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 351
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mActivityManager:Landroid/app/IActivityManager;

    .line 355
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "opdiagnose"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/OPDiagnoseManager;

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    .line 358
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x505001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockX:I

    .line 359
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5050020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockY:I

    .line 360
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockX:I

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x5050022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockXEnd:I

    .line 361
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockY:I

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x5050021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockYEnd:I

    .line 364
    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsCustomFingerprint:Z

    if-eqz v1, :cond_16b

    .line 365
    new-instance v1, Lcom/oneplus/onlineconfig/FingerprintConfig;

    invoke-direct {v1, p1}, Lcom/oneplus/onlineconfig/FingerprintConfig;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintConfig:Lcom/oneplus/onlineconfig/FingerprintConfig;

    .line 368
    :cond_16b
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/oneplus/onlineconfig/FingerprintConfig;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintConfig:Lcom/oneplus/onlineconfig/FingerprintConfig;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)Lcom/android/server/fingerprint/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/ClientMonitor;

    .line 119
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/fingerprint/FingerprintService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 119
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/fingerprint/FingerprintService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->scheduleLockoutResetForUser(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # [B
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "x5"    # I
    .param p6, "x6"    # Z
    .param p7, "x7"    # Ljava/lang/String;

    .line 119
    invoke-direct/range {p0 .. p7}, Lcom/android/server/fingerprint/FingerprintService;->startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z
    .registers 7
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 119
    invoke-direct/range {p0 .. p5}, Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/fingerprint/FingerprintService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .registers 12
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p7, "x6"    # I
    .param p8, "x7"    # Z
    .param p9, "x8"    # Ljava/lang/String;
    .param p10, "x9"    # Landroid/os/Bundle;
    .param p11, "x10"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 119
    invoke-direct/range {p0 .. p11}, Lcom/android/server/fingerprint/FingerprintService;->startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/fingerprint/FingerprintService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->allowUseCustomFingerprint(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsForCurrentUserRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getAuthPackageInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/fingerprint/FingerprintService;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->shouldBlockTouch(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/ClientMonitor;
    .param p2, "x2"    # Z

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/IActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->userActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/fingerprint/FingerprintService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsCustomFingerprint:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/TaskStackListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTaskStackListener:Landroid/app/TaskStackListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .line 119
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .registers 3
    .param p1, "monitor"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .line 1072
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1073
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    :cond_d
    return-void
.end method

.method private allowUseCustomFingerprint(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1980
    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsCustomFingerprint:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 1981
    return v1

    .line 1984
    :cond_6
    new-array v0, v1, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1985
    return v1

    .line 1988
    :cond_12
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2c

    const-string v0, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowUseCustomFingerprint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :cond_2c
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintConfig:Lcom/oneplus/onlineconfig/FingerprintConfig;

    invoke-virtual {v0, p1}, Lcom/oneplus/onlineconfig/FingerprintConfig;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1991
    return v1

    .line 1994
    :cond_35
    return v2
.end method

.method private canUseFingerprint(Ljava/lang/String;ZIII)Z
    .registers 10
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "requireForeground"    # Z
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "userId"    # I

    .line 1025
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->allowUseCustomFingerprint(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1026
    return v1

    .line 1030
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    .line 1032
    const-string v0, "android.permission.USE_BIOMETRIC"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1035
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    .line 1036
    return v2

    .line 1038
    :cond_21
    invoke-virtual {p0, p5}, Lcom/android/server/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result v0

    if-nez v0, :cond_43

    .line 1039
    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; not a current user or profile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    return v1

    .line 1042
    :cond_43
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x37

    invoke-virtual {v0, v3, p3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_69

    .line 1044
    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; permission denied"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    return v1

    .line 1047
    :cond_69
    if-eqz p2, :cond_93

    invoke-direct {p0, p3, p4}, Lcom/android/server/fingerprint/FingerprintService;->isForegroundActivity(II)Z

    move-result v0

    if-nez v0, :cond_93

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->currentClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 1048
    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; not in foreground"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    return v1

    .line 1052
    :cond_93
    return v2
.end method

.method private cancelLockoutResetForUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 731
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 732
    return-void
.end method

.method private cleanupUnknownFingerprints()V
    .registers 11

    .line 494
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 495
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;

    .line 496
    .local v0, "uf":Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 497
    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v8, v1, 0x1

    .line 498
    .local v8, "restricted":Z
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

    .line 500
    .end local v0    # "uf":Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;
    .end local v8    # "restricted":Z
    goto :goto_38

    .line 501
    :cond_35
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    .line 503
    :goto_38
    return-void
.end method

.method private clearEnumerateState()V
    .registers 3

    .line 482
    const-string v0, "FingerprintService"

    const-string v1, "clearEnumerateState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 484
    return-void
.end method

.method private currentClient(Ljava/lang/String;)Z
    .registers 3
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 1060
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private doFingerprintCleanupForUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 479
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1728
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1730
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v1, "service"

    const-string v2, "Fingerprint Manager"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1732
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1733
    .local v1, "sets":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1734
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1735
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 1736
    .local v5, "N":I
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1737
    .local v6, "stats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1738
    .local v7, "cryptoStats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1739
    .local v8, "set":Lorg/json/JSONObject;
    const-string/jumbo v9, "id"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1740
    const-string v9, "count"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1741
    const-string v9, "accept"

    const/4 v10, 0x0

    if-eqz v6, :cond_72

    iget v11, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    goto :goto_73

    :cond_72
    move v11, v10

    :goto_73
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1742
    const-string/jumbo v9, "reject"

    if-eqz v6, :cond_7e

    iget v11, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    goto :goto_7f

    :cond_7e
    move v11, v10

    :goto_7f
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1743
    const-string v9, "acquire"

    if-eqz v6, :cond_89

    iget v11, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    goto :goto_8a

    :cond_89
    move v11, v10

    :goto_8a
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1744
    const-string/jumbo v9, "lockout"

    if-eqz v6, :cond_95

    iget v11, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    goto :goto_96

    :cond_95
    move v11, v10

    :goto_96
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1745
    const-string/jumbo v9, "permanentLockout"

    if-eqz v6, :cond_a1

    iget v11, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    goto :goto_a2

    :cond_a1
    move v11, v10

    :goto_a2
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1748
    const-string v9, "acceptCrypto"

    if-eqz v7, :cond_ac

    iget v11, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    goto :goto_ad

    :cond_ac
    move v11, v10

    :goto_ad
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1749
    const-string/jumbo v9, "rejectCrypto"

    if-eqz v7, :cond_b8

    iget v11, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    goto :goto_b9

    :cond_b8
    move v11, v10

    :goto_b9
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1750
    const-string v9, "acquireCrypto"

    if-eqz v7, :cond_c3

    iget v11, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    goto :goto_c4

    :cond_c3
    move v11, v10

    :goto_c4
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1751
    const-string/jumbo v9, "lockoutCrypto"

    if-eqz v7, :cond_cf

    iget v11, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    goto :goto_d0

    :cond_cf
    move v11, v10

    :goto_d0
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1752
    const-string/jumbo v9, "permanentLockoutCrypto"

    .line 1753
    if-eqz v7, :cond_db

    iget v10, v7, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    nop

    .line 1752
    :cond_db
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1754
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1755
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "userId":I
    .end local v5    # "N":I
    .end local v6    # "stats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .end local v7    # "cryptoStats":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .end local v8    # "set":Lorg/json/JSONObject;
    goto/16 :goto_22

    .line 1757
    :cond_e3
    const-string/jumbo v2, "prints"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e9
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_e9} :catch_ea

    .line 1760
    .end local v1    # "sets":Lorg/json/JSONArray;
    goto :goto_f2

    .line 1758
    :catch_ea
    move-exception v1

    .line 1759
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "FingerprintService"

    const-string v3, "dump formatting failure"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1762
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_f2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1763
    return-void
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 19
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    move-object/from16 v0, p0

    .line 1766
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1767
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1768
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1770
    .local v5, "userId":I
    const-wide v6, 0x20b00000001L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1772
    .local v6, "userToken":J
    const-wide v8, 0x10500000001L

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1773
    iget-object v10, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v11, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    .line 1774
    invoke-virtual {v10, v11, v5}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 1773
    const-wide v11, 0x10500000002L

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1777
    iget-object v10, v0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1778
    .local v10, "normal":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    if-eqz v10, :cond_94

    .line 1779
    const-wide v13, 0x10b00000003L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 1780
    .local v13, "countsToken":J
    iget v15, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    invoke-virtual {v1, v8, v9, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1781
    iget v15, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1782
    iget v15, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    const-wide v11, 0x10500000003L

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1783
    iget v11, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    const-wide v8, 0x10500000004L

    invoke-virtual {v1, v8, v9, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1784
    iget v8, v10, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    const-wide v11, 0x10500000005L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1785
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1790
    .end local v13    # "countsToken":J
    :cond_94
    iget-object v8, v0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    .line 1791
    .local v8, "crypto":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    if-eqz v8, :cond_e0

    .line 1792
    const-wide v11, 0x10b00000004L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 1793
    .local v11, "countsToken":J
    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    const-wide v13, 0x10500000001L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1794
    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    const-wide v13, 0x10500000002L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1795
    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    const-wide v13, 0x10500000003L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1796
    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    const-wide v13, 0x10500000004L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1797
    iget v9, v8, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    const-wide v13, 0x10500000005L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1798
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1801
    .end local v11    # "countsToken":J
    :cond_e0
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1802
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "userId":I
    .end local v6    # "userToken":J
    .end local v8    # "crypto":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .end local v10    # "normal":Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    goto/16 :goto_19

    .line 1803
    :cond_e5
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1804
    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1805
    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1806
    return-void
.end method

.method private enumerateUser(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 487
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

    .line 488
    const-string v0, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 489
    .local v5, "restricted":Z
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/fingerprint/FingerprintService;->startEnumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V

    .line 490
    return-void
.end method

.method private getAuthPackageInternal()Ljava/lang/String;
    .registers 3

    .line 2000
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 2001
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    if-eqz v0, :cond_d

    instance-of v1, v0, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz v1, :cond_d

    .line 2002
    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2005
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method private getLockoutMode()I
    .registers 5

    .line 709
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 710
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 713
    .local v1, "failedAttempts":I
    iget-boolean v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsCustomFingerprint:Z

    if-eqz v3, :cond_11

    const/4 v3, 0x5

    goto :goto_13

    :cond_11
    const/16 v3, 0x14

    :goto_13
    if-lt v1, v3, :cond_17

    .line 715
    const/4 v2, 0x2

    return v2

    .line 716
    :cond_17
    if-lez v1, :cond_27

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 717
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_27

    rem-int/lit8 v3, v1, 0x5

    if-nez v3, :cond_27

    .line 719
    const/4 v2, 0x1

    return v2

    .line 721
    :cond_27
    return v2
.end method

.method private getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;
    .registers 5
    .param p1, "userId"    # I

    .line 735
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "lockout_reset_user"

    .line 736
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 735
    const/high16 v2, 0x8000000

    invoke-static {v0, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getUserOrWorkProfileId(Ljava/lang/String;I)I
    .registers 4
    .param p1, "clientPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1868
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->isWorkProfile(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1869
    return p2

    .line 1871
    :cond_d
    invoke-virtual {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v0

    return v0
.end method

.method private isForegroundActivity(II)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 1001
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 1002
    .local v1, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1003
    .local v2, "N":I
    move v3, v0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_29

    .line 1004
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1005
    .local v4, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_26

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p1, :cond_26

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_20} :catch_2a

    const/16 v6, 0x7d

    if-gt v5, v6, :cond_26

    .line 1007
    const/4 v0, 0x1

    return v0

    .line 1003
    .end local v4    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1012
    .end local v1    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_29
    goto :goto_32

    .line 1010
    :catch_2a
    move-exception v1

    .line 1011
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "am.getRunningAppProcesses() failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_32
    return v0
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .registers 3
    .param p1, "clientPackage"    # Ljava/lang/String;

    .line 1068
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWorkProfile(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1879
    const/4 v0, 0x0

    .line 1880
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1882
    .local v1, "token":J
    :try_start_5
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_1c

    move-object v0, v3

    .line 1884
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1885
    nop

    .line 1886
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    return v3

    .line 1884
    :catchall_1c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private listenForUserSwitches()V
    .registers 4

    .line 1891
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$13;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$13;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    const-string v2, "FingerprintService"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1901
    goto :goto_17

    .line 1899
    :catch_f
    move-exception v0

    .line 1900
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1902
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method

.method private loadAuthenticatorIds()V
    .registers 9

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 457
    .local v0, "t":J
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 458
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 459
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v4

    .line 460
    .local v4, "userId":I
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 461
    invoke-direct {p0, v4, v5}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 463
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "userId":I
    :cond_3a
    goto :goto_18

    .line 465
    :cond_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 466
    .end local v0    # "t":J
    .local v2, "t":J
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-lez v0, :cond_63

    .line 467
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadAuthenticatorIds() taking too long: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_63
    return-void
.end method

.method private notifyClientActiveCallbacks(Z)V
    .registers 7
    .param p1, "isActive"    # Z

    .line 1089
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1090
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 1092
    :try_start_9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    invoke-interface {v2, p1}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onClientActiveChanged(Z)V

    .line 1094
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    invoke-interface {v2, p1, v3}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onClientActiveChangedWithPkg(ZLjava/lang/String;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_27} :catch_28

    .line 1099
    goto :goto_32

    .line 1096
    :catch_28
    move-exception v2

    .line 1098
    .local v2, "re":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1090
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1101
    .end local v1    # "i":I
    :cond_35
    return-void
.end method

.method private notifyLockoutResetMonitors()V
    .registers 3

    .line 1083
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 1084
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->sendLockoutReset()V

    .line 1083
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1086
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V
    .registers 5
    .param p1, "client"    # Lcom/android/server/fingerprint/ClientMonitor;

    .line 692
    if-eqz p1, :cond_3d

    .line 693
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->destroy()V

    .line 694
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eq p1, v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_3d

    .line 695
    const-string v0, "FingerprintService"

    .line 696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 696
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3a

    :cond_37
    const-string/jumbo v1, "null"

    .line 695
    :goto_3a
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_3d
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_5e

    .line 700
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done with client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 703
    :cond_5e
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-nez v0, :cond_66

    .line 704
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->notifyClientActiveCallbacks(Z)V

    .line 706
    :cond_66
    return-void
.end method

.method private removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .registers 3
    .param p1, "monitor"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .line 1079
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1080
    return-void
.end method

.method private scheduleLockoutResetForUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 725
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 726
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    .line 727
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 725
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 728
    return-void
.end method

.method private setParam(I)V
    .registers 6
    .param p1, "level"    # I

    .line 1965
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getExtFingerprintDaemon()Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    move-result-object v0

    .line 1966
    .local v0, "daemon":Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    if-eqz v0, :cond_29

    .line 1968
    :try_start_6
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setParam , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    invoke-interface {v0, p1}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->setParam(I)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_20} :catch_21

    .line 1973
    goto :goto_29

    .line 1971
    :catch_21
    move-exception v1

    .line 1972
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "getStatus failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1975
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_29
    :goto_29
    return-void
.end method

.method private shouldBlockTouch(II)Z
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2010
    const/4 v0, 0x0

    .line 2012
    .local v0, "block":Z
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    .line 2013
    return v2

    .line 2015
    :cond_7
    const-string v1, "com.oneplus.applocker"

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 2016
    return v2

    .line 2019
    :cond_16
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockX:I

    if-lt p1, v1, :cond_4a

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockXEnd:I

    if-gt p1, v1, :cond_4a

    .line 2020
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockY:I

    if-lt p2, v1, :cond_4a

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBlockYEnd:I

    if-gt p1, v1, :cond_4a

    .line 2021
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_48

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Block Touch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    :cond_48
    const/4 v1, 0x1

    return v1

    .line 2025
    :cond_4a
    return v2
.end method

.method private startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .registers 33
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "callingUserId"    # I
    .param p5, "groupId"    # I
    .param p6, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p7, "flags"    # I
    .param p8, "restricted"    # Z
    .param p9, "opPackageName"    # Ljava/lang/String;
    .param p10, "bundle"    # Landroid/os/Bundle;
    .param p11, "dialogReceiver"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-object/from16 v15, p0

    move/from16 v0, p5

    move-object/from16 v14, p9

    .line 1108
    const/4 v13, 0x0

    const/16 v1, 0x3e7

    const/4 v12, 0x1

    if-ne v0, v1, :cond_e

    move v2, v12

    goto :goto_f

    :cond_e
    move v2, v13

    :goto_f
    move/from16 v16, v2

    .line 1109
    .local v16, "isDoubleAccount":Z
    if-ne v0, v1, :cond_15

    .line 1110
    iget v0, v15, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 1114
    .end local p5    # "groupId":I
    .local v11, "groupId":I
    :cond_15
    move v11, v0

    invoke-direct {v15, v11, v14}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 1116
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAuthentication("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p2

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p8

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    new-instance v17, Lcom/android/server/fingerprint/FingerprintService$10;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v15, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    iget v5, v15, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    iget-object v1, v15, Lcom/android/server/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, v17

    move-object/from16 v18, v1

    move-object v1, v15

    move/from16 v19, v5

    move-object/from16 v5, p1

    move-object/from16 v6, p6

    move/from16 v7, v19

    move v8, v11

    move/from16 v19, v11

    move/from16 v11, p8

    .end local v11    # "groupId":I
    .local v19, "groupId":I
    move-object v12, v14

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/android/server/fingerprint/FingerprintService$10;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 1188
    .local v0, "client":Lcom/android/server/fingerprint/AuthenticationClient;
    if-eqz v16, :cond_97

    .line 1189
    invoke-virtual {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->setDoubleAccount()V

    .line 1193
    :cond_97
    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v1

    .line 1194
    .local v1, "lockoutMode":I
    if-eqz v1, :cond_ce

    .line 1195
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In lockout mode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") ; disallowing authentication"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const/4 v2, 0x1

    if-ne v1, v2, :cond_bd

    .line 1198
    const/4 v2, 0x7

    goto :goto_bf

    .line 1199
    :cond_bd
    const/16 v2, 0x9

    .line 1200
    .local v2, "errorCode":I
    :goto_bf
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    move-result v3

    if-nez v3, :cond_cd

    .line 1201
    const-string v3, "FingerprintService"

    const-string v4, "Cannot send permanent lockout message to client"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_cd
    return-void

    .line 1205
    .end local v2    # "errorCode":I
    :cond_ce
    const/4 v2, 0x1

    move-object/from16 v3, p0

    invoke-direct {v3, v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 1206
    return-void
.end method

.method private startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V
    .registers 8
    .param p1, "newClient"    # Lcom/android/server/fingerprint/ClientMonitor;
    .param p2, "initiatedByClient"    # Z

    .line 776
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 777
    .local v0, "currentClient":Lcom/android/server/fingerprint/ClientMonitor;
    if-eqz v0, :cond_78

    .line 778
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

    .line 779
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-nez v1, :cond_2c

    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-eqz v1, :cond_28

    goto :goto_2c

    .line 792
    :cond_28
    invoke-virtual {v0, p2}, Lcom/android/server/fingerprint/ClientMonitor;->stop(Z)I

    goto :goto_64

    .line 784
    :cond_2c
    :goto_2c
    if-eqz p1, :cond_64

    .line 785
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal cleanup in progress but trying to start client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), initiatedByClient = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 785
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_64
    :goto_64
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 795
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 796
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_120

    .line 797
    :cond_78
    if-eqz p1, :cond_120

    .line 798
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 799
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "starting client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), initiatedByClient = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 799
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 807
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateStatus(I)I

    goto :goto_c6

    .line 809
    :cond_c2
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateStatus(I)I

    .line 812
    :goto_c6
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintConfig:Lcom/oneplus/onlineconfig/FingerprintConfig;

    if-eqz v1, :cond_dd

    .line 813
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintConfig:Lcom/oneplus/onlineconfig/FingerprintConfig;

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/onlineconfig/FingerprintConfig;->getParam(Ljava/lang/String;)I

    move-result v1

    .line 814
    .local v1, "param":I
    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentParam:I

    if-eq v2, v1, :cond_dd

    .line 815
    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentParam:I

    .line 816
    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->setParam(I)V

    .line 821
    .end local v1    # "param":I
    :cond_dd
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->notifyClientActiveCallbacks(Z)V

    .line 823
    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->start()I

    .line 828
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v1, :cond_120

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_120

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_120

    .line 829
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove pending client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 834
    :cond_120
    :goto_120
    return-void
.end method

.method private startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .registers 25
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"    # I
    .param p6, "restricted"    # Z
    .param p7, "opPackageName"    # Ljava/lang/String;

    move-object/from16 v13, p0

    .line 1211
    move/from16 v14, p3

    move-object/from16 v15, p7

    invoke-direct {v13, v14, v15}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 1213
    move v8, v14

    .line 1215
    .local v8, "groupId":I
    new-instance v16, Lcom/android/server/fingerprint/FingerprintService$11;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v13, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    iget-object v12, v13, Lcom/android/server/fingerprint/FingerprintService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, v16

    move-object v1, v13

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move v7, v14

    move-object/from16 v9, p2

    move/from16 v10, p6

    move-object v11, v15

    invoke-direct/range {v0 .. v12}, Lcom/android/server/fingerprint/FingerprintService$11;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 1228
    .local v0, "client":Lcom/android/server/fingerprint/EnrollClient;
    const/4 v1, 0x1

    invoke-direct {v13, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 1229
    return-void
.end method

.method private updateActiveGroup(ILjava/lang/String;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "clientPackage"    # Ljava/lang/String;

    .line 1816
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1818
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-eqz v0, :cond_ad

    .line 1820
    :try_start_6
    invoke-direct {p0, p2, p1}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v1

    move p1, v1

    .line 1821
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    if-eq p1, v1, :cond_8a

    .line 1822
    sget v1, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    .line 1823
    .local v1, "firstSdkInt":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_2f

    .line 1824
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "First SDK version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is invalid; must be at least VERSION_CODES.BASE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_2f
    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x45

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-nez v2, :cond_41

    .line 1832
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .local v2, "baseDir":Ljava/io/File;
    goto :goto_45

    .line 1834
    .end local v2    # "baseDir":Ljava/io/File;
    :cond_41
    invoke-static {p1}, Landroid/os/Environment;->getDataVendorDeDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 1837
    .restart local v2    # "baseDir":Ljava/io/File;
    :goto_45
    new-instance v3, Ljava/io/File;

    const-string v4, "fpdata"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1838
    .local v3, "fpDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_81

    .line 1839
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_73

    .line 1840
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot make directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    return-void

    .line 1846
    :cond_73
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_81

    .line 1847
    const-string v4, "FingerprintService"

    const-string v5, "Restorecons failed. Directory will have wrong label."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    return-void

    .line 1852
    :cond_81
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setActiveGroup(ILjava/lang/String;)I

    .line 1853
    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 1855
    .end local v1    # "firstSdkInt":I
    .end local v2    # "baseDir":Ljava/io/File;
    .end local v3    # "fpDir":Ljava/io/File;
    :cond_8a
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1856
    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getAuthenticatorId()J

    move-result-wide v3

    goto :goto_9d

    :cond_9b
    const-wide/16 v3, 0x0

    :goto_9d
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1855
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a4} :catch_a5

    .line 1859
    goto :goto_ad

    .line 1857
    :catch_a5
    move-exception v1

    .line 1858
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "Failed to setActiveGroup():"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1861
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_ad
    :goto_ad
    return-void
.end method

.method private userActivity()V
    .registers 6

    .line 676
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 677
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 678
    return-void
.end method


# virtual methods
.method checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .line 960
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

    .line 962
    return-void
.end method

.method public getAuthenticatorId(Ljava/lang/String;)J
    .registers 7
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 1909
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v0

    .line 1913
    .local v0, "userId":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-wide/16 v2, 0x0

    const/16 v4, 0x3e7

    if-ne v1, v4, :cond_28

    .line 1914
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 1917
    :cond_28
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method getEffectiveUserId(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 965
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 966
    .local v0, "um":Landroid/os/UserManager;
    if-eqz v0, :cond_14

    .line 967
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 968
    .local v1, "callingIdentity":J
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 969
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 970
    .end local v1    # "callingIdentity":J
    goto :goto_1b

    .line 971
    :cond_14
    const-string v1, "FingerprintService"

    const-string v2, "Unable to acquire UserManager"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :goto_1b
    return p1
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 931
    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_6

    .line 932
    iget p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 936
    :cond_6
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getExtFingerprintDaemon()Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    .registers 4

    monitor-enter p0

    .line 431
    :try_start_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    if-nez v0, :cond_38

    .line 432
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "mExtDaemon was null, reconnect to fingerprint"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_3c

    .line 434
    :try_start_d
    invoke-static {}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->getService()Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    :try_end_13
    .catch Ljava/util/NoSuchElementException; {:try_start_d .. :try_end_13} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14
    .catchall {:try_start_d .. :try_end_13} :catchall_3c

    goto :goto_1e

    .line 437
    :catch_14
    move-exception v0

    .line 438
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_15
    const-string v1, "FingerprintService"

    const-string v2, "Failed to get fingerpritn ext interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1f

    .line 435
    :catch_1d
    move-exception v0

    .line 439
    :goto_1e
    nop

    .line 440
    :goto_1f
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    if-nez v0, :cond_2d

    .line 441
    const-string v0, "FingerprintService"

    const-string v1, "fingerpritn ext HIDL not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_3c

    .line 442
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 445
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    invoke-interface {v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 448
    :cond_38
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mExtDaemon:Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_3c

    monitor-exit p0

    return-object v0

    .line 430
    :catchall_3c
    move-exception v0

    monitor-exit p0

    .line 430
    .end local p0    # "this":Lcom/android/server/fingerprint/FingerprintService;
    throw v0
.end method

.method public declared-synchronized getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 8

    monitor-enter p0

    .line 386
    :try_start_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    if-nez v0, :cond_99

    .line 387
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "mDaemon was null, reconnect to fingerprint"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_9d

    .line 389
    :try_start_d
    invoke-static {}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getService()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_13
    .catch Ljava/util/NoSuchElementException; {:try_start_d .. :try_end_13} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14
    .catchall {:try_start_d .. :try_end_13} :catchall_9d

    goto :goto_1e

    .line 392
    :catch_14
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_15
    const-string v1, "FingerprintService"

    const-string v2, "Failed to get biometric interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1f

    .line 390
    :catch_1d
    move-exception v0

    .line 394
    :goto_1e
    nop

    .line 395
    :goto_1f
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    .line 396
    const-string v0, "FingerprintService"

    const-string v2, "fingerprint HIDL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_9d

    .line 397
    monitor-exit p0

    return-object v1

    .line 400
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_9d

    .line 403
    :try_start_38
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    invoke-interface {v0, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_42} :catch_43
    .catchall {:try_start_38 .. :try_end_42} :catchall_9d

    .line 407
    goto :goto_4d

    .line 404
    :catch_43
    move-exception v0

    .line 405
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_44
    const-string v4, "FingerprintService"

    const-string v5, "Failed to open fingerprint HAL"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 409
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4d
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

    .line 410
    iget-wide v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7d

    .line 411
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->loadAuthenticatorIds()V

    .line 412
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 413
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->doFingerprintCleanupForUser(I)V

    goto :goto_99

    .line 415
    :cond_7d
    const-string v0, "FingerprintService"

    const-string v2, "Failed to open Fingerprint HAL!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v2, "fingerprintd_openhal_error"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 419
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    if-eqz v0, :cond_97

    .line 420
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_FP_HW_ERROR:I

    invoke-virtual {v0, v2, v3}, Landroid/os/OPDiagnoseManager;->addIssueCount(II)Z

    .line 423
    :cond_97
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 426
    :cond_99
    :goto_99
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_9b
    .catchall {:try_start_44 .. :try_end_9b} :catchall_9d

    monitor-exit p0

    return-object v0

    .line 385
    :catchall_9d
    move-exception v0

    monitor-exit p0

    .line 385
    .end local p0    # "this":Lcom/android/server/fingerprint/FingerprintService;
    throw v0
.end method

.method public getStatus()I
    .registers 5

    .line 1953
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getExtFingerprintDaemon()Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    move-result-object v0

    .line 1954
    .local v0, "daemon":Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    if-eqz v0, :cond_13

    .line 1956
    :try_start_6
    invoke-interface {v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->getStatus()I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v1

    .line 1957
    :catch_b
    move-exception v1

    .line 1958
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "getStatus failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1961
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method protected handleAcquired(JII)V
    .registers 12
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I

    .line 636
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 637
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 638
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    goto :goto_31

    .line 640
    :cond_e
    if-nez v0, :cond_31

    .line 641
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 642
    .local v1, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;>;"
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_31

    .line 644
    :try_start_1a
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    invoke-interface {v4, p3, p4, v2, v2}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onFingerprintEventCallback(IIII)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_23} :catch_24

    .line 648
    goto :goto_2e

    .line 645
    :catch_24
    move-exception v4

    .line 647
    .local v4, "re":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 642
    .end local v4    # "re":Landroid/os/RemoteException;
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 653
    .end local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;>;"
    .end local v3    # "i":I
    :cond_31
    :goto_31
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    if-eqz v1, :cond_47

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v1

    if-nez v1, :cond_47

    instance-of v1, v0, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz v1, :cond_47

    .line 656
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    .line 658
    :cond_47
    return-void
.end method

.method protected handleAuthenticated(JIILjava/util/ArrayList;)V
    .registers 10
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 603
    .local p5, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 606
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsCustomFingerprint:Z

    if-nez v1, :cond_14

    if-nez p3, :cond_14

    .line 609
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getStatus()I

    move-result v2

    if-ne v1, v2, :cond_14

    .line 610
    return-void

    .line 613
    :cond_14
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleAuthenticated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    if-eqz p3, :cond_50

    .line 617
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 618
    .local v1, "byteToken":[B
    const/4 v2, 0x0

    .line 618
    .local v2, "i":I
    :goto_34
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_49

    .line 619
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 618
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 622
    .end local v2    # "i":I
    :cond_49
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/security/KeyStore;->addAuthToken([B)I

    .line 625
    .end local v1    # "byteToken":[B
    :cond_50
    if-eqz v0, :cond_5b

    invoke-virtual {v0, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onAuthenticated(II)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 626
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 628
    :cond_5b
    iget-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    if-eqz p1, :cond_4

    .line 504
    if-eqz p3, :cond_66

    .line 629
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    goto :goto_6e

    .line 631
    :cond_66
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    .line 633
    :cond_4
    :goto_6e
    return-void
.end method

.method protected handleEnrollResult(JIII)V
    .registers 10
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 661
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 662
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    if-eqz v0, :cond_12

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onEnrollResult(III)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 663
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 666
    const/4 v1, 0x0

    invoke-direct {p0, p4, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    goto :goto_39

    .line 670
    :cond_12
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleEnrollResult when client == null, remaining = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fingerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", groupId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :goto_39
    return-void
.end method

.method protected handleEnumerate(JIII)V
    .registers 13
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 506
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerate: fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", gid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", rem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 513
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-nez v1, :cond_39

    instance-of v1, v0, Lcom/android/server/fingerprint/EnumerateClient;

    if-nez v1, :cond_39

    .line 514
    return-void

    .line 516
    :cond_39
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onEnumerationResult(III)Z

    .line 519
    if-nez p5, :cond_97

    .line 520
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-eqz v1, :cond_94

    .line 521
    move-object v1, v0

    check-cast v1, Lcom/android/server/fingerprint/InternalEnumerateClient;

    .line 522
    invoke-virtual {v1}, Lcom/android/server/fingerprint/InternalEnumerateClient;->getUnknownFingerprints()Ljava/util/List;

    move-result-object v1

    .line 524
    .local v1, "unknownFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6e

    .line 525
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " fingerprints for deletion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_6e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    .line 529
    .local v3, "f":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getTargetUserId()I

    move-result v6

    invoke-direct {v5, p0, v3, v6}, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/Fingerprint;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    .end local v3    # "f":Landroid/hardware/fingerprint/Fingerprint;
    goto :goto_72

    .line 531
    :cond_8d
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 532
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->cleanupUnknownFingerprints()V

    .line 533
    .end local v1    # "unknownFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    goto :goto_97

    .line 534
    :cond_94
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 537
    :cond_97
    :goto_97
    return-void
.end method

.method protected handleError(JII)V
    .registers 10
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 544
    const/16 v0, 0x8

    if-ne p3, v0, :cond_5

    .line 546
    return-void

    .line 550
    :cond_5
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 552
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-nez v1, :cond_f

    instance-of v1, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-eqz v1, :cond_12

    .line 553
    :cond_f
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    .line 555
    :cond_12
    if-eqz v0, :cond_1d

    invoke-virtual {v0, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 556
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 559
    :cond_1d
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleError(client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    :cond_31
    const-string/jumbo v3, "null"

    :goto_34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne p3, v1, :cond_80

    .line 563
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 564
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v1, :cond_9a

    .line 565
    const-string v1, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start pending client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v4}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 567
    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    goto :goto_9a

    .line 569
    :cond_80
    const/4 v1, 0x1

    if-ne p3, v1, :cond_9a

    .line 571
    const-string v1, "FingerprintService"

    const-string v3, "Got ERROR_HW_UNAVAILABLE; try reconnecting next client."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    monitor-enter p0

    .line 573
    :try_start_8b
    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 574
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 575
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 576
    monitor-exit p0

    goto :goto_9a

    :catchall_97
    move-exception v1

    monitor-exit p0
    :try_end_99
    .catchall {:try_start_8b .. :try_end_99} :catchall_97

    throw v1

    .line 578
    :cond_9a
    :goto_9a
    return-void
.end method

.method protected handleRemoved(JIII)V
    .registers 9
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .line 581
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

    const-string v2, ", rem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    .line 587
    .local v0, "client":Lcom/android/server/fingerprint/ClientMonitor;
    if-eqz v0, :cond_45

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onRemoved(III)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 588
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 590
    invoke-virtual {p0, p4}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-nez v1, :cond_45

    .line 591
    const/4 v1, 0x0

    invoke-direct {p0, p4, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 594
    :cond_45
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_55

    .line 595
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->cleanupUnknownFingerprints()V

    goto :goto_5c

    .line 596
    :cond_55
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-eqz v1, :cond_5c

    .line 597
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    .line 599
    :cond_5c
    :goto_5c
    return-void
.end method

.method handleUserSwitching(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 681
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v0, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v0, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-eqz v0, :cond_1b

    .line 683
    :cond_c
    const-string v0, "FingerprintService"

    const-string v1, "User switched while performing cleanup"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    .line 685
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->clearEnumerateState()V

    .line 687
    :cond_1b
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 688
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->doFingerprintCleanupForUser(I)V

    .line 689
    return-void
.end method

.method public hasEnrolledFingerprints(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 940
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_b

    .line 941
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 946
    :cond_b
    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_11

    .line 947
    iget p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 950
    :cond_11
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hasEnrolledFingerprints: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4c

    const/4 v0, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    return v0
.end method

.method hasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 955
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isCurrentUserOrProfile(I)Z
    .registers 10
    .param p1, "userId"    # I

    .line 977
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 978
    .local v0, "um":Landroid/os/UserManager;
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 979
    const-string v2, "FingerprintService"

    const-string v3, "Unable to acquire UserManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    return v1

    .line 983
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 986
    .local v2, "token":J
    :try_start_15
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1f
    if-ge v6, v5, :cond_2e

    aget v7, v4, v6
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_33

    .line 987
    .local v7, "profileId":I
    if-ne v7, p1, :cond_2b

    .line 988
    nop

    .line 992
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 988
    const/4 v1, 0x1

    return v1

    .line 986
    .end local v7    # "profileId":I
    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 992
    :cond_2e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 993
    nop

    .line 995
    return v1

    .line 992
    :catchall_33
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public onStart()V
    .registers 4

    .line 1810
    const-string v0, "fingerprint"

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1811
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$l42rkDmfSgEoarEM7da3vinr3Iw;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$l42rkDmfSgEoarEM7da3vinr3Iw;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    const-string v2, "FingerprintService.onStart"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1812
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->listenForUserSwitches()V

    .line 1813
    return-void
.end method

.method protected resetFailedAttemptsForUser(ZI)V
    .registers 6
    .param p1, "clearAttemptCounter"    # Z
    .param p2, "userId"    # I

    .line 1234
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 1235
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset fingerprint lockout, clearAttemptCounter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_1c
    if-eqz p1, :cond_24

    .line 1238
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1240
    :cond_24
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1243
    invoke-direct {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->cancelLockoutResetForUser(I)V

    .line 1244
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->notifyLockoutResetMonitors()V

    .line 1245
    return-void
.end method

.method public serviceDied(J)V
    .registers 7
    .param p1, "cookie"    # J

    .line 372
    const-string v0, "FingerprintService"

    const-string v1, "fingerprint HAL died"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v1, "fingerprintd_died"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 376
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    if-eqz v0, :cond_1a

    .line 377
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_FP_DIE:I

    invoke-virtual {v0, v1, v2}, Landroid/os/OPDiagnoseManager;->addIssueCount(II)Z

    .line 381
    :cond_1a
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JII)V

    .line 383
    return-void
.end method

.method startEnumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V
    .registers 25
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "restricted"    # Z
    .param p5, "internal"    # Z

    move-object/from16 v12, p0

    .line 888
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v13

    .line 889
    .local v13, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v13, :cond_11

    .line 890
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startEnumerate: no fingerprint HAL!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    return-void

    .line 893
    :cond_11
    const/4 v14, 0x1

    if-eqz p5, :cond_3e

    .line 894
    move/from16 v11, p2

    invoke-virtual {v12, v11}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v15

    .line 895
    .local v15, "enrolledList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 896
    .local v10, "context":Landroid/content/Context;
    new-instance v16, Lcom/android/server/fingerprint/FingerprintService$8;

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 897
    invoke-virtual {v10}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object v1, v12

    move-object v2, v10

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move v7, v11

    move v8, v11

    move/from16 v9, p4

    move-object/from16 v18, v10

    move-object/from16 v10, v17

    .end local v10    # "context":Landroid/content/Context;
    .local v18, "context":Landroid/content/Context;
    move-object v11, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/FingerprintService$8;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Ljava/util/List;)V

    .line 909
    .local v0, "client":Lcom/android/server/fingerprint/InternalEnumerateClient;
    invoke-direct {v12, v0, v14}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 910
    .end local v0    # "client":Lcom/android/server/fingerprint/InternalEnumerateClient;
    .end local v15    # "enrolledList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v18    # "context":Landroid/content/Context;
    goto :goto_5c

    .line 912
    :cond_3e
    new-instance v11, Lcom/android/server/fingerprint/FingerprintService$9;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 913
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v11

    move-object v1, v12

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move/from16 v7, p2

    move/from16 v8, p2

    move/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/fingerprint/FingerprintService$9;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 924
    .local v0, "client":Lcom/android/server/fingerprint/EnumerateClient;
    invoke-direct {v12, v0, v14}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 926
    .end local v0    # "client":Lcom/android/server/fingerprint/EnumerateClient;
    :goto_5c
    return-void
.end method

.method public startPostEnroll(Landroid/os/IBinder;)I
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 755
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 756
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 757
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startPostEnroll: no fingerprint HAL!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    return v1

    .line 761
    :cond_10
    :try_start_10
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->postEnroll()I

    move-result v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_15

    return v2

    .line 762
    :catch_15
    move-exception v2

    .line 763
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "startPostEnroll failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public startPreEnroll(Landroid/os/IBinder;)J
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .line 741
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 742
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_11

    .line 743
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "startPreEnroll: no fingerprint HAL!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    return-wide v1

    .line 747
    :cond_11
    :try_start_11
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->preEnroll()J

    move-result-wide v3
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_16

    return-wide v3

    .line 748
    :catch_16
    move-exception v3

    .line 749
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "startPreEnroll failed"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    .end local v3    # "e":Landroid/os/RemoteException;
    return-wide v1
.end method

.method startRemove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V
    .registers 26
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "groupId"    # I
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "restricted"    # Z
    .param p7, "internal"    # Z

    move-object/from16 v12, p0

    .line 838
    if-nez p1, :cond_d

    .line 839
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startRemove: token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    return-void

    .line 842
    :cond_d
    if-nez p5, :cond_18

    .line 843
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startRemove: receiver is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    return-void

    .line 847
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v13

    .line 848
    .local v13, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v13, :cond_27

    .line 849
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startRemove: no fingerprint HAL!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return-void

    .line 853
    :cond_27
    const/4 v11, 0x1

    if-eqz p7, :cond_52

    .line 854
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 855
    .local v10, "context":Landroid/content/Context;
    new-instance v14, Lcom/android/server/fingerprint/FingerprintService$6;

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 857
    invoke-virtual {v10}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    move-object v0, v14

    move-object v1, v12

    move-object v2, v10

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v16, v10

    move/from16 v10, p6

    .end local v10    # "context":Landroid/content/Context;
    .local v16, "context":Landroid/content/Context;
    move-object/from16 v17, v13

    move v13, v11

    move-object v11, v15

    .line 857
    .end local v13    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .local v17, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/FingerprintService$6;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V

    .line 867
    .local v0, "client":Lcom/android/server/fingerprint/InternalRemovalClient;
    invoke-direct {v12, v0, v13}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 868
    .end local v0    # "client":Lcom/android/server/fingerprint/InternalRemovalClient;
    .end local v16    # "context":Landroid/content/Context;
    goto :goto_75

    .line 870
    .end local v17    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .restart local v13    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :cond_52
    move-object/from16 v17, v13

    move v13, v11

    .line 870
    .end local v13    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .restart local v17    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    new-instance v14, Lcom/android/server/fingerprint/FingerprintService$7;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v12, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 871
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

    .line 882
    .local v0, "client":Lcom/android/server/fingerprint/RemovalClient;
    invoke-direct {v12, v0, v13}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 884
    .end local v0    # "client":Lcom/android/server/fingerprint/RemovalClient;
    :goto_75
    return-void
.end method

.method public updateStatus(I)I
    .registers 6
    .param p1, "status"    # I

    .line 1925
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v0, v0, Lcom/android/server/fingerprint/EnrollClient;

    if-eqz v0, :cond_24

    .line 1926
    const/16 v0, 0x9

    if-ne p1, v0, :cond_12

    .line 1927
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    check-cast v0, Lcom/android/server/fingerprint/EnrollClient;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/EnrollClient;->suspend()V

    goto :goto_24

    .line 1928
    :cond_12
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1e

    .line 1929
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    check-cast v0, Lcom/android/server/fingerprint/EnrollClient;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/EnrollClient;->resume()V

    goto :goto_24

    .line 1930
    :cond_1e
    const/16 v0, 0xa

    if-ne p1, v0, :cond_24

    .line 1932
    const/16 p1, 0x8

    .line 1938
    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getExtFingerprintDaemon()Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    move-result-object v0

    .line 1939
    .local v0, "daemon":Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    if-eqz v0, :cond_4f

    .line 1941
    :try_start_2a
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateStatus , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    invoke-interface {v0, p1}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->updateStatus(I)I

    move-result v1
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_45} :catch_46

    return v1

    .line 1944
    :catch_46
    move-exception v1

    .line 1945
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "updateStatus failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1948
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4f
    const/4 v1, 0x0

    return v1
.end method
