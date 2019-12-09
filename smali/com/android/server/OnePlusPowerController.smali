.class public Lcom/android/server/OnePlusPowerController;
.super Lcom/android/server/SystemService;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;,
        Lcom/android/server/OnePlusPowerController$Shell;,
        Lcom/android/server/OnePlusPowerController$KMeans;,
        Lcom/android/server/OnePlusPowerController$IdleStats;,
        Lcom/android/server/OnePlusPowerController$Cluster;,
        Lcom/android/server/OnePlusPowerController$IdleItem;,
        Lcom/android/server/OnePlusPowerController$MyHandler;,
        Lcom/android/server/OnePlusPowerController$ConfigUpdater;,
        Lcom/android/server/OnePlusPowerController$LocalService;,
        Lcom/android/server/OnePlusPowerController$BinderService;
    }
.end annotation


# static fields
.field private static final ACTION_IDLE_STATS_CONFIG:Ljava/lang/String; = "net.oneplus.powercontroller.action.IDLE_STATS_CONFIG"

.field private static final ACTION_OPTIMIZE_SWITCH:Ljava/lang/String; = "com.android.settings.action.BACKGROUND_OPTIMIZE_SWITCH"

.field private static final ACTION_PROCESS_KMEANS:Ljava/lang/String; = "net.oneplus.powercontroller.action.PROCESS_KMEANS"

.field private static final ACTION_RECORD_IDLE_ITEM:Ljava/lang/String; = "net.oneplus.powercontroller.action.RECORD_IDLE_ITEM"

.field private static final ACTION_RESTORE_IDLE_ITEM:Ljava/lang/String; = "net.oneplus.powercontroller.action.RESTORE_IDLE_ITEM"

.field private static final ADVANCED_OPTIMIZATION_ACTIVITY:Ljava/lang/String; = "com.oneplus.settings.backgroundoptimize.funcswitch.BgOptimizeSwitchActivity"

.field public static final BETA_OR_ALPHA_ROM:Z

.field private static final BLE_SCAN_AVAILABLE:I = 0x1

.field private static final BLE_SCAN_UNAVAILABLE:I = 0x0

.field private static DEBUG_IDLE_STATS:Z = false

.field private static DEBUG_KMEANS:Z = false

.field private static DEBUG_ONEPLUS:Z = false

.field private static DEBUG_SLEEP_STATE:Z = false

.field private static final DELAY_DEBOUNCE:I = 0x7d0

.field private static final DELAY_START:I = 0x1388

.field private static final DIMENSION:I = 0x2

.field private static final EXTRA_CLASSNAME:Ljava/lang/String; = "classname"

.field private static final INTENT_OPSM_CHECK:Ljava/lang/String; = "net.oneplus.powercontroller.intent.OPSM"

.field private static final LOG_TAG:Ljava/lang/String; = "OnePlusPowerController"

.field private static final MAX_IDLE_ITEMS:I = 0x3c

.field private static final MAX_IDLE_LENGTH:I = 0x337f980

.field private static final MDM_APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final MDM_EVENT:Ljava/lang/String; = "usersleep"

.field private static final MDM_OPSM_ACTIVE:Ljava/lang/String; = "1"

.field private static final MDM_OPSM_CONFIG:Ljava/lang/String; = "oc"

.field private static final MDM_OPSM_INACTIVE:Ljava/lang/String; = "0"

.field private static final MDM_OPSM_STATE:Ljava/lang/String; = "os"

.field private static final MIN_IDLE_ITEMS:I = 0x2

.field private static final MIN_IDLE_LENGTH:I = 0x112a880

.field private static final MIN_RECORD_TIME:I = 0x36ee80

.field private static final MSG_ADD_EXCLUSIVE_WAKELOCK:I = 0x3

.field private static final MSG_EARLY_RESTRICTION:I = 0x8

.field private static final MSG_ENTER_OPSM:I = 0x15be

.field private static final MSG_FIRST_ACTIVATION:I = 0x9

.field private static final MSG_INIT:I = 0x1

.field private static final MSG_LEAVE_OPSM:I = 0x1e6c

.field private static final MSG_ONLINE_CONFIG:I = 0x7

.field private static final MSG_PROCESS_KMEANS:I = 0x4

.field private static final MSG_RECORD_IDLE:I = 0x5

.field private static final MSG_RESTORE_IDLE:I = 0x6

.field private static final MSG_UPDATE_POLICY:I = 0x2

.field private static final NUM_CLUSTER:I = 0x2

.field private static final ONE_DAY:I = 0x5265c00

.field private static final ONE_HOUR:I = 0x36ee80

.field private static final ONE_MINUTE:I = 0xea60

.field private static final ONE_SECOND:I = 0x3e8

.field private static final OPSM_DISABLED_BY_SYSTEM:I = -0x1

.field private static final OPSM_DISABLED_BY_USER:I = 0x0

.field private static final OPSM_ENABLED_BY_SYSTEM:I = 0x2

.field private static final OPSM_ENABLED_BY_USER:I = 0x1

.field private static final OPSM_ENABLED_UNKNOWN:I = -0x2

.field private static final POLICY_AGGRESSIVE:I = 0x1

.field private static final POLICY_DEFAULT:I = 0x0

.field private static final POWER_CONTROL_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "power_control_notification"

.field private static final POWER_CONTROL_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Power Control"

.field private static final PROJECT_CONFIG_NAME:Ljava/lang/String; = "PowerControl"

.field private static final RANDOM_SEED:I = 0x64

.field public static final REQUEST_OPSM:I = 0x1

.field public static final REQUEST_SLEEP_CHANGE:I = 0x0

.field public static SCREEN_OFF:I = 0x0

.field public static SCREEN_ON:I = 0x0

.field private static final STANDBY_DIAGNOSIS_FILE:Ljava/lang/String; = "/data/system/power/diagnosis_standby.txt"

.field private static final STATE_ACTIVE:I = 0x0

.field public static final STATE_AWAKE:I = 0x1e6c

.field private static final STATE_IDLE:I = 0x5

.field private static final STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final STATE_IDLE_PENDING:I = 0x2

.field private static final STATE_INACTIVE:I = 0x1

.field private static final STATE_LOCATING:I = 0x4

.field private static final STATE_SENSING:I = 0x3

.field public static final STATE_SLEEP:I = 0x15be

.field private static final THRESHOLD_COEFFICIENT_OF_VARIATION:D = 0.4

.field private static final TIMEOUT_AFTER_SCREEN_OFF:I = 0x44aa20

.field private static final TIMEOUT_BEFORE_USER_AWAKE:I = 0x1b7740

.field private static final TIME_LENGTH:I = 0x1

.field private static final TIME_START:I = 0x0

.field private static final TOLERANCE:I = 0x1

.field private static mActivationCount:I

.field private static mAggressive:Z

.field private static mCoefVar:D

.field private static mFirstChange:Z

.field private static mFirstMcc:I

.field private static mFirstMnc:I

.field private static mIsDeepSleep:Z

.field private static mMaxIdleItems:I

.field private static mMaxIdleLength:I

.field private static mMinIdleItems:I

.field private static mMinIdleLength:I

.field private static mMinRecordTime:I

.field private static mNumCluster:I

.field private static mOnlineConfigEnabled:Z

.field private static mRandomSeed:I

.field private static mShuttingDown:Z

.field private static mSleepState:I

.field private static mTimeOutAfterScreenOff:I

.field private static mTimeOutBeforeUserAwake:I

.field private static mTolerance:I


# instance fields
.field public final FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

.field SIMPLE_TIME_FORMAT:Ljava/time/format/DateTimeFormatter;

.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field mBinderService:Lcom/android/server/OnePlusPowerController$BinderService;

.field private mBootCompletedElapsedTime:J

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDeepSleepWhitelistAppIdArray:[I

.field private final mDeepSleepWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mDeepSleepWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDozeState:I

.field private final mEarlyRestrictionAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mEarlyRestrictionEnabled:Z

.field private mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

.field private mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

.field private mIsCharging:Z

.field private mKMeans:Lcom/android/server/OnePlusPowerController$KMeans;

.field private mLastEnterOpsmTime:Ljava/time/LocalDateTime;

.field private mLastExitOpsmTime:Ljava/time/LocalDateTime;

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

.field private mLocalJobScheduler:Lcom/android/server/job/JobSchedulerInternal;

.field private final mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private final mLock:Ljava/lang/Object;

.field private mNextAlarmFromOPSM:J

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOPSMActive:Z

.field private mOPSMEnabled:I

.field private final mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

.field mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private final mRestrictAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSavedBleScanAlwaysAvailable:I

.field private mSavedBluetoothState:Z

.field private mSavedDataState:Z

.field private mSavedTetheredIfaces:[Ljava/lang/String;

.field private mSavedWifiScanState:Z

.field private mSavedWifiState:Z

.field private mScreenOffStart:Ljava/time/LocalDateTime;

.field private mScreenOffStartDateTime:Ljava/time/LocalDateTime;

.field private mSensorEnabled:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRestrict:Z

.field private mSleepEndOverridden:Ljava/time/LocalDateTime;

.field private mSleepStartOverridden:Ljava/time/LocalDateTime;

.field private final mSleepStateChangeAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mStartTetheringCallback:Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;

.field private mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserSleep:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private tetherableBluetoothRegexs:[Ljava/lang/String;

.field private tetherableUsbRegexs:[Ljava/lang/String;

.field private tetherableWifiRegexs:[Ljava/lang/String;

.field private timeout:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 161
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    .line 162
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z

    .line 163
    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z

    .line 164
    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_SLEEP_STATE:Z

    .line 233
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/OnePlusPowerController;->mFirstChange:Z

    .line 259
    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->mIsDeepSleep:Z

    .line 348
    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->mAggressive:Z

    .line 349
    sput-boolean v1, Lcom/android/server/OnePlusPowerController;->mOnlineConfigEnabled:Z

    .line 350
    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->mShuttingDown:Z

    .line 352
    const/16 v2, 0x1e6c

    sput v2, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    .line 353
    const/4 v2, -0x1

    sput v2, Lcom/android/server/OnePlusPowerController;->mFirstMcc:I

    .line 354
    sput v2, Lcom/android/server/OnePlusPowerController;->mFirstMnc:I

    .line 367
    const v2, 0x44aa20

    sput v2, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    .line 368
    const v2, 0x1b7740

    sput v2, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    .line 382
    const-string/jumbo v2, "ro.build.beta"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_3e

    const-string/jumbo v2, "ro.build.alpha"

    .line 383
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_3c

    goto :goto_3e

    :cond_3c
    move v2, v0

    goto :goto_3f

    :cond_3e
    :goto_3e
    move v2, v1

    :goto_3f
    sput-boolean v2, Lcom/android/server/OnePlusPowerController;->BETA_OR_ALPHA_ROM:Z

    .line 385
    sput v0, Lcom/android/server/OnePlusPowerController;->SCREEN_OFF:I

    .line 386
    sput v1, Lcom/android/server/OnePlusPowerController;->SCREEN_ON:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 472
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistApps:Landroid/util/ArrayMap;

    .line 184
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLock:Ljava/lang/Object;

    .line 228
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 229
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 230
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_TIME_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 247
    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 248
    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 249
    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    .line 250
    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 320
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    .line 324
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    .line 325
    iput-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mSensorEnabled:Z

    .line 335
    iput v2, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    .line 374
    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 419
    new-instance v3, Lcom/android/server/OnePlusPowerController$1;

    invoke-direct {v3, p0}, Lcom/android/server/OnePlusPowerController$1;-><init>(Lcom/android/server/OnePlusPowerController;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mRestrictAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 431
    new-instance v3, Lcom/android/server/OnePlusPowerController$2;

    invoke-direct {v3, p0}, Lcom/android/server/OnePlusPowerController$2;-><init>(Lcom/android/server/OnePlusPowerController;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mEarlyRestrictionAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 443
    new-instance v3, Lcom/android/server/OnePlusPowerController$3;

    invoke-direct {v3, p0}, Lcom/android/server/OnePlusPowerController$3;-><init>(Lcom/android/server/OnePlusPowerController;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mSleepStateChangeAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 1210
    new-instance v3, Lcom/android/server/OnePlusPowerController$5;

    invoke-direct {v3, p0}, Lcom/android/server/OnePlusPowerController$5;-><init>(Lcom/android/server/OnePlusPowerController;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1732
    new-instance v3, Lcom/android/server/OnePlusPowerController$6;

    invoke-direct {v3, p0}, Lcom/android/server/OnePlusPowerController$6;-><init>(Lcom/android/server/OnePlusPowerController;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 3523
    const-wide/16 v3, 0x1388

    iput-wide v3, p0, Lcom/android/server/OnePlusPowerController;->timeout:J

    .line 474
    const/16 v3, 0x3c

    sput v3, Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I

    .line 475
    const v3, 0x112a880

    sput v3, Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I

    .line 476
    const v3, 0x337f980

    sput v3, Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I

    .line 477
    const/4 v3, 0x2

    sput v3, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    .line 478
    const v4, 0x36ee80

    sput v4, Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I

    .line 479
    sput v3, Lcom/android/server/OnePlusPowerController;->mNumCluster:I

    .line 480
    const/16 v3, 0x64

    sput v3, Lcom/android/server/OnePlusPowerController;->mRandomSeed:I

    .line 481
    sput v1, Lcom/android/server/OnePlusPowerController;->mTolerance:I

    .line 482
    const-wide v3, 0x3fd999999999999aL    # 0.4

    sput-wide v3, Lcom/android/server/OnePlusPowerController;->mCoefVar:D

    .line 484
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 485
    const-string/jumbo v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 486
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    .line 487
    new-instance v3, Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;-><init>(Lcom/android/server/OnePlusPowerController;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    .line 488
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mPowerManager:Landroid/os/PowerManager;

    .line 489
    const-class v3, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v3}, Lcom/android/server/OnePlusPowerController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManagerInternal;

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 491
    new-instance v3, Lcom/oneplus/config/ConfigObserver;

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    new-instance v6, Lcom/android/server/OnePlusPowerController$ConfigUpdater;

    invoke-direct {v6, p0, v0}, Lcom/android/server/OnePlusPowerController$ConfigUpdater;-><init>(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusPowerController$1;)V

    const-string v7, "PowerControl"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 492
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v3}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 494
    new-instance v3, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string v5, "NYNCG4I0TI"

    invoke-direct {v3, v4, v5}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 495
    new-instance v3, Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {v3, p1}, Lcom/android/server/OverHeatingDiagnosis;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    .line 497
    new-instance v3, Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-direct {v3, p0}, Lcom/android/server/OnePlusPowerController$IdleStats;-><init>(Lcom/android/server/OnePlusPowerController;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    .line 498
    new-instance v3, Lcom/android/server/OnePlusPowerController$KMeans;

    invoke-direct {v3, p0}, Lcom/android/server/OnePlusPowerController$KMeans;-><init>(Lcom/android/server/OnePlusPowerController;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mKMeans:Lcom/android/server/OnePlusPowerController$KMeans;

    .line 500
    new-instance v3, Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;

    invoke-direct {v3, v0}, Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;-><init>(Lcom/android/server/OnePlusPowerController$1;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mStartTetheringCallback:Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;

    .line 502
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    .line 503
    new-instance v0, Lcom/android/server/OnePlusPowerController$4;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/server/OnePlusPowerController$4;-><init>(Lcom/android/server/OnePlusPowerController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContentObserver:Landroid/database/ContentObserver;

    .line 532
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "doze_mode_policy"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 537
    new-array v0, v1, [I

    const/16 v1, 0x50

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 538
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "optimal_power_save_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 544
    :cond_145
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_150

    const-string v0, "OnePlusPowerController"

    const-string v1, "OnePlusPowerController is constructed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_150
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OnePlusPowerController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/OnePlusPowerController;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;
    .param p1, "x1"    # J

    .line 159
    iput-wide p1, p0, Lcom/android/server/OnePlusPowerController;->mNextAlarmFromOPSM:J

    return-wide p1
.end method

.method static synthetic access$1100()Z
    .registers 1

    .line 159
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->mAggressive:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 159
    sput-boolean p0, Lcom/android/server/OnePlusPowerController;->mAggressive:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/server/OnePlusPowerController;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/OnePlusPowerController;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic access$1400()Z
    .registers 1

    .line 159
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/OnePlusPowerController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    return v0
.end method

.method static synthetic access$1800()Z
    .registers 1

    .line 159
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->mIsDeepSleep:Z

    return v0
.end method

.method static synthetic access$1900()I
    .registers 1

    .line 159
    sget v0, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/OnePlusPowerController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/OnePlusStandbyAnalyzer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;
    .param p1, "x1"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 159
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic access$2302(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 159
    sput p0, Lcom/android/server/OnePlusPowerController;->mRandomSeed:I

    return p0
.end method

.method static synthetic access$2400()I
    .registers 1

    .line 159
    sget v0, Lcom/android/server/OnePlusPowerController;->mNumCluster:I

    return v0
.end method

.method static synthetic access$2402(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 159
    sput p0, Lcom/android/server/OnePlusPowerController;->mNumCluster:I

    return p0
.end method

.method static synthetic access$2502(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 159
    sput p0, Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I

    return p0
.end method

.method static synthetic access$2600()I
    .registers 1

    .line 159
    sget v0, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    return v0
.end method

.method static synthetic access$2602(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 159
    sput p0, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    return p0
.end method

.method static synthetic access$2700()I
    .registers 1

    .line 159
    sget v0, Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I

    return v0
.end method

.method static synthetic access$2702(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 159
    sput p0, Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I

    return p0
.end method

.method static synthetic access$2802(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 159
    sput p0, Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I

    return p0
.end method

.method static synthetic access$2902(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 159
    sput p0, Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/OnePlusPowerController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mIsCharging:Z

    return v0
.end method

.method static synthetic access$3000()I
    .registers 1

    .line 159
    sget v0, Lcom/android/server/OnePlusPowerController;->mTolerance:I

    return v0
.end method

.method static synthetic access$3002(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 159
    sput p0, Lcom/android/server/OnePlusPowerController;->mTolerance:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/server/OnePlusPowerController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;
    .param p1, "x1"    # Z

    .line 159
    iput-boolean p1, p0, Lcom/android/server/OnePlusPowerController;->mIsCharging:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/OnePlusPowerController;Lorg/json/JSONArray;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 159
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusPowerController;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/OnePlusPowerController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/OnePlusPowerController;)Landroid/telephony/SubscriptionManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mKMeans:Lcom/android/server/OnePlusPowerController$KMeans;

    return-object v0
.end method

.method static synthetic access$3600()D
    .registers 2

    .line 159
    sget-wide v0, Lcom/android/server/OnePlusPowerController;->mCoefVar:D

    return-wide v0
.end method

.method static synthetic access$3700()Z
    .registers 1

    .line 159
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z

    return v0
.end method

.method static synthetic access$3800()Z
    .registers 1

    .line 159
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/OnePlusPowerController;)Landroid/app/AlarmManager$OnAlarmListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mEarlyRestrictionAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/OnePlusPowerController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    invoke-direct {p0}, Lcom/android/server/OnePlusPowerController;->isMusicPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/OnePlusPowerController;)Landroid/app/AlarmManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/OnePlusPowerController;Ljava/time/LocalDateTime;)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;
    .param p1, "x1"    # Ljava/time/LocalDateTime;

    .line 159
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusPowerController;->convertLocalDateTimeToUtcMillis(Ljava/time/LocalDateTime;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4200(Lcom/android/server/OnePlusPowerController;)Landroid/app/Notification;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    invoke-direct {p0}, Lcom/android/server/OnePlusPowerController;->createNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/OnePlusPowerController;)Landroid/app/NotificationManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$4400()Z
    .registers 1

    .line 159
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->mFirstChange:Z

    return v0
.end method

.method static synthetic access$4402(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 159
    sput-boolean p0, Lcom/android/server/OnePlusPowerController;->mFirstChange:Z

    return p0
.end method

.method static synthetic access$4500()I
    .registers 1

    .line 159
    sget v0, Lcom/android/server/OnePlusPowerController;->mFirstMcc:I

    return v0
.end method

.method static synthetic access$4600()I
    .registers 1

    .line 159
    sget v0, Lcom/android/server/OnePlusPowerController;->mFirstMnc:I

    return v0
.end method

.method static synthetic access$4700()Z
    .registers 1

    .line 159
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/OnePlusPowerController;)Ljava/time/LocalDateTime;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/OnePlusPowerController;)Ljava/time/LocalDateTime;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method static synthetic access$500()I
    .registers 1

    .line 159
    sget v0, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    return v0
.end method

.method static synthetic access$502(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 159
    sput p0, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/OnePlusPowerController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget v0, p0, Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/OnePlusPowerController;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;
    .param p1, "x1"    # I

    .line 159
    iput p1, p0, Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/OnePlusPowerController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget v0, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/OnePlusPowerController;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;
    .param p1, "x1"    # I

    .line 159
    iput p1, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 159
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    return-object v0
.end method

.method private static buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I
    .registers 7
    .param p2, "outAppIds"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")[I"
        }
    .end annotation

    .line 3560
    .local p0, "systemApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "userApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3561
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1e

    .line 3562
    move v2, v0

    .local v2, "i":I
    :goto_8
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 3563
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3562
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3566
    .end local v2    # "i":I
    :cond_1e
    if-eqz p1, :cond_37

    .line 3567
    move v2, v0

    .restart local v2    # "i":I
    :goto_21
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 3568
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3567
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 3571
    .end local v2    # "i":I
    :cond_37
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 3572
    .local v1, "size":I
    new-array v2, v1, [I

    .line 3573
    .local v2, "appids":[I
    nop

    .local v0, "i":I
    :goto_3e
    if-ge v0, v1, :cond_49

    .line 3574
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v0

    .line 3573
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 3576
    .end local v0    # "i":I
    :cond_49
    return-object v2
.end method

.method private convertLocalDateTimeToUtcMillis(Ljava/time/LocalDateTime;)J
    .registers 6
    .param p1, "date"    # Ljava/time/LocalDateTime;

    .line 3599
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 3600
    .local v0, "zdt":Ljava/time/ZonedDateTime;
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    .line 3602
    .local v1, "instant":Ljava/time/Instant;
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    return-wide v2
.end method

.method private createNotification()Landroid/app/Notification;
    .registers 8

    .line 3761
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.BACKGROUND_OPTIMIZE_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3762
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "classname"

    const-string v2, "com.oneplus.settings.backgroundoptimize.funcswitch.BgOptimizeSwitchActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3763
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3764
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3766
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const v3, 0x50c0069

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3767
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const v4, 0x50c0068

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3769
    .local v3, "details":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "power_control_notification"

    invoke-direct {v4, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3771
    const v5, 0x506001b

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    .line 3772
    const v6, 0x1060157

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 3774
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 3775
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 3776
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 3777
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 3778
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string/jumbo v6, "sys"

    .line 3779
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 3780
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 3781
    const/16 v6, 0x10

    invoke-virtual {v4, v6, v5}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 3782
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 3784
    .local v4, "notification":Landroid/app/Notification;
    return-object v4
.end method

.method private createNotificationChannel(Landroid/app/NotificationManager;)V
    .registers 6
    .param p1, "notificationManager"    # Landroid/app/NotificationManager;

    .line 3746
    if-nez p1, :cond_3

    return-void

    .line 3748
    :cond_3
    new-instance v0, Landroid/app/NotificationChannel;

    const-string/jumbo v1, "power_control_notification"

    const-string v2, "Power Control"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 3753
    .local v0, "channel":Landroid/app/NotificationChannel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 3754
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 3755
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 3756
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 3757
    return-void
.end method

.method private dumpDiagnosisRecords(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sourcefile"    # Ljava/lang/String;

    .line 3526
    const/4 v0, 0x0

    .line 3527
    .local v0, "fis":Ljava/io/FileInputStream;
    const/16 v1, 0x400

    .line 3528
    .local v1, "buf_size":I
    new-array v2, v1, [B

    .line 3530
    .local v2, "buffer":[B
    :try_start_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3531
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 3532
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 3533
    const/4 v4, 0x0

    .line 3534
    .local v4, "length":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3535
    .local v5, "nowELAPSED":J
    :cond_1b
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v4, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3d

    .line 3537
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v8, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3538
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    iget-wide v9, p0, Lcom/android/server/OnePlusPowerController;->timeout:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_1b

    .line 3539
    const-string v7, "**** Exceed read timeout, force exit ***"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3540
    nop

    .line 3543
    .end local v4    # "length":I
    .end local v5    # "nowELAPSED":J
    :cond_3d
    goto :goto_43

    .line 3544
    :cond_3e
    const-string v4, "**** File not found ****"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_43} :catch_4e
    .catchall {:try_start_5 .. :try_end_43} :catchall_4c

    .line 3550
    .end local v3    # "f":Ljava/io/File;
    :goto_43
    if-eqz v0, :cond_4b

    .line 3551
    :try_start_45
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_4b

    .line 3552
    :catch_49
    move-exception v3

    .line 3554
    goto :goto_69

    .line 3553
    :cond_4b
    :goto_4b
    goto :goto_69

    .line 3549
    :catchall_4c
    move-exception v3

    goto :goto_6a

    .line 3546
    :catch_4e
    move-exception v3

    .line 3547
    .local v3, "e":Ljava/io/IOException;
    :try_start_4f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** Failed to read, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_4f .. :try_end_63} :catchall_4c

    .line 3550
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_4b

    .line 3551
    :try_start_65
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_49

    goto :goto_4b

    .line 3555
    :goto_69
    return-void

    .line 3549
    :goto_6a
    nop

    .line 3550
    if-eqz v0, :cond_73

    .line 3551
    :try_start_6d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_73

    .line 3552
    :catch_71
    move-exception v4

    nop

    .line 3553
    :cond_73
    :goto_73
    throw v3
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 2620
    const-string v0, "OnePlus power controller (powercontrol) commands"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2621
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2622
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2623
    const-string v0, "  log [on|off]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2624
    const-string v0, "    Enable/disable log messages"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2625
    const-string v0, "  onlineconfig [on|off]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2626
    const-string v0, "    Enable/disable online config of powercontrol service"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2627
    const-string v0, "  aggressive"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2628
    const-string v0, "    Print the information of the aggressive doze mode"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2629
    const-string v0, "  aggressive [on|off]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2630
    const-string v0, "    Enable or disable the aggressive doze mode"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2631
    const-string v0, "  overheat"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2632
    const-string v0, "    Print the information of the diagnosis of overheating"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2633
    const-string v0, "  overheat [enable|disable]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2634
    const-string v0, "    Enable or disable the diagnosis of overheating."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2635
    const-string v0, "  overheat [number|temper|period|force-monitor] <value>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2636
    const-string v0, "    Configure the property value of the diagnosis of overheating."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2638
    const-string v0, "  standby"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2639
    const-string v0, "    Print standby diagnosis records"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2641
    const-string v0, "  deepsleepwhitelist [update|clean|get] <value>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2642
    const-string v0, "    Update the deepsleepwhitelist, or get, or entire clean"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2643
    const-string v0, "  wifi [enable|disable|query]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2644
    const-string v0, "    Enable, disable or query wifi network state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2645
    const-string v0, "  data [enable|disable|query]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2646
    const-string v0, "    Enable, disable or query data network state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2647
    const-string v0, "  tethering [enable|disable|query]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2648
    const-string v0, "    Enable, disable or query tethering state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2649
    const-string v0, "  usersleep"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2650
    const-string v0, "    Print the information of the usersleep"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2651
    const-string v0, "  usersleep log [on|off]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2652
    const-string v0, "    Enable or disable the usersleep log."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2653
    const-string v0, "  usersleep start [Date]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2654
    const-string v0, "    Set the usersleep start time with the format, yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2655
    const-string v0, "  usersleep end [Date]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2656
    const-string v0, "    Set the usersleep end time with the format, yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2657
    const-string v0, "  usersleep timeoutAfterScreenOff [milliseconds]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2658
    const-string v0, "    Set the threshold to enter OPSM after screen-off"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2659
    const-string v0, "  usersleep timeoutBeforeUserAwake [milliseconds]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2660
    const-string v0, "    Set the threshold to leave OPSM before user awake"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2661
    const-string v0, "  usersleep sensor [on|off]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2662
    const-string v0, "    Activate the restriction for some sensors"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2663
    const-string v0, "  usersleep opsm [on|off]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2664
    const-string v0, "    Enable or disable OPSM"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2665
    const-string v0, "  wakelocks"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2666
    const-string v0, "    Print exclusive wakelocks"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2667
    return-void
.end method

.method private dumpUseSleep(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3428
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3429
    const-string v0, "**** USER DEEP SLEEP CONFIGURATION ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAX IDLE ITEMS  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIN IDLE ITEMS  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAX IDLE LENGTH : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIN IDLE LENGTH : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIN RECORD TIME : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COEFFICIENT OF VARIATION : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%.3f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-wide v3, Lcom/android/server/OnePlusPowerController;->mCoefVar:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3436
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Doze State = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    invoke-virtual {p0, v1}, Lcom/android/server/OnePlusPowerController;->convertToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " User Sleep = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sleep State = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    invoke-virtual {p0, v1}, Lcom/android/server/OnePlusPowerController;->convertToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " OPSMEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I

    invoke-virtual {p0, v1}, Lcom/android/server/OnePlusPowerController;->convertOPSMEnabledToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " OPSMActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SensorRestrict = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isCharging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mIsCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3444
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3445
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_166

    .line 3446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    CurrentWifiState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3448
    :cond_166
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_184

    .line 3449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    CurrentDataState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3451
    :cond_184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "             mSavedWifiState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "             mSavedDataState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mSavedDataState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        mSavedTetheredIfaces = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mSavedTetheredIfaces:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        mSavedBluetoothState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mSavedBluetoothState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSavedBleScanAlwaysAvailable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusPowerController;->mSavedBleScanAlwaysAvailable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3457
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3458
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    if-nez v0, :cond_204

    .line 3459
    const-string v0, "Screen-off time = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_220

    .line 3461
    :cond_204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen-off time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3463
    :goto_220
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLastEnterOpsmTime:Ljava/time/LocalDateTime;

    if-eqz v0, :cond_241

    .line 3464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "last OPSM enter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLastEnterOpsmTime:Ljava/time/LocalDateTime;

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3466
    :cond_241
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLastExitOpsmTime:Ljava/time/LocalDateTime;

    if-eqz v0, :cond_262

    .line 3467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "last OPSM exit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLastExitOpsmTime:Ljava/time/LocalDateTime;

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3470
    :cond_262
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 3471
    .local v0, "now":Ljava/time/LocalDateTime;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current local date time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTimeOutAfterScreenOff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTimeOutBeforeUserAwake = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivationCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusPowerController;->mActivationCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3476
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3478
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    if-eqz v1, :cond_3d9

    .line 3479
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v1}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepStart()Ljava/time/LocalTime;

    move-result-object v1

    .line 3480
    .local v1, "start":Ljava/time/LocalTime;
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepDuration()Ljava/time/Duration;

    move-result-object v2

    .line 3481
    .local v2, "duration":Ljava/time/Duration;
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v3}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepStart()Ljava/time/LocalDateTime;

    move-result-object v3

    .line 3482
    .local v3, "nextStart":Ljava/time/LocalDateTime;
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v4}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepEnd()Ljava/time/LocalDateTime;

    move-result-object v4

    .line 3484
    .local v4, "nextEnd":Ljava/time/LocalDateTime;
    const-string v5, "**** IDLE RECORD STATISTICS ****"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3485
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total idle records: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v6}, Lcom/android/server/OnePlusPowerController$IdleStats;->getSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3486
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v5, p1}, Lcom/android/server/OnePlusPowerController$IdleStats;->dumpIdleItems(Ljava/io/PrintWriter;)V

    .line 3489
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v5}, Lcom/android/server/OnePlusPowerController$IdleStats;->getLastRecordTime()Ljava/time/LocalDateTime;

    move-result-object v5

    .line 3491
    .local v5, "lastRecordTime":Ljava/time/LocalDateTime;
    if-eqz v1, :cond_351

    if-eqz v2, :cond_351

    if-nez v5, :cond_314

    goto :goto_351

    .line 3495
    :cond_314
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Last update time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v5, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3496
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deep-sleep: start="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_TIME_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v7}, Ljava/time/LocalTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", duration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_35b

    .line 3492
    :cond_351
    :goto_351
    const-string v6, "Last update time: 0"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3493
    const-string v6, "deep-sleep: start=0, length=0"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3500
    :goto_35b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3501
    const-string v6, "**** User DEEP SLEEP PROGNOSIS ****"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3503
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    if-eqz v6, :cond_382

    .line 3504
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sleep Start (overridden) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_39e

    .line 3506
    :cond_382
    if-eqz v3, :cond_39e

    .line 3507
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sleep Start = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v3, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3511
    :cond_39e
    :goto_39e
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    if-eqz v6, :cond_3bd

    .line 3512
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sleep End (overridden) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3d9

    .line 3514
    :cond_3bd
    if-eqz v4, :cond_3d9

    .line 3515
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sleep End = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v4, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3519
    .end local v1    # "start":Ljava/time/LocalTime;
    .end local v2    # "duration":Ljava/time/Duration;
    .end local v3    # "nextStart":Ljava/time/LocalDateTime;
    .end local v4    # "nextEnd":Ljava/time/LocalDateTime;
    .end local v5    # "lastRecordTime":Ljava/time/LocalDateTime;
    :cond_3d9
    :goto_3d9
    return-void
.end method

.method private enableDisableData(Z)V
    .registers 10
    .param p1, "enable"    # Z

    .line 3648
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 3649
    .local v0, "phoneCount":I
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    const/4 v1, 0x0

    move v2, v1

    .line 3651
    .local v2, "i":I
    :goto_1e
    if-ge v2, v0, :cond_6f

    .line 3652
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 3653
    .local v3, "subIds":[I
    if-eqz v3, :cond_6c

    array-length v4, v3

    if-lez v4, :cond_6c

    .line 3654
    aget v4, v3, v1

    .line 3655
    .local v4, "subId":I
    const-string v5, "OnePlusPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 3657
    const-string v5, "OnePlusPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setDataEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v4, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 3651
    .end local v3    # "subIds":[I
    .end local v4    # "subId":I
    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 3662
    .end local v2    # "i":I
    :cond_6f
    return-void
.end method

.method private ifaceNameToType(Ljava/lang/String;)I
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 3148
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/OnePlusPowerController;->matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3149
    const-string/jumbo v0, "vendor.wigig.interface"

    const-string/jumbo v1, "wigig0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3150
    .local v0, "wigigIface":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3151
    const/4 v1, 0x3

    return v1

    .line 3153
    :cond_1a
    const/4 v1, 0x0

    return v1

    .line 3154
    .end local v0    # "wigigIface":Ljava/lang/String;
    :cond_1c
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->tetherableUsbRegexs:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/OnePlusPowerController;->matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3155
    const/4 v0, 0x1

    return v0

    .line 3156
    :cond_26
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->tetherableBluetoothRegexs:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/OnePlusPowerController;->matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3157
    const/4 v0, 0x2

    return v0

    .line 3159
    :cond_30
    const/4 v0, -0x1

    return v0
.end method

.method private isMusicPlaying()Z
    .registers 6

    .line 3611
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 3612
    .local v0, "currentVolume":I
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    .line 3614
    .local v1, "isMusicActive":Z
    sget-boolean v2, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_3e

    .line 3615
    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentVolume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isMusicActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    :cond_3e
    if-eqz v1, :cond_44

    if-eqz v0, :cond_44

    const/4 v2, 0x1

    goto :goto_45

    :cond_44
    const/4 v2, 0x0

    :goto_45
    return v2
.end method

.method private static matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "regexs"    # [Ljava/lang/String;

    .line 3163
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    .line 3164
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v0, 0x1

    return v0

    .line 3163
    .end local v3    # "regex":Ljava/lang/String;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3166
    :cond_12
    return v1
.end method

.method private parseOPSM(Lorg/json/JSONObject;)V
    .registers 10
    .param p1, "config"    # Lorg/json/JSONObject;

    .line 1475
    const-string v0, "OnePlusPowerController"

    const-string/jumbo v1, "parseOPSM..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const-string v0, "enabled"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 1487
    .local v0, "enabled":I
    sget-boolean v2, Lcom/android/server/OnePlusPowerController;->BETA_OR_ALPHA_ROM:Z

    if-eqz v2, :cond_19

    .line 1488
    const-string v2, "beta_enabled"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 1491
    :cond_19
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1e

    if-ne v0, v1, :cond_3a

    .line 1492
    :cond_1e
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "optimal_power_save_mode_enabled"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1496
    .local v3, "opsm":I
    if-eq v3, v1, :cond_2e

    if-eq v3, v2, :cond_2e

    if-ne v3, v5, :cond_3a

    .line 1499
    :cond_2e
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "optimal_power_save_mode_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1504
    .end local v3    # "opsm":I
    :cond_3a
    const-string/jumbo v1, "timeout_after_screen_off"

    const v2, 0x44aa20

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    .line 1506
    const-string/jumbo v1, "timeout_before_user_awake"

    const v2, 0x1b7740

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    .line 1509
    :try_start_52
    const-string/jumbo v1, "whiteList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1510
    .local v1, "whiteList":Lorg/json/JSONArray;
    if-eqz v1, :cond_a3

    .line 1511
    const/4 v2, 0x0

    .line 1511
    .local v2, "i":I
    :goto_5c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_8a

    .line 1512
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_66} :catch_a4

    .line 1514
    .local v3, "packageName":Ljava/lang/String;
    :try_start_66
    invoke-virtual {p0, v3}, Lcom/android/server/OnePlusPowerController;->addPackageToWhitelist(Ljava/lang/String;)V
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_66 .. :try_end_69} :catch_6a
    .catch Lorg/json/JSONException; {:try_start_66 .. :try_end_69} :catch_a4

    .line 1517
    goto :goto_87

    .line 1515
    :catch_6a
    move-exception v4

    .line 1516
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6b
    const-string v5, "OnePlusPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 1521
    .end local v2    # "i":I
    :cond_8a
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistApps:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v2, v3, v4}, Lcom/android/server/OnePlusPowerController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    .line 1522
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    invoke-interface {v2, v3}, Lcom/android/server/AlarmManagerInternal;->setDeepSleepWhitelist([I)V

    .line 1523
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setDeepSleepWhitelist([I)V
    :try_end_a3
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_a3} :catch_a4

    .line 1527
    .end local v1    # "whiteList":Lorg/json/JSONArray;
    :cond_a3
    goto :goto_bb

    .line 1525
    :catch_a4
    move-exception v1

    .line 1526
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] resolve config from JSON, error message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_bb
    sget-boolean v1, Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z

    if-eqz v1, :cond_13f

    .line 1530
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mUserSleep = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mOPSMEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I

    invoke-virtual {p0, v3}, Lcom/android/server/OnePlusPowerController;->convertOPSMEnabledToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mTimeOutAfterScreenOff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mTimeOutBeforeUserAwake = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mDeepSleepWhitelistAppIds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_13f
    return-void
.end method

.method private parseUserSleep(Lorg/json/JSONObject;)V
    .registers 11
    .param p1, "config"    # Lorg/json/JSONObject;

    .line 1428
    const-string v0, "enabled"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    .line 1430
    const-string/jumbo v0, "sensor_restrict"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1431
    .local v0, "sensorRestrict":Z
    const-string/jumbo v3, "sensor_restrict_v2"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1432
    .local v3, "sensorRestrict_v2":Z
    if-nez v0, :cond_1f

    if-eqz v3, :cond_1d

    goto :goto_1f

    :cond_1d
    move v4, v2

    goto :goto_20

    :cond_1f
    :goto_1f
    move v4, v1

    :goto_20
    iput-boolean v4, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    .line 1435
    iget-boolean v4, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    if-nez v4, :cond_33

    .line 1436
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v4, :cond_33

    iget-boolean v4, p0, Lcom/android/server/OnePlusPowerController;->mSensorEnabled:Z

    if-nez v4, :cond_33

    .line 1437
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4}, Landroid/hardware/SensorManager;->leaveOPSM()V

    .line 1441
    :cond_33
    const-string/jumbo v4, "seed"

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/server/OnePlusPowerController;->mRandomSeed:I

    .line 1443
    const-string v4, "cluster"

    const/4 v5, 0x2

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/server/OnePlusPowerController;->mNumCluster:I

    .line 1445
    const-string/jumbo v4, "min_rec"

    const v6, 0x36ee80

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I

    .line 1447
    const-string/jumbo v4, "min_idle"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    .line 1449
    const-string/jumbo v4, "max_idle"

    const/16 v5, 0x3c

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I

    .line 1451
    const-string/jumbo v4, "min_len"

    const v5, 0x112a880

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I

    .line 1453
    const-string/jumbo v4, "max_len"

    const v5, 0x337f980

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I

    .line 1455
    const-string v4, "coef_var"

    const-wide v5, 0x3fd999999999999aL    # 0.4

    invoke-virtual {p1, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    sput-wide v4, Lcom/android/server/OnePlusPowerController;->mCoefVar:D

    .line 1457
    sget-boolean v4, Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z

    if-eqz v4, :cond_176

    .line 1458
    const-string v4, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] USER_SLEEP = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    const-string v4, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] RANDOM_SEED = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/OnePlusPowerController;->mRandomSeed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const-string v4, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] NUM_CLUSTER = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/OnePlusPowerController;->mNumCluster:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const-string v4, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] MIN_RECORD_TIME = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    const-string v4, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] MIN_IDLE_ITEMS = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    const-string v4, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] MAX_IDLE_ITEMS = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    const-string v4, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] MIN_IDLE_LENGTH = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const-string v4, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] MAX_IDLE_LENGTH = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    const-string v4, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] COEFFICIENT_OF_VARIATION = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%.3f"

    new-array v1, v1, [Ljava/lang/Object;

    sget-wide v7, Lcom/android/server/OnePlusPowerController;->mCoefVar:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :cond_176
    return-void
.end method

.method private parseWakeLock(Lorg/json/JSONObject;)V
    .registers 13
    .param p1, "config"    # Lorg/json/JSONObject;

    .line 1385
    :try_start_0
    const-string/jumbo v0, "packageList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1386
    .local v0, "packageList":Lorg/json/JSONArray;
    const-string/jumbo v1, "packageList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1387
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->clearExclusiveWakeLock()V

    .line 1388
    const/4 v1, 0x0

    move v2, v1

    .line 1388
    .local v2, "j":I
    :goto_17
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6d

    .line 1389
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1390
    .local v3, "item":Lorg/json/JSONObject;
    const-string/jumbo v4, "packageName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 1391
    const-string/jumbo v4, "packageName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1392
    .local v4, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "tagList"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 1393
    const-string/jumbo v5, "tagList"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1394
    .local v5, "tagList":Lorg/json/JSONArray;
    move v6, v1

    .line 1394
    .local v6, "k":I
    :goto_42
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_6a

    .line 1395
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1396
    .local v7, "tag":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1397
    .local v8, "jsonExclusiveWakeLock":Lorg/json/JSONObject;
    const-string/jumbo v9, "packageName"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1398
    const-string/jumbo v9, "tag"

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1399
    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v10, 0x3

    invoke-virtual {v9, v10, v8}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_67} :catch_6e

    .line 1394
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "jsonExclusiveWakeLock":Lorg/json/JSONObject;
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 1388
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "tagList":Lorg/json/JSONArray;
    .end local v6    # "k":I
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1407
    .end local v0    # "packageList":Lorg/json/JSONArray;
    .end local v2    # "j":I
    :cond_6d
    goto :goto_85

    .line 1405
    :catch_6e
    move-exception v0

    .line 1406
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolve config from JSON, error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_85
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .registers 10
    .param p1, "configList"    # Lorg/json/JSONArray;

    .line 1314
    if-nez p1, :cond_a

    .line 1315
    const-string v0, "OnePlusPowerController"

    const-string v1, "[OnlineConfig] configList == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    return-void

    .line 1317
    :cond_a
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->mOnlineConfigEnabled:Z

    if-nez v0, :cond_16

    .line 1318
    const-string v0, "OnePlusPowerController"

    const-string v1, "[OnlineConfig] OnlineConfig is turned off!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    return-void

    .line 1337
    :cond_16
    const/4 v0, 0x0

    move v1, v0

    .line 1337
    .local v1, "i":I
    :goto_18
    :try_start_18
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_9e

    .line 1338
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1340
    .local v2, "config":Lorg/json/JSONObject;
    const-string/jumbo v3, "program"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 1341
    const-string/jumbo v3, "program"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1342
    .local v3, "program":Ljava/lang/String;
    const-string v4, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] program: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x3427fb

    const/4 v7, 0x1

    if-eq v5, v6, :cond_74

    const v6, 0x1552e9ec

    if-eq v5, v6, :cond_69

    const v6, 0x16dbb584

    if-eq v5, v6, :cond_5e

    goto :goto_7e

    :cond_5e
    const-string/jumbo v5, "wakelocks"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    move v4, v0

    goto :goto_7e

    :cond_69
    const-string/jumbo v5, "usersleep"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    move v4, v7

    goto :goto_7e

    :cond_74
    const-string/jumbo v5, "opsm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    const/4 v4, 0x2

    :cond_7e
    :goto_7e
    packed-switch v4, :pswitch_data_b8

    .end local v2    # "config":Lorg/json/JSONObject;
    .end local v3    # "program":Ljava/lang/String;
    goto :goto_9a

    .line 1352
    .restart local v2    # "config":Lorg/json/JSONObject;
    .restart local v3    # "program":Ljava/lang/String;
    :pswitch_82
    new-array v4, v7, [I

    const/16 v5, 0x50

    aput v5, v4, v0

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 1353
    invoke-direct {p0, v2}, Lcom/android/server/OnePlusPowerController;->parseOPSM(Lorg/json/JSONObject;)V

    goto :goto_9a

    .line 1349
    :pswitch_92
    invoke-direct {p0, v2}, Lcom/android/server/OnePlusPowerController;->parseUserSleep(Lorg/json/JSONObject;)V

    .line 1350
    goto :goto_9a

    .line 1346
    :pswitch_96
    invoke-direct {p0, v2}, Lcom/android/server/OnePlusPowerController;->parseWakeLock(Lorg/json/JSONObject;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_99} :catch_9f

    .line 1347
    nop

    .line 1337
    .end local v2    # "config":Lorg/json/JSONObject;
    .end local v3    # "program":Ljava/lang/String;
    :cond_9a
    :goto_9a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_18

    .line 1363
    .end local v1    # "i":I
    :cond_9e
    goto :goto_b6

    .line 1361
    :catch_9f
    move-exception v0

    .line 1362
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolve config from JSON, error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b6
    return-void

    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_96
        :pswitch_92
        :pswitch_82
    .end packed-switch
.end method


# virtual methods
.method acquireNetworkTempInternal()V
    .registers 12

    .line 3623
    iget-wide v0, p0, Lcom/android/server/OnePlusPowerController;->mNextAlarmFromOPSM:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 3628
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mRestrictAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_18

    .line 3630
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 3631
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->restoreNetwork()V

    .line 3636
    :cond_18
    :goto_18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    .line 3637
    .local v0, "mNextAlarmFromOPSM":J
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    const-string v8, "PowerController.RestrictNetwork"

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mRestrictAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    move-wide v6, v0

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 3641
    return-void
.end method

.method addPackageToWhitelist(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1304
    nop

    .line 1305
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1306
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistApps:Landroid/util/ArrayMap;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    return-void
.end method

.method applyEarlyRestriction()V
    .registers 5

    .line 3716
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3717
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mEarlyRestrictionEnabled:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 3718
    monitor-exit v0

    return-void

    .line 3721
    :cond_a
    const-string v1, "OnePlusPowerController"

    const-string v3, "applyEarlyRestriction"

    invoke-static {v1, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3722
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setWakeLockRestriction(Z)Z

    .line 3723
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLocalJobScheduler:Lcom/android/server/job/JobSchedulerInternal;

    invoke-interface {v1, v2}, Lcom/android/server/job/JobSchedulerInternal;->setJobRestriction(Z)V

    .line 3724
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v1, v2}, Lcom/android/server/AlarmManagerInternal;->setAlarmRestriction(Z)V

    .line 3725
    iput-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mEarlyRestrictionEnabled:Z

    .line 3726
    monitor-exit v0

    .line 3727
    return-void

    .line 3726
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method convertOPSMEnabledToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "opsm"    # I

    .line 3413
    packed-switch p1, :pswitch_data_12

    .line 3423
    const-string v0, "OPSM_ENABLED_UNKNOWN"

    return-object v0

    .line 3421
    :pswitch_6
    const-string v0, "OPSM_ENABLED_BY_SYSTEM"

    return-object v0

    .line 3419
    :pswitch_9
    const-string v0, "OPSM_ENABLED_BY_USER"

    return-object v0

    .line 3417
    :pswitch_c
    const-string v0, "OPSM_DISABLED_BY_USER"

    return-object v0

    .line 3415
    :pswitch_f
    const-string v0, "OPSM_DISABLED_BY_SYSTEM"

    return-object v0

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method convertToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "sleepState"    # I

    .line 3388
    const/16 v0, 0x15be

    if-eq p1, v0, :cond_26

    const/16 v0, 0x1e6c

    if-eq p1, v0, :cond_23

    packed-switch p1, :pswitch_data_2a

    .line 3408
    const-string v0, "STATE_UNKNOWN"

    return-object v0

    .line 3406
    :pswitch_e
    const-string v0, "STATE_IDLE_MAINTENANCE"

    return-object v0

    .line 3404
    :pswitch_11
    const-string v0, "STATE_IDLE"

    return-object v0

    .line 3402
    :pswitch_14
    const-string v0, "STATE_LOCATING"

    return-object v0

    .line 3400
    :pswitch_17
    const-string v0, "STATE_SENSING"

    return-object v0

    .line 3398
    :pswitch_1a
    const-string v0, "STATE_IDLE_PENDING"

    return-object v0

    .line 3396
    :pswitch_1d
    const-string v0, "STATE_INACTIVE"

    return-object v0

    .line 3394
    :pswitch_20
    const-string v0, "STATE_ACTIVE"

    return-object v0

    .line 3392
    :cond_23
    const-string v0, "STATE_AWAKE"

    return-object v0

    .line 3390
    :cond_26
    const-string v0, "STATE_SLEEP"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 3170
    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "OnePlusPowerController"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 3172
    :cond_13
    const/4 v0, 0x0

    if-eqz v3, :cond_7d

    .line 3173
    const/4 v4, 0x0

    .line 3174
    .local v4, "userId":I
    move v5, v0

    .local v5, "i":I
    :goto_18
    array-length v6, v3

    if-ge v5, v6, :cond_7d

    .line 3175
    aget-object v6, v3, v5

    .line 3176
    .local v6, "arg":Ljava/lang/String;
    const-string v7, "-h"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 3177
    invoke-static/range {p2 .. p2}, Lcom/android/server/OnePlusPowerController;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 3178
    return-void

    .line 3179
    :cond_29
    const-string v7, "-a"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 3174
    .end local v6    # "arg":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 3181
    .restart local v6    # "arg":Ljava/lang/String;
    :cond_34
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_57

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_57

    .line 3182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3183
    return-void

    .line 3185
    :cond_57
    new-instance v7, Lcom/android/server/OnePlusPowerController$Shell;

    invoke-direct {v7, v1}, Lcom/android/server/OnePlusPowerController$Shell;-><init>(Lcom/android/server/OnePlusPowerController;)V

    .line 3186
    .local v7, "shell":Lcom/android/server/OnePlusPowerController$Shell;
    iput v4, v7, Lcom/android/server/OnePlusPowerController$Shell;->userId:I

    .line 3187
    array-length v8, v3

    sub-int/2addr v8, v5

    new-array v15, v8, [Ljava/lang/String;

    .line 3188
    .local v15, "newArgs":[Ljava/lang/String;
    array-length v8, v3

    sub-int/2addr v8, v5

    invoke-static {v3, v5, v15, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3189
    iget-object v9, v1, Lcom/android/server/OnePlusPowerController;->mBinderService:Lcom/android/server/OnePlusPowerController$BinderService;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    new-instance v0, Landroid/os/ResultReceiver;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v8, v7

    move-object/from16 v11, p1

    move-object v13, v15

    move-object/from16 v16, v15

    move-object v15, v0

    .end local v15    # "newArgs":[Ljava/lang/String;
    .local v16, "newArgs":[Ljava/lang/String;
    invoke-virtual/range {v8 .. v15}, Lcom/android/server/OnePlusPowerController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3191
    return-void

    .line 3196
    .end local v4    # "userId":I
    .end local v5    # "i":I
    .end local v6    # "arg":Ljava/lang/String;
    .end local v7    # "shell":Lcom/android/server/OnePlusPowerController$Shell;
    .end local v16    # "newArgs":[Ljava/lang/String;
    :cond_7d
    monitor-enter p0

    .line 3197
    const/4 v4, 0x1

    :try_start_7f
    new-array v4, v4, [I

    const/16 v5, 0x50

    aput v5, v4, v0

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 3198
    invoke-direct {v1, v2}, Lcom/android/server/OnePlusPowerController;->dumpUseSleep(Ljava/io/PrintWriter;)V

    .line 3200
    :cond_8e
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v0, v2}, Lcom/android/server/OverHeatingDiagnosis;->dump(Ljava/io/PrintWriter;)V

    .line 3201
    const-string v0, "**** OverHeat Diagnosis Records ****"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3202
    const-string v0, "/data/system/power/diagnosis_heating.txt"

    invoke-direct {v1, v2, v0}, Lcom/android/server/OnePlusPowerController;->dumpDiagnosisRecords(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3205
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3206
    const-string v0, "**** Standby Diagnosis Records ****"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3207
    const-string v0, "/data/system/power/diagnosis_standby.txt"

    invoke-direct {v1, v2, v0}, Lcom/android/server/OnePlusPowerController;->dumpDiagnosisRecords(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3210
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    if-eqz v0, :cond_169

    .line 3211
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3212
    const-string v0, "**** Standby Diagnosis Config info ****"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3213
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->genConfigForDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3227
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3228
    const-string v0, "**** Standby Diagnosis info ****"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3229
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->genDiagnosisInfoForDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3248
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3249
    const-string v0, "**** Standby Diagnosis WL info ****"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3251
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->genWLInfoForDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3259
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3260
    const-string v0, "**** Standby Diagnosis KWL info ****"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3262
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->genKWLInfoForDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3280
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3281
    const-string v0, "**** Standby Diagnosis WR info ****"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3283
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->genWRInfoForDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3291
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3292
    const-string v0, "**** Standby Diagnosis WUA info ****"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3294
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->genWUAInfoForDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3307
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3308
    const-string v0, "**** Standby Diagnosis Wifi Wakeup info ****"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3310
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->genWifiWakeupInfoForDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3318
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3319
    const-string v0, "**** Standby Diagnosis pkt info ****"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3321
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->genPktInfoForDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3334
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3335
    const-string v0, "**** Standby Diagnosis Assist info (WL/KWL) ****"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3337
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->genAssistInfoForDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3349
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3350
    const-string v0, "**** Standby Diagnosis Assist RPM info ****"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3351
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->genRPMInfoForDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3362
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3363
    const-string v0, "**** Telephony Abnormal Counting Info ****"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3364
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->genTeleChgInfoForDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3374
    :cond_169
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3375
    const-string v0, "**** BGC ****"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3376
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_196

    .line 3377
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mOpAms:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    if-eqz v0, :cond_196

    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mOpAms:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->ifOHPDInited()Z

    move-result v0

    if-eqz v0, :cond_196

    .line 3378
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mOpAms:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->getOHPD()Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getBGCInstance()Lcom/android/server/am/OnePlusBGController;

    move-result-object v0

    .line 3379
    .local v0, "onePlusBGController":Lcom/android/server/am/OnePlusBGController;
    if-eqz v0, :cond_196

    .line 3380
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusBGController;->dumpUidSippermAhStats(Ljava/io/PrintWriter;)V

    .line 3384
    .end local v0    # "onePlusBGController":Lcom/android/server/am/OnePlusBGController;
    :cond_196
    monitor-exit p0

    .line 3385
    return-void

    .line 3384
    :catchall_198
    move-exception v0

    monitor-exit p0
    :try_end_19a
    .catchall {:try_start_7f .. :try_end_19a} :catchall_198

    throw v0
.end method

.method enterOPSMIfAppropriated(Z)V
    .registers 15
    .param p1, "forced"    # Z

    .line 974
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 975
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 976
    .local v1, "now":Ljava/time/LocalDateTime;
    const/4 v2, 0x1

    if-nez p1, :cond_97

    .line 977
    invoke-direct {p0}, Lcom/android/server/OnePlusPowerController;->isMusicPlaying()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 978
    const-string v2, "OnePlusPowerController"

    const-string v3, "Abort entering OPSM mode because of audio playing"

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    return-void

    .line 982
    :cond_19
    sget v3, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    const/16 v4, 0x1e6c

    if-ne v3, v4, :cond_3c

    .line 983
    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Abort entering OPSM mode because of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    invoke-virtual {p0, v4}, Lcom/android/server/OnePlusPowerController;->convertToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    return-void

    .line 987
    :cond_3c
    iget v3, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_5e

    .line 988
    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Abort entering OPSM mode because of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    invoke-virtual {p0, v4}, Lcom/android/server/OnePlusPowerController;->convertToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return-void

    .line 992
    :cond_5e
    iget-boolean v3, p0, Lcom/android/server/OnePlusPowerController;->mIsCharging:Z

    if-eqz v3, :cond_6a

    .line 993
    const-string v2, "OnePlusPowerController"

    const-string v3, "Abort entering OPSM mode because of charging"

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    return-void

    .line 997
    :cond_6a
    iget-boolean v3, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    if-ne v3, v2, :cond_76

    .line 998
    const-string v2, "OnePlusPowerController"

    const-string v3, "Abort entering OPSM mode because OPSM is already active."

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    return-void

    .line 1002
    :cond_76
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    if-eqz v3, :cond_97

    .line 1003
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    sget v5, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_97

    .line 1004
    const-string v2, "OnePlusPowerController"

    const-string v3, "Abort entering OPSM mode because of Screen-off Timeout"

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return-void

    .line 1010
    :cond_97
    const-string v3, "OnePlusPowerController"

    const-string v4, "Entering OPSM mode"

    invoke-static {v3, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iput-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLastEnterOpsmTime:Ljava/time/LocalDateTime;

    .line 1014
    const-wide/16 v3, 0x0

    .line 1015
    .local v3, "sleepTimeout":J
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    if-eqz v5, :cond_d9

    .line 1016
    const-string v5, "OnePlusPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mSleepEndOverridden = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v7, v8}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    sget v6, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->minusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v5

    .line 1018
    .local v5, "time":Ljava/time/LocalDateTime;
    invoke-static {v1, v5}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v6

    .line 1019
    .local v6, "duration":Ljava/time/Duration;
    invoke-virtual {v6}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    .line 1020
    .end local v5    # "time":Ljava/time/LocalDateTime;
    .end local v6    # "duration":Ljava/time/Duration;
    goto :goto_fd

    .line 1021
    :cond_d9
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v5}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepEnd()Ljava/time/LocalDateTime;

    move-result-object v5

    sget v6, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->minusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v5

    .line 1022
    .local v5, "nextEnd":Ljava/time/LocalDateTime;
    if-eqz v5, :cond_f3

    .line 1023
    invoke-static {v1, v5}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    goto :goto_fd

    .line 1025
    :cond_f3
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v6}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepDuration()Ljava/time/Duration;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    .line 1030
    .end local v5    # "nextEnd":Ljava/time/LocalDateTime;
    :goto_fd
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    const-wide/32 v6, 0x36ee80

    add-long/2addr v6, v3

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/server/DeviceIdleController$LocalService;->scheduleAlarm(JZ)V

    .line 1033
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/OnePlusPowerController;->mSavedTetheredIfaces:[Ljava/lang/String;

    .line 1034
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiState:Z

    .line 1035
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "wifi_scan_always_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_124

    move v5, v2

    goto :goto_125

    :cond_124
    move v5, v7

    :goto_125
    iput-boolean v5, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiScanState:Z

    .line 1037
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/OnePlusPowerController;->mSavedDataState:Z

    .line 1039
    if-eqz v0, :cond_164

    .line 1040
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/OnePlusPowerController;->mSavedBluetoothState:Z

    .line 1041
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "ble_scan_always_enabled"

    .line 1042
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/OnePlusPowerController;->mSavedBleScanAlwaysAvailable:I

    .line 1044
    const-string v5, "OnePlusPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mSavedBluetoothState="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/OnePlusPowerController;->mSavedBluetoothState:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mSavedBleScanAlwaysAvailable="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/OnePlusPowerController;->mSavedBleScanAlwaysAvailable:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_164
    const-string v5, "OnePlusPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tethered interfaces: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mSavedTetheredIfaces:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mSavedTetheredIfaces:[Ljava/lang/String;

    array-length v6, v5

    move v8, v7

    :goto_184
    if-ge v8, v6, :cond_1af

    aget-object v9, v5, v8

    .line 1051
    .local v9, "iface":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0, v9}, Lcom/android/server/OnePlusPowerController;->ifaceNameToType(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 1052
    const-string v10, "OnePlusPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Disable "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " tethering"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    .end local v9    # "iface":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_184

    .line 1055
    :cond_1af
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->restrictNetwork()V

    .line 1058
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v5, v2}, Landroid/os/BatteryManagerInternal;->setDeepSleepMode(Z)V

    .line 1061
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v5, v2}, Lcom/android/server/AlarmManagerInternal;->setDeepSleepMode(Z)V

    .line 1062
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v5, v2}, Landroid/os/PowerManagerInternal;->setDeepSleepMode(Z)V

    .line 1065
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mNotificationLight:Lcom/android/server/lights/Light;

    if-eqz v5, :cond_1ca

    .line 1066
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v5, v2}, Lcom/android/server/lights/Light;->setPowerSaveMode(Z)V

    .line 1070
    :cond_1ca
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v5, :cond_1d9

    iget-boolean v5, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    if-eqz v5, :cond_1d9

    .line 1071
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5}, Landroid/hardware/SensorManager;->enterOPSM()V

    .line 1072
    iput-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mSensorEnabled:Z

    .line 1076
    :cond_1d9
    if-eqz v0, :cond_1fb

    .line 1077
    iget v5, p0, Lcom/android/server/OnePlusPowerController;->mSavedBleScanAlwaysAvailable:I

    if-ne v5, v2, :cond_1ed

    .line 1078
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "ble_scan_always_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1080
    const-string v5, "OnePlusPowerController"

    const-string v6, "Set BLE_SCAN_ALWAYS_AVAILABLE to 0"

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_1ed
    iget-boolean v5, p0, Lcom/android/server/OnePlusPowerController;->mSavedBluetoothState:Z

    if-ne v5, v2, :cond_1fb

    .line 1083
    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothAdapter;->disable(Z)Z

    .line 1084
    const-string v5, "OnePlusPowerController"

    const-string v6, "Disable bluetooth"

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_1fb
    iput-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    .line 1091
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1092
    .local v5, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "os"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v7, "usersleep"

    invoke-virtual {v6, v7, v5}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1095
    sget v6, Lcom/android/server/OnePlusPowerController;->mActivationCount:I

    if-nez v6, :cond_221

    .line 1097
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1101
    :cond_221
    sget v6, Lcom/android/server/OnePlusPowerController;->mActivationCount:I

    add-int/2addr v6, v2

    sput v6, Lcom/android/server/OnePlusPowerController;->mActivationCount:I

    .line 1102
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "optimal_power_save_mode_activation"

    sget v7, Lcom/android/server/OnePlusPowerController;->mActivationCount:I

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1106
    return-void
.end method

.method getSleepState(Ljava/time/LocalDateTime;)I
    .registers 14
    .param p1, "now"    # Ljava/time/LocalDateTime;

    .line 1170
    const/16 v0, 0x1e6c

    .line 1171
    .local v0, "sleepState":I
    if-eqz p1, :cond_aa

    .line 1172
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v1

    .line 1173
    .local v1, "date":Ljava/time/LocalDate;
    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v2

    .line 1174
    .local v2, "lastDate":Ljava/time/LocalDate;
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v3}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepStart()Ljava/time/LocalTime;

    move-result-object v3

    .line 1175
    .local v3, "time":Ljava/time/LocalTime;
    const/4 v4, 0x0

    .line 1176
    .local v4, "useLastStart":Z
    if-eqz v3, :cond_aa

    .line 1177
    invoke-static {v1, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v5

    .line 1178
    .local v5, "sleepStart":Ljava/time/LocalDateTime;
    invoke-static {v2, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v6

    .line 1179
    .local v6, "lastSleepStart":Ljava/time/LocalDateTime;
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v7}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepDuration()Ljava/time/Duration;

    move-result-object v7

    sget v8, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    div-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/time/Duration;->minusSeconds(J)Ljava/time/Duration;

    move-result-object v7

    .line 1182
    .local v7, "sleepDuration":Ljava/time/Duration;
    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    if-eqz v8, :cond_34

    .line 1183
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    .line 1185
    :cond_34
    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    if-eqz v8, :cond_49

    .line 1186
    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    sget v10, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    div-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    .line 1187
    invoke-virtual {v9, v10, v11}, Ljava/time/LocalDateTime;->minusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v9

    .line 1186
    invoke-static {v8, v9}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v7

    .line 1191
    :cond_49
    invoke-virtual {p1, v6}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 1192
    invoke-static {v6, p1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v8

    if-gez v8, :cond_5d

    .line 1193
    const/16 v0, 0x15be

    .line 1194
    const/4 v4, 0x1

    goto :goto_6f

    .line 1195
    :cond_5d
    invoke-virtual {p1, v5}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 1196
    invoke-static {v5, p1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v8

    if-gez v8, :cond_6f

    .line 1197
    const/16 v0, 0x15be

    .line 1200
    :cond_6f
    :goto_6f
    const-string v8, "OnePlusPowerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSleepState: sleepStart="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    if-eqz v4, :cond_84

    iget-object v10, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v6, v10}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v10

    goto :goto_8a

    .line 1202
    :cond_84
    iget-object v10, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v5, v10}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v10

    :goto_8a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", sleepDuration="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", now="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 1204
    invoke-virtual {p1, v10}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1200
    invoke-static {v8, v9}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    .end local v1    # "date":Ljava/time/LocalDate;
    .end local v2    # "lastDate":Ljava/time/LocalDate;
    .end local v3    # "time":Ljava/time/LocalTime;
    .end local v4    # "useLastStart":Z
    .end local v5    # "sleepStart":Ljava/time/LocalDateTime;
    .end local v6    # "lastSleepStart":Ljava/time/LocalDateTime;
    .end local v7    # "sleepDuration":Ljava/time/Duration;
    :cond_aa
    return v0
.end method

.method isAggressive()Z
    .registers 2

    .line 697
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->mAggressive:Z

    if-eqz v0, :cond_6

    .line 698
    const/4 v0, 0x1

    return v0

    .line 700
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method isChinaRegionInternal()Z
    .registers 3

    .line 684
    sget v0, Lcom/android/server/OnePlusPowerController;->mFirstMcc:I

    const/16 v1, 0x1cc

    if-ne v0, v1, :cond_8

    .line 685
    const/4 v0, 0x1

    return v0

    .line 687
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method isInSleep()Z
    .registers 3

    .line 711
    sget v0, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    const/16 v1, 0x15be

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isIndiaRegionInternal()Z
    .registers 3

    .line 671
    sget v0, Lcom/android/server/OnePlusPowerController;->mFirstMcc:I

    const/16 v1, 0x194

    if-eq v0, v1, :cond_f

    sget v0, Lcom/android/server/OnePlusPowerController;->mFirstMcc:I

    const/16 v1, 0x195

    if-ne v0, v1, :cond_d

    goto :goto_f

    .line 674
    :cond_d
    const/4 v0, 0x0

    return v0

    .line 672
    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method leaveOPSM()V
    .registers 10

    .line 1114
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    if-nez v0, :cond_5

    return-void

    .line 1116
    :cond_5
    const-string v0, "OnePlusPowerController"

    const-string v1, "Leaving OPSM mode"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLastExitOpsmTime:Ljava/time/LocalDateTime;

    .line 1119
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1122
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mSavedTetheredIfaces:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ge v4, v2, :cond_48

    aget-object v5, v1, v4

    .line 1123
    .local v5, "iface":Ljava/lang/String;
    const-string v6, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " tethering"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0, v5}, Lcom/android/server/OnePlusPowerController;->ifaceNameToType(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mStartTetheringCallback:Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;

    invoke-virtual {v6, v7, v3, v8}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 1122
    .end local v5    # "iface":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 1127
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->restoreNetwork()V

    .line 1130
    const/4 v1, 0x1

    if-eqz v0, :cond_6e

    .line 1131
    iget v2, p0, Lcom/android/server/OnePlusPowerController;->mSavedBleScanAlwaysAvailable:I

    if-ne v2, v1, :cond_60

    .line 1132
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "ble_scan_always_enabled"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1134
    const-string v2, "OnePlusPowerController"

    const-string v4, "Set BLE_SCAN_ALWAYS_AVAILABLE to 1"

    invoke-static {v2, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_60
    iget-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mSavedBluetoothState:Z

    if-eqz v2, :cond_6e

    .line 1137
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1138
    const-string v2, "OnePlusPowerController"

    const-string v4, "Enable bluetooth"

    invoke-static {v2, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_6e
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v2, v3}, Landroid/os/BatteryManagerInternal;->setDeepSleepMode(Z)V

    .line 1146
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v2, v3}, Lcom/android/server/AlarmManagerInternal;->setDeepSleepMode(Z)V

    .line 1147
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setDeepSleepMode(Z)V

    .line 1150
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mNotificationLight:Lcom/android/server/lights/Light;

    if-eqz v2, :cond_86

    .line 1151
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setPowerSaveMode(Z)V

    .line 1155
    :cond_86
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_95

    iget-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    if-eqz v2, :cond_95

    .line 1156
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2}, Landroid/hardware/SensorManager;->leaveOPSM()V

    .line 1157
    iput-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mSensorEnabled:Z

    .line 1160
    :cond_95
    iput-boolean v3, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    .line 1163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1164
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "os"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v3, "usersleep"

    invoke-virtual {v2, v3, v1}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1167
    return-void
.end method

.method public millisToLocalDateTime(J)Ljava/time/LocalDateTime;
    .registers 5
    .param p1, "millis"    # J

    .line 3593
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 3594
    .local v0, "instant":Ljava/time/Instant;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 3595
    .local v1, "date":Ljava/time/LocalDateTime;
    return-object v1
.end method

.method notifyScreenStateInternal(I)V
    .registers 15
    .param p1, "state"    # I

    .line 719
    sget v0, Lcom/android/server/OnePlusPowerController;->SCREEN_OFF:I

    const/16 v1, 0x50

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-ne p1, v0, :cond_71

    .line 720
    const-string v0, "OnePlusPowerController"

    const-string v5, "SCREEN is OFF"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    if-nez v0, :cond_62

    .line 723
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    .line 724
    const-string v0, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mScreenOffStart="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v6, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-array v0, v3, [I

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_62

    iget v0, p0, Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I

    if-lez v0, :cond_62

    .line 728
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 729
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;->removeMessages(I)V

    .line 733
    :cond_55
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 734
    .local v0, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/OnePlusPowerController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 738
    .end local v0    # "msg":Landroid/os/Message;
    :cond_62
    new-array v0, v3, [I

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 739
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->scheduleAlarmToEnterOPSM()V

    goto/16 :goto_17f

    .line 742
    :cond_71
    const-string v0, "OnePlusPowerController"

    const-string v5, "SCREEN is ON"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 746
    .local v0, "screenOffEnd":Ljava/time/LocalDateTime;
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    if-eqz v5, :cond_167

    .line 747
    new-array v5, v3, [I

    aput v1, v5, v2

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 748
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v5, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 749
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v5, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;->removeMessages(I)V

    goto :goto_9b

    .line 751
    :cond_98
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->releaseEarlyRestriction()V

    .line 757
    :cond_9b
    :goto_9b
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    invoke-static {v4, v0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    .line 758
    .local v4, "duration":J
    const-string v6, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "screen off duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    sget v6, Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-lez v6, :cond_167

    sget v6, Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_167

    .line 761
    const-string v6, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mScreenOffStart: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v8, v9}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const-string v6, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "screenOffEnd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v8}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    invoke-virtual {v6, v7, v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->addIdleItem(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)V

    .line 766
    const-wide/16 v6, 0x0

    .line 767
    .local v6, "recordDuration":J
    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v8}, Lcom/android/server/OnePlusPowerController$IdleStats;->getLastRecordTime()Ljava/time/LocalDateTime;

    move-result-object v8

    .line 769
    .local v8, "last":Ljava/time/LocalDateTime;
    if-nez v8, :cond_11d

    .line 770
    const-wide v6, 0x7fffffffffffffffL

    goto :goto_125

    .line 772
    :cond_11d
    invoke-static {v8, v0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/Duration;->toMillis()J

    move-result-wide v6

    .line 775
    :goto_125
    const-string v9, "OnePlusPowerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "record duration: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    sget v9, Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I

    int-to-long v9, v9

    cmp-long v9, v6, v9

    if-lez v9, :cond_167

    .line 779
    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v9}, Lcom/android/server/OnePlusPowerController$IdleStats;->getSize()I

    move-result v9

    sget v10, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    const-wide/16 v11, 0x1388

    if-lt v9, v10, :cond_15b

    .line 781
    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 782
    .local v9, "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v10, v9, v11, v12}, Lcom/android/server/OnePlusPowerController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 785
    .end local v9    # "msg":Landroid/os/Message;
    :cond_15b
    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 786
    .restart local v9    # "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v10, v9, v11, v12}, Lcom/android/server/OnePlusPowerController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 792
    .end local v4    # "duration":J
    .end local v6    # "recordDuration":J
    .end local v8    # "last":Ljava/time/LocalDateTime;
    .end local v9    # "msg":Landroid/os/Message;
    :cond_167
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    .line 794
    new-array v3, v3, [I

    aput v1, v3, v2

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_17f

    .line 796
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/16 v2, 0x1e6c

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 799
    .end local v0    # "screenOffEnd":Ljava/time/LocalDateTime;
    :cond_17f
    :goto_17f
    return-void
.end method

.method public onBootPhase(I)V
    .registers 13
    .param p1, "phase"    # I

    .line 557
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1a

    const-string v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnePlusPowerController onBootPhase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_1a
    const/16 v0, 0x258

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3b

    .line 559
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 560
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_32

    .line 561
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 563
    :cond_32
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 567
    :cond_3b
    const/16 v0, 0x1f4

    const/16 v2, 0x50

    const/4 v3, 0x0

    if-ne p1, v0, :cond_9d

    .line 568
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 569
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusPowerController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 570
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 571
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 572
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusPowerController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    .line 573
    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusPowerController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 574
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 575
    new-array v0, v1, [I

    aput v2, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 576
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, v0}, Lcom/android/server/OnePlusPowerController;->createNotificationChannel(Landroid/app/NotificationManager;)V

    .line 580
    :cond_9d
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1c4

    .line 582
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 585
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 586
    .local v0, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/OnePlusPowerController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 589
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 590
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 591
    const-string v5, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 593
    new-array v5, v1, [I

    aput v2, v5, v3

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 594
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 595
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 596
    const-string/jumbo v2, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 597
    const-string/jumbo v2, "net.oneplus.powercontroller.intent.OPSM"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 598
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 601
    :cond_ed
    sget-boolean v2, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_109

    .line 602
    const-string/jumbo v2, "net.oneplus.powercontroller.action.RECORD_IDLE_ITEM"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 603
    const-string/jumbo v2, "net.oneplus.powercontroller.action.RESTORE_IDLE_ITEM"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 604
    const-string/jumbo v2, "net.oneplus.powercontroller.action.PROCESS_KMEANS"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 605
    const-string/jumbo v2, "net.oneplus.powercontroller.action.IDLE_STATS_CONFIG"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 608
    :cond_109
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 612
    const-string/jumbo v2, "{\"packageName\":\"net.oneplus.test_gms_wakelock\",\"tag\":\"TEST_GMS\"}"

    .line 614
    .local v2, "test_1":Ljava/lang/String;
    :try_start_118
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 615
    .local v5, "json_1":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v5}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_127
    .catch Lorg/json/JSONException; {:try_start_118 .. :try_end_127} :catch_128

    .line 618
    .end local v5    # "json_1":Lorg/json/JSONObject;
    goto :goto_13f

    .line 616
    :catch_128
    move-exception v5

    .line 617
    .local v5, "e":Lorg/json/JSONException;
    const-string v6, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to create an exclusive wakelock for testing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_13f
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v5}, Lcom/android/server/OverHeatingDiagnosis;->start()V

    .line 621
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/OnePlusPowerController;->mBootCompletedElapsedTime:J

    .line 624
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107004f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/OnePlusPowerController;->tetherableUsbRegexs:[Ljava/lang/String;

    .line 629
    const-string/jumbo v5, "persist.vendor.fst.softap.en"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_172

    .line 630
    const-string v5, "bond0"

    .line 631
    .local v5, "defaultFstInterfaceName":Ljava/lang/String;
    const-string/jumbo v6, "persist.vendor.fst.data.interface"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 633
    .local v6, "fstInterfaceName":Ljava/lang/String;
    new-array v1, v1, [Ljava/lang/String;

    aput-object v6, v1, v3

    iput-object v1, p0, Lcom/android/server/OnePlusPowerController;->tetherableWifiRegexs:[Ljava/lang/String;

    .line 634
    .end local v5    # "defaultFstInterfaceName":Ljava/lang/String;
    .end local v6    # "fstInterfaceName":Ljava/lang/String;
    goto :goto_181

    .line 635
    :cond_172
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x1070050

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OnePlusPowerController;->tetherableWifiRegexs:[Ljava/lang/String;

    .line 639
    :goto_181
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x107004c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OnePlusPowerController;->tetherableBluetoothRegexs:[Ljava/lang/String;

    .line 642
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/OnePlusPowerController;->mAudioManager:Landroid/media/AudioManager;

    .line 643
    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v1}, Lcom/android/server/OnePlusPowerController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsManager;

    iput-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLightsManager:Lcom/android/server/lights/LightsManager;

    .line 644
    const-class v1, Lcom/android/server/job/JobSchedulerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/OnePlusPowerController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobSchedulerInternal;

    iput-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLocalJobScheduler:Lcom/android/server/job/JobSchedulerInternal;

    .line 645
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OnePlusPowerController;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 647
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "optimal_power_save_mode_activation"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/OnePlusPowerController;->mActivationCount:I

    .line 652
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "test_1":Ljava/lang/String;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_1c4
    return-void
.end method

.method onShellCommand(Lcom/android/server/OnePlusPowerController$Shell;Ljava/lang/String;)I
    .registers 16
    .param p1, "shell"    # Lcom/android/server/OnePlusPowerController$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 2686
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2688
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onShellCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    const-string v1, "aggressive"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_91

    .line 2690
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2693
    monitor-enter p0

    .line 2694
    :try_start_30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2695
    .local v1, "token":J
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_8e

    .line 2698
    .local v5, "arg":Ljava/lang/String;
    if-eqz v5, :cond_6c

    .line 2699
    :try_start_3a
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 2700
    .local v6, "option":Ljava/lang/String;
    const-string/jumbo v7, "on"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 2701
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "doze_mode_policy"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2703
    const-string v3, "Aggressive doze mode is on"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_69

    .line 2704
    :cond_54
    const-string/jumbo v3, "off"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 2705
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "doze_mode_policy"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2707
    const-string v3, "Aggressive doze mode is off"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2709
    .end local v6    # "option":Ljava/lang/String;
    :cond_69
    :goto_69
    goto :goto_83

    .line 2713
    :catchall_6a
    move-exception v3

    goto :goto_8a

    .line 2710
    :cond_6c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mAggressive="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/OnePlusPowerController;->mAggressive:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_3a .. :try_end_83} :catchall_6a

    .line 2713
    :goto_83
    :try_start_83
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2714
    nop

    .line 2715
    .end local v1    # "token":J
    .end local v5    # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_984

    .line 2713
    .restart local v1    # "token":J
    .restart local v5    # "arg":Ljava/lang/String;
    :goto_8a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2715
    .end local v1    # "token":J
    .end local v5    # "arg":Ljava/lang/String;
    :catchall_8e
    move-exception v1

    monitor-exit p0
    :try_end_90
    .catchall {:try_start_83 .. :try_end_90} :catchall_8e

    throw v1

    .line 2716
    :cond_91
    const-string/jumbo v1, "log"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    .line 2717
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    monitor-enter p0

    .line 2720
    :try_start_a4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2721
    .restart local v1    # "token":J
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5
    :try_end_ac
    .catchall {:try_start_a4 .. :try_end_ac} :catchall_fe

    .line 2724
    .restart local v5    # "arg":Ljava/lang/String;
    if-eqz v5, :cond_dc

    .line 2725
    :try_start_ae
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 2726
    .restart local v6    # "option":Ljava/lang/String;
    const-string/jumbo v7, "on"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c6

    .line 2727
    sput-boolean v3, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    .line 2728
    sput-boolean v3, Lcom/android/server/OPLogger$Slog;->isLoggable:Z

    .line 2729
    const-string/jumbo v3, "log is on"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d9

    .line 2730
    :cond_c6
    const-string/jumbo v3, "off"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 2731
    sput-boolean v4, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    .line 2732
    sput-boolean v4, Lcom/android/server/OPLogger$Slog;->isLoggable:Z

    .line 2733
    const-string/jumbo v3, "log is off"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2735
    .end local v6    # "option":Ljava/lang/String;
    :cond_d9
    :goto_d9
    goto :goto_f3

    .line 2739
    :catchall_da
    move-exception v3

    goto :goto_fa

    .line 2736
    :cond_dc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "log state: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_ae .. :try_end_f3} :catchall_da

    .line 2739
    :goto_f3
    :try_start_f3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2740
    nop

    .line 2741
    .end local v1    # "token":J
    .end local v5    # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_984

    .line 2739
    .restart local v1    # "token":J
    .restart local v5    # "arg":Ljava/lang/String;
    :goto_fa
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2741
    .end local v1    # "token":J
    .end local v5    # "arg":Ljava/lang/String;
    :catchall_fe
    move-exception v1

    monitor-exit p0
    :try_end_100
    .catchall {:try_start_f3 .. :try_end_100} :catchall_fe

    throw v1

    .line 2742
    :cond_101
    const-string/jumbo v1, "onlineconfig"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16a

    .line 2743
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2745
    monitor-enter p0

    .line 2746
    :try_start_114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2747
    .restart local v1    # "token":J
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5
    :try_end_11c
    .catchall {:try_start_114 .. :try_end_11c} :catchall_167

    .line 2750
    .restart local v5    # "arg":Ljava/lang/String;
    if-eqz v5, :cond_146

    .line 2751
    :try_start_11e
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 2752
    .restart local v6    # "option":Ljava/lang/String;
    const-string/jumbo v7, "on"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_133

    .line 2753
    sput-boolean v3, Lcom/android/server/OnePlusPowerController;->mOnlineConfigEnabled:Z

    .line 2754
    const-string v3, "OnlineConfig is turned on"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_143

    .line 2755
    :cond_133
    const-string/jumbo v3, "off"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_143

    .line 2756
    sput-boolean v4, Lcom/android/server/OnePlusPowerController;->mOnlineConfigEnabled:Z

    .line 2757
    const-string v3, "OnlineConfig is turned off"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2759
    .end local v6    # "option":Ljava/lang/String;
    :cond_143
    :goto_143
    goto :goto_15c

    .line 2763
    :catchall_144
    move-exception v3

    goto :goto_163

    .line 2760
    :cond_146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnlineConfigEnabled: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/OnePlusPowerController;->mOnlineConfigEnabled:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_15c
    .catchall {:try_start_11e .. :try_end_15c} :catchall_144

    .line 2763
    :goto_15c
    :try_start_15c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2764
    nop

    .line 2765
    .end local v1    # "token":J
    .end local v5    # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_984

    .line 2763
    .restart local v1    # "token":J
    .restart local v5    # "arg":Ljava/lang/String;
    :goto_163
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2765
    .end local v1    # "token":J
    .end local v5    # "arg":Ljava/lang/String;
    :catchall_167
    move-exception v1

    monitor-exit p0
    :try_end_169
    .catchall {:try_start_15c .. :try_end_169} :catchall_167

    throw v1

    .line 2766
    :cond_16a
    const-string/jumbo v1, "wakelocks"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fa

    .line 2767
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    monitor-enter p0

    .line 2770
    :try_start_17d
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 2771
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->getExclusiveWakeLock()Ljava/util/HashMap;

    move-result-object v1

    .line 2773
    .local v1, "exclusiveWakeLocks":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2774
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_190
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2775
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2776
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    .line 2777
    .local v7, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "packageName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2778
    const-string/jumbo v8, "tags: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2779
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1cc
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1ed

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2780
    .local v10, "tag":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2781
    .end local v10    # "tag":Ljava/lang/String;
    goto :goto_1cc

    .line 2782
    :cond_1ed
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2783
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_190

    .line 2784
    :cond_1f1
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2785
    .end local v1    # "exclusiveWakeLocks":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    monitor-exit p0

    goto/16 :goto_984

    :catchall_1f7
    move-exception v1

    monitor-exit p0
    :try_end_1f9
    .catchall {:try_start_17d .. :try_end_1f9} :catchall_1f7

    throw v1

    .line 2786
    :cond_1fa
    new-array v1, v3, [I

    const/16 v5, 0x50

    aput v5, v1, v4

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_511

    const-string/jumbo v1, "usersleep"

    .line 2787
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_511

    .line 2788
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2790
    monitor-enter p0

    .line 2791
    :try_start_219
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2792
    .local v1, "arg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_221
    .catchall {:try_start_219 .. :try_end_221} :catchall_50e

    .line 2794
    .local v5, "token":J
    if-eqz v1, :cond_500

    .line 2795
    :try_start_223
    const-string/jumbo v7, "log"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_260

    .line 2796
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2797
    .local v2, "option":Ljava/lang/String;
    const-string/jumbo v7, "on"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24c

    .line 2798
    sput-boolean v3, Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z

    .line 2799
    sput-boolean v3, Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z

    .line 2800
    sput-boolean v3, Lcom/android/server/OnePlusPowerController;->DEBUG_SLEEP_STATE:Z

    .line 2801
    const-string v3, "DEBUG_KMEANS, DEBUG_IDLE_STATS, DEBUG_SLEEP_STATE are turned on"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2802
    const-string v3, "OnePlusPowerController"

    const-string v7, "DEBUG_KMEANS, DEBUG_IDLE_STATS, DEBUG_SLEEP_STATE are turned on"

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25e

    .line 2804
    :cond_24c
    sput-boolean v4, Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z

    .line 2805
    sput-boolean v4, Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z

    .line 2806
    sput-boolean v4, Lcom/android/server/OnePlusPowerController;->DEBUG_SLEEP_STATE:Z

    .line 2807
    const-string v3, "DEBUG_KMEANS, DEBUG_IDLE_STATS, DEBUG_SLEEP_STATE are turned off"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2808
    const-string v3, "OnePlusPowerController"

    const-string v7, "DEBUG_KMEANS, DEBUG_IDLE_STATS, DEBUG_SLEEP_STATE are turned off"

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    .end local v2    # "option":Ljava/lang/String;
    :goto_25e
    goto/16 :goto_503

    :cond_260
    const-string/jumbo v7, "start"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2ab

    .line 2811
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2812
    .local v2, "optionDate":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2813
    .local v3, "optionTime":Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_27b
    .catchall {:try_start_223 .. :try_end_27b} :catchall_4fe

    .line 2816
    .local v7, "dateFormat":Ljava/lang/String;
    :try_start_27b
    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-static {v7, v8}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v8

    .line 2817
    .local v8, "ldt":Ljava/time/LocalDateTime;
    iput-object v8, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    .line 2818
    const-string v9, "OnePlusPowerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mSleepStartOverridden: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked()V

    .line 2822
    const-string v9, "User sleep time is overrided!"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2a2
    .catch Ljava/time/format/DateTimeParseException; {:try_start_27b .. :try_end_2a2} :catch_2a3
    .catchall {:try_start_27b .. :try_end_2a2} :catchall_4fe

    .line 2825
    .end local v8    # "ldt":Ljava/time/LocalDateTime;
    goto :goto_2a9

    .line 2823
    :catch_2a3
    move-exception v8

    .line 2824
    .local v8, "dtpe":Ljava/time/format/DateTimeParseException;
    :try_start_2a4
    const-string v9, "Invalid date format!!!"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2826
    .end local v2    # "optionDate":Ljava/lang/String;
    .end local v3    # "optionTime":Ljava/lang/String;
    .end local v7    # "dateFormat":Ljava/lang/String;
    .end local v8    # "dtpe":Ljava/time/format/DateTimeParseException;
    :goto_2a9
    goto/16 :goto_503

    :cond_2ab
    const-string v7, "end"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f5

    .line 2827
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2828
    .restart local v2    # "optionDate":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2829
    .restart local v3    # "optionTime":Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_2c5
    .catchall {:try_start_2a4 .. :try_end_2c5} :catchall_4fe

    .line 2832
    .restart local v7    # "dateFormat":Ljava/lang/String;
    :try_start_2c5
    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-static {v7, v8}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v8

    .line 2834
    .local v8, "ldt":Ljava/time/LocalDateTime;
    iput-object v8, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    .line 2835
    const-string v9, "OnePlusPowerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mSleepEndOverridden: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked()V

    .line 2839
    const-string v9, "User awake time is overrided!"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2ec
    .catch Ljava/time/format/DateTimeParseException; {:try_start_2c5 .. :try_end_2ec} :catch_2ed
    .catchall {:try_start_2c5 .. :try_end_2ec} :catchall_4fe

    .line 2842
    .end local v8    # "ldt":Ljava/time/LocalDateTime;
    goto :goto_2f3

    .line 2840
    :catch_2ed
    move-exception v8

    .line 2841
    .local v8, "dtpe":Ljava/time/format/DateTimeParseException;
    :try_start_2ee
    const-string v9, "Invalid date format!!!"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2843
    .end local v2    # "optionDate":Ljava/lang/String;
    .end local v3    # "optionTime":Ljava/lang/String;
    .end local v7    # "dateFormat":Ljava/lang/String;
    .end local v8    # "dtpe":Ljava/time/format/DateTimeParseException;
    :goto_2f3
    goto/16 :goto_503

    :cond_2f5
    const-string/jumbo v7, "reset"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31e

    .line 2844
    const/16 v3, 0x1e6c

    sput v3, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    .line 2845
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v7, v3}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2846
    iput-object v2, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    .line 2847
    iput-object v2, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    .line 2848
    const v2, 0x44aa20

    sput v2, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    .line 2849
    const v2, 0x1b7740

    sput v2, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    .line 2850
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked()V

    goto/16 :goto_503

    .line 2851
    :cond_31e
    const-string/jumbo v2, "timeoutAfterScreenOff"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_369

    .line 2852
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2853
    .local v2, "option":Ljava/lang/String;
    if-eqz v2, :cond_362

    .line 2854
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2856
    .local v3, "timeout":I
    if-ltz v3, :cond_34d

    .line 2857
    sput v3, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    .line 2858
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mTimeOutAfterScreenOff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_361

    .line 2860
    :cond_34d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2862
    .end local v3    # "timeout":I
    :goto_361
    goto :goto_367

    .line 2863
    :cond_362
    const-string v3, "Option cannot be null!"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2865
    .end local v2    # "option":Ljava/lang/String;
    :goto_367
    goto/16 :goto_503

    :cond_369
    const-string/jumbo v2, "timeoutBeforeUserAwake"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b4

    .line 2866
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2867
    .restart local v2    # "option":Ljava/lang/String;
    if-eqz v2, :cond_3ad

    .line 2868
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2870
    .restart local v3    # "timeout":I
    if-ltz v3, :cond_398

    .line 2871
    sput v3, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    .line 2872
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mTimeOutBeforeUserAwake="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3ac

    .line 2874
    :cond_398
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2876
    .end local v3    # "timeout":I
    :goto_3ac
    goto :goto_3b2

    .line 2877
    :cond_3ad
    const-string v3, "Option cannot be null!"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2879
    .end local v2    # "option":Ljava/lang/String;
    :goto_3b2
    goto/16 :goto_503

    :cond_3b4
    const-string/jumbo v2, "opsm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f1

    .line 2880
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2881
    .restart local v2    # "option":Ljava/lang/String;
    const-string/jumbo v7, "on"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3ce

    .line 2882
    invoke-virtual {p0, v3}, Lcom/android/server/OnePlusPowerController;->enterOPSMIfAppropriated(Z)V

    goto :goto_3ef

    .line 2883
    :cond_3ce
    const-string/jumbo v3, "off"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3db

    .line 2884
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->leaveOPSM()V

    goto :goto_3ef

    .line 2886
    :cond_3db
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2888
    .end local v2    # "option":Ljava/lang/String;
    :goto_3ef
    goto/16 :goto_503

    :cond_3f1
    const-string/jumbo v2, "sensor"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43f

    .line 2889
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2890
    .restart local v2    # "option":Ljava/lang/String;
    const-string/jumbo v3, "on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_411

    .line 2891
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_43d

    .line 2892
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3}, Landroid/hardware/SensorManager;->leaveOPSM()V

    goto :goto_43d

    .line 2894
    :cond_411
    const-string/jumbo v3, "off"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_424

    .line 2895
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_43d

    .line 2896
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3}, Landroid/hardware/SensorManager;->enterOPSM()V

    goto :goto_43d

    .line 2899
    :cond_424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2900
    const-string v3, "Please use on/off"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2902
    .end local v2    # "option":Ljava/lang/String;
    :cond_43d
    :goto_43d
    goto/16 :goto_503

    :cond_43f
    const-string/jumbo v2, "sensor_restrict"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47a

    .line 2903
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2904
    .restart local v2    # "option":Ljava/lang/String;
    const-string v7, "enable"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_457

    .line 2905
    iput-boolean v3, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    goto :goto_478

    .line 2906
    :cond_457
    const-string v3, "disable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_462

    .line 2907
    iput-boolean v4, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    goto :goto_478

    .line 2909
    :cond_462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SensorRestrict = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2911
    .end local v2    # "option":Ljava/lang/String;
    :goto_478
    goto/16 :goto_503

    :cond_47a
    const-string v2, "bluetooth"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_503

    .line 2912
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 2913
    .local v2, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v2, :cond_48d

    .line 2914
    const-string v7, "No bluetooth service"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2917
    :cond_48d
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 2918
    .local v7, "option":Ljava/lang/String;
    const-string v8, "enable"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a4

    .line 2919
    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "ble_scan_always_enabled"

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2922
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_4fd

    .line 2923
    :cond_4a4
    const-string v8, "disable"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b7

    .line 2924
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "ble_scan_always_enabled"

    invoke-static {v3, v8, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2927
    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothAdapter;->disable(Z)Z

    goto :goto_4fd

    .line 2929
    :cond_4b7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bluetooth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_4cb

    const-string/jumbo v9, "on"

    goto :goto_4ce

    :cond_4cb
    const-string/jumbo v9, "off"

    :goto_4ce
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2930
    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "ble_scan_always_enabled"

    invoke-static {v8, v9, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 2933
    .local v8, "state":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BluetoothBle = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v8, v3, :cond_4f0

    const-string/jumbo v3, "on"

    goto :goto_4f3

    :cond_4f0
    const-string/jumbo v3, "off"

    :goto_4f3
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2935
    .end local v2    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v7    # "option":Ljava/lang/String;
    .end local v8    # "state":I
    :goto_4fd
    goto :goto_503

    .line 2940
    :catchall_4fe
    move-exception v2

    goto :goto_50a

    .line 2937
    :cond_500
    invoke-direct {p0, v0}, Lcom/android/server/OnePlusPowerController;->dumpUseSleep(Ljava/io/PrintWriter;)V
    :try_end_503
    .catchall {:try_start_2ee .. :try_end_503} :catchall_4fe

    .line 2940
    :cond_503
    :goto_503
    :try_start_503
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2941
    nop

    .line 2942
    .end local v1    # "arg":Ljava/lang/String;
    .end local v5    # "token":J
    monitor-exit p0

    goto/16 :goto_984

    .line 2940
    .restart local v1    # "arg":Ljava/lang/String;
    .restart local v5    # "token":J
    :goto_50a
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2942
    .end local v1    # "arg":Ljava/lang/String;
    .end local v5    # "token":J
    :catchall_50e
    move-exception v1

    monitor-exit p0
    :try_end_510
    .catchall {:try_start_503 .. :try_end_510} :catchall_50e

    throw v1

    .line 2943
    :cond_511
    const-string/jumbo v1, "overheat"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65c

    .line 2944
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    monitor-enter p0

    .line 2947
    :try_start_524
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2948
    .restart local v1    # "arg":Ljava/lang/String;
    if-eqz v1, :cond_647

    .line 2949
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_52e
    .catchall {:try_start_524 .. :try_end_52e} :catchall_659

    .line 2951
    .restart local v5    # "token":J
    :try_start_52e
    const-string v2, "enable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53d

    .line 2952
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorEnabled(Z)V

    goto/16 :goto_63d

    .line 2953
    :cond_53d
    const-string v2, "disable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54c

    .line 2954
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v2, v4}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorEnabled(Z)V

    goto/16 :goto_63d

    .line 2955
    :cond_54c
    const-string/jumbo v2, "number"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_564

    .line 2956
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2957
    .local v2, "num_arg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorNum(I)V

    .line 2958
    .end local v2    # "num_arg":Ljava/lang/String;
    goto/16 :goto_63d

    :cond_564
    const-string/jumbo v2, "temper"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57c

    .line 2959
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2960
    .local v2, "temp_arg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorTemp(I)V

    .line 2961
    .end local v2    # "temp_arg":Ljava/lang/String;
    goto/16 :goto_63d

    :cond_57c
    const-string/jumbo v2, "period"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_594

    .line 2962
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2963
    .local v2, "period_arg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorPeriod(J)V

    .line 2964
    .end local v2    # "period_arg":Ljava/lang/String;
    goto/16 :goto_63d

    :cond_594
    const-string v2, "force-monitor"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d6

    .line 2965
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2966
    .local v2, "force_arg":Ljava/lang/String;
    const-string v7, "enable"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5ae

    .line 2967
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v7, v3}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorForced(Z)V

    goto :goto_5d5

    .line 2968
    :cond_5ae
    const-string v3, "disable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5bc

    .line 2969
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v3, v4}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorForced(Z)V

    goto :goto_5d5

    .line 2971
    :cond_5bc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: overheat force-monitor "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2972
    const-string v3, "Please enter overheat force-monitor [enable|disable]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2974
    .end local v2    # "force_arg":Ljava/lang/String;
    :goto_5d5
    goto :goto_63d

    :cond_5d6
    const-string/jumbo v2, "monitor"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_629

    .line 2975
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2976
    .local v2, "monitor_arg":Ljava/lang/String;
    const-string/jumbo v3, "start"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f2

    .line 2977
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v3}, Lcom/android/server/OverHeatingDiagnosis;->startMonitor()V

    goto :goto_628

    .line 2978
    :cond_5f2
    const-string/jumbo v3, "update"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_601

    .line 2979
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v3}, Lcom/android/server/OverHeatingDiagnosis;->updateMonitor()V

    goto :goto_628

    .line 2980
    :cond_601
    const-string v3, "end"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60f

    .line 2981
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v3}, Lcom/android/server/OverHeatingDiagnosis;->endMonitor()V

    goto :goto_628

    .line 2983
    :cond_60f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: overheat monitor "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2984
    const-string v3, "Please enter overheat monitor [start|update|end]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2986
    .end local v2    # "monitor_arg":Ljava/lang/String;
    :goto_628
    goto :goto_63d

    .line 2987
    :cond_629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: overheat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_63d
    .catchall {:try_start_52e .. :try_end_63d} :catchall_642

    .line 2990
    :goto_63d
    :try_start_63d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2991
    nop

    .line 2992
    .end local v5    # "token":J
    goto :goto_656

    .line 2990
    .restart local v5    # "token":J
    :catchall_642
    move-exception v2

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2993
    .end local v5    # "token":J
    :cond_647
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v2, v0}, Lcom/android/server/OverHeatingDiagnosis;->dump(Ljava/io/PrintWriter;)V

    .line 2994
    const-string v2, "**** OverHeat Diagnosis Records ****"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2995
    const-string v2, "/data/system/power/diagnosis_heating.txt"

    invoke-direct {p0, v0, v2}, Lcom/android/server/OnePlusPowerController;->dumpDiagnosisRecords(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2998
    .end local v1    # "arg":Ljava/lang/String;
    :goto_656
    monitor-exit p0

    goto/16 :goto_984

    :catchall_659
    move-exception v1

    monitor-exit p0
    :try_end_65b
    .catchall {:try_start_63d .. :try_end_65b} :catchall_659

    throw v1

    .line 3000
    :cond_65c
    const-string/jumbo v1, "standby"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_671

    .line 3001
    const-string v1, "**** Standby Diagnosis Records ****"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3002
    const-string v1, "/data/system/power/diagnosis_standby.txt"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusPowerController;->dumpDiagnosisRecords(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_984

    .line 3003
    :cond_671
    const-string v1, "deepsleepwhitelist"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_760

    .line 3004
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 3005
    .restart local v1    # "arg":Ljava/lang/String;
    if-eqz v1, :cond_75e

    .line 3006
    const-string/jumbo v3, "update"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_701

    .line 3007
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 3008
    if-eqz v1, :cond_75e

    .line 3009
    const-string v3, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deepsleepwhitelist update to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deepsleepwhitelist update to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3011
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3012
    .local v3, "split_pkg":[Ljava/lang/String;
    move v5, v4

    .line 3012
    .local v5, "i":I
    :goto_6bf
    array-length v6, v3

    if-ge v5, v6, :cond_6e8

    .line 3014
    :try_start_6c2
    aget-object v6, v3, v5

    invoke-virtual {p0, v6}, Lcom/android/server/OnePlusPowerController;->addPackageToWhitelist(Ljava/lang/String;)V
    :try_end_6c7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6c2 .. :try_end_6c7} :catch_6c8

    .line 3017
    goto :goto_6e5

    .line 3015
    :catch_6c8
    move-exception v6

    .line 3016
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pkg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3012
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_6e5
    add-int/lit8 v5, v5, 0x1

    goto :goto_6bf

    .line 3020
    .end local v5    # "i":I
    :cond_6e8
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistApps:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v2, v5, v6}, Lcom/android/server/OnePlusPowerController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    .line 3021
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    invoke-interface {v2, v5}, Lcom/android/server/AlarmManagerInternal;->setDeepSleepWhitelist([I)V

    .line 3022
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    invoke-virtual {v2, v5}, Landroid/os/PowerManagerInternal;->setDeepSleepWhitelist([I)V

    .line 3023
    .end local v3    # "split_pkg":[Ljava/lang/String;
    goto :goto_75e

    .line 3024
    :cond_701
    const-string v2, "get"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_741

    .line 3025
    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDeepSleepWhitelistAppIds:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WhitelistAppIdArray: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_75e

    .line 3027
    :cond_741
    const-string v2, "clean"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75e

    .line 3029
    const-string v2, "OnePlusPowerController"

    const-string v3, "deepsleepwhitelist clean up to empty"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    new-array v3, v4, [I

    invoke-interface {v2, v3}, Lcom/android/server/AlarmManagerInternal;->setDeepSleepWhitelist([I)V

    .line 3031
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    new-array v3, v4, [I

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setDeepSleepWhitelist([I)V

    .line 3034
    .end local v1    # "arg":Ljava/lang/String;
    :cond_75e
    :goto_75e
    goto/16 :goto_984

    :cond_760
    const-string/jumbo v1, "wifi"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_809

    .line 3035
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 3036
    .restart local v1    # "arg":Ljava/lang/String;
    if-eqz v1, :cond_802

    .line 3037
    const/4 v2, 0x0

    .line 3038
    .local v2, "enabled":Z
    const-string v3, "enable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77a

    .line 3039
    const/4 v2, 0x1

    goto :goto_783

    .line 3040
    :cond_77a
    const-string v3, "disable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c8

    .line 3041
    const/4 v2, 0x0

    .line 3053
    :goto_783
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3055
    .local v5, "token":J
    :try_start_787
    const-string v3, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setWifiEnabled to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WiFi is "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_7ad

    const-string v7, "enabled"

    goto :goto_7af

    :cond_7ad
    const-string v7, "disabled"

    :goto_7af
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3057
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_7be
    .catchall {:try_start_787 .. :try_end_7be} :catchall_7c3

    .line 3059
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3060
    nop

    .line 3061
    .end local v2    # "enabled":Z
    .end local v5    # "token":J
    goto :goto_807

    .line 3059
    .restart local v2    # "enabled":Z
    .restart local v5    # "token":J
    :catchall_7c3
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3042
    .end local v5    # "token":J
    :cond_7c8
    const-string/jumbo v3, "query"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7fc

    .line 3043
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_7fb

    .line 3044
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3045
    const-string v3, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mWifiManager.isWifiEnabled()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    :cond_7fb
    return v4

    .line 3049
    :cond_7fc
    const-string v3, "Unknown option"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3050
    return v4

    .line 3062
    .end local v2    # "enabled":Z
    :cond_802
    const-string v2, "Please enter wifi option. [enable|disable|query]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3064
    .end local v1    # "arg":Ljava/lang/String;
    :goto_807
    goto/16 :goto_984

    :cond_809
    const-string/jumbo v1, "tether"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a5

    .line 3066
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v1

    if-nez v1, :cond_820

    .line 3067
    const-string v1, "Tethering is not supported"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3068
    return v4

    .line 3071
    :cond_820
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 3072
    .local v1, "tetheredIfaces":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 3073
    .local v2, "arg":Ljava/lang/String;
    if-eqz v2, :cond_89e

    .line 3074
    const/4 v5, 0x0

    .line 3075
    .local v5, "enabled":Z
    const-string v6, "enable"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_837

    .line 3076
    const/4 v5, 0x1

    goto :goto_840

    .line 3077
    :cond_837
    const-string v6, "disable"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_887

    .line 3078
    const/4 v5, 0x0

    .line 3087
    :goto_840
    if-ne v5, v3, :cond_852

    .line 3089
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mStartTetheringCallback:Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;

    invoke-virtual {v3, v4, v4, v6}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 3090
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mStartTetheringCallback:Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;

    invoke-virtual {v3, v6, v4, v7}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    goto :goto_886

    .line 3093
    :cond_852
    array-length v3, v1

    move v6, v4

    :goto_854
    if-ge v6, v3, :cond_886

    aget-object v7, v1, v6

    .line 3094
    .local v7, "s":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/OnePlusPowerController;->ifaceNameToType(Ljava/lang/String;)I

    move-result v8

    .line 3095
    .local v8, "type":I
    const-string v9, "OnePlusPowerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tether interface = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0, v7}, Lcom/android/server/OnePlusPowerController;->ifaceNameToType(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 3093
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "type":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_854

    .line 3100
    .end local v5    # "enabled":Z
    :cond_886
    :goto_886
    goto :goto_8a3

    .line 3079
    .restart local v5    # "enabled":Z
    :cond_887
    const-string/jumbo v3, "query"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_898

    .line 3080
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3081
    return v4

    .line 3083
    :cond_898
    const-string v3, "Unknown option"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3084
    return v4

    .line 3101
    .end local v5    # "enabled":Z
    :cond_89e
    const-string v3, "Please enter tether option. [enable|disable|query]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3103
    .end local v1    # "tetheredIfaces":[Ljava/lang/String;
    .end local v2    # "arg":Ljava/lang/String;
    :goto_8a3
    goto/16 :goto_984

    :cond_8a5
    const-string v1, "data"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_946

    .line 3104
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 3105
    .local v1, "arg":Ljava/lang/String;
    if-eqz v1, :cond_940

    .line 3106
    const/4 v2, 0x0

    .line 3107
    .local v2, "enabled":Z
    const-string v3, "enable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8be

    .line 3108
    const/4 v2, 0x1

    goto :goto_8c7

    .line 3109
    :cond_8be
    const-string v3, "disable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90b

    .line 3110
    const/4 v2, 0x0

    .line 3119
    :goto_8c7
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    .line 3120
    .local v3, "isDataEnabled":Z
    const-string v5, "OnePlusPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isDataEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", setDataEnabled to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_8fb

    const-string v6, "enabled"

    goto :goto_8fd

    :cond_8fb
    const-string v6, "disabled"

    :goto_8fd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3122
    invoke-direct {p0, v2}, Lcom/android/server/OnePlusPowerController;->enableDisableData(Z)V

    .line 3123
    .end local v2    # "enabled":Z
    .end local v3    # "isDataEnabled":Z
    goto :goto_945

    .line 3111
    .restart local v2    # "enabled":Z
    :cond_90b
    const-string/jumbo v3, "query"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93a

    .line 3112
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3113
    const-string v3, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TelephonyManager.getDataEnabled()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    return v4

    .line 3116
    :cond_93a
    const-string v3, "Unknown option"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3117
    return v4

    .line 3124
    .end local v2    # "enabled":Z
    :cond_940
    const-string v2, "Please enter data option. [enable|disable|query]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3126
    .end local v1    # "arg":Ljava/lang/String;
    :goto_945
    goto :goto_984

    :cond_946
    new-array v1, v3, [I

    aput v5, v1, v4

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_985

    const-string/jumbo v1, "test"

    .line 3127
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_985

    .line 3128
    sget-boolean v1, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_984

    .line 3129
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 3130
    .restart local v1    # "arg":Ljava/lang/String;
    if-eqz v1, :cond_97e

    .line 3131
    const-string/jumbo v2, "notification"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_978

    .line 3132
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_983

    .line 3134
    :cond_978
    const-string v2, "Unknown option"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3135
    return v4

    .line 3138
    :cond_97e
    const-string v2, "Please enter data option. [enable|disable|query]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3140
    .end local v1    # "arg":Ljava/lang/String;
    :goto_983
    nop

    .line 3144
    :cond_984
    :goto_984
    return v4

    .line 3142
    :cond_985
    invoke-virtual {p1, p2}, Lcom/android/server/OnePlusPowerController$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public onStart()V
    .registers 3

    .line 549
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_b

    const-string v0, "OnePlusPowerController"

    const-string v1, "OnePlusPowerController onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_b
    new-instance v0, Lcom/android/server/OnePlusPowerController$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/OnePlusPowerController$BinderService;-><init>(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mBinderService:Lcom/android/server/OnePlusPowerController$BinderService;

    .line 551
    const-string/jumbo v0, "powercontrol"

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mBinderService:Lcom/android/server/OnePlusPowerController$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/OnePlusPowerController;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 552
    const-class v0, Lcom/android/server/OnePlusPowerController$LocalService;

    new-instance v1, Lcom/android/server/OnePlusPowerController$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/OnePlusPowerController$LocalService;-><init>(Lcom/android/server/OnePlusPowerController;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/OnePlusPowerController;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 553
    return-void
.end method

.method releaseEarlyRestriction()V
    .registers 4

    .line 3730
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3731
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mEarlyRestrictionEnabled:Z

    if-nez v1, :cond_10

    .line 3732
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mEarlyRestrictionAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3733
    monitor-exit v0

    return-void

    .line 3736
    :cond_10
    const-string v1, "OnePlusPowerController"

    const-string/jumbo v2, "releaseEarlyRestriction"

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setWakeLockRestriction(Z)Z

    .line 3738
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLocalJobScheduler:Lcom/android/server/job/JobSchedulerInternal;

    invoke-interface {v1, v2}, Lcom/android/server/job/JobSchedulerInternal;->setJobRestriction(Z)V

    .line 3739
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v1, v2}, Lcom/android/server/AlarmManagerInternal;->setAlarmRestriction(Z)V

    .line 3741
    iput-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mEarlyRestrictionEnabled:Z

    .line 3742
    monitor-exit v0

    .line 3743
    return-void

    .line 3742
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method restoreNetwork()V
    .registers 4

    .line 3696
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiScanState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 3697
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_scan_always_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3699
    const-string v0, "OnePlusPowerController"

    const-string v2, "Restore wifi scan"

    invoke-static {v0, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiState:Z

    if-ne v0, v1, :cond_26

    .line 3704
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiState:Z

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 3705
    const-string v0, "OnePlusPowerController"

    const-string v2, "Restore wifi network"

    invoke-static {v0, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    :cond_26
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSavedDataState:Z

    if-ne v0, v1, :cond_36

    .line 3710
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSavedDataState:Z

    invoke-direct {p0, v0}, Lcom/android/server/OnePlusPowerController;->enableDisableData(Z)V

    .line 3711
    const-string v0, "OnePlusPowerController"

    const-string v1, "Restore data network"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3713
    :cond_36
    return-void
.end method

.method restrictNetwork()V
    .registers 6

    .line 3666
    const-string v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mSavedDataState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSavedDataState:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_29

    .line 3668
    invoke-direct {p0, v1}, Lcom/android/server/OnePlusPowerController;->enableDisableData(Z)V

    .line 3669
    const-string v0, "OnePlusPowerController"

    const-string v3, "Disable data network"

    invoke-static {v0, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 3671
    :cond_29
    const-string v0, "OnePlusPowerController"

    const-string v3, "Data network is disabled"

    invoke-static {v0, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3675
    :goto_30
    const-string v0, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wifi state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiState:Z

    if-ne v0, v2, :cond_59

    .line 3677
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 3678
    const-string v0, "OnePlusPowerController"

    const-string v3, "Disable wifi network"

    invoke-static {v0, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 3680
    :cond_59
    const-string v0, "OnePlusPowerController"

    const-string v3, "Wifi network is disabled"

    invoke-static {v0, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    :goto_60
    const-string v0, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wifi Scan state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiScanState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiScanState:Z

    if-ne v0, v2, :cond_8c

    .line 3686
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_scan_always_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3688
    const-string v0, "OnePlusPowerController"

    const-string v1, "Disable wifi scan"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 3690
    :cond_8c
    const-string v0, "OnePlusPowerController"

    const-string v1, "Wifi scan is disabled"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    :goto_93
    return-void
.end method

.method scheduleAlarmToEnterOPSM()V
    .registers 11

    .line 805
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.powercontroller.intent.OPSM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 807
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 811
    .local v1, "pending":Landroid/app/PendingIntent;
    if-eqz v1, :cond_17

    .line 812
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 815
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 816
    .local v3, "now":J
    sget v5, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    int-to-long v5, v5

    add-long/2addr v5, v3

    .line 819
    .local v5, "next":J
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v7, v2, v5, v6, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 822
    sget-boolean v2, Lcom/android/server/OnePlusPowerController;->DEBUG_SLEEP_STATE:Z

    if-eqz v2, :cond_4f

    .line 823
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 825
    .local v2, "date":Ljava/util/Date;
    const-string v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "schedule next alarm  @"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 826
    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " for OPSM check"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 825
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    .end local v2    # "date":Ljava/util/Date;
    :cond_4f
    return-void
.end method

.method scheduleNextAlarmIfNeededLocked()V
    .registers 4

    .line 835
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    if-nez v0, :cond_5

    return-void

    .line 837
    :cond_5
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_10

    .line 838
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mSleepStateChangeAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 841
    :cond_10
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusPowerController;->getSleepState(Ljava/time/LocalDateTime;)I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    .line 846
    sget v0, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    const/16 v1, 0x15be

    if-ne v0, v1, :cond_50

    .line 847
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    if-eqz v0, :cond_33

    .line 849
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    sget v1, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->minusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;)V

    goto :goto_73

    .line 852
    :cond_33
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepEnd()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 853
    .local v0, "sleepEnd":Ljava/time/LocalDateTime;
    if-eqz v0, :cond_48

    .line 854
    sget v1, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->minusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;)V

    goto :goto_4f

    .line 856
    :cond_48
    const-string v1, "OnePlusPowerController"

    const-string v2, "failed to scheudle the alarm for sleep end"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    .end local v0    # "sleepEnd":Ljava/time/LocalDateTime;
    :goto_4f
    goto :goto_73

    .line 860
    :cond_50
    sget v0, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    const/16 v1, 0x1e6c

    if-ne v0, v1, :cond_73

    .line 861
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    if-eqz v0, :cond_60

    .line 862
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;)V

    goto :goto_73

    .line 864
    :cond_60
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepStart()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 865
    .local v0, "sleepStart":Ljava/time/LocalDateTime;
    if-eqz v0, :cond_6c

    .line 866
    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;)V

    goto :goto_73

    .line 868
    :cond_6c
    const-string v1, "OnePlusPowerController"

    const-string v2, "failed to scheudle the alarm for sleep start"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    .end local v0    # "sleepStart":Ljava/time/LocalDateTime;
    :cond_73
    :goto_73
    return-void
.end method

.method scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;)V
    .registers 9
    .param p1, "date"    # Ljava/time/LocalDateTime;

    .line 879
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 880
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusPowerController;->convertLocalDateTimeToUtcMillis(Ljava/time/LocalDateTime;)J

    move-result-wide v2

    const-string v4, "PowerController.SleepStateChange"

    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mSleepStateChangeAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    .line 879
    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 884
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_SLEEP_STATE:Z

    if-eqz v0, :cond_44

    .line 886
    sget v0, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    const/16 v1, 0x15be

    if-ne v0, v1, :cond_1d

    .line 887
    const-string v0, "END"

    .line 887
    .local v0, "reason":Ljava/lang/String;
    goto :goto_1f

    .line 889
    .end local v0    # "reason":Ljava/lang/String;
    :cond_1d
    const-string v0, "START"

    .line 891
    .restart local v0    # "reason":Ljava/lang/String;
    :goto_1f
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedule next alarm  @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 892
    invoke-virtual {p1, v3}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 891
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    .end local v0    # "reason":Ljava/lang/String;
    :cond_44
    return-void
.end method

.method public setActivityManager(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .line 3789
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 3790
    return-void
.end method

.method setMccMncValue(Landroid/telephony/SubscriptionInfo;)V
    .registers 3
    .param p1, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .line 659
    if-eqz p1, :cond_e

    .line 660
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mFirstMcc:I

    .line 661
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mFirstMnc:I

    .line 663
    :cond_e
    return-void
.end method

.method shutdownLocked()V
    .registers 2

    .line 715
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->mShuttingDown:Z

    .line 716
    return-void
.end method
