.class public Lcom/android/server/am/OnePlusBGController;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusBGController$SnapShot;,
        Lcom/android/server/am/OnePlusBGController$mAhRecord;,
        Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;,
        Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;,
        Lcom/android/server/am/OnePlusBGController$Traffic;,
        Lcom/android/server/am/OnePlusBGController$UidmAh;,
        Lcom/android/server/am/OnePlusBGController$UidBGC_MDMInfo;,
        Lcom/android/server/am/OnePlusBGController$UidStat;,
        Lcom/android/server/am/OnePlusBGController$UidObserver;,
        Lcom/android/server/am/OnePlusBGController$BatteryReceiver;,
        Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;,
        Lcom/android/server/am/OnePlusBGController$MyHandler;,
        Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;,
        Lcom/android/server/am/OnePlusBGController$PROC_TYPE;,
        Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;,
        Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;,
        Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;
    }
.end annotation


# static fields
.field private static final ACTION_TEST_BGC:Ljava/lang/String; = "com.test.bgc"

.field public static DEBUG_BGC:Z = false

.field private static DEBUG_KEEP:Z = false

.field private static DEBUG_ONEPLUS:Z = false

.field private static final INTENT_BUDGET_DAY_RESET:Ljava/lang/String; = "net.oneplus.bgc.budget_reset"

.field private static final INTENT_SLEEP_CHANGED:Ljava/lang/String; = "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

.field private static final INVALID_HANDLE:I = -0x1

.field private static final INVALID_TIMESTAMP:I = -0x1

.field static final MSG_DELAY:J = 0xbb8L

.field private static final NOTIFY_DELAY:J = 0xbb8L

.field private static final ONLINECONFIG_PROJECT_NAME:Ljava/lang/String; = "BGC"

.field private static final PROP_BGC_DEBUG_KEEP_RECORD:Ljava/lang/String; = "persist.sys.bgc.keep"

.field private static final PROP_BGC_DEBUG_ON:Ljava/lang/String; = "persist.sys.bgc_debug"

.field private static RESET_PERIOD:J = 0x0L

.field private static final STATE_AWAKE:I = 0x1e6c

.field private static final STATE_SLEEP:I = 0x15be

.field private static final TAG:Ljava/lang/String; = "BGC"

.field static final TRAFFIC_THRESHOLD:J = 0x19000L

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mInited:Z

.field private static mPackageManager:Landroid/content/pm/PackageManager;

.field private static mbEnableDispatch:Z


# instance fields
.field private INIT_INVALID_CRITERIA:F

.field cptor:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mAhcptor:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mAmsHanlder:Landroid/os/Handler;

.field private mBatteryFilter:Landroid/content/IntentFilter;

.field private mBatteryReceiver:Lcom/android/server/am/OnePlusBGController$BatteryReceiver;

.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private mBg_GeneCriteria:F

.field private mBg_GeneCriteria_For_Notorious:F

.field private mBg_HighCriteria:F

.field private mBg_HighCriteria_For_Notorious:F

.field private mBg_LowCriteria:F

.field private mBg_LowCriteria_For_Notorious:F

.field private mBg_ReliefBonusmAh:F

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConfigUpdater:Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;

.field private mContext:Landroid/content/Context;

.field private mFg_BlackPkgsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFg_BlackUidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

.field private mIsFlushed:Z

.field private mIsPluggedIn:Z

.field private mLastBudgetResetTimeStamp:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReport_obj:Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

.field private mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mSippersOfEnd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mSippersOfOneShot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mSippersOfStart:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mStadby_totalPowerMah:D

.field private mStandby_Sipper_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

.field private mStepCounterHandleId:I

.field private final mUidObserver:Lcom/android/server/am/OnePlusBGController$UidObserver;

.field private final mUidSippermAhList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidSippermAhStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidStateStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusBGController$UidStat;",
            ">;"
        }
    .end annotation
.end field

.field private mUidTraffic:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/OnePlusBGController$Traffic;",
            ">;"
        }
    .end annotation
.end field

.field private mUsingTrafficUidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 87
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusBGController;->DEBUG_ONEPLUS:Z

    .line 99
    const-string/jumbo v0, "persist.sys.bgc_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z

    .line 100
    const-string/jumbo v0, "persist.sys.bgc.keep"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusBGController;->DEBUG_KEEP:Z

    .line 101
    sput-boolean v1, Lcom/android/server/am/OnePlusBGController;->mbEnableDispatch:Z

    .line 102
    sput-boolean v1, Lcom/android/server/am/OnePlusBGController;->mInited:Z

    .line 120
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/android/server/am/OnePlusBGController;->RESET_PERIOD:J

    .line 1625
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusBGController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/RestartProcessManager;)V
    .registers 10
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "amsHandler"    # Landroid/os/Handler;
    .param p3, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p4, "batteryStatsService"    # Lcom/android/server/am/BatteryStatsService;
    .param p5, "restartProcessManager"    # Lcom/android/server/am/RestartProcessManager;

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController;->mIsPluggedIn:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController;->mIsFlushed:Z

    .line 112
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController;->mLastBudgetResetTimeStamp:J

    .line 116
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    .line 206
    new-instance v1, Lcom/android/server/am/OnePlusBGController$UidObserver;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusBGController$UidObserver;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidObserver:Lcom/android/server/am/OnePlusBGController$UidObserver;

    .line 207
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    .line 210
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    .line 218
    const v1, 0x4479c000    # 999.0f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->INIT_INVALID_CRITERIA:F

    .line 219
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria:F

    .line 220
    const/high16 v1, 0x41000000    # 8.0f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria_For_Notorious:F

    .line 221
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria:F

    .line 222
    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria_For_Notorious:F

    .line 223
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria:F

    .line 224
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria_For_Notorious:F

    .line 226
    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F

    .line 230
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackPkgsSet:Ljava/util/HashSet;

    .line 232
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackUidSet:Ljava/util/HashSet;

    .line 238
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidTraffic:Landroid/util/ArrayMap;

    .line 241
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUsingTrafficUidSet:Ljava/util/HashSet;

    .line 358
    new-instance v1, Lcom/android/server/am/OnePlusBGController$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusBGController$1;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1516
    new-instance v1, Lcom/android/server/am/OnePlusBGController$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusBGController$2;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mAhcptor:Ljava/util/Comparator;

    .line 2156
    new-instance v1, Lcom/android/server/am/OnePlusBGController$3;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusBGController$3;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->cptor:Ljava/util/Comparator;

    .line 462
    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController;->mAmsHanlder:Landroid/os/Handler;

    .line 463
    iput-object p3, p0, Lcom/android/server/am/OnePlusBGController;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 464
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    .line 465
    iput-object p4, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 466
    iput-object p5, p0, Lcom/android/server/am/OnePlusBGController;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    .line 467
    new-instance v1, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 468
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 469
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/android/server/am/OnePlusBGController;->mAudioManager:Landroid/media/AudioManager;

    .line 470
    new-instance v0, Lcom/android/server/am/OnePlusBGController$BatteryReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusBGController$BatteryReceiver;-><init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$1;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryReceiver:Lcom/android/server/am/OnePlusBGController$BatteryReceiver;

    .line 471
    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;-><init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$1;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mConfigUpdater:Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;

    .line 472
    new-instance v0, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mReport_obj:Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    .line 474
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 475
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    const-string/jumbo v1, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryFilter:Landroid/content/IntentFilter;

    .line 479
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryReceiver:Lcom/android/server/am/OnePlusBGController$BatteryReceiver;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 481
    sget-boolean v1, Lcom/android/server/am/OnePlusBGController;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_f2

    .line 482
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 483
    .local v1, "debugfilter":Landroid/content/IntentFilter;
    const-string v2, "com.test.bgc"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 486
    .end local v1    # "debugfilter":Landroid/content/IntentFilter;
    :cond_f2
    new-instance v1, Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OnePlusBGController$MyHandler;-><init>(Lcom/android/server/am/OnePlusBGController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    .line 488
    const v1, 0x101d0

    const-wide/16 v2, 0x4e20

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/OnePlusBGController;->sendEmptyMessageDelayed(IJ)V

    .line 489
    return-void
.end method

.method private CheckAbnBgmAh()V
    .registers 31

    .line 1528
    move-object/from16 v0, p0

    const-string v1, "======CheckAbnBgmAh======"

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1529
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1531
    .local v1, "startTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->dumpCriteria()V

    .line 1534
    iget-object v3, v0, Lcom/android/server/am/OnePlusBGController;->mReport_obj:Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->cleanUp()V

    .line 1537
    iget-object v3, v0, Lcom/android/server/am/OnePlusBGController;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/RestartProcessManager;->getHighUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 1538
    .local v3, "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, v0, Lcom/android/server/am/OnePlusBGController;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    invoke-virtual {v5, v4}, Lcom/android/server/am/RestartProcessManager;->getGeneralUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 1539
    .local v5, "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, v0, Lcom/android/server/am/OnePlusBGController;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    invoke-virtual {v6, v4}, Lcom/android/server/am/RestartProcessManager;->getLowUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 1540
    .local v6, "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@@@[get usage] in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1541
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1544
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->convertUidSippermAhStatsToList()V

    .line 1548
    sget-boolean v7, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z

    if-eqz v7, :cond_52

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->dumpUidSippermAhList()V

    .line 1550
    :cond_52
    move v7, v4

    .line 1550
    .local v7, "i":I
    :goto_53
    iget-object v8, v0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_21b

    .line 1551
    iget-object v8, v0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1552
    .local v8, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v9

    invoke-direct {v0, v9}, Lcom/android/server/am/OnePlusBGController;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v9

    .line 1553
    .local v9, "pkgName":Ljava/lang/String;
    iget v10, v0, Lcom/android/server/am/OnePlusBGController;->INIT_INVALID_CRITERIA:F

    .line 1554
    .local v10, "criteria":F
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->ifNotoriousAbn()Z

    move-result v15

    .line 1555
    .local v15, "ifNotoriousAbn":Z
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->ifNeedReliefBudget()Z

    move-result v13

    .line 1556
    .local v13, "ifNeedReliefBudget":Z
    sget-object v11, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    .line 1557
    .local v11, "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    if-eqz v3, :cond_8c

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8c

    .line 1559
    sget-object v11, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->HIGH:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    .line 1561
    if-eqz v13, :cond_86

    :cond_83
    iget v12, v0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria:F

    goto :goto_8a

    :cond_86
    if-eqz v15, :cond_83

    iget v12, v0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria_For_Notorious:F

    :goto_8a
    move v10, v12

    goto :goto_b5

    .line 1562
    :cond_8c
    if-eqz v5, :cond_a1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a1

    .line 1564
    sget-object v11, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->GENERAL:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    .line 1566
    if-eqz v13, :cond_9b

    :cond_98
    iget v12, v0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria:F

    goto :goto_9f

    :cond_9b
    if-eqz v15, :cond_98

    iget v12, v0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria_For_Notorious:F

    :goto_9f
    move v10, v12

    goto :goto_b5

    .line 1567
    :cond_a1
    if-eqz v6, :cond_b5

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b5

    .line 1569
    sget-object v11, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->LOW:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    .line 1571
    if-eqz v13, :cond_b0

    :cond_ad
    iget v12, v0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria:F

    goto :goto_b4

    :cond_b0
    if-eqz v15, :cond_ad

    iget v12, v0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria_For_Notorious:F

    :goto_b4
    move v10, v12

    .line 1573
    .end local v10    # "criteria":F
    .end local v11    # "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .local v12, "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .local v14, "criteria":F
    :cond_b5
    :goto_b5
    move v14, v10

    move-object v12, v11

    iget v10, v0, Lcom/android/server/am/OnePlusBGController;->INIT_INVALID_CRITERIA:F

    cmpl-float v10, v14, v10

    if-eqz v10, :cond_1dc

    .line 1575
    invoke-virtual {v8, v12}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->updateBucketRanking(Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;)V

    .line 1577
    const/4 v10, 0x0

    .line 1579
    .local v10, "relief":F
    if-eqz v13, :cond_c5

    .line 1581
    iget v10, v0, Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F

    .line 1584
    .end local v10    # "relief":F
    .local v11, "relief":F
    :cond_c5
    move v11, v10

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfBgmAh()D

    move-result-wide v16

    move-object/from16 v23, v5

    float-to-double v4, v11

    .line 1584
    .end local v5    # "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v23, "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sub-double v16, v16, v4

    float-to-double v4, v14

    cmpl-double v4, v16, v4

    if-lez v4, :cond_167

    .line 1587
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[E] uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", gRanking="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", Noto="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Relief="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", RfBgt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", DBgmAh="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    move-object/from16 v24, v6

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfBgmAh()D

    move-result-wide v5

    .line 1594
    .end local v6    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v24, "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1587
    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1596
    iget-object v10, v0, Lcom/android/server/am/OnePlusBGController;->mReport_obj:Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v4

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfFgmAh()D

    move-result-wide v5

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfBgmAh()D

    move-result-wide v16

    move-object/from16 v25, v3

    add-float v3, v14, v11

    .end local v3    # "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v25, "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-wide/from16 v26, v1

    float-to-double v1, v3

    .line 1596
    .end local v1    # "startTime":J
    .local v26, "startTime":J
    sget-object v20, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    move v3, v11

    move-object v11, v9

    .line 1596
    .end local v11    # "relief":F
    .local v3, "relief":F
    move-object/from16 v28, v12

    move v12, v4

    .line 1596
    .end local v12    # "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .local v28, "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    move/from16 v29, v3

    move v4, v13

    move v3, v14

    move-wide v13, v5

    .line 1596
    .end local v13    # "ifNeedReliefBudget":Z
    .end local v14    # "criteria":F
    .local v3, "criteria":F
    .local v4, "ifNeedReliefBudget":Z
    .local v29, "relief":F
    move v5, v15

    move-wide/from16 v15, v16

    .line 1596
    .end local v15    # "ifNotoriousAbn":Z
    .local v5, "ifNotoriousAbn":Z
    move-wide/from16 v17, v1

    move-object/from16 v19, v28

    move/from16 v21, v4

    move/from16 v22, v5

    invoke-virtual/range {v10 .. v22}, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->insert(Ljava/lang/String;IDDDLcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;ZZ)V

    .line 1614
    move-object/from16 v11, v28

    goto/16 :goto_1db

    .line 1603
    .end local v4    # "ifNeedReliefBudget":Z
    .end local v5    # "ifNotoriousAbn":Z
    .end local v24    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "startTime":J
    .end local v28    # "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .end local v29    # "relief":F
    .restart local v1    # "startTime":J
    .local v3, "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "relief":F
    .restart local v12    # "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .restart local v13    # "ifNeedReliefBudget":Z
    .restart local v14    # "criteria":F
    .restart local v15    # "ifNotoriousAbn":Z
    :cond_167
    move-wide/from16 v26, v1

    move-object/from16 v25, v3

    move-object/from16 v24, v6

    move/from16 v29, v11

    move-object/from16 v28, v12

    move v4, v13

    move v3, v14

    move v5, v15

    .line 1603
    .end local v1    # "startTime":J
    .end local v6    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "relief":F
    .end local v12    # "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .end local v13    # "ifNeedReliefBudget":Z
    .end local v14    # "criteria":F
    .end local v15    # "ifNotoriousAbn":Z
    .local v3, "criteria":F
    .restart local v4    # "ifNeedReliefBudget":Z
    .restart local v5    # "ifNotoriousAbn":Z
    .restart local v24    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v26    # "startTime":J
    .restart local v28    # "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .restart local v29    # "relief":F
    sget-boolean v1, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z

    if-eqz v1, :cond_1d9

    .line 1604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[N-E] uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", gRanking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    move-object/from16 v11, v28

    invoke-virtual {v11}, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1606
    .end local v28    # "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .local v11, "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", Noto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Rf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", RfBgt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", DBgmAh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfBgmAh()D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1604
    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1604
    .end local v29    # "relief":F
    goto :goto_1db

    .line 1614
    .end local v11    # "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .restart local v28    # "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    :cond_1d9
    move-object/from16 v11, v28

    .line 1614
    .end local v28    # "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .restart local v11    # "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    :goto_1db
    goto :goto_20e

    .line 1615
    .end local v4    # "ifNeedReliefBudget":Z
    .end local v11    # "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .end local v23    # "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "startTime":J
    .restart local v1    # "startTime":J
    .local v3, "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v5, "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .restart local v13    # "ifNeedReliefBudget":Z
    .restart local v14    # "criteria":F
    .restart local v15    # "ifNotoriousAbn":Z
    :cond_1dc
    move-wide/from16 v26, v1

    move-object/from16 v25, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object v11, v12

    move v4, v13

    move v3, v14

    move v5, v15

    .line 1615
    .end local v1    # "startTime":J
    .end local v6    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .end local v13    # "ifNeedReliefBudget":Z
    .end local v14    # "criteria":F
    .end local v15    # "ifNotoriousAbn":Z
    .local v3, "criteria":F
    .restart local v4    # "ifNeedReliefBudget":Z
    .local v5, "ifNotoriousAbn":Z
    .restart local v11    # "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    .restart local v23    # "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v26    # "startTime":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oops, can\'t find which category of uid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", just skip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1550
    .end local v3    # "criteria":F
    .end local v4    # "ifNeedReliefBudget":Z
    .end local v5    # "ifNotoriousAbn":Z
    .end local v8    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v11    # "gRanking":Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;
    :goto_20e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v3, v25

    move-wide/from16 v1, v26

    const/4 v4, 0x0

    goto/16 :goto_53

    .line 1618
    .end local v7    # "i":I
    .end local v23    # "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "startTime":J
    .restart local v1    # "startTime":J
    .local v3, "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v5, "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_21b
    move-wide/from16 v26, v1

    move-object/from16 v25, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    .line 1618
    .end local v1    # "startTime":J
    .end local v3    # "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23    # "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v26    # "startTime":J
    sget-boolean v1, Lcom/android/server/am/OnePlusBGController;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_22c

    iget-object v1, v0, Lcom/android/server/am/OnePlusBGController;->mReport_obj:Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->dump()V

    .line 1621
    :cond_22c
    iget-object v1, v0, Lcom/android/server/am/OnePlusBGController;->mAmsHanlder:Landroid/os/Handler;

    const v2, 0x101d4

    iget-object v3, v0, Lcom/android/server/am/OnePlusBGController;->mReport_obj:Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1622
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, v0, Lcom/android/server/am/OnePlusBGController;->mAmsHanlder:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@[CheckAbnBgmAh] in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v26

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1624
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OnePlusBGController;I)D
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # I

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->updateSingleStatistics(I)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusBGController;ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    .param p3, "x3"    # D

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusBGController;->updateUidSippermAhStatsByFgBgChange(ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusBGController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # I

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->showSensorActiveUid(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusBGController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->showSensorActiveUid()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/OnePlusBGController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->getTrafficUids()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/OnePlusBGController;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria:F

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/am/OnePlusBGController;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # F

    .line 85
    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/am/OnePlusBGController;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria_For_Notorious:F

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/am/OnePlusBGController;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # F

    .line 85
    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria_For_Notorious:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/am/OnePlusBGController;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria:F

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/am/OnePlusBGController;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # F

    .line 85
    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria:F

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/am/OnePlusBGController;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria_For_Notorious:F

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/am/OnePlusBGController;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # F

    .line 85
    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria_For_Notorious:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/am/OnePlusBGController;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria:F

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/am/OnePlusBGController;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # F

    .line 85
    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusBGController;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # Ljava/util/List;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->resetBudgetByUids(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/am/OnePlusBGController;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria_For_Notorious:F

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/am/OnePlusBGController;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # F

    .line 85
    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria_For_Notorious:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/am/OnePlusBGController;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/am/OnePlusBGController;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # F

    .line 85
    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackPkgsSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/am/OnePlusBGController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController;->mIsPluggedIn:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/am/OnePlusBGController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # Z

    .line 85
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController;->mIsPluggedIn:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/am/OnePlusBGController;IJII)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .line 85
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/OnePlusBGController;->sendMessageDelayed(IJII)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/am/OnePlusBGController;ZI)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBGController;->isProcessStateBackgroundInner(ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600()Z
    .registers 1

    .line 85
    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->mbEnableDispatch:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/am/OnePlusBGController;IJLcom/android/server/am/OnePlusBGController$UidStat;Lcom/android/server/am/OnePlusBGController$PROC_TYPE;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # Lcom/android/server/am/OnePlusBGController$UidStat;
    .param p5, "x4"    # Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 85
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/OnePlusBGController;->sendMessageDelayed(IJLcom/android/server/am/OnePlusBGController$UidStat;Lcom/android/server/am/OnePlusBGController$PROC_TYPE;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/am/OnePlusBGController;IZ)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBGController;->checkTrafficUidLocked(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900()Landroid/media/AudioManager;
    .registers 1

    .line 85
    sget-object v0, Lcom/android/server/am/OnePlusBGController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$3000()Z
    .registers 1

    .line 85
    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->DEBUG_KEEP:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 85
    sput-boolean p0, Lcom/android/server/am/OnePlusBGController;->DEBUG_ONEPLUS:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/server/am/OnePlusBGController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->initObservingUid()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/am/OnePlusBGController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->isNeedResetBudget()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/BatteryStatsHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/am/OnePlusBGController;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # Ljava/util/List;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->updateUidSippermAhStatsBySippers(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/am/OnePlusBGController;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBGController;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/am/OnePlusBGController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController;->mIsFlushed:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/am/OnePlusBGController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # Z

    .line 85
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController;->mIsFlushed:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/am/OnePlusBGController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->CheckAbnBgmAh()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusBGController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->dumpUidSippermAhStats()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusBGController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->dumpUidSippermAhList()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusBGController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->resetAllBudget()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 85
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    return-object v0
.end method

.method private checkTrafficUid(I)Z
    .registers 24
    .param p1, "uid"    # I

    .line 823
    move/from16 v0, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 824
    .local v1, "now":J
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/am/OnePlusBGController;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusBGController$Traffic;

    .line 825
    .local v4, "obj":Lcom/android/server/am/OnePlusBGController$Traffic;
    const/4 v5, 0x0

    if-nez v4, :cond_18

    .line 826
    return v5

    .line 828
    :cond_18
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    .line 829
    .local v6, "txBytes":J
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v8

    .line 830
    .local v8, "rxBytes":J
    iget-wide v10, v4, Lcom/android/server/am/OnePlusBGController$Traffic;->mTimeStamp:J

    sub-long v10, v1, v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    .line 832
    .local v10, "timeDuring":J
    const-wide/16 v12, 0x1

    cmp-long v12, v10, v12

    if-gtz v12, :cond_2f

    .line 833
    const-wide/16 v10, 0x1

    .line 835
    :cond_2f
    iget-wide v12, v4, Lcom/android/server/am/OnePlusBGController$Traffic;->mRxBytes:J

    sub-long v12, v8, v12

    div-long/2addr v12, v10

    .line 836
    .local v12, "rxSpeed":J
    iget-wide v14, v4, Lcom/android/server/am/OnePlusBGController$Traffic;->mTxBytes:J

    sub-long v14, v6, v14

    div-long/2addr v14, v10

    .line 837
    .local v14, "txSpeed":J
    const-wide/32 v16, 0x19000

    cmp-long v18, v16, v12

    const/16 v19, 0x1

    if-gez v18, :cond_66

    .line 839
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v20, v1

    const-string v1, "Uid "

    .end local v1    # "now":J
    .local v20, "now":J
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rxSpeed="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Byte/s"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 840
    return v19

    .line 841
    .end local v20    # "now":J
    .restart local v1    # "now":J
    :cond_66
    move-wide/from16 v20, v1

    .end local v1    # "now":J
    .restart local v20    # "now":J
    cmp-long v1, v16, v14

    if-gez v1, :cond_8e

    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " txSpeed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " Byte/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 844
    return v19

    .line 846
    :cond_8e
    return v5
.end method

.method private checkTrafficUidLocked(IZ)Z
    .registers 25
    .param p1, "uid"    # I
    .param p2, "debug"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 850
    iget-object v3, v1, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    monitor-enter v3

    .line 851
    :try_start_7
    iget-object v0, v1, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$UidStat;

    .line 852
    .local v0, "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    if-eqz v0, :cond_f3

    .line 855
    if-eqz p2, :cond_5c

    .line 856
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 857
    .local v5, "now":J
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v7

    .line 858
    .local v7, "txBytes":J
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v9

    .line 859
    .local v9, "rxBytes":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "now Traffic [uid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "], ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController$UidStat;->getTraffic()Lcom/android/server/am/OnePlusBGController$Traffic;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/OnePlusBGController$Traffic;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 865
    .end local v5    # "now":J
    .end local v7    # "txBytes":J
    .end local v9    # "rxBytes":J
    :cond_5c
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController$UidStat;->getTraffic()Lcom/android/server/am/OnePlusBGController$Traffic;

    move-result-object v5

    .line 866
    .local v5, "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    if-eqz v5, :cond_e9

    iget-wide v6, v5, Lcom/android/server/am/OnePlusBGController$Traffic;->mTimeStamp:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_e9

    .line 867
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 868
    .local v6, "now":J
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v8

    .line 869
    .local v8, "txBytes":J
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v10

    .line 870
    .local v10, "rxBytes":J
    iget-wide v12, v5, Lcom/android/server/am/OnePlusBGController$Traffic;->mTimeStamp:J

    sub-long v12, v6, v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    .line 871
    .local v12, "timeDuring":J
    const-wide/16 v14, 0x1

    cmp-long v14, v12, v14

    if-gtz v14, :cond_85

    .line 872
    const-wide/16 v12, 0x1

    .line 874
    :cond_85
    iget-wide v14, v5, Lcom/android/server/am/OnePlusBGController$Traffic;->mRxBytes:J

    sub-long v14, v10, v14

    div-long/2addr v14, v12

    .line 875
    .local v14, "rxSpeed":J
    move-object/from16 v16, v0

    iget-wide v0, v5, Lcom/android/server/am/OnePlusBGController$Traffic;->mTxBytes:J

    .line 875
    .end local v0    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    .local v16, "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    sub-long v0, v8, v0

    div-long/2addr v0, v12

    .line 876
    .local v0, "txSpeed":J
    const-wide/32 v17, 0x19000

    cmp-long v19, v17, v14

    const/16 v20, 0x1

    if-gez v19, :cond_bf

    .line 878
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v5

    const-string v5, "Uid "

    .line 878
    .end local v5    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    .local v21, "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " rxSpeed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " Byte/s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 879
    monitor-exit v3

    return v20

    .line 880
    .end local v21    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    .restart local v5    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    :cond_bf
    move-object/from16 v21, v5

    .line 880
    .end local v5    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    .restart local v21    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    cmp-long v4, v17, v0

    if-gez v4, :cond_e8

    .line 882
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " txSpeed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " Byte/s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 883
    monitor-exit v3

    return v20

    .line 885
    .end local v0    # "txSpeed":J
    .end local v6    # "now":J
    .end local v8    # "txBytes":J
    .end local v10    # "rxBytes":J
    .end local v12    # "timeDuring":J
    .end local v14    # "rxSpeed":J
    :cond_e8
    goto :goto_f2

    .line 886
    .end local v16    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    .end local v21    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    .local v0, "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    .restart local v5    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    :cond_e9
    move-object/from16 v16, v0

    move-object/from16 v21, v5

    .line 886
    .end local v0    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    .end local v5    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    .restart local v16    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    .restart local v21    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    const-string v0, "base_traffic is invalid"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 888
    .end local v21    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    :goto_f2
    goto :goto_fb

    .line 889
    .end local v16    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    .restart local v0    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    :cond_f3
    move-object/from16 v16, v0

    .line 889
    .end local v0    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    .restart local v16    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    const-string/jumbo v0, "ustats == null"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 891
    .end local v16    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    :goto_fb
    monitor-exit v3
    :try_end_fc
    .catchall {:try_start_7 .. :try_end_fc} :catchall_117

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t use network"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 893
    const/4 v0, 0x0

    return v0

    .line 891
    :catchall_117
    move-exception v0

    :try_start_118
    monitor-exit v3
    :try_end_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_117

    throw v0
.end method

.method private computeUidTraffic(I)Z
    .registers 14
    .param p1, "uid"    # I

    .line 809
    const/4 v0, 0x0

    .line 810
    .local v0, "usingNetwork":Z
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidTraffic:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 811
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 812
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->checkTrafficUid(I)Z

    move-result v2

    move v0, v2

    .line 815
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 816
    .local v5, "now":J
    new-instance v11, Lcom/android/server/am/OnePlusBGController$Traffic;

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v7

    .line 817
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v9

    move-object v2, v11

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/OnePlusBGController$Traffic;-><init>(Lcom/android/server/am/OnePlusBGController;IJJJ)V

    move-object v2, v11

    .line 818
    .local v2, "traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    .end local v2    # "traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    .end local v5    # "now":J
    monitor-exit v1

    .line 820
    return v0

    .line 819
    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_35

    throw v2
.end method

.method private convertUidSippermAhStatsToList()V
    .registers 8

    .line 1457
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1458
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1459
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 1460
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1462
    .local v2, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfBgmAh()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_30

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v3

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_30

    .line 1463
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1459
    .end local v2    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1466
    .end local v1    # "i":I
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_3c

    .line 1468
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mAhcptor:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1469
    return-void

    .line 1466
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 11
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "bfilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;Z)V"
        }
    .end annotation

    .line 2139
    .local p2, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz p2, :cond_70

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_70

    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] sipper size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2141
    const-wide/16 v0, 0x0

    .line 2142
    .local v0, "allPower":D
    const/4 v2, 0x0

    .line 2143
    .local v2, "count":I
    const/4 v3, 0x0

    .line 2143
    .local v3, "i":I
    :goto_2c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4b

    .line 2144
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    .line 2145
    .local v4, "bs":Lcom/android/internal/os/BatterySipper;
    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v0, v5

    .line 2146
    if-eqz p3, :cond_43

    if-eqz p3, :cond_46

    const/16 v5, 0xa

    if-ge v2, v5, :cond_46

    .line 2147
    :cond_43
    invoke-direct {p0, p1, v4}, Lcom/android/server/am/OnePlusBGController;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    .line 2148
    :cond_46
    add-int/lit8 v2, v2, 0x1

    .line 2143
    .end local v4    # "bs":Lcom/android/internal/os/BatterySipper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 2150
    .end local v3    # "i":I
    :cond_4b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], accumulated sum-up of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " totalPowerMah="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2151
    .end local v0    # "allPower":D
    .end local v2    # "count":I
    goto :goto_76

    .line 2152
    :cond_70
    const-string/jumbo v0, "sippers == null or sippers.size() == 0"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2154
    :goto_76
    return-void
.end method

.method private dumpCriteria()V
    .registers 3

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BGC Criteria : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1525
    return-void
.end method

.method private dumpSingleUidSuppermAhStats(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 1175
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1176
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1177
    .local v1, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v1, :cond_14

    .line 1178
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1180
    .end local v1    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    :cond_14
    monitor-exit v0

    .line 1181
    return-void

    .line 1180
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private dumpUidSippermAhList()V
    .registers 5

    .line 1508
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    monitor-enter v0

    .line 1509
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 1510
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1511
    .local v2, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1509
    .end local v2    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1513
    .end local v1    # "i":I
    :cond_20
    monitor-exit v0

    .line 1514
    return-void

    .line 1513
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private dumpUidSippermAhStats()V
    .registers 6

    .line 1151
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1152
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 1153
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1154
    .local v2, "key":I
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1155
    .local v3, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1152
    .end local v2    # "key":I
    .end local v3    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1157
    .end local v1    # "i":I
    :cond_26
    monitor-exit v0

    .line 1158
    return-void

    .line 1157
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private genActiveAudioUidsList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    .local v0, "activeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/am/OnePlusBGController;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1241
    .local v1, "uids":Ljava/lang/String;
    if-eqz v1, :cond_42

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_42

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1242
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1243
    .local v2, "arrayUid":[Ljava/lang/String;
    if-eqz v2, :cond_42

    .line 1244
    const/4 v3, 0x0

    .line 1244
    .local v3, "i":I
    :goto_27
    array-length v4, v2

    if-ge v3, v4, :cond_42

    .line 1245
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3f

    .line 1246
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 1251
    .end local v2    # "arrayUid":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_42
    return-object v0
.end method

.method private genActiveSensorUidsList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1286
    .local v0, "activeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v1, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_46

    .line 1287
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    iget v2, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getActiveSensorListByHandle(I)Ljava/lang/String;

    move-result-object v1

    .line 1288
    .local v1, "uids":Ljava/lang/String;
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_46

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1289
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1290
    .local v2, "arrayUid":[Ljava/lang/String;
    if-eqz v2, :cond_46

    .line 1291
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2b
    array-length v4, v2

    if-ge v3, v4, :cond_46

    .line 1292
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_43

    .line 1293
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1291
    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 1299
    .end local v1    # "uids":Ljava/lang/String;
    .end local v2    # "arrayUid":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_46
    return-object v0
.end method

.method private genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "bs"    # Lcom/android/internal/os/BatterySipper;

    .line 2164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2165
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_8e

    .line 2166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2167
    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v3, -0x1

    if-eqz v2, :cond_27

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    goto :goto_28

    :cond_27
    move v2, v3

    :goto_28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |sPower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2168
    invoke-virtual {p2}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " |wLTMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    .line 2172
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v4, :cond_57

    iget-object v3, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    nop

    :cond_57
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |pkgWHD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |TPower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 2175
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " |pt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 2176
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2179
    :cond_8e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .line 1627
    sget-object v0, Lcom/android/server/am/OnePlusBGController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_c

    .line 1628
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusBGController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1630
    :cond_c
    sget-object v0, Lcom/android/server/am/OnePlusBGController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_19

    .line 1632
    sget-object v0, Lcom/android/server/am/OnePlusBGController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1633
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 1634
    return-object v0

    .line 1637
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_19
    const-string v0, ""

    return-object v0
.end method

.method private getTrafficUids()V
    .registers 6

    .line 1304
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    .line 1305
    .local v0, "trafficUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1306
    .local v2, "uid":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TrafficUids: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1307
    .end local v2    # "uid":Ljava/lang/Integer;
    goto :goto_6

    .line 1308
    :cond_27
    return-void
.end method

.method private initObservingUid()V
    .registers 3

    .line 500
    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->mInited:Z

    if-nez v0, :cond_17

    .line 501
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusBGController;->mInited:Z

    .line 502
    const-string v1, "==initObservingUid=="

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController;->initializeUidStats()V

    .line 505
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidObserver:Lcom/android/server/am/OnePlusBGController$UidObserver;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/OnePlusBGController;->injectRegisterUidObserver(Landroid/app/IUidObserver;I)V

    .line 511
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusBGController;->enableDispatch(Z)V

    .line 513
    :cond_17
    return-void
.end method

.method private isAudioActive(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 1226
    sget-object v0, Lcom/android/server/am/OnePlusBGController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2c

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1230
    .local v0, "strUid":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/OnePlusBGController;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1231
    .local v1, "uids":Ljava/lang/String;
    if-eqz v1, :cond_2c

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1232
    const/4 v2, 0x1

    return v2

    .line 1235
    .end local v0    # "strUid":Ljava/lang/String;
    .end local v1    # "uids":Ljava/lang/String;
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method private isNeedResetBudget()Z
    .registers 6

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController;->mLastBudgetResetTimeStamp:J

    sub-long/2addr v0, v2

    .line 126
    .local v0, "timeAwayReset":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time Away From Budget Reset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 129
    sget-wide v3, Lcom/android/server/am/OnePlusBGController;->RESET_PERIOD:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_2f

    const/4 v3, 0x1

    goto :goto_30

    :cond_2f
    const/4 v3, 0x0

    :goto_30
    return v3
.end method

.method private isProcessStateBackgroundInner(ZI)Z
    .registers 6
    .param p1, "isFgBlack"    # Z
    .param p2, "procState"    # I

    .line 1113
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_e

    .line 1115
    const/4 v2, 0x2

    if-le p2, v2, :cond_d

    const/16 v2, 0xb

    if-eq p2, v2, :cond_d

    move v0, v1

    nop

    :cond_d
    return v0

    .line 1117
    :cond_e
    const/4 v2, 0x6

    if-lt p2, v2, :cond_13

    move v0, v1

    nop

    :cond_13
    return v0
.end method

.method public static myLog(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 456
    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_9

    .line 457
    const-string v0, "BGC"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_9
    return-void
.end method

.method private post(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 350
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusBGController$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 351
    return-void
.end method

.method private postDelayed(Ljava/lang/Runnable;J)V
    .registers 5
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "nDelay"    # J

    .line 353
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/OnePlusBGController$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    return-void
.end method

.method private resetAllBudget()V
    .registers 5

    .line 1472
    const-string v0, "## RESET resetAllBudget RESET ##"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1473
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1474
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1475
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    sget-object v3, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->RESET_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cleanUp(Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;)V

    .line 1474
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1477
    .end local v1    # "i":I
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_29

    .line 1479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController;->mLastBudgetResetTimeStamp:J

    .line 1480
    return-void

    .line 1477
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private resetBudgetByUids(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1485
    .local p1, "killedUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## RESET resetBudgetByUids RESET ##, killedUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1486
    if-eqz p1, :cond_7d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7d

    .line 1487
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1488
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    :try_start_20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_78

    .line 1489
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1490
    .local v2, "killedInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v2, :cond_75

    .line 1493
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusBGController;->updateSingleStatistics(I)D

    move-result-wide v3

    .line 1494
    .local v3, "mAh":D
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/am/OnePlusBGController;->updateUidSippermAhStatsByAbnHandled(ID)V

    .line 1496
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "## RESET resetBudgetByUids RESET ##, reset budget of uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1498
    sget-object v5, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->HANDLED_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    invoke-virtual {v2, v5}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cleanUp(Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;)V

    .line 1500
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->addAbnHandledCount()V

    .line 1488
    .end local v2    # "killedInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    .end local v3    # "mAh":D
    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 1503
    .end local v1    # "i":I
    :cond_78
    monitor-exit v0

    goto :goto_7d

    :catchall_7a
    move-exception v1

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_20 .. :try_end_7c} :catchall_7a

    throw v1

    .line 1505
    :cond_7d
    :goto_7d
    return-void
.end method

.method private sendEmptyMessageDelayed(IJ)V
    .registers 5
    .param p1, "msgId"    # I
    .param p2, "delayMillis"    # J

    .line 328
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusBGController$MyHandler;->removeMessages(I)V

    .line 329
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/OnePlusBGController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 330
    return-void
.end method

.method private sendMessageDelayed(IJII)V
    .registers 8
    .param p1, "msgId"    # I
    .param p2, "delayMills"    # J
    .param p4, "uid"    # I
    .param p5, "procState"    # I

    .line 346
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v0, p1, p4, p5}, Lcom/android/server/am/OnePlusBGController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 347
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/am/OnePlusBGController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 348
    return-void
.end method

.method private sendMessageDelayed(IJLcom/android/server/am/OnePlusBGController$UidStat;Lcom/android/server/am/OnePlusBGController$PROC_TYPE;)V
    .registers 9
    .param p1, "msgId"    # I
    .param p2, "delayMills"    # J
    .param p4, "uidStat"    # Lcom/android/server/am/OnePlusBGController$UidStat;
    .param p5, "type"    # Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 340
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/am/OnePlusBGController$MyHandler;->removeMessages(ILjava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {p4}, Lcom/android/server/am/OnePlusBGController$UidStat;->getUid()I

    move-result v1

    invoke-virtual {p5}, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->ordinal()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/am/OnePlusBGController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 342
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/am/OnePlusBGController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 343
    return-void
.end method

.method private showSensorActiveUid()V
    .registers 4

    .line 1255
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0}, Landroid/hardware/SensorManager;->getActiveSensorList()Ljava/lang/String;

    move-result-object v0

    .line 1256
    .local v0, "activeSensor":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activeSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1257
    const-string v1, ""

    .line 1258
    .local v1, "packageName":Ljava/lang/String;
    return-void
.end method

.method private showSensorActiveUid(I)V
    .registers 5
    .param p1, "handle"    # I

    .line 1261
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->getActiveSensorListByHandle(I)Ljava/lang/String;

    move-result-object v0

    .line 1262
    .local v0, "activeSensor":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activeSensor of handle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1263
    return-void
.end method

.method private updateSingleStatistics(I)D
    .registers 7
    .param p1, "uid"    # I

    .line 1136
    const-wide v0, -0x3fa4400000000000L    # -111.0

    .line 1141
    .local v0, "value":D
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryStatsService;->flushExternel()V

    .line 1142
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    .line 1144
    .local v2, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v2

    .line 1145
    :try_start_11
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    .line 1146
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/os/BatteryStatsHelper;->refreshSingleStats(II)D

    move-result-wide v3

    move-wide v0, v3

    .line 1147
    monitor-exit v2

    .line 1148
    return-wide v0

    .line 1147
    :catchall_20
    move-exception v3

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_20

    throw v3
.end method

.method private updateUidSippermAhStatsByAbnHandled(ID)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "mAh"    # D

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## Insert handled uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1190
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$UidStat;

    .line 1191
    .local v0, "stat":Lcom/android/server/am/OnePlusBGController$UidStat;
    nop

    .line 1201
    if-eqz v0, :cond_33

    iget-object v1, v0, Lcom/android/server/am/OnePlusBGController$UidStat;->mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_3c

    :cond_33
    const/16 v1, 0x2710

    if-lt p1, v1, :cond_3a

    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_3c

    :cond_3a
    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 1205
    .local v1, "type":Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    :goto_3c
    sget-object v2, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne v1, v2, :cond_42

    .line 1206
    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 1209
    :cond_42
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1210
    :try_start_45
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1211
    .local v3, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v3, :cond_53

    .line 1213
    invoke-virtual {v3, v1, p2, p3}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->insert(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    goto :goto_5d

    .line 1216
    :cond_53
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    invoke-direct {v5, p1, v1, p2, p3}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;-><init>(ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1218
    .end local v3    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    :goto_5d
    monitor-exit v2

    .line 1219
    return-void

    .line 1218
    :catchall_5f
    move-exception v3

    monitor-exit v2
    :try_end_61
    .catchall {:try_start_45 .. :try_end_61} :catchall_5f

    throw v3
.end method

.method private updateUidSippermAhStatsByFgBgChange(ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "type"    # Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    .param p3, "mAh"    # D

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## Insert uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1322
    const/4 v0, 0x0

    .line 1323
    .local v0, "confirmed":Z
    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne p2, v1, :cond_9f

    .line 1324
    const/4 v0, 0x1

    .line 1325
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->isAudioActive(I)Z

    move-result v1

    .line 1326
    .local v1, "isAudioActive":Z
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBGController;->isSensorActive(I)Z

    move-result v2

    .line 1328
    .local v2, "isSensorActive":Z
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/OnePlusBGController;->checkTrafficUidLocked(IZ)Z

    move-result v3

    .line 1329
    .local v3, "isUsingNetwork":Z
    const/4 v4, 0x0

    .line 1330
    .local v4, "isAlertWindow":Z
    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->getSysAlertWindowUids()Ljava/util/List;

    move-result-object v5

    .line 1331
    .local v5, "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_58

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 1332
    const/4 v4, 0x1

    .line 1335
    :cond_58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#### re-check uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " [Audio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Sensor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Network: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", AlertWindow: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1336
    if-nez v1, :cond_9d

    if-nez v2, :cond_9d

    if-nez v3, :cond_9d

    if-eqz v4, :cond_9a

    goto :goto_9d

    .line 1341
    :cond_9a
    sget-object p2, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .end local v1    # "isAudioActive":Z
    .end local v2    # "isSensorActive":Z
    .end local v3    # "isUsingNetwork":Z
    .end local v4    # "isAlertWindow":Z
    .end local v5    # "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_9f

    .line 1338
    .restart local v1    # "isAudioActive":Z
    .restart local v2    # "isSensorActive":Z
    .restart local v3    # "isUsingNetwork":Z
    .restart local v4    # "isAlertWindow":Z
    .restart local v5    # "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_9d
    :goto_9d
    sget-object p2, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 1344
    .end local v1    # "isAudioActive":Z
    .end local v2    # "isSensorActive":Z
    .end local v3    # "isUsingNetwork":Z
    .end local v4    # "isAlertWindow":Z
    .end local v5    # "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_9f
    :goto_9f
    if-eqz v0, :cond_ce

    .line 1345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Insert confirmed uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mAh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1348
    :cond_ce
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1349
    :try_start_d1
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1350
    .local v2, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v2, :cond_df

    .line 1352
    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->insert(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    goto :goto_e9

    .line 1355
    :cond_df
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;-><init>(ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1357
    .end local v2    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    :goto_e9
    monitor-exit v1

    .line 1358
    return-void

    .line 1357
    :catchall_eb
    move-exception v2

    monitor-exit v1
    :try_end_ed
    .catchall {:try_start_d1 .. :try_end_ed} :catchall_eb

    throw v2
.end method

.method private updateUidSippermAhStatsBySippers(Ljava/util/List;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)V"
        }
    .end annotation

    .local p1, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    move-object/from16 v1, p0

    .line 1362
    move-object/from16 v2, p1

    if-eqz v2, :cond_18a

    .line 1366
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->genActiveAudioUidsList()Ljava/util/List;

    move-result-object v3

    .line 1367
    .local v3, "activeAudioUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->genActiveSensorUidsList()Ljava/util/List;

    move-result-object v4

    .line 1368
    .local v4, "activeSensorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, v1, Lcom/android/server/am/OnePlusBGController;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->getSysAlertWindowUids()Ljava/util/List;

    move-result-object v5

    .line 1370
    .local v5, "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_19
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_189

    .line 1372
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatterySipper;

    .line 1375
    .local v7, "oneSipper":Lcom/android/internal/os/BatterySipper;
    iget-object v8, v7, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v9, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v8, v9, :cond_177

    .line 1377
    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v8

    .line 1380
    .local v8, "uid":I
    iget-object v9, v1, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/OnePlusBGController$UidStat;

    .line 1381
    .local v9, "stat":Lcom/android/server/am/OnePlusBGController$UidStat;
    const/4 v10, 0x0

    .line 1382
    .local v10, "isSuspiciousState":Z
    nop

    .line 1392
    if-eqz v9, :cond_3e

    iget-object v11, v9, Lcom/android/server/am/OnePlusBGController$UidStat;->mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_47

    :cond_3e
    const/16 v11, 0x2710

    if-lt v8, v11, :cond_45

    sget-object v11, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_47

    :cond_45
    sget-object v11, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 1393
    .local v11, "type":Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    :goto_47
    if-eqz v9, :cond_4e

    invoke-virtual {v9}, Lcom/android/server/am/OnePlusBGController$UidStat;->isSuspiciousState()Z

    move-result v12

    goto :goto_4f

    :cond_4e
    const/4 v12, 0x0

    :goto_4f
    move v10, v12

    .line 1394
    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v12

    .line 1398
    .local v12, "mAh":D
    sget-boolean v14, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z

    if-eqz v14, :cond_8d

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "## Insert uid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "  Sus="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " mAh"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1409
    :cond_8d
    const/4 v14, 0x0

    .line 1410
    .local v14, "confirmed":Z
    const/4 v15, 0x0

    .line 1411
    .local v15, "isAudioActive":Z
    const/16 v16, 0x0

    .line 1412
    .local v16, "isSensorActive":Z
    const/16 v17, 0x0

    .line 1413
    .local v17, "isUsingNetwork":Z
    const/16 v18, 0x0

    .line 1414
    .local v18, "isAlertWindow":Z
    sget-object v19, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$PROC_TYPE:[I

    invoke-virtual {v11}, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->ordinal()I

    move-result v20

    aget v0, v19, v20

    const/4 v2, 0x1

    if-eq v0, v2, :cond_ac

    .line 1432
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move/from16 v3, v17

    move/from16 v2, v18

    goto/16 :goto_122

    .line 1416
    :cond_ac
    const/4 v14, 0x1

    .line 1417
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v15, v0

    .line 1418
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1419
    .end local v16    # "isSensorActive":Z
    .local v0, "isSensorActive":Z
    move-object/from16 v21, v3

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, Lcom/android/server/am/OnePlusBGController;->checkTrafficUidLocked(IZ)Z

    move-result v3

    .line 1420
    .end local v17    # "isUsingNetwork":Z
    .local v3, "isUsingNetwork":Z
    .local v21, "activeAudioUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_d3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 1421
    const/16 v18, 0x1

    .line 1423
    .end local v18    # "isAlertWindow":Z
    .local v2, "isAlertWindow":Z
    :cond_d3
    move/from16 v2, v18

    move-object/from16 v22, v4

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "activeSensorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v22, "activeSensorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v5

    const-string v5, "#### re-check uid:"

    .end local v5    # "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v23, "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " [Audio: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Sensor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", AlertWindow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1424
    if-nez v15, :cond_11e

    if-nez v0, :cond_11e

    if-nez v3, :cond_11e

    if-eqz v2, :cond_11b

    goto :goto_11e

    .line 1427
    :cond_11b
    sget-object v11, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_120

    .line 1425
    :cond_11e
    :goto_11e
    sget-object v11, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 1432
    .end local v0    # "isSensorActive":Z
    .restart local v16    # "isSensorActive":Z
    :goto_120
    move/from16 v16, v0

    :goto_122
    if-eqz v14, :cond_151

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### Insert confirmed uid "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mAh"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1436
    :cond_151
    iget-object v4, v1, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1437
    :try_start_154
    iget-object v0, v1, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1438
    .local v0, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v0, :cond_166

    .line 1440
    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->insert(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    goto :goto_172

    .line 1443
    :cond_166
    iget-object v5, v1, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    new-instance v0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .end local v0    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    .local v24, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    invoke-direct {v0, v8, v11, v12, v13}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;-><init>(ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    invoke-virtual {v5, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1445
    .end local v24    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    :goto_172
    monitor-exit v4

    goto :goto_17d

    :catchall_174
    move-exception v0

    monitor-exit v4
    :try_end_176
    .catchall {:try_start_154 .. :try_end_176} :catchall_174

    throw v0

    .line 1370
    .end local v2    # "isAlertWindow":Z
    .end local v7    # "oneSipper":Lcom/android/internal/os/BatterySipper;
    .end local v8    # "uid":I
    .end local v9    # "stat":Lcom/android/server/am/OnePlusBGController$UidStat;
    .end local v10    # "isSuspiciousState":Z
    .end local v11    # "type":Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    .end local v12    # "mAh":D
    .end local v14    # "confirmed":Z
    .end local v15    # "isAudioActive":Z
    .end local v16    # "isSensorActive":Z
    .end local v21    # "activeAudioUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v22    # "activeSensorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v23    # "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v3, "activeAudioUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4    # "activeSensorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_177
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    .end local v3    # "activeAudioUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "activeSensorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v21    # "activeAudioUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v22    # "activeSensorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v23    # "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_17d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v2, p1

    goto/16 :goto_19

    .line 1448
    .end local v6    # "i":I
    .end local v21    # "activeAudioUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v22    # "activeSensorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v23    # "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_189
    goto :goto_18f

    .line 1449
    :cond_18a
    const-string v0, "## fetal error, sippers == null"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1451
    :goto_18f
    return-void
.end method


# virtual methods
.method public dumpSnapShotData(Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V
    .registers 5
    .param p1, "type"    # Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    .line 2129
    sget-object v0, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$SNAPSHOT_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    goto :goto_18

    .line 2131
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 2132
    const-string v0, "ONESHOT"

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/OnePlusBGController;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 2136
    :cond_18
    :goto_18
    return-void
.end method

.method public dumpUidSippermAhStats(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController;->mLastBudgetResetTimeStamp:J

    sub-long/2addr v0, v2

    .line 1163
    .local v0, "timeAwayReset":J
    const-string v2, "Time Away From Budget Reset="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1164
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BGC Criteria : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1166
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1167
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_40
    :try_start_40
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_62

    .line 1168
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1169
    .local v4, "key":I
    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1170
    .local v5, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v5, :cond_5f

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    .end local v4    # "key":I
    .end local v5    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 1172
    .end local v3    # "i":I
    :cond_62
    monitor-exit v2

    .line 1173
    return-void

    .line 1172
    :catchall_64
    move-exception v3

    monitor-exit v2
    :try_end_66
    .catchall {:try_start_40 .. :try_end_66} :catchall_64

    throw v3
.end method

.method public enableDispatch(Z)V
    .registers 4
    .param p1, "b"    # Z

    .line 133
    sput-boolean p1, Lcom/android/server/am/OnePlusBGController;->mbEnableDispatch:Z

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mbEnableDispatch set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusBGController;->mbEnableDispatch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public getStepCounterActiveUids()Ljava/lang/String;
    .registers 3

    .line 1266
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 1267
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getActiveSensorListByHandle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1269
    :cond_e
    const-string v0, ""

    return-object v0
.end method

.method grabOnlineConfig()V
    .registers 4

    .line 541
    const-string v0, "[OnlineConfig] grabOnlineConfig"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 542
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    const-string v2, "BGC"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 543
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mConfigUpdater:Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 544
    return-void
.end method

.method handleOnUidStateChanged(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUidStateChanged: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 756
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 758
    return-void

    .line 761
    :cond_24
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_38

    .line 765
    new-instance v0, Lcom/android/server/am/OnePlusBGController$UidStat;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/server/am/OnePlusBGController$UidStat;-><init>(Lcom/android/server/am/OnePlusBGController;IZI)V

    .line 766
    .local v0, "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 767
    .end local v0    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    goto :goto_5c

    .line 768
    :cond_38
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$UidStat;

    .line 771
    .restart local v0    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/am/OnePlusBGController$UidStat;->update(IZ)V

    .line 775
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5c

    .line 776
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v1

    .line 777
    :try_start_4a
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 778
    .local v2, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v2, :cond_57

    .line 779
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->informChgToFg()V

    .line 781
    .end local v2    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    :cond_57
    monitor-exit v1

    goto :goto_5c

    :catchall_59
    move-exception v2

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_4a .. :try_end_5b} :catchall_59

    throw v2

    .line 785
    .end local v0    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    :cond_5c
    :goto_5c
    return-void
.end method

.method initializeUidStats()V
    .registers 11

    .line 648
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 651
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 655
    .local v0, "uidProcStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    :try_start_a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 656
    .local v1, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 657
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_18
    if-ge v4, v2, :cond_44

    .line 658
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 660
    .local v5, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 661
    .local v6, "cur_uid":I
    iget v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 662
    .local v7, "cur_prostat":I
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 663
    .local v8, "exist_procstat":Ljava/lang/Integer;
    if-eqz v8, :cond_3a

    .line 664
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v7, :cond_41

    .line 666
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_41

    .line 670
    :cond_3a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 657
    .end local v5    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6    # "cur_uid":I
    .end local v7    # "cur_prostat":I
    .end local v8    # "exist_procstat":Ljava/lang/Integer;
    :cond_41
    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 676
    .end local v4    # "i":I
    :cond_44
    nop

    .local v3, "i":I
    :goto_45
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5f

    .line 677
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 678
    .local v4, "uid":I
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 680
    .local v5, "procstat":I
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/OnePlusBGController;->handleOnUidStateChanged(II)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_5c} :catch_60

    .line 676
    .end local v4    # "uid":I
    .end local v5    # "procstat":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 683
    .end local v1    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_5f
    goto :goto_61

    .line 682
    :catch_60
    move-exception v1

    .line 684
    :goto_61
    return-void
.end method

.method injectRegisterUidObserver(Landroid/app/IUidObserver;I)V
    .registers 6
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .param p2, "which"    # I

    .line 718
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 720
    return-void
.end method

.method injectUnregisterUidObserver(Landroid/app/IUidObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/app/IUidObserver;

    .line 1133
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 1134
    return-void
.end method

.method public isSensorActive(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 1273
    const/4 v0, 0x0

    .line 1274
    .local v0, "isRunning":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1275
    .local v1, "strUid":Ljava/lang/String;
    iget v2, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2a

    .line 1276
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    iget v3, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getActiveSensorListByHandle(I)Ljava/lang/String;

    move-result-object v2

    .line 1277
    .local v2, "activeSensor":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1278
    const/4 v0, 0x1

    .line 1281
    .end local v2    # "activeSensor":Ljava/lang/String;
    :cond_2a
    return v0
.end method

.method public needCheckProc(II)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 1105
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/OnePlusBGController;->isProcessStateBackgroundInner(ZI)Z

    move-result v0

    return v0
.end method

.method registerOnlineConfig()V
    .registers 6

    .line 531
    const-string v0, "[OnlineConfig] registerOnlineConfig"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 532
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mConfigUpdater:Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;

    const-string v4, "BGC"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 534
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 535
    return-void
.end method

.method public resetKillUidBudgets(Ljava/util/HashSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 332
    .local p1, "killedUidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    const v1, 0x101d6

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusBGController$MyHandler;->removeMessages(I)V

    .line 333
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/server/am/OnePlusBGController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 334
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/OnePlusBGController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 335
    return-void
.end method

.method retrieveSensorHandle()V
    .registers 5

    .line 516
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 517
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz v0, :cond_43

    .line 518
    const/4 v1, 0x0

    .line 518
    .local v1, "i":I
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 519
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v2

    if-nez v2, :cond_40

    .line 520
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update StepCounterHandle to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 518
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 525
    .end local v1    # "i":I
    :cond_43
    return-void
.end method

.method public snapShot(Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V
    .registers 4
    .param p1, "snapshot"    # Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    .line 491
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    new-instance v1, Lcom/android/server/am/OnePlusBGController$SnapShot;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/OnePlusBGController$SnapShot;-><init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusBGController$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 492
    return-void
.end method

.method public snapShot(Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;IF)V
    .registers 6
    .param p1, "snapshot"    # Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;
    .param p2, "batteryLevelDrop"    # I
    .param p3, "mA"    # F

    .line 495
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    new-instance v1, Lcom/android/server/am/OnePlusBGController$SnapShot;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBGController$SnapShot;-><init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;IF)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusBGController$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 496
    return-void
.end method

.method updateFg_BlackUidSet(Ljava/util/HashSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 621
    .local p1, "blackPkgsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackUidSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 622
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackUidSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 623
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_75

    .line 625
    .local v2, "pkgName":Ljava/lang/String;
    :try_start_19
    sget-object v4, Lcom/android/server/am/OnePlusBGController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 626
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackUidSet:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_2a} :catch_2b
    .catchall {:try_start_19 .. :try_end_2a} :catchall_75

    .line 629
    .end local v3    # "uid":I
    goto :goto_46

    .line 627
    :catch_2b
    move-exception v3

    .line 628
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oops, cant find Fg_Black pkg :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \'s uid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 630
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_46
    goto :goto_c

    .line 632
    :cond_47
    move v1, v3

    .line 632
    .local v1, "i":I
    :goto_48
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_73

    .line 633
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidStat;

    .line 634
    .local v2, "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackUidSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidStat;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 635
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/OnePlusBGController$UidStat;->updateIsFgBlack(Z)V

    goto :goto_70

    .line 637
    :cond_6d
    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusBGController$UidStat;->updateIsFgBlack(Z)V

    .line 632
    .end local v2    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    :goto_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 640
    .end local v1    # "i":I
    :cond_73
    monitor-exit v0

    .line 641
    return-void

    .line 640
    :catchall_75
    move-exception v1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_2c .. :try_end_77} :catchall_75

    throw v1
.end method

.method public updateUidTraffic()Ljava/util/HashSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v0

    .line 794
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUsingTrafficUidSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 795
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 796
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 797
    .local v2, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v2, :cond_32

    .line 798
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusBGController;->computeUidTraffic(I)Z

    move-result v3

    .line 799
    .local v3, "usingNetwork":Z
    if-eqz v3, :cond_32

    .line 800
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mUsingTrafficUidSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 795
    .end local v2    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    .end local v3    # "usingNetwork":Z
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 804
    .end local v1    # "i":I
    :cond_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_39

    .line 805
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUsingTrafficUidSet:Ljava/util/HashSet;

    return-object v0

    .line 804
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method
