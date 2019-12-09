.class public Lcom/android/server/usage/AppStandbyController;
.super Ljava/lang/Object;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppStandbyController$SettingsObserver;,
        Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;,
        Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;,
        Lcom/android/server/usage/AppStandbyController$Injector;,
        Lcom/android/server/usage/AppStandbyController$PackageReceiver;,
        Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;,
        Lcom/android/server/usage/AppStandbyController$Lock;
    }
.end annotation


# static fields
.field static final COMPRESS_TIME:Z = false

.field static final DEBUG:Z = false

.field private static final DEFAULT_PREDICTION_TIMEOUT:J = 0x2932e00L

.field static final ELAPSED_TIME_THRESHOLDS:[J

.field static final MSG_CHECK_IDLE_STATES:I = 0x5

.field static final MSG_CHECK_PACKAGE_IDLE_STATE:I = 0xb

.field static final MSG_CHECK_PAROLE_TIMEOUT:I = 0x6

.field static final MSG_FORCE_IDLE_STATE:I = 0x4

.field static final MSG_INFORM_LISTENERS:I = 0x3

.field static final MSG_ONE_TIME_CHECK_IDLE_STATES:I = 0xa

.field static final MSG_PAROLE_END_TIMEOUT:I = 0x7

.field static final MSG_PAROLE_STATE_CHANGED:I = 0x9

.field static final MSG_REPORT_CONTENT_PROVIDER_USAGE:I = 0x8

.field static final MSG_REPORT_EXEMPTED_SYNC_SCHEDULED:I = 0xc

.field static final MSG_REPORT_EXEMPTED_SYNC_START:I = 0xd

.field static final MSG_UPDATE_STABLE_CHARGING:I = 0xe

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final ONE_MINUTE:J = 0xea60L

.field static final SCREEN_TIME_THRESHOLDS:[J

.field private static final TAG:Ljava/lang/String; = "AppStandbyController"

.field static final THRESHOLD_BUCKETS:[I

.field private static final WAIT_FOR_ADMIN_DATA_TIMEOUT_MS:J = 0x2710L

.field static final sStandbyUpdatePool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveAdminApps:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mActiveAdminApps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

.field volatile mAppIdleEnabled:Z

.field private mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppIdleLock"
    .end annotation
.end field

.field private final mAppIdleLock:Ljava/lang/Object;

.field mAppIdleParoleDurationMillis:J

.field mAppIdleParoleIntervalMillis:J

.field mAppIdleParoleWindowMillis:J

.field mAppIdleTempParoled:Z

.field mAppStandbyElapsedThresholds:[J

.field mAppStandbyScreenThresholds:[J

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mCarrierPrivilegedApps:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppIdleLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCharging:Z

.field mChargingStable:Z

.field mCheckIdleIntervalMillis:J

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceStateReceiver:Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field mExemptedSyncScheduledDozeTimeoutMillis:J

.field mExemptedSyncScheduledNonDozeTimeoutMillis:J

.field mExemptedSyncStartTimeoutMillis:J

.field private final mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

.field private mHaveCarrierPrivilegedApps:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppIdleLock"
    .end annotation
.end field

.field mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

.field private mLastAppIdleParoledTime:J

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field mNotificationSeenTimeoutMillis:J

.field private mPackageAccessListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPackageAccessListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingInitializeDefaults:Z

.field private volatile mPendingOneTimeCheckIdleStates:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field mPredictionTimeoutMillis:J

.field mStableChargingThresholdMillis:J

.field mStrongUsageTimeoutMillis:J

.field mSyncAdapterTimeoutMillis:J

.field mSystemInteractionTimeoutMillis:J

.field private mSystemServicesReady:Z

.field mSystemUpdateUsageTimeoutMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 133
    const/4 v0, 0x4

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->SCREEN_TIME_THRESHOLDS:[J

    .line 140
    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->ELAPSED_TIME_THRESHOLDS:[J

    .line 147
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x36ee80
        0x6ddd00
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x2932e00
        0x5265c00
        0xa4cb800
    .end array-data

    :array_2
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 313
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-direct {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/android/server/usage/AppStandbyController;-><init>(Lcom/android/server/usage/AppStandbyController$Injector;)V

    .line 314
    return-void
.end method

.method constructor <init>(Lcom/android/server/usage/AppStandbyController$Injector;)V
    .locals 11

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Lock;

    invoke-direct {v0}, Lcom/android/server/usage/AppStandbyController$Lock;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 184
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 187
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 208
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->SCREEN_TIME_THRESHOLDS:[J

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 209
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->ELAPSED_TIME_THRESHOLDS:[J

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 1709
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 1711
    new-instance v0, Lcom/android/server/usage/AppStandbyController$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/AppStandbyController$1;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1720
    new-instance v0, Lcom/android/server/usage/AppStandbyController$2;

    invoke-direct {v0, p0}, Lcom/android/server/usage/AppStandbyController$2;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 317
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 318
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 319
    new-instance p1, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 320
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 321
    new-instance p1, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$1;)V

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mDeviceStateReceiver:Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

    .line 323
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.CHARGING"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 324
    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mDeviceStateReceiver:Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p1

    .line 329
    :try_start_0
    new-instance v1, Lcom/android/server/usage/AppIdleHistory;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 330
    invoke-virtual {v3}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;-><init>(Ljava/io/File;J)V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 331
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 334
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    const-string/jumbo p1, "package"

    invoke-virtual {v8, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 339
    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/usage/AppStandbyController$PackageReceiver;

    invoke-direct {v6, p0, v0}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$1;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 341
    return-void

    .line 331
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$200(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->waitForAdminData()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIJ)V
    .locals 0

    .line 123
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usage/AppStandbyController;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppIdleHistory;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 619
    move-wide/from16 v10, p4

    if-gtz p3, :cond_0

    .line 621
    :try_start_0
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    .line 625
    return-void

    .line 628
    :cond_0
    move/from16 v1, p3

    .line 629
    :goto_0
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 628
    invoke-virtual {v0, v8, v1, v9}, Lcom/android/server/usage/AppStandbyController;->isAppSpecial(Ljava/lang/String;II)Z

    move-result v1

    .line 635
    if-eqz v1, :cond_1

    .line 636
    iget-object v12, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v12

    .line 637
    :try_start_1
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/4 v6, 0x5

    const/16 v7, 0x100

    move-object v2, v8

    move v3, v9

    move-wide v4, v10

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    .line 639
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    const/4 v6, 0x5

    const/16 v7, 0x100

    const/4 v12, 0x0

    move-object v1, v0

    move-object v2, v8

    move v3, v9

    move-wide v4, v10

    move v8, v12

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    goto/16 :goto_4

    .line 639
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 643
    :cond_1
    iget-object v12, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v12

    .line 644
    :try_start_3
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 645
    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    .line 647
    iget v2, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 648
    const v3, 0xff00

    and-int/2addr v3, v2

    .line 652
    const/16 v4, 0x400

    if-ne v3, v4, :cond_2

    .line 653
    monitor-exit v12

    return-void

    .line 655
    :cond_2
    iget v4, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 656
    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 657
    invoke-direct {v0, v1, v10, v11}, Lcom/android/server/usage/AppStandbyController;->predictionTimedOut(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)Z

    move-result v7

    .line 659
    const/16 v13, 0x100

    const/16 v14, 0x200

    if-eq v3, v13, :cond_3

    const/16 v13, 0x300

    if-eq v3, v13, :cond_3

    if-eq v3, v14, :cond_3

    if-eqz v7, :cond_5

    .line 664
    :cond_3
    if-nez v7, :cond_4

    iget v2, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    if-lt v2, v5, :cond_4

    iget v2, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    const/16 v3, 0x28

    if-gt v2, v3, :cond_4

    .line 666
    iget v6, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    .line 667
    const/16 v2, 0x501

    goto :goto_1

    .line 672
    :cond_4
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/android/server/usage/AppStandbyController;->getBucketForLocked(Ljava/lang/String;IJ)I

    move-result v6

    .line 677
    nop

    .line 682
    move v2, v14

    :cond_5
    :goto_1
    iget-object v3, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v13

    .line 683
    if-lt v6, v5, :cond_6

    move v15, v4

    iget-wide v3, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    cmp-long v3, v3, v13

    if-lez v3, :cond_7

    .line 685
    nop

    .line 686
    iget v1, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 705
    move v14, v1

    move v13, v5

    move v4, v15

    goto :goto_3

    .line 690
    :cond_6
    move v15, v4

    :cond_7
    const/16 v3, 0x14

    if-lt v6, v3, :cond_9

    iget-wide v4, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    cmp-long v4, v4, v13

    if-lez v4, :cond_9

    .line 692
    nop

    .line 694
    move v4, v15

    if-ne v3, v4, :cond_8

    .line 695
    iget v1, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_2

    .line 696
    :cond_8
    const/16 v1, 0x307

    .line 705
    :goto_2
    move v14, v1

    move v13, v3

    goto :goto_3

    :cond_9
    move v4, v15

    move v14, v2

    move v13, v6

    :goto_3
    if-lt v4, v13, :cond_a

    if-eqz v7, :cond_b

    .line 706
    :cond_a
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v2, v8

    move v3, v9

    move-wide v4, v10

    move v6, v13

    move v7, v14

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    .line 708
    const/4 v15, 0x0

    move-object v1, v0

    move-object v2, v8

    move v3, v9

    move-wide v4, v10

    move v6, v13

    move v7, v14

    move v8, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 711
    :cond_b
    monitor-exit v12

    .line 713
    :goto_4
    return-void

    .line 711
    :catchall_1
    move-exception v0

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private fetchCarrierPrivilegedAppsLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppIdleLock"
    .end annotation

    .line 1308
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 1309
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1310
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPackagesWithCarrierPrivileges()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 1311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    .line 1315
    return-void
.end method

.method private isActiveNetworkScorer(Ljava/lang/String;)Z
    .locals 1

    .line 1318
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getActiveNetworkScorer()Ljava/lang/String;

    move-result-object v0

    .line 1319
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isAppIdleUnfiltered(Ljava/lang/String;IJ)Z
    .locals 2

    .line 964
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 965
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 966
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private isCarrierApp(Ljava/lang/String;)Z
    .locals 2

    .line 1285
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1286
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    if-nez v1, :cond_0

    .line 1287
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->fetchCarrierPrivilegedAppsLocked()V

    .line 1289
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1290
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1292
    :cond_1
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 1293
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private isDeviceProvisioningPackage(Ljava/lang/String;)Z
    .locals 2

    .line 1279
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040195

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1281
    if-eqz v0, :cond_0

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

.method private maybeInformListeners(Ljava/lang/String;IJIIZ)V
    .locals 7

    .line 725
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 726
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->shouldInformListeners(Ljava/lang/String;IJI)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 728
    invoke-static {p1, p2, p5, p6, p7}, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->obtain(Ljava/lang/String;IIIZ)Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    move-result-object p1

    .line 731
    iget-object p2, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 p4, 0x3

    invoke-virtual {p3, p4, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 733
    :cond_0
    monitor-exit v0

    .line 734
    return-void

    .line 733
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private notifyBatteryStats(Ljava/lang/String;IZ)V
    .locals 2

    .line 800
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p2

    .line 802
    if-eqz p3, :cond_0

    .line 803
    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 v0, 0xf

    invoke-virtual {p3, v0, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->noteEvent(ILjava/lang/String;I)V

    goto :goto_0

    .line 806
    :cond_0
    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 v0, 0x10

    invoke-virtual {p3, v0, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->noteEvent(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :goto_0
    goto :goto_1

    .line 809
    :catch_0
    move-exception p1

    .line 811
    :goto_1
    return-void
.end method

.method private postNextParoleTimeout(JZ)V
    .locals 6

    .line 523
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 527
    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    iget-wide v4, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    add-long/2addr v2, v4

    sub-long/2addr v2, p1

    .line 528
    if-eqz p3, :cond_0

    .line 531
    iget-wide p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleWindowMillis:J

    add-long/2addr v2, p1

    .line 533
    :cond_0
    const-wide/16 p1, 0x0

    cmp-long p3, v2, p1

    if-gez p3, :cond_1

    .line 534
    goto :goto_0

    .line 536
    :cond_1
    move-wide p1, v2

    :goto_0
    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p3, v1, p1, p2}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 537
    return-void
.end method

.method private postParoleEndTimeout()V
    .locals 4

    .line 541
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 542
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleDurationMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 543
    return-void
.end method

.method private postParoleStateChanged()V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 548
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessage(I)Z

    .line 549
    return-void
.end method

.method private predictionTimedOut(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)Z
    .locals 4

    .line 717
    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 718
    invoke-virtual {v0, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p2

    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    sub-long/2addr p2, v0

    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 717
    :goto_0
    return p1
.end method

.method private usageEventToSubReason(I)I
    .locals 0

    .line 896
    sparse-switch p1, :sswitch_data_0

    .line 904
    const/4 p1, 0x0

    return p1

    .line 902
    :sswitch_0
    const/16 p1, 0x9

    return p1

    .line 903
    :sswitch_1
    const/16 p1, 0xa

    return p1

    .line 901
    :sswitch_2
    const/4 p1, 0x2

    return p1

    .line 900
    :sswitch_3
    const/4 p1, 0x3

    return p1

    .line 899
    :sswitch_4
    const/4 p1, 0x1

    return p1

    .line 898
    :sswitch_5
    const/4 p1, 0x5

    return p1

    .line 897
    :sswitch_6
    const/4 p1, 0x4

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x6 -> :sswitch_4
        0x7 -> :sswitch_3
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private waitForAdminData()V
    .locals 4

    .line 1262
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2710

    const-string v3, "Wait for admin data"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    .line 1266
    :cond_0
    return-void
.end method


# virtual methods
.method public addActiveDeviceAdmin(Ljava/lang/String;I)V
    .locals 3

    .line 1234
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1235
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1236
    if-nez v1, :cond_0

    .line 1237
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1238
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1240
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1241
    monitor-exit v0

    .line 1242
    return-void

    .line 1241
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .locals 2

    .line 970
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 971
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 972
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    :cond_0
    monitor-exit v0

    .line 975
    return-void

    .line 974
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method checkIdleStates(I)Z
    .locals 18

    move-object/from16 v0, p0

    .line 574
    move/from16 v7, p1

    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v8, 0x0

    if-nez v1, :cond_0

    .line 575
    return v8

    .line 580
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getRunningUserIds()[I

    move-result-object v9

    .line 581
    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    .line 582
    invoke-static {v9, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    .line 583
    return v8

    .line 587
    :cond_1
    nop

    .line 589
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v11

    .line 590
    move v13, v8

    :goto_0
    array-length v1, v9

    if-ge v13, v1, :cond_4

    .line 591
    aget v14, v9, v13

    .line 592
    if-eq v7, v10, :cond_2

    if-eq v7, v14, :cond_2

    .line 593
    goto :goto_2

    .line 598
    :cond_2
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v1, v2, v14}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v15

    .line 601
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    .line 602
    move v6, v8

    :goto_1
    if-ge v6, v5, :cond_3

    .line 603
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 604
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 605
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v1, v0

    move v3, v14

    move/from16 v16, v5

    move/from16 v17, v6

    move-wide v5, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V

    .line 602
    add-int/lit8 v6, v17, 0x1

    move/from16 v5, v16

    goto :goto_1

    .line 590
    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 613
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method checkParoleTimeout()V
    .locals 12

    .line 757
    nop

    .line 758
    nop

    .line 759
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 760
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    move v0, v2

    goto :goto_0

    .line 761
    :cond_0
    nop

    .line 763
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v3

    .line 764
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v4}, Lcom/android/server/usage/AppStandbyController$Injector;->currentTimeMillis()J

    move-result-wide v4

    .line 765
    iget-boolean v6, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    if-nez v6, :cond_4

    .line 766
    iget-wide v6, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    sub-long v6, v4, v6

    .line 767
    iget-wide v8, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_3

    .line 769
    if-eqz v0, :cond_1

    .line 771
    nop

    .line 788
    :goto_1
    move v0, v2

    goto :goto_2

    .line 773
    :cond_1
    iget-wide v8, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    iget-wide v10, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleWindowMillis:J

    add-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    .line 776
    goto :goto_1

    .line 779
    :cond_2
    nop

    .line 780
    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/usage/AppStandbyController;->postNextParoleTimeout(JZ)V

    .line 788
    move v0, v1

    move v1, v2

    goto :goto_2

    .line 785
    :cond_3
    invoke-direct {p0, v4, v5, v1}, Lcom/android/server/usage/AppStandbyController;->postNextParoleTimeout(JZ)V

    .line 788
    :cond_4
    move v0, v1

    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    if-eqz v1, :cond_5

    .line 790
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 792
    :cond_5
    if-eqz v0, :cond_6

    .line 794
    invoke-virtual {p0, v2}, Lcom/android/server/usage/AppStandbyController;->setAppIdleParoled(Z)V

    .line 796
    :cond_6
    return-void

    .line 788
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method clearAppIdleForPackage(Ljava/lang/String;I)V
    .locals 2

    .line 1363
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1364
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->clearUsage(Ljava/lang/String;I)V

    .line 1365
    monitor-exit v0

    .line 1366
    return-void

    .line 1365
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method clearCarrierPrivilegedApps()V
    .locals 2

    .line 1300
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1301
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    .line 1302
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 1303
    monitor-exit v0

    .line 1304
    return-void

    .line 1303
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    .line 1439
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1440
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Carrier privileged apps (have="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1442
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1444
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1445
    const-string p1, "Settings:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1447
    const-string p1, "  mCheckIdleIntervalMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1448
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1449
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1451
    const-string p1, "  mAppIdleParoleIntervalMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1452
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1453
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1455
    const-string p1, "  mAppIdleParoleWindowMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1456
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleWindowMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1457
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1459
    const-string p1, "  mAppIdleParoleDurationMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1460
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleDurationMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1461
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1463
    const-string p1, "  mExemptedSyncScheduledNonDozeTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1464
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1465
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1466
    const-string p1, "  mExemptedSyncScheduledDozeTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1467
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1468
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1469
    const-string p1, "  mExemptedSyncStartTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1470
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1471
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1473
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1474
    const-string p1, "mAppIdleEnabled="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1475
    const-string p1, " mAppIdleTempParoled="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1476
    const-string p1, " mCharging="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1477
    const-string p1, " mChargingStable="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mChargingStable:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1478
    const-string p1, " mLastAppIdleParoledTime="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1479
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1480
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1481
    const-string p1, "mScreenThresholds="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1482
    const-string p1, "mElapsedThresholds="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1483
    const-string p1, "mStableChargingThresholdMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1484
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mStableChargingThresholdMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1485
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1486
    return-void

    .line 1442
    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method dumpUser(Lcom/android/internal/util/IndentingPrintWriter;ILjava/lang/String;)V
    .locals 2

    .line 1433
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1434
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;ILjava/lang/String;)V

    .line 1435
    monitor-exit v0

    .line 1436
    return-void

    .line 1435
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method flushDurationsToDisk()V
    .locals 2

    .line 1353
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1354
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleDurations()V

    .line 1355
    monitor-exit v0

    .line 1356
    return-void

    .line 1355
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method flushToDisk(I)V
    .locals 2

    .line 1345
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1346
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(I)V

    .line 1347
    monitor-exit v0

    .line 1348
    return-void

    .line 1347
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method forceIdleState(Ljava/lang/String;IZ)V
    .locals 11

    .line 917
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 919
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v0

    .line 920
    if-gez v0, :cond_1

    return-void

    .line 921
    :cond_1
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v8

    .line 923
    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, p2

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v10

    .line 926
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 927
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setIdle(Ljava/lang/String;IZJ)I

    move-result v7

    .line 928
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move v4, p2

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    .line 932
    if-eq v10, v0, :cond_2

    .line 933
    const/16 v1, 0x400

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, v8

    move v8, v1

    move v9, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 935
    if-nez v0, :cond_2

    .line 936
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    .line 939
    :cond_2
    return-void

    .line 928
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method getActiveAdminAppsForTest(I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1269
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1270
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    monitor-exit v0

    return-object p1

    .line 1271
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getAppId(Ljava/lang/String;)I
    .locals 2

    .line 985
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x400200

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 988
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 989
    :catch_0
    move-exception p1

    .line 990
    const/4 p1, -0x1

    return p1
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJZ)I
    .locals 1

    .line 1148
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1149
    invoke-virtual {p5, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    .line 1153
    :cond_0
    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p5

    .line 1154
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result p1

    monitor-exit p5

    return p1

    .line 1155
    :catchall_0
    move-exception p1

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1150
    :cond_1
    :goto_0
    const/16 p1, 0xa

    return p1
.end method

.method public getAppStandbyBuckets(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation

    .line 1159
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1160
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBuckets(IZ)Ljava/util/ArrayList;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1161
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getBucketForLocked(Ljava/lang/String;IJ)I
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppIdleLock"
    .end annotation

    .line 746
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/AppIdleHistory;->getThresholdIndex(Ljava/lang/String;IJ[J[J)I

    move-result p1

    .line 748
    sget-object p2, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    aget p1, p2, p1

    return p1
.end method

.method getIdleUidsForUser(I)[I
    .locals 14

    .line 1076
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1077
    new-array p1, v1, [I

    return-object p1

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v8

    .line 1084
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1085
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1086
    if-nez v0, :cond_1

    .line 1087
    new-array p1, v1, [I

    return-object p1

    .line 1089
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    nop

    .line 1096
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    .line 1100
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x1

    sub-int/2addr v2, v11

    move v12, v2

    :goto_0
    if-ltz v12, :cond_5

    .line 1101
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/content/pm/ApplicationInfo;

    .line 1104
    iget-object v3, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    move-object v2, p0

    move v5, p1

    move-wide v6, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v2

    .line 1107
    iget v3, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 1108
    const/high16 v4, 0x10000

    if-gez v3, :cond_3

    .line 1109
    iget v3, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    add-int/2addr v4, v11

    invoke-virtual {v10, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    .line 1111
    :cond_3
    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 1112
    add-int/2addr v5, v11

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    add-int/2addr v5, v4

    invoke-virtual {v10, v3, v5}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 1100
    :goto_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 1118
    :cond_5
    nop

    .line 1119
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    sub-int/2addr p1, v11

    move v0, v1

    :goto_4
    if-ltz p1, :cond_7

    .line 1120
    invoke-virtual {v10, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 1121
    and-int/lit16 v3, v2, 0x7fff

    shr-int/lit8 v2, v2, 0x10

    if-ne v3, v2, :cond_6

    .line 1122
    add-int/lit8 v0, v0, 0x1

    .line 1119
    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 1126
    :cond_7
    new-array p1, v0, [I

    .line 1127
    nop

    .line 1128
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    sub-int/2addr v0, v11

    :goto_5
    if-ltz v0, :cond_9

    .line 1129
    invoke-virtual {v10, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 1130
    and-int/lit16 v3, v2, 0x7fff

    shr-int/lit8 v2, v2, 0x10

    if-ne v3, v2, :cond_8

    .line 1131
    invoke-virtual {v10, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    aput v2, p1, v1

    .line 1132
    add-int/lit8 v1, v1, 0x1

    .line 1128
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 1136
    :cond_9
    return-object p1

    .line 1090
    :catch_0
    move-exception p1

    .line 1091
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;I)J
    .locals 4

    .line 948
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v0

    .line 949
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 950
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3, p1, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getTimeSinceLastJobRun(Ljava/lang/String;IJ)J

    move-result-wide p1

    monitor-exit v2

    return-wide p1

    .line 951
    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method informListeners(Ljava/lang/String;IIIZ)V
    .locals 10

    .line 1324
    const/16 v0, 0x28

    if-lt p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1325
    :goto_0
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1326
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 1327
    move-object v1, v9

    move-object v2, p1

    move v3, p2

    move v4, v0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onAppIdleStateChanged(Ljava/lang/String;IZII)V

    .line 1328
    if-eqz p5, :cond_1

    .line 1329
    invoke-virtual {v9, p1, p2}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onUserInteractionStarted(Ljava/lang/String;I)V

    .line 1331
    :cond_1
    goto :goto_1

    .line 1332
    :cond_2
    monitor-exit v7

    .line 1333
    return-void

    .line 1332
    :catchall_0
    move-exception p1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method informParoleStateChanged()V
    .locals 4

    .line 1336
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isParoledOrCharging()Z

    move-result v0

    .line 1337
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1338
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 1339
    invoke-virtual {v3, v0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    .line 1340
    goto :goto_0

    .line 1341
    :cond_0
    monitor-exit v1

    .line 1342
    return-void

    .line 1341
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method initializeDefaultsForSystemApps(I)V
    .locals 19

    move-object/from16 v0, p0

    .line 1386
    move/from16 v10, p1

    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-nez v1, :cond_0

    .line 1388
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    .line 1389
    return-void

    .line 1391
    :cond_0
    const-string v1, "AppStandbyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing defaults for system apps on user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", appIdleEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v11

    .line 1394
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v1, v2, v10}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v13

    .line 1397
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 1398
    iget-object v15, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1399
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v14, :cond_2

    .line 1400
    :try_start_0
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1401
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1402
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1405
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v4, 0xa

    const/4 v5, 0x6

    iget-wide v6, v0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    add-long v17, v11, v6

    move v3, v10

    const-wide/16 v6, 0x0

    move/from16 v16, v8

    move-wide/from16 v8, v17

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    goto :goto_1

    .line 1399
    :cond_1
    move/from16 v16, v8

    :goto_1
    add-int/lit8 v8, v16, 0x1

    goto :goto_0

    .line 1410
    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    monitor-exit v15

    .line 1411
    return-void

    .line 1410
    :goto_2
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isActiveDeviceAdmin(Ljava/lang/String;I)Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1227
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1228
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 1229
    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    .line 1230
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method isAppIdleFiltered(Ljava/lang/String;IIJ)Z
    .locals 0

    .line 1068
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->isAppSpecial(Ljava/lang/String;II)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1069
    const/4 p1, 0x0

    return p1

    .line 1071
    :cond_0
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleUnfiltered(Ljava/lang/String;IJ)Z

    move-result p1

    return p1
.end method

.method isAppIdleFilteredOrParoled(Ljava/lang/String;IJZ)Z
    .locals 8

    .line 996
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isParoledOrCharging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 997
    return v1

    .line 999
    :cond_0
    if-eqz p5, :cond_1

    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1000
    invoke-virtual {p5, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 1001
    return v1

    .line 1003
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v4

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-wide v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result p1

    return p1
.end method

.method isAppSpecial(Ljava/lang/String;II)Z
    .locals 3

    .line 1008
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1010
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1011
    return v2

    .line 1013
    :cond_1
    const/16 v1, 0x2710

    if-ge p2, v1, :cond_2

    .line 1015
    return v2

    .line 1017
    :cond_2
    const-string p2, "android"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1020
    return v2

    .line 1022
    :cond_3
    iget-boolean p2, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-eqz p2, :cond_8

    .line 1027
    :try_start_0
    iget-object p2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_4

    .line 1028
    return v2

    .line 1032
    :cond_4
    nop

    .line 1034
    invoke-virtual {p0, p1, p3}, Lcom/android/server/usage/AppStandbyController;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1035
    return v2

    .line 1038
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isActiveNetworkScorer(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1039
    return v2

    .line 1042
    :cond_6
    iget-object p2, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 1043
    invoke-virtual {p2, v1, p1, p3}, Lcom/android/server/usage/AppStandbyController$Injector;->isBoundWidgetPackage(Landroid/appwidget/AppWidgetManager;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1044
    return v2

    .line 1047
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1048
    return v2

    .line 1030
    :catch_0
    move-exception p1

    .line 1031
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1053
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isCarrierApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1054
    return v2

    .line 1057
    :cond_9
    return v0
.end method

.method isDisplayOn()Z
    .locals 1

    .line 1359
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->isDefaultDisplayOn()Z

    move-result v0

    return v0
.end method

.method isParoledOrCharging()Z
    .locals 3

    .line 514
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mChargingStable:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    nop

    :cond_2
    :goto_0
    monitor-exit v0

    return v1

    .line 518
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAdminDataAvailable()V
    .locals 1

    .line 1255
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1256
    return-void
.end method

.method public onBootPhase(I)V
    .locals 4

    .line 356
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->onBootPhase(I)V

    .line 357
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2

    .line 358
    const-string p1, "AppStandbyController"

    const-string v0, "Setting app idle enabled state"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance p1, Lcom/android/server/usage/AppStandbyController$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V

    .line 361
    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->registerObserver()V

    .line 362
    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->updateSettings()V

    .line 364
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetManager;

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 365
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 366
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mPowerManager:Landroid/os/PowerManager;

    .line 368
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/usage/AppStandbyController$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 369
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_0
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isDisplayOn()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->updateDisplay(ZJ)V

    .line 371
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 375
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    if-eqz p1, :cond_0

    .line 376
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->initializeDefaultsForSystemApps(I)V

    .line 379
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    if-eqz p1, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 382
    :cond_1
    goto :goto_0

    .line 371
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 382
    :cond_2
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3

    .line 383
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isCharging()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    .line 385
    :cond_3
    :goto_0
    return-void
.end method

.method onDeviceIdleModeChanged()V
    .locals 6

    .line 814
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 816
    nop

    .line 817
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 818
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 819
    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    sub-long/2addr v2, v4

    .line 820
    if-nez v0, :cond_0

    iget-wide v4, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 826
    const/4 v0, 0x1

    goto :goto_0

    .line 827
    :cond_0
    if-eqz v0, :cond_1

    .line 829
    const/4 v0, 0x0

    .line 833
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController;->setAppIdleParoled(Z)V

    .line 835
    return-void

    .line 831
    :cond_1
    :try_start_1
    monitor-exit v1

    return-void

    .line 833
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onUserRemoved(I)V
    .locals 3

    .line 955
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 956
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppIdleHistory;->onUserRemoved(I)V

    .line 957
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 958
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 959
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 960
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 961
    return-void

    .line 959
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 960
    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method postCheckIdleStates(I)V
    .locals 4

    .line 552
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 553
    return-void
.end method

.method postOneTimeCheckIdleStates()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getBootPhase()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    goto :goto_0

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessage(I)Z

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    .line 567
    :goto_0
    return-void
.end method

.method postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1414
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1415
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1416
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1417
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1418
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v0}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1419
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1420
    return-void
.end method

.method postReportExemptedSyncScheduled(Ljava/lang/String;I)V
    .locals 3

    .line 1423
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1424
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1425
    return-void
.end method

.method postReportExemptedSyncStart(Ljava/lang/String;I)V
    .locals 3

    .line 1428
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1429
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1430
    return-void
.end method

.method removeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .locals 2

    .line 978
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 979
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 980
    monitor-exit v0

    .line 981
    return-void

    .line 980
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 21

    move-object/from16 v9, p0

    .line 388
    move/from16 v8, p3

    iget-boolean v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 391
    :cond_0
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/content/ContentResolver;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 393
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v19

    .line 394
    array-length v6, v7

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v7, v4

    .line 398
    :try_start_0
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x100000

    invoke-virtual {v1, v0, v2, v8}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 400
    if-eqz v1, :cond_3

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    goto :goto_3

    .line 403
    :cond_1
    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 404
    iget-object v3, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 405
    :try_start_1
    iget-object v10, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v13, 0xa

    const/16 v14, 0x8

    const-wide/16 v15, 0x0

    iget-wide v1, v9, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    add-long v17, v19, v1

    move-object v11, v0

    move v12, v8

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    .line 409
    iget v10, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v11, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v12, 0x0

    move-object v1, v9

    move-object v2, v0

    move-object v13, v3

    move v3, v8

    move v14, v4

    move-wide/from16 v4, v19

    move v15, v6

    move v6, v10

    move-object v10, v7

    move v7, v11

    move v8, v12

    :try_start_2
    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 411
    monitor-exit v13

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v13, v3

    move v14, v4

    move v15, v6

    move-object v10, v7

    :goto_1
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 413
    :catch_0
    move-exception v0

    goto :goto_4

    .line 411
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 415
    :cond_2
    move v14, v4

    move v15, v6

    move-object v10, v7

    :goto_2
    goto :goto_4

    .line 401
    :cond_3
    :goto_3
    move v14, v4

    move v15, v6

    move-object v10, v7

    goto :goto_4

    .line 413
    :catch_1
    move-exception v0

    move v14, v4

    move v15, v6

    move-object v10, v7

    .line 394
    :goto_4
    add-int/lit8 v4, v14, 0x1

    move/from16 v8, p3

    move-object v7, v10

    move v6, v15

    goto :goto_0

    .line 417
    :cond_4
    return-void
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;JI)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-wide/from16 v4, p2

    .line 838
    move/from16 v8, p4

    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_0

    return-void

    .line 839
    :cond_0
    iget-object v7, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 842
    :try_start_0
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v2, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v8, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v19

    .line 845
    iget v1, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v2, 0xe

    const/4 v3, 0x6

    const/4 v6, 0x1

    const/16 v15, 0xa

    if-eq v1, v6, :cond_2

    iget v1, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v10, 0x2

    if-eq v1, v10, :cond_2

    iget v1, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v1, v3, :cond_2

    iget v1, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v10, 0x7

    if-eq v1, v10, :cond_2

    iget v1, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v1, v15, :cond_2

    iget v1, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v1, v2, :cond_2

    iget v1, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v10, 0xd

    if-ne v1, v10, :cond_1

    goto :goto_0

    .line 892
    :cond_1
    move-object v11, v7

    goto/16 :goto_4

    .line 853
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v10, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v10, v8, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    .line 855
    iget v14, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 856
    iget v13, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 858
    iget v10, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-direct {v0, v10}, Lcom/android/server/usage/AppStandbyController;->usageEventToSubReason(I)I

    move-result v24

    .line 859
    const/16 v12, 0x300

    or-int v29, v12, v24

    .line 860
    iget v10, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v10, v15, :cond_5

    iget v10, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v10, v2, :cond_3

    goto :goto_1

    .line 867
    :cond_3
    iget v2, v9, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v2, v3, :cond_4

    .line 868
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v3, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/16 v23, 0xa

    const-wide/16 v25, 0x0

    iget-wide v10, v0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    add-long v27, v4, v10

    move-object/from16 v20, v2

    move-object/from16 v21, v1

    move-object/from16 v22, v3

    invoke-virtual/range {v20 .. v28}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 871
    iget-wide v2, v0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    .line 878
    move-wide v10, v2

    move-object/from16 v30, v7

    move v6, v12

    move v2, v13

    move v3, v14

    move v7, v15

    goto :goto_2

    .line 873
    :cond_4
    iget-object v10, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v2, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0xa

    move-object/from16 v30, v7

    :try_start_1
    iget-wide v6, v0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    add-long v17, v4, v6

    move-object v11, v1

    move v6, v12

    move-object v12, v2

    move v2, v13

    move v13, v3

    move v3, v14

    move/from16 v14, v24

    move v7, v15

    move-wide v15, v4

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 876
    iget-wide v10, v0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    goto :goto_2

    .line 863
    :cond_5
    :goto_1
    move-object/from16 v30, v7

    move v6, v12

    move v2, v13

    move v3, v14

    move v7, v15

    iget-object v10, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v11, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/16 v23, 0x14

    const-wide/16 v25, 0x0

    iget-wide v12, v0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    add-long v27, v4, v12

    move-object/from16 v20, v10

    move-object/from16 v21, v1

    move-object/from16 v22, v11

    invoke-virtual/range {v20 .. v28}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 866
    iget-wide v10, v0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    .line 878
    :goto_2
    iget-object v12, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object v13, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v14, 0xb

    const/4 v15, -0x1

    iget-object v6, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 879
    invoke-virtual {v13, v14, v8, v15, v6}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 878
    invoke-virtual {v12, v6, v10, v11}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 881
    iget v6, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/4 v10, 0x0

    if-ne v6, v7, :cond_6

    iget v6, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-eq v3, v6, :cond_6

    const v3, 0xff00

    and-int/2addr v2, v3

    const/16 v3, 0x300

    if-eq v2, v3, :cond_6

    .line 885
    const/16 v31, 0x1

    goto :goto_3

    .line 881
    :cond_6
    nop

    .line 885
    move/from16 v31, v10

    :goto_3
    iget-object v2, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    move v3, v8

    move-object/from16 v11, v30

    move/from16 v7, v29

    move v12, v8

    move/from16 v8, v31

    :try_start_2
    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 888
    if-eqz v19, :cond_7

    .line 889
    iget-object v1, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-direct {v0, v1, v12, v10}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    .line 892
    :cond_7
    :goto_4
    monitor-exit v11

    .line 893
    return-void

    .line 892
    :catchall_0
    move-exception v0

    move-object/from16 v11, v30

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v11, v7

    :goto_5
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5
.end method

.method reportExemptedSyncScheduled(Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    .line 420
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_0

    return-void

    .line 426
    :cond_0
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->isDeviceIdleMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 428
    const/16 v1, 0xa

    .line 429
    const/16 v2, 0xb

    .line 430
    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    .line 438
    :goto_0
    move v8, v1

    move v9, v2

    goto :goto_1

    .line 433
    :cond_1
    const/16 v1, 0x14

    .line 434
    const/16 v2, 0xc

    .line 435
    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    goto :goto_0

    .line 438
    :goto_1
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v14

    .line 440
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 441
    :try_start_0
    iget-object v5, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const-wide/16 v10, 0x0

    add-long v12, v14, v3

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    .line 445
    iget v6, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v7, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v9, v2

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide v4, v14

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 447
    monitor-exit v9

    .line 448
    return-void

    .line 447
    :catchall_0
    move-exception v0

    move-object v9, v2

    :goto_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method reportExemptedSyncStart(Ljava/lang/String;I)V
    .locals 19

    move-object/from16 v0, p0

    .line 451
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_0

    return-void

    .line 453
    :cond_0
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    .line 455
    iget-object v9, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v9

    .line 456
    :try_start_0
    iget-object v10, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v13, 0xa

    const/16 v14, 0xd

    const-wide/16 v15, 0x0

    iget-wide v1, v0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    add-long v17, v4, v1

    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    .line 460
    iget v6, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v7, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const/4 v8, 0x0

    move-object v1, v0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 462
    monitor-exit v9

    .line 463
    return-void

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setActiveAdminApps(Ljava/util/Set;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1245
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1246
    if-nez p1, :cond_0

    .line 1247
    :try_start_0
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 1251
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1249
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1251
    :goto_0
    monitor-exit v0

    .line 1252
    return-void

    .line 1251
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setAppIdleAsync(Ljava/lang/String;ZI)V
    .locals 2

    .line 1140
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p3, p2, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1143
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1144
    return-void

    .line 1140
    :cond_1
    :goto_0
    return-void
.end method

.method setAppIdleEnabled(Z)V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eq v1, p1, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isParoledOrCharging()Z

    move-result v1

    .line 347
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 348
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isParoledOrCharging()Z

    move-result p1

    if-eq p1, v1, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    .line 352
    :cond_0
    monitor-exit v0

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setAppIdleParoled(Z)V
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->currentTimeMillis()J

    move-result-wide v1

    .line 499
    iget-boolean v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    if-eq v3, p1, :cond_1

    .line 500
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    .line 502
    if-eqz p1, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleEndTimeout()V

    goto :goto_0

    .line 505
    :cond_0
    iput-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mLastAppIdleParoledTime:J

    .line 506
    const/4 p1, 0x0

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/usage/AppStandbyController;->postNextParoleTimeout(JZ)V

    .line 508
    :goto_0
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    .line 510
    :cond_1
    monitor-exit v0

    .line 511
    return-void

    .line 510
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setAppStandbyBucket(Ljava/lang/String;IIIJ)V
    .locals 8

    .line 1166
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    .line 1167
    return-void
.end method

.method setAppStandbyBucket(Ljava/lang/String;IIIJZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v9, p5

    .line 1171
    iget-object v11, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1172
    :try_start_0
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v12, p1

    move/from16 v13, p2

    invoke-virtual {v2, v12, v13, v9, v10}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v2

    .line 1174
    const v3, 0xff00

    and-int v5, p4, v3

    const/16 v6, 0x500

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 1177
    :goto_0
    iget v6, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v7, 0xa

    if-ge v6, v7, :cond_1

    monitor-exit v11

    return-void

    .line 1180
    :cond_1
    iget v6, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v8, 0x32

    if-eq v6, v8, :cond_2

    if-ne v1, v8, :cond_3

    :cond_2
    if-eqz v5, :cond_3

    .line 1183
    monitor-exit v11

    return-void

    .line 1187
    :cond_3
    iget v6, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/2addr v3, v6

    const/16 v6, 0x400

    if-ne v3, v6, :cond_4

    if-eqz v5, :cond_4

    monitor-exit v11

    return-void

    .line 1191
    :cond_4
    const/16 v3, 0x14

    if-eqz v5, :cond_7

    .line 1193
    iget-object v5, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v5, v9, v10}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v5

    .line 1196
    iget-object v8, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v8, v2, v5, v6, v1}, Lcom/android/server/usage/AppIdleHistory;->updateLastPrediction(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;JI)V

    .line 1198
    if-le v1, v7, :cond_5

    iget-wide v14, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    cmp-long v8, v14, v5

    if-lez v8, :cond_5

    .line 1200
    nop

    .line 1201
    iget v1, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 1219
    move v15, v1

    move v14, v7

    goto :goto_2

    .line 1205
    :cond_5
    if-le v1, v3, :cond_7

    iget-wide v7, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    cmp-long v5, v7, v5

    if-lez v5, :cond_7

    .line 1207
    nop

    .line 1208
    iget v1, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-eq v1, v3, :cond_6

    .line 1209
    const/16 v1, 0x307

    .line 1219
    :goto_1
    move v15, v1

    move v14, v3

    goto :goto_2

    .line 1211
    :cond_6
    iget v1, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_1

    .line 1219
    :cond_7
    move/from16 v15, p4

    move v14, v1

    :goto_2
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v2, v12

    move v3, v13

    move-wide v4, v9

    move v6, v14

    move v7, v15

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    .line 1221
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, v12

    move v3, v13

    move-wide v4, v9

    move v6, v14

    move v7, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 1223
    return-void

    .line 1221
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method setChargingState(Z)V
    .locals 4

    .line 466
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    if-eq v1, p1, :cond_1

    .line 468
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    .line 470
    const/16 v1, 0xe

    if-eqz p1, :cond_0

    .line 475
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mStableChargingThresholdMillis:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 478
    :cond_0
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p1, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 479
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->updateChargingStableState()V

    .line 482
    :cond_1
    :goto_0
    monitor-exit v0

    .line 483
    return-void

    .line 482
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .locals 2

    .line 942
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 943
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->setLastJobRunTime(Ljava/lang/String;IJ)V

    .line 944
    monitor-exit v0

    .line 945
    return-void

    .line 944
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method updateChargingStableState()V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mChargingStable:Z

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    if-eq v1, v2, :cond_0

    .line 489
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mCharging:Z

    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mChargingStable:Z

    .line 490
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    .line 492
    :cond_0
    monitor-exit v0

    .line 493
    return-void

    .line 492
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
