.class public Lcom/android/server/DeviceIdleController;
.super Lcom/android/server/SystemService;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceIdleController$Shell;,
        Lcom/android/server/DeviceIdleController$DeviceIdleConfigUpdater;,
        Lcom/android/server/DeviceIdleController$LocalService;,
        Lcom/android/server/DeviceIdleController$BinderService;,
        Lcom/android/server/DeviceIdleController$MyHandler;,
        Lcom/android/server/DeviceIdleController$OPBackgroundThread;,
        Lcom/android/server/DeviceIdleController$Constants;,
        Lcom/android/server/DeviceIdleController$MotionListener;
    }
.end annotation


# static fields
.field private static final ACTION_TEST_RETRIEVE_BATTSTATS:Ljava/lang/String; = "com.test.retrieve.battstats"

.field private static final COMPRESS_TIME:Z = false

.field private static final DEBUG:Z

.field private static DEBUG_ONEPLUS:Z = false

.field private static final EVENT_BUFFER_SIZE:I = 0x64

.field private static final EVENT_DEEP_IDLE:I = 0x4

.field private static final EVENT_DEEP_MAINTENANCE:I = 0x5

.field private static final EVENT_LIGHT_IDLE:I = 0x2

.field private static final EVENT_LIGHT_MAINTENANCE:I = 0x3

.field private static final EVENT_NORMAL:I = 0x1

.field private static final EVENT_NULL:I = 0x0

.field public static final LIGHTIDLE_STATUS:Ljava/lang/String; = "LightIdle_Status"

.field private static final LIGHT_STATE_ACTIVE:I = 0x0

.field private static final LIGHT_STATE_IDLE:I = 0x4

.field private static final LIGHT_STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final LIGHT_STATE_INACTIVE:I = 0x1

.field private static final LIGHT_STATE_OVERRIDE:I = 0x7

.field private static final LIGHT_STATE_PRE_IDLE:I = 0x3

.field private static final LIGHT_STATE_WAITING_FOR_NETWORK:I = 0x5

.field static final MSG_BATT_SNAPSHOT_ON_END:I = 0x3eb

.field static final MSG_BATT_SNAPSHOT_ON_START:I = 0x3ea

.field static final MSG_CHECK_QXDM_IF_READY_ON_SDCARD:I = 0x3f0

.field static final MSG_CLEAN_QXDM_UNDER_SDCARD:I = 0x3ee

.field static final MSG_CLEAN_QXDM_UNDER_VENDOR:I = 0x3ed

.field static final MSG_COPY_QXDM_INTO_SDCARD:I = 0x3ef

.field static final MSG_DELAY:J = 0x2710L

.field private static final MSG_FINISH_IDLE_OP:I = 0x8

.field static final MSG_GEN_BATTERT_OUTLIER:I = 0x3f1

.field static final MSG_GEN_LOGS:I = 0x3e9

.field static final MSG_GET_CONFIG:I = 0x3e8

.field private static final MSG_REPORT_ACTIVE:I = 0x5

.field private static final MSG_REPORT_IDLE_OFF:I = 0x4

.field private static final MSG_REPORT_IDLE_ON:I = 0x2

.field private static final MSG_REPORT_IDLE_ON_LIGHT:I = 0x3

.field private static final MSG_REPORT_MAINTENANCE_ACTIVITY:I = 0x7

.field private static final MSG_REPORT_TEMP_APP_WHITELIST_CHANGED:I = 0x9

.field static final MSG_STANDBY_MIDDLE_CHECK:I = 0x3f2

.field static final MSG_STOP_QXDM_RECORDING_AFTER_120S:I = 0x3ec

.field private static final MSG_TEMP_APP_WHITELIST_TIMEOUT:I = 0x6

.field private static final MSG_WRITE_CONFIG:I = 0x1

.field private static POWERSTANDBY_ONLINECONFIG:Ljava/lang/String; = null

.field protected static final STATE_ACTIVE:I = 0x0

.field protected static final STATE_IDLE:I = 0x5

.field protected static final STATE_IDLE_MAINTENANCE:I = 0x6

.field protected static final STATE_IDLE_PENDING:I = 0x2

.field protected static final STATE_INACTIVE:I = 0x1

.field protected static final STATE_LOCATING:I = 0x4

.field protected static final STATE_SENSING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DeviceIdleController"

.field private static TIME_OF_DEEPIDLE_START_RESET:I

.field static isDozeChangeSupport:Z

.field static mDozeChange:Z

.field static mLocationManagerService:Lcom/android/server/LocationManagerService;

.field static mLock:Ljava/lang/Object;

.field private static mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

.field static mStopGps:Z

.field static mWhiteUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field isFirstReport:Z

.field isHasGpsRequest:Z

.field private m1stLightIdle:Z

.field private mActiveIdleOpCount:I

.field private mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmsActive:Z

.field private mAlreadyDiagnosed:Z

.field private mAlreadyReported:Z

.field private mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

.field private final mAppStateTracker:Lcom/android/server/AppStateTracker;

.field private mBatteryCapacity:I

.field private final mBatteryLevelLow:I

.field private mBatteryLevelofDeepIdleStart:I

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

.field private mCharging:Z

.field public final mConfigFile:Lcom/android/internal/os/AtomicFile;

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConnectivityService:Lcom/android/server/ConnectivityService;

.field private mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field private mCurIdleBudget:J

.field private mCurrentBatteryLevel:I

.field private final mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mDeepEnabled:Z

.field private mDelayMillis:J

.field private mDelaySnapShotMillis:J

.field private mElapseRealTimeofDeepIdleStart:J

.field private mEnablePowerStandbyDetect:Z

.field private mEnablePowerStandbyDiagnosis:Z

.field private mEnableWaitForUnlockToExitDoze:Z

.field private final mEventCmds:[I

.field private final mEventReasons:[Ljava/lang/String;

.field private final mEventTimes:[J

.field private mFakeLevelDrop:I

.field private mFakeMinimumPeriod:J

.field private mFakemA:I

.field private mForceIdle:Z

.field private final mGenericLocationListener:Landroid/location/LocationListener;

.field private mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mGpsLocationListener:Landroid/location/LocationListener;

.field final mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

.field private mHasGps:Z

.field private mHasNetworkLocation:Z

.field private mIdleIntent:Landroid/content/Intent;

.field private final mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

.field private mInactiveTimeout:J

.field private final mInteractivityReceiver:Landroid/content/BroadcastReceiver;

.field private mJobsActive:Z

.field private mLastGenericLocation:Landroid/location/Location;

.field private mLastGpsLocation:Landroid/location/Location;

.field private final mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mLightEnabled:Z

.field private mLightIdleIntent:Landroid/content/Intent;

.field private mLightState:I

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private mLocalActivityManager:Landroid/app/ActivityManagerInternal;

.field private mLocalBatteryManager:Landroid/os/BatteryManagerInternal;

.field private mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private mLocated:Z

.field private mLocating:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationRequest:Landroid/location/LocationRequest;

.field private final mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IMaintenanceActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaintenanceStartTime:J

.field private mMinimumPeriod:J

.field private final mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

.field private mMotionSensor:Landroid/hardware/Sensor;

.field private mNetworkConnected:Z

.field mNetworkPolicyForceCloseSocketCallback:Ljava/lang/Runnable;

.field private mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

.field private mNextAlarmTime:J

.field private mNextIdleDelay:J

.field private mNextIdlePendingDelay:J

.field private mNextLightAlarmTime:J

.field private mNextLightIdleDelay:J

.field private mNextSensingTimeoutAlarmTime:J

.field private mNotMoving:Z

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field private mOemExSvc:Lcom/oem/os/IOemExService;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mPowerSaveWhitelistAllAppIdArray:[I

.field private final mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerSaveWhitelistExceptIdleAppIdArray:[I

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private mPowerSaveWhitelistExceptIdleSystemAppIdArray:[I

.field private mPowerSaveWhitelistSystemAppIdArray:[I

.field private final mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

.field private mPowerSaveWhitelistUserAppIdArray:[I

.field private final mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousBatteryLevel:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReportedMaintenanceActivity:Z

.field private mSIMULATE_REPORT:Z

.field private mSavedNextIdleDelay:J

.field private mScreenLocked:Z

.field private mScreenObserver:Landroid/app/ActivityManagerInternal$ScreenObserver;

.field private mScreenOn:Z

.field private final mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mState:I

.field private mTempDisableCriteriaUpdate:Z

.field private mTempWhitelistAppIdArray:[I

.field private final mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/util/MutableLong;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_mA_Criteria:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 153
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    .line 159
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    .line 199
    const/4 v0, -0x1

    sput v0, Lcom/android/server/DeviceIdleController;->TIME_OF_DEEPIDLE_START_RESET:I

    .line 210
    const-string v0, "PowerStandbyOnlineConfig"

    sput-object v0, Lcom/android/server/DeviceIdleController;->POWERSTANDBY_ONLINECONFIG:Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    .line 4935
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/DeviceIdleController;->mWhiteUids:Ljava/util/ArrayList;

    .line 4936
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/DeviceIdleController;->mLock:Ljava/lang/Object;

    .line 4937
    sput-boolean v1, Lcom/android/server/DeviceIdleController;->isDozeChangeSupport:Z

    .line 4938
    sput-boolean v1, Lcom/android/server/DeviceIdleController;->mDozeChange:Z

    .line 4939
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/DeviceIdleController;->mStopGps:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1954
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    .line 194
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlreadyDiagnosed:Z

    .line 200
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryCapacity:I

    .line 201
    const/high16 v1, 0x42700000    # 60.0f

    iput v1, p0, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    .line 202
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mTempDisableCriteriaUpdate:Z

    .line 203
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    .line 204
    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController;->mFakeMinimumPeriod:J

    .line 205
    iput-wide v1, p0, Lcom/android/server/DeviceIdleController;->mDelayMillis:J

    .line 206
    sget v1, Lcom/android/server/OnePlusStandbyAnalyzer;->FAKE_LEVEL_DROP:I

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mFakeLevelDrop:I

    .line 207
    const/16 v1, 0x22b

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mFakemA:I

    .line 208
    const-wide/32 v1, 0x1499700

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController;->mMinimumPeriod:J

    .line 209
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mBatteryLevelLow:I

    .line 215
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mEnableWaitForUnlockToExitDoze:Z

    .line 221
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDiagnosis:Z

    .line 222
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    .line 223
    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController;->mDelaySnapShotMillis:J

    .line 224
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlreadyReported:Z

    .line 364
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    .line 371
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    .line 377
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    .line 383
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 388
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 393
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    .line 399
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    .line 405
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 412
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 417
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    .line 423
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 428
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    .line 434
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 440
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    .line 448
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdArray:[I

    .line 449
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleSystemAppIdArray:[I

    .line 454
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 460
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    .line 469
    const/16 v1, 0x64

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    .line 470
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    .line 471
    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    .line 484
    new-instance v1, Lcom/android/server/DeviceIdleController$1;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$1;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 559
    new-instance v1, Lcom/android/server/DeviceIdleController$2;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$2;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 569
    new-instance v1, Lcom/android/server/DeviceIdleController$3;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$3;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 581
    new-instance v1, Lcom/android/server/DeviceIdleController$4;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$4;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 591
    new-instance v1, Lcom/android/server/DeviceIdleController$5;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$5;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    .line 606
    new-instance v1, Lcom/android/server/DeviceIdleController$6;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$6;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    .line 665
    new-instance v1, Lcom/android/server/DeviceIdleController$MotionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DeviceIdleController$MotionListener;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$1;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    .line 667
    new-instance v1, Lcom/android/server/DeviceIdleController$7;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$7;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    .line 688
    new-instance v1, Lcom/android/server/DeviceIdleController$8;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$8;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    .line 1940
    new-instance v1, Lcom/android/server/DeviceIdleController$9;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$9;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mScreenObserver:Landroid/app/ActivityManagerInternal$ScreenObserver;

    .line 4941
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->isFirstReport:Z

    .line 4942
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->isHasGpsRequest:Z

    .line 1955
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/DeviceIdleController;->getSystemDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "deviceidle.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    .line 1956
    new-instance v0, Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 1957
    new-instance v0, Lcom/android/server/AppStateTracker;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/AppStateTracker;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 1958
    const-class v0, Lcom/android/server/AppStateTracker;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1959
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceIdleController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreviousBatteryLevel:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/DeviceIdleController;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p1, "x1"    # I

    .line 143
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mPreviousBatteryLevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/DeviceIdleController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/DeviceIdleController;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p1, "x1"    # I

    .line 143
    iput p1, p0, Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MotionListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/DeviceIdleController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mEnableWaitForUnlockToExitDoze:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic access$1700()Z
    .registers 1

    .line 143
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/Light;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mNotificationLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/server/OnePlusStandbyAnalyzer;
    .registers 1

    .line 143
    sget-object v0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/OnePlusStandbyAnalyzer;
    .registers 1
    .param p0, "x0"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 143
    sput-object p0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/DeviceIdleController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/DeviceIdleController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p1, "x1"    # Z

    .line 143
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/DeviceIdleController;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mDelaySnapShotMillis:J

    return-wide v0
.end method

.method static synthetic access$2500()Z
    .registers 1

    .line 143
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DeviceIdleController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mFakeLevelDrop:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/DeviceIdleController;)Lcom/android/server/OnePlusPowerController$LocalService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;

    return-object v0
.end method

.method static synthetic access$3100()Ljava/lang/String;
    .registers 1

    .line 143
    sget-object v0, Lcom/android/server/DeviceIdleController;->POWERSTANDBY_ONLINECONFIG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/DeviceIdleController;Lorg/json/JSONArray;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->resolveDeviceIdleConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/DeviceIdleController;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleSystemAppIdArray:[I

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/DeviceIdleController;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdArray:[I

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/DeviceIdleController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/DeviceIdleController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlreadyDiagnosed:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/DeviceIdleController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p1, "x1"    # Z

    .line 143
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlreadyDiagnosed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/DeviceIdleController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mFakemA:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/DeviceIdleController;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget v0, p0, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/DeviceIdleController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/DeviceIdleController;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mFakeMinimumPeriod:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/DeviceIdleController;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMinimumPeriod:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/DeviceIdleController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DeviceIdleController;

    .line 143
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    return v0
.end method

.method private addEvent(ILjava/lang/String;)V
    .registers 8
    .param p1, "cmd"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 474
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_2f

    .line 475
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    const/16 v3, 0x63

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aput p1, v0, v1

    .line 479
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 480
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aput-object p2, v0, v1

    .line 482
    :cond_2f
    return-void
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

    .line 3711
    .local p0, "systemApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "userApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3712
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1e

    .line 3713
    move v2, v0

    .local v2, "i":I
    :goto_8
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 3714
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3713
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3717
    .end local v2    # "i":I
    :cond_1e
    if-eqz p1, :cond_37

    .line 3718
    move v2, v0

    .restart local v2    # "i":I
    :goto_21
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_37

    .line 3719
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3718
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 3722
    .end local v2    # "i":I
    :cond_37
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 3723
    .local v1, "size":I
    new-array v2, v1, [I

    .line 3724
    .local v2, "appids":[I
    nop

    .local v0, "i":I
    :goto_3e
    if-ge v0, v1, :cond_49

    .line 3725
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v0

    .line 3724
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 3727
    .end local v0    # "i":I
    :cond_49
    return-object v2
.end method

.method private checkLoctionWhiteUid()Z
    .registers 15

    .line 4944
    sget-object v0, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    if-nez v0, :cond_f

    .line 4945
    const-string/jumbo v0, "location"

    .line 4946
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService;

    sput-object v0, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    .line 4948
    :cond_f
    const/4 v0, 0x0

    .line 4949
    .local v0, "activeLocationArrayMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    if-eqz v1, :cond_1a

    .line 4950
    sget-object v1, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->getActiveLocationUidType()Landroid/util/ArrayMap;

    move-result-object v0

    .line 4952
    :cond_1a
    const/4 v1, 0x0

    if-eqz v0, :cond_d0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_25

    goto/16 :goto_d0

    .line 4955
    :cond_25
    const-string v2, ""

    .line 4956
    .local v2, "provider":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4957
    .local v3, "uid":Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 4959
    .local v4, "pm":Landroid/content/pm/PackageManager;
    move-object v5, v3

    move-object v3, v2

    move v2, v1

    .line 4959
    .local v2, "conni":I
    .local v3, "provider":Ljava/lang/String;
    .local v5, "uid":Ljava/lang/Integer;
    :goto_36
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v2, v6, :cond_cf

    .line 4960
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Ljava/lang/String;

    .line 4961
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Ljava/lang/Integer;

    .line 4962
    if-nez v5, :cond_4e

    .line 4963
    goto/16 :goto_cb

    .line 4965
    :cond_4e
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x2710

    if-lt v6, v7, :cond_cb

    .line 4966
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 4967
    .local v6, "packages":[Ljava/lang/String;
    move v7, v1

    .line 4967
    .local v7, "i":I
    :goto_5f
    array-length v8, v6

    if-ge v7, v8, :cond_cb

    .line 4969
    :try_start_62
    aget-object v8, v6, v7

    const/4 v9, 0x1

    if-eqz v8, :cond_7b

    aget-object v8, v6, v7

    const-string v10, "com.amap.android.ams"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7b

    const-string/jumbo v8, "gps"

    .line 4970
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 4971
    return v9

    .line 4973
    :cond_7b
    aget-object v8, v6, v7

    invoke-virtual {v4, v8, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 4974
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_c6

    iget v10, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v10, v9

    if-nez v10, :cond_c6

    const-string/jumbo v10, "gps"

    .line 4975
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c6

    .line 4976
    aget-object v10, v6, v7

    invoke-virtual {p0, v10}, Lcom/android/server/DeviceIdleController;->isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c5

    .line 4977
    sget-object v10, Lcom/android/server/DeviceIdleController;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_9c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_62 .. :try_end_9c} :catch_c7

    .line 4978
    :try_start_9c
    const-string v11, "DeviceIdleController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkLoctionWhiteUid package = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v6, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4979
    sget-object v11, Lcom/android/server/DeviceIdleController;->mWhiteUids:Ljava/util/ArrayList;

    aget-object v12, v6, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4980
    aget-object v11, v6, v7

    invoke-virtual {p0, v11}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    .line 4981
    monitor-exit v10

    goto :goto_c5

    :catchall_c2
    move-exception v9

    monitor-exit v10
    :try_end_c4
    .catchall {:try_start_9c .. :try_end_c4} :catchall_c2

    :try_start_c4
    throw v9
    :try_end_c5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c4 .. :try_end_c5} :catch_c7

    .line 4983
    :cond_c5
    :goto_c5
    return v9

    .line 4986
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_c6
    goto :goto_c8

    .line 4985
    :catch_c7
    move-exception v8

    .line 4967
    :goto_c8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5f

    .line 4959
    .end local v6    # "packages":[Ljava/lang/String;
    .end local v7    # "i":I
    :cond_cb
    :goto_cb
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_36

    .line 4990
    .end local v2    # "conni":I
    :cond_cf
    return v1

    .line 4953
    .end local v3    # "provider":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "uid":Ljava/lang/Integer;
    :cond_d0
    :goto_d0
    return v1
.end method

.method private clearWhiteUid()V
    .registers 5

    .line 5042
    sget-object v0, Lcom/android/server/DeviceIdleController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5043
    :try_start_3
    const-string v1, ""

    .line 5044
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    sget-object v3, Lcom/android/server/DeviceIdleController;->mWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 5045
    sget-object v3, Lcom/android/server/DeviceIdleController;->mWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    .line 5046
    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    .line 5044
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5048
    .end local v2    # "i":I
    :cond_1d
    sget-object v2, Lcom/android/server/DeviceIdleController;->mWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5049
    .end local v1    # "packageName":Ljava/lang/String;
    monitor-exit v0

    .line 5050
    return-void

    .line 5049
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3935
    const-string v0, "Device idle controller (deviceidle) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3936
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3937
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3938
    const-string v0, "  step [light|deep]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3939
    const-string v0, "    Immediately step to next state, without waiting for alarm."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3940
    const-string v0, "  force-idle [light|deep]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3941
    const-string v0, "    Force directly into idle mode, regardless of other device state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3942
    const-string v0, "  force-inactive"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3943
    const-string v0, "    Force to be inactive, ready to freely step idle states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3944
    const-string v0, "  unforce"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3945
    const-string v0, "    Resume normal functioning after force-idle or force-inactive."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3946
    const-string v0, "  get [light|deep|force|screen|charging|network]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3947
    const-string v0, "    Retrieve the current given state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3948
    const-string v0, "  disable [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3949
    const-string v0, "    Completely disable device idle mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3950
    const-string v0, "  enable [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3951
    const-string v0, "    Re-enable device idle mode after it had previously been disabled."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3952
    const-string v0, "  enabled [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3953
    const-string v0, "    Print 1 if device idle mode is currently enabled, else 0."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3956
    const-string v0, "  aggressive [true|false]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3957
    const-string v0, "    Activate aggressive doze (true) or deactivate it (false)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3959
    const-string v0, "  whitelist"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3960
    const-string v0, "    Print currently whitelisted apps."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3961
    const-string v0, "  whitelist [package ...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3962
    const-string v0, "    Add (prefix with +) or remove (prefix with -) packages."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3963
    const-string v0, "  sys-whitelist [package ...|reset]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3964
    const-string v0, "    Prefix the package with \'-\' to remove it from the system whitelist or \'+\' to put it back in the system whitelist."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3966
    const-string v0, "    Note that only packages that were earlier removed from the system whitelist can be added back."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3968
    const-string v0, "    reset will reset the whitelist to the original state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3969
    const-string v0, "    Prints the system whitelist if no arguments are specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3970
    const-string v0, "  except-idle-whitelist [package ...|reset]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3971
    const-string v0, "    Prefix the package with \'+\' to add it to whitelist or \'=\' to check if it is already whitelisted"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3973
    const-string v0, "    [reset] will reset the whitelist to it\'s original state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3974
    const-string v0, "    Note that unlike <whitelist> cmd, changes made using this won\'t be persisted across boots"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3976
    const-string v0, "  tempwhitelist"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3977
    const-string v0, "    Print packages that are temporarily whitelisted."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3978
    const-string v0, "  tempwhitelist [-u USER] [-d DURATION] [-r] [package]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3979
    const-string v0, "    Temporarily place package in whitelist for DURATION milliseconds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3980
    const-string v0, "    If no DURATION is specified, 10 seconds is used"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3981
    const-string v0, "    If [-r] option is used, then the package is removed from temp whitelist and any [-d] is ignored"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3983
    const-string v0, "  motion"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3984
    const-string v0, "    Simulate a motion event to bring the device out of deep doze"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3985
    return-void
.end method

.method private static getSystemDir()Ljava/io/File;
    .registers 3

    .line 1974
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isHasGpsReport()Z
    .registers 12

    .line 4994
    sget-object v0, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    if-nez v0, :cond_f

    .line 4995
    const-string/jumbo v0, "location"

    .line 4996
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService;

    sput-object v0, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    .line 4998
    :cond_f
    const/4 v0, 0x0

    .line 4999
    .local v0, "activeLocationArrayMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    if-eqz v1, :cond_1a

    .line 5000
    sget-object v1, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->getActiveLocationUidType()Landroid/util/ArrayMap;

    move-result-object v0

    .line 5002
    :cond_1a
    const/4 v1, 0x0

    if-eqz v0, :cond_d8

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_25

    goto/16 :goto_d8

    .line 5006
    :cond_25
    const-string v2, ""

    .line 5007
    .local v2, "provider":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 5008
    .local v3, "uid":Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 5010
    .local v4, "pm":Landroid/content/pm/PackageManager;
    move-object v5, v3

    move-object v3, v2

    move v2, v1

    .line 5010
    .local v2, "conni":I
    .local v3, "provider":Ljava/lang/String;
    .local v5, "uid":Ljava/lang/Integer;
    :goto_36
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v2, v6, :cond_d7

    .line 5011
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Ljava/lang/String;

    .line 5012
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Ljava/lang/Integer;

    .line 5013
    const-string v6, "DeviceIdleController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isHasGpsReport uid ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "provider = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5014
    if-nez v5, :cond_6d

    .line 5015
    goto :goto_d3

    .line 5017
    :cond_6d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x2710

    if-lt v6, v7, :cond_d3

    .line 5018
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 5019
    .local v6, "packages":[Ljava/lang/String;
    move v7, v1

    .line 5019
    .local v7, "i":I
    :goto_7e
    array-length v8, v6

    if-ge v7, v8, :cond_d3

    .line 5020
    aget-object v8, v6, v7

    if-eqz v8, :cond_9e

    .line 5021
    const-string v8, "DeviceIdleController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isHasGpsReport package ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v6, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5023
    :cond_9e
    aget-object v8, v6, v7

    const/4 v9, 0x1

    if-eqz v8, :cond_b7

    aget-object v8, v6, v7

    const-string v10, "com.amap.android.ams"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b7

    const-string/jumbo v8, "gps"

    .line 5024
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 5025
    return v9

    .line 5028
    :cond_b7
    :try_start_b7
    aget-object v8, v6, v7

    invoke-virtual {v4, v8, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 5029
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_ce

    iget v10, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v10, v9

    if-nez v10, :cond_ce

    const-string/jumbo v10, "gps"

    .line 5030
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_cb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b7 .. :try_end_cb} :catch_cf

    if-eqz v10, :cond_ce

    .line 5031
    return v9

    .line 5034
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_ce
    goto :goto_d0

    .line 5033
    :catch_cf
    move-exception v8

    .line 5019
    :goto_d0
    add-int/lit8 v7, v7, 0x1

    goto :goto_7e

    .line 5010
    .end local v6    # "packages":[Ljava/lang/String;
    .end local v7    # "i":I
    :cond_d3
    :goto_d3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_36

    .line 5038
    .end local v2    # "conni":I
    :cond_d7
    return v1

    .line 5003
    .end local v3    # "provider":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "uid":Ljava/lang/Integer;
    :cond_d8
    :goto_d8
    const-string v2, "DeviceIdleController"

    const-string/jumbo v3, "isHasGpsReport activeLocationArrayMap = 0"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5004
    return v1
.end method

.method private static lightStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 324
    packed-switch p0, :pswitch_data_1e

    .line 332
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 331
    :pswitch_8
    const-string v0, "OVERRIDE"

    return-object v0

    .line 330
    :pswitch_b
    const-string v0, "IDLE_MAINTENANCE"

    return-object v0

    .line 329
    :pswitch_e
    const-string v0, "WAITING_FOR_NETWORK"

    return-object v0

    .line 328
    :pswitch_11
    const-string v0, "IDLE"

    return-object v0

    .line 327
    :pswitch_14
    const-string v0, "PRE_IDLE"

    return-object v0

    .line 326
    :pswitch_17
    const-string v0, "INACTIVE"

    return-object v0

    .line 325
    :pswitch_1a
    const-string v0, "ACTIVE"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_3
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V
    .registers 6
    .param p1, "appId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 2801
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 2802
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing appId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from temp whitelist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    :cond_1f
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IZ)V

    .line 2805
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2806
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2807
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V

    .line 2809
    :try_start_31
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/16 v1, 0x4011

    invoke-interface {v0, v1, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_38} :catch_39

    .line 2812
    goto :goto_3a

    .line 2811
    :catch_39
    move-exception v0

    .line 2813
    :goto_3a
    return-void
.end method

.method private passWhiteListsToForceAppStandbyTrackerLocked()V
    .registers 5

    .line 3790
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AppStateTracker;->setPowerSaveWhitelistAppIds([I[I[I)V

    .line 3794
    return-void
.end method

.method private postTempActiveTimeoutMessage(IJ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "delay"    # J

    .line 2768
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 2769
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "postTempActiveTimeoutMessage: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    :cond_23
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2773
    return-void
.end method

.method private readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 3819
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3823
    .local v0, "pm":Landroid/content/pm/PackageManager;
    :goto_8
    :try_start_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 3823
    .local v2, "type":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_14

    if-eq v2, v4, :cond_14

    .line 3823
    .end local v2    # "type":I
    goto :goto_8

    .line 3828
    .restart local v2    # "type":I
    :cond_14
    if-ne v2, v3, :cond_bc

    .line 3832
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3833
    .local v1, "outerDepth":I
    :cond_1a
    :goto_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v2, v3

    if-eq v3, v4, :cond_155

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2a

    .line 3834
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_155

    .line 3835
    :cond_2a
    if-eq v2, v3, :cond_1a

    const/4 v3, 0x4

    if-ne v2, v3, :cond_30

    .line 3836
    goto :goto_1a

    .line 3839
    :cond_30
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3840
    .local v3, "tagName":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xed5

    if-eq v6, v7, :cond_4e

    const v7, 0x6a37689

    if-eq v6, v7, :cond_43

    goto :goto_58

    :cond_43
    const-string/jumbo v6, "un-wl"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    move v5, v4

    goto :goto_58

    :cond_4e
    const-string/jumbo v6, "wl"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    const/4 v5, 0x0

    :cond_58
    :goto_58
    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_158

    .line 3861
    const-string v5, "DeviceIdleController"

    goto :goto_9f

    .line 3854
    :pswitch_5f
    const-string/jumbo v5, "n"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3855
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 3856
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    .line 3857
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 3856
    invoke-virtual {v6, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ba

    .line 3842
    .end local v5    # "packageName":Ljava/lang/String;
    :pswitch_7c
    const-string/jumbo v5, "n"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_83
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_83} :catch_13e
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_83} :catch_126
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_83} :catch_10e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_83} :catch_f6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_83} :catch_de
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_83} :catch_c5

    .line 3843
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_ba

    .line 3845
    const/high16 v6, 0x400000

    :try_start_87
    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 3847
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3848
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3847
    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_87 .. :try_end_9c} :catch_9d
    .catch Ljava/lang/IllegalStateException; {:try_start_87 .. :try_end_9c} :catch_13e
    .catch Ljava/lang/NullPointerException; {:try_start_87 .. :try_end_9c} :catch_126
    .catch Ljava/lang/NumberFormatException; {:try_start_87 .. :try_end_9c} :catch_10e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_87 .. :try_end_9c} :catch_f6
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_9c} :catch_de
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_87 .. :try_end_9c} :catch_c5

    .line 3847
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_9e

    .line 3849
    :catch_9d
    move-exception v6

    .line 3850
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :goto_9e
    goto :goto_ba

    .line 3861
    .restart local v3    # "tagName":Ljava/lang/String;
    :goto_9f
    :try_start_9f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <config>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3862
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3861
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3866
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_ba
    :goto_ba
    goto/16 :goto_1a

    .line 3829
    .end local v1    # "outerDepth":I
    :cond_bc
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "no start tag found"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c5
    .catch Ljava/lang/IllegalStateException; {:try_start_9f .. :try_end_c5} :catch_13e
    .catch Ljava/lang/NullPointerException; {:try_start_9f .. :try_end_c5} :catch_126
    .catch Ljava/lang/NumberFormatException; {:try_start_9f .. :try_end_c5} :catch_10e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9f .. :try_end_c5} :catch_f6
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_c5} :catch_de
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9f .. :try_end_c5} :catch_c5

    .line 3878
    .end local v2    # "type":I
    :catch_c5
    move-exception v1

    .line 3879
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_156

    .line 3876
    :catch_de
    move-exception v1

    .line 3877
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_155

    .line 3874
    :catch_f6
    move-exception v1

    .line 3875
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_155

    .line 3872
    :catch_10e
    move-exception v1

    .line 3873
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    goto :goto_155

    .line 3870
    :catch_126
    move-exception v1

    .line 3871
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NullPointerException;
    goto :goto_155

    .line 3868
    :catch_13e
    move-exception v1

    .line 3869
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3880
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_155
    :goto_155
    nop

    .line 3881
    :goto_156
    return-void

    nop

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_5f
    .end packed-switch
.end method

.method private removePowerSaveTempWhitelistAppDirectInternal(I)V
    .registers 5
    .param p1, "appId"    # I

    .line 2755
    monitor-enter p0

    .line 2756
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 2757
    .local v0, "idx":I
    if-gez v0, :cond_b

    .line 2759
    monitor-exit p0

    return-void

    .line 2761
    :cond_b
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 2762
    .local v1, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2763
    invoke-direct {p0, p1, v1}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    .line 2764
    .end local v0    # "idx":I
    .end local v1    # "reason":Ljava/lang/String;
    monitor-exit p0

    .line 2765
    return-void

    .line 2764
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0
.end method

.method private removePowerSaveTempWhitelistAppInternal(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2746
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 2748
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2749
    .local v1, "appId":I
    invoke-direct {p0, v1}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppDirectInternal(I)V
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    .line 2751
    .end local v0    # "uid":I
    .end local v1    # "appId":I
    goto :goto_15

    .line 2750
    :catch_14
    move-exception v0

    .line 2752
    :goto_15
    return-void
.end method

.method private reportPowerSaveWhitelistChangedLocked()V
    .registers 4

    .line 3778
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3779
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3780
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3781
    return-void
.end method

.method private reportTempWhitelistChangedLocked()V
    .registers 4

    .line 3784
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3785
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3786
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3787
    return-void
.end method

.method private resolveDeviceIdleConfigFromJSON(Lorg/json/JSONArray;)V
    .registers 10
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 2068
    if-nez p1, :cond_a

    .line 2069
    const-string v0, "DeviceIdleController"

    const-string v1, "[OnlineConfig] jsonArray is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    return-void

    .line 2073
    :cond_a
    const/4 v0, 0x0

    move v1, v0

    .line 2073
    .local v1, "i":I
    :goto_c
    :try_start_c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_625

    .line 2074
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2075
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 2076
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    .line 2078
    sget-object v3, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateReportingFlag(Z)V

    .line 2079
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_57a

    .line 2080
    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_enable, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57a

    .line 2081
    :cond_53
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_ma_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 2083
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mTempDisableCriteriaUpdate:Z

    if-nez v3, :cond_95

    .line 2084
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    .line 2085
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_57a

    .line 2086
    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_ma_criteria, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57a

    .line 2088
    :cond_95
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_57a

    .line 2089
    const-string v3, "DeviceIdleController"

    const-string v4, "[OnlineConfig] Has config for config_ma_criteria, but adb-configuration is set, so skip this way"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57a

    .line 2091
    :cond_a2
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_min_period"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 2092
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mMinimumPeriod:J

    .line 2093
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_57a

    .line 2094
    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_min_period, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/DeviceIdleController;->mMinimumPeriod:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57a

    .line 2097
    :cond_d8
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_enable_self_diagnosis"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 2098
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDiagnosis:Z

    .line 2099
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_57a

    .line 2100
    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_enable_self_diagnosis, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDiagnosis:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57a

    .line 2101
    :cond_10e
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_uwl_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14f

    .line 2102
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2103
    .local v3, "value":F
    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    .line 2104
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_14d

    .line 2105
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_uwl_criteria, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    .end local v3    # "value":F
    :cond_14d
    goto/16 :goto_57a

    :cond_14f
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_uwl_criteria_minor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_190

    .line 2107
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2108
    .restart local v3    # "value":F
    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->USERSPEACE_WAKELOCK_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    .line 2109
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_18e

    .line 2110
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_uwl_criteria_minor, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    .end local v3    # "value":F
    :cond_18e
    goto/16 :goto_57a

    :cond_190
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_kwl_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d1

    .line 2112
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2113
    .restart local v3    # "value":F
    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    .line 2114
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_1cf

    .line 2115
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_kwl_criteria, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    .end local v3    # "value":F
    :cond_1cf
    goto/16 :goto_57a

    :cond_1d1
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_kwl_criteria_minor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_212

    .line 2117
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2118
    .restart local v3    # "value":F
    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNELSPACE_WAKELOCK_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    .line 2119
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_210

    .line 2120
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_kwl_criteria_minor, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    .end local v3    # "value":F
    :cond_210
    goto/16 :goto_57a

    :cond_212
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_wr_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24c

    .line 2122
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2123
    .local v3, "value":I
    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    .line 2124
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_24a

    .line 2125
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_wr_criteria, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    .end local v3    # "value":I
    :cond_24a
    goto/16 :goto_57a

    :cond_24c
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_wr_criteria_minor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_286

    .line 2127
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2128
    .restart local v3    # "value":I
    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNEL_WAKEUP_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    .line 2129
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_284

    .line 2130
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_wr_criteria_minor, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    .end local v3    # "value":I
    :cond_284
    goto/16 :goto_57a

    :cond_286
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_sb_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c7

    .line 2132
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2133
    .local v3, "value":F
    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    .line 2134
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_2c5

    .line 2135
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_sb_criteria, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    .end local v3    # "value":F
    :cond_2c5
    goto/16 :goto_57a

    :cond_2c7
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_sb_criteria_minor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_308

    .line 2137
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2138
    .restart local v3    # "value":F
    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SINGAL_BAD_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    .line 2139
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_306

    .line 2140
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_sb_criteria_minor, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    .end local v3    # "value":F
    :cond_306
    goto/16 :goto_57a

    :cond_308
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_unacc_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_349

    .line 2142
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2143
    .restart local v3    # "value":F
    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    .line 2144
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_347

    .line 2145
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_unacc_criteria, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    .end local v3    # "value":F
    :cond_347
    goto/16 :goto_57a

    :cond_349
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_unacc_criteria_minor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38a

    .line 2147
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2148
    .restart local v3    # "value":F
    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->HIGH_UNACCOUNTED_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    .line 2149
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_388

    .line 2150
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_unacc_criteria_minor, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    .end local v3    # "value":F
    :cond_388
    goto/16 :goto_57a

    :cond_38a
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_minor_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3cb

    .line 2152
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2153
    .restart local v3    # "value":F
    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->AVERAGE_CURRENT_EXCEED_FOR_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    .line 2154
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_3c9

    .line 2155
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_minor_criteria, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    .end local v3    # "value":F
    :cond_3c9
    goto/16 :goto_57a

    :cond_3cb
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_time_slm_sec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40c

    .line 2157
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2158
    .restart local v3    # "value":F
    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->RPM_TIME_SINCE_LAST_MODE_SEC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    .line 2159
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_40a

    .line 2160
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_time_slm_sec, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    .end local v3    # "value":F
    :cond_40a
    goto/16 :goto_57a

    :cond_40c
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_sleep_acc_dur_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44d

    .line 2162
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2163
    .restart local v3    # "value":F
    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SLEEP_ACC_DURATION_DIFF_PERCENT:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    .line 2164
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_44b

    .line 2165
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_sleep_acc_dur_criteria, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    .end local v3    # "value":F
    :cond_44b
    goto/16 :goto_57a

    :cond_44d
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_sleepcount_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48e

    .line 2167
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2168
    .restart local v3    # "value":F
    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SLPI_SLEEP_COUNT_DIFF:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    .line 2169
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_48c

    .line 2170
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_sleepcount_criteria, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    .end local v3    # "value":F
    :cond_48c
    goto/16 :goto_57a

    .line 2177
    :cond_48e
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "qxdm_min_grab_period"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c6

    .line 2178
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2179
    .local v3, "minperiod":J
    sget-object v5, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDMGrabMinimumPeriod(J)V

    .line 2180
    sget-boolean v5, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v5, :cond_4c4

    .line 2181
    const-string v5, "DeviceIdleController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] Has config for qxdm_min_grab_period, updated to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    .end local v3    # "minperiod":J
    :cond_4c4
    goto/16 :goto_57a

    :cond_4c6
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "qxdm_min_grab_gap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4fe

    .line 2183
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2184
    .local v3, "mingap":J
    sget-object v5, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDMGrabGapAfterStandbyStart(J)V

    .line 2185
    sget-boolean v5, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v5, :cond_4fc

    .line 2186
    const-string v5, "DeviceIdleController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] Has config for qxdm_min_grab_gap, updated to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    .end local v3    # "mingap":J
    :cond_4fc
    goto/16 :goto_57a

    :cond_4fe
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "middle_check"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_535

    .line 2188
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2189
    .local v3, "middleCheck":J
    sget-object v5, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyMiddleCheck(J)V

    .line 2190
    sget-boolean v5, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v5, :cond_534

    .line 2191
    const-string v5, "DeviceIdleController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] Has config for middle_check, updated to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    .end local v3    # "middleCheck":J
    :cond_534
    goto :goto_57a

    :cond_535
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_wait_for_unlock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56f

    .line 2197
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mEnableWaitForUnlockToExitDoze:Z

    .line 2198
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_569

    .line 2199
    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_wait_for_unlock, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mEnableWaitForUnlockToExitDoze:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    :cond_569
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    # invokes: Lcom/android/server/DeviceIdleController$Constants;->updateConstants()V
    invoke-static {v3}, Lcom/android/server/DeviceIdleController$Constants;->access$3700(Lcom/android/server/DeviceIdleController$Constants;)V

    goto :goto_57a

    .line 2203
    :cond_56f
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_57a

    .line 2204
    const-string v3, "DeviceIdleController"

    const-string v4, "[OnlineConfig] No config for updating, no updated"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    :cond_57a
    :goto_57a
    const-string/jumbo v3, "ro.build.beta"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_590

    const-string/jumbo v3, "ro.build.alpha"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_58e

    goto :goto_590

    :cond_58e
    move v4, v0

    nop

    :cond_590
    :goto_590
    move v3, v4

    .line 2208
    .local v3, "mIsBetaOrAlphaRom":Z
    if-eqz v3, :cond_5ea

    .line 2209
    const-string/jumbo v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "config_beta_config_enable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5ce

    .line 2210
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_5be

    .line 2211
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_beta_enable, begin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    :cond_5be
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    .line 2214
    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v4, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateReportingFlag(Z)V

    .line 2216
    :cond_5ce
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_5ea

    .line 2217
    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_beta_enable, end to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5ea
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_5ea} :catch_60a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_5ea} :catch_5ee

    .line 2073
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "mIsBetaOrAlphaRom":Z
    :cond_5ea
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    .line 2222
    .end local v1    # "i":I
    :catch_5ee
    move-exception v0

    .line 2223
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig], error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_626

    .line 2220
    :catch_60a
    move-exception v0

    .line 2221
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig], error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_625
    nop

    .line 2225
    :goto_626
    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 295
    packed-switch p0, :pswitch_data_1e

    .line 303
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 302
    :pswitch_8
    const-string v0, "IDLE_MAINTENANCE"

    return-object v0

    .line 301
    :pswitch_b
    const-string v0, "IDLE"

    return-object v0

    .line 300
    :pswitch_e
    const-string v0, "LOCATING"

    return-object v0

    .line 299
    :pswitch_11
    const-string v0, "SENSING"

    return-object v0

    .line 298
    :pswitch_14
    const-string v0, "IDLE_PENDING"

    return-object v0

    .line 297
    :pswitch_17
    const-string v0, "INACTIVE"

    return-object v0

    .line 296
    :pswitch_1a
    const-string v0, "ACTIVE"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private updateTempWhitelistAppIdsLocked(IZ)V
    .registers 7
    .param p1, "appId"    # I
    .param p2, "adding"    # Z

    .line 3752
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3753
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v1, v1

    if-eq v1, v0, :cond_f

    .line 3754
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 3756
    :cond_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_1f

    .line 3757
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    .line 3756
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 3759
    .end local v1    # "i":I
    :cond_1f
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    if-eqz v1, :cond_4a

    .line 3760
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v1, :cond_43

    .line 3761
    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting activity manager temp whitelist to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 3762
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3761
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    :cond_43
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/ActivityManagerInternal;->updateDeviceIdleTempWhitelist([IIZ)V

    .line 3767
    :cond_4a
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_75

    .line 3768
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v1, :cond_6e

    .line 3769
    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting wakelock temp whitelist to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    .line 3770
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3769
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3772
    :cond_6e
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleTempWhitelist([I)V

    .line 3774
    :cond_75
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 3775
    return-void
.end method

.method private updateWhitelistAppIdsLocked()V
    .registers 4

    .line 3731
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 3733
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 3735
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    .line 3737
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_30

    .line 3738
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->setDeviceIdleWhitelist([I[I)V

    .line 3741
    :cond_30
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_5b

    .line 3742
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_54

    .line 3743
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting wakelock whitelist to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    .line 3744
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3743
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    :cond_54
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 3748
    :cond_5b
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 3749
    return-void
.end method


# virtual methods
.method addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userId"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2620
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    const-string v2, "No permission to change device idle whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2624
    .local v1, "callingUid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 2625
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string v9, "addPowerSaveTempWhitelistApp"

    .line 2624
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v5, v1

    move/from16 v6, p4

    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2631
    .end local p4    # "userId":I
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v11, v3

    .line 2633
    .local v11, "token":J
    const/4 v9, 0x1

    move-object v3, p0

    move v4, v1

    move-object v5, p1

    move-wide v6, p2

    move v8, v2

    move-object/from16 v10, p5

    :try_start_30
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_38

    .line 2636
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2637
    nop

    .line 2638
    return-void

    .line 2636
    :catchall_38
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v3, v0

    throw v3
.end method

.method addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    .registers 23
    .param p1, "callingUid"    # I
    .param p2, "appId"    # I
    .param p3, "duration"    # J
    .param p5, "sync"    # Z
    .param p6, "reason"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p5

    .line 2681
    move-object/from16 v4, p6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2682
    .local v5, "timeNow":J
    const/4 v7, 0x0

    .line 2683
    .local v7, "informWhitelistChanged":Z
    monitor-enter p0

    .line 2684
    :try_start_e
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_ed

    move v8, v0

    .line 2685
    .local v8, "callingAppId":I
    const/16 v0, 0x2710

    if-lt v8, v0, :cond_45

    .line 2686
    :try_start_17
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_45

    .line 2687
    :cond_20
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calling app "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not on whitelist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_40
    .catchall {:try_start_17 .. :try_end_40} :catchall_40

    .line 2726
    .end local v8    # "callingAppId":I
    :catchall_40
    move-exception v0

    move-wide/from16 v9, p3

    goto/16 :goto_f1

    .line 2691
    .restart local v8    # "callingAppId":I
    :cond_45
    :goto_45
    :try_start_45
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_ed

    move-wide/from16 v11, p3

    :try_start_4b
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_eb

    .line 2692
    .end local p3    # "duration":J
    .local v9, "duration":J
    :try_start_4f
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2693
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    if-nez v0, :cond_5b

    const/4 v12, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v12, 0x0

    .line 2695
    .local v12, "newEntry":Z
    :goto_5c
    if-eqz v12, :cond_73

    .line 2696
    new-instance v13, Landroid/util/Pair;

    new-instance v14, Landroid/util/MutableLong;

    move v15, v12

    const-wide/16 v11, 0x0

    .end local v12    # "newEntry":Z
    .local v15, "newEntry":Z
    invoke-direct {v14, v11, v12}, Landroid/util/MutableLong;-><init>(J)V

    invoke-direct {v13, v14, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v13

    .line 2697
    iget-object v11, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v11, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2699
    move-object v11, v0

    goto :goto_75

    .end local v15    # "newEntry":Z
    .restart local v12    # "newEntry":Z
    :cond_73
    move v15, v12

    move-object v11, v0

    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .end local v12    # "newEntry":Z
    .local v11, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .restart local v15    # "newEntry":Z
    :goto_75
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/util/MutableLong;

    add-long v12, v5, v9

    iput-wide v12, v0, Landroid/util/MutableLong;->value:J

    .line 2700
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_b9

    .line 2706
    const-string v0, "DeviceIdleController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Adding AppId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " to temp whitelist. New entry: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v13, v15

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v15    # "newEntry":Z
    .local v13, "newEntry":Z
    const-string v14, ", duration="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", sync="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", reason="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_4f .. :try_end_b8} :catchall_f3

    goto :goto_ba

    .line 2709
    .end local v13    # "newEntry":Z
    .restart local v15    # "newEntry":Z
    :cond_b9
    move v13, v15

    .end local v15    # "newEntry":Z
    .restart local v13    # "newEntry":Z
    :goto_ba
    if-eqz v13, :cond_e1

    .line 2712
    :try_start_bc
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const v12, 0x8011

    invoke-interface {v0, v12, v4, v2}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_c4} :catch_c5
    .catchall {:try_start_bc .. :try_end_c4} :catchall_f3

    .line 2715
    goto :goto_c6

    .line 2714
    :catch_c5
    move-exception v0

    .line 2716
    :goto_c6
    :try_start_c6
    invoke-direct {v1, v2, v9, v10}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 2717
    const/4 v12, 0x1

    invoke-direct {v1, v2, v12}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IZ)V

    .line 2718
    if-eqz v3, :cond_d2

    .line 2719
    const/4 v0, 0x1

    .line 2724
    .end local v7    # "informWhitelistChanged":Z
    .local v0, "informWhitelistChanged":Z
    move v7, v0

    goto :goto_de

    .line 2721
    .end local v0    # "informWhitelistChanged":Z
    .restart local v7    # "informWhitelistChanged":Z
    :cond_d2
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v12, 0x9

    const/4 v14, 0x1

    invoke-virtual {v0, v12, v2, v14}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2722
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2724
    :goto_de
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V

    .line 2726
    .end local v8    # "callingAppId":I
    .end local v11    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    .end local v13    # "newEntry":Z
    :cond_e1
    monitor-exit p0
    :try_end_e2
    .catchall {:try_start_c6 .. :try_end_e2} :catchall_f3

    .line 2727
    if-eqz v7, :cond_ea

    .line 2728
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    const/4 v8, 0x1

    invoke-virtual {v0, v2, v8}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZ)V

    .line 2730
    :cond_ea
    return-void

    .line 2726
    .end local v9    # "duration":J
    .restart local p3    # "duration":J
    :catchall_eb
    move-exception v0

    goto :goto_f0

    :catchall_ed
    move-exception v0

    move-wide/from16 v11, p3

    .end local p3    # "duration":J
    .restart local v9    # "duration":J
    :goto_f0
    move-wide v9, v11

    :goto_f1
    :try_start_f1
    monitor-exit p0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f3

    throw v0

    :catchall_f3
    move-exception v0

    goto :goto_f1
.end method

.method addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    .registers 16
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "userId"    # I
    .param p6, "sync"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .line 2668
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 2669
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 2670
    .local v3, "appId":I
    move-object v1, p0

    move v2, p1

    move-wide v4, p3

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_18} :catch_19

    .line 2672
    .end local v0    # "uid":I
    .end local v3    # "appId":I
    goto :goto_1a

    .line 2671
    :catch_19
    move-exception v0

    .line 2673
    :goto_1a
    return-void
.end method

.method public addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 2389
    monitor-enter p0

    .line 2391
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2393
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 2394
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2395
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2396
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2a} :catch_2f
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2d

    .line 2398
    :cond_2a
    const/4 v1, 0x1

    :try_start_2b
    monitor-exit p0

    return v1

    .line 2402
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catchall_2d
    move-exception v0

    goto :goto_33

    .line 2399
    :catch_2f
    move-exception v0

    .line 2400
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 2402
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_2d

    throw v0
.end method

.method public addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 2460
    monitor-enter p0

    .line 2462
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2464
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_38

    .line 2466
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2467
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2468
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 2472
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_38} :catch_3d
    .catchall {:try_start_1 .. :try_end_38} :catchall_3b

    .line 2474
    :cond_38
    const/4 v1, 0x1

    :try_start_39
    monitor-exit p0

    return v1

    .line 2478
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catchall_3b
    move-exception v0

    goto :goto_41

    .line 2475
    :catch_3d
    move-exception v0

    .line 2476
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 2478
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_3b

    throw v0
.end method

.method becomeActiveLocked(Ljava/lang/String;I)V
    .registers 7
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I

    .line 3086
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "becomeActiveLocked, reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    :cond_1a
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v0, :cond_22

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eqz v0, :cond_59

    .line 3088
    :cond_22
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3089
    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3090
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    .line 3091
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3094
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x50

    aput v3, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 3095
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;

    iget v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-virtual {v2, v3}, Lcom/android/server/OnePlusPowerController$LocalService;->setDozeState(I)V

    .line 3098
    :cond_42
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3099
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 3100
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 3101
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3102
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 3103
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    .line 3104
    invoke-direct {p0, v1, p1}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3106
    :cond_59
    return-void
.end method

.method becomeInactiveIfAppropriateLocked()V
    .registers 7

    .line 3109
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "DeviceIdleController"

    const-string v1, "becomeInactiveIfAppropriateLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_17

    :cond_13
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-eqz v0, :cond_78

    .line 3113
    :cond_17
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x1

    if-nez v0, :cond_51

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v0, :cond_51

    .line 3114
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3117
    new-array v0, v1, [I

    const/16 v2, 0x50

    const/4 v3, 0x0

    aput v2, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3118
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;

    iget v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-virtual {v0, v2}, Lcom/android/server/OnePlusPowerController$LocalService;->setDozeState(I)V

    .line 3121
    :cond_36
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_41

    const-string v0, "DeviceIdleController"

    const-string v2, "Moved from STATE_ACTIVE to STATE_INACTIVE"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    .line 3123
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3124
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-string/jumbo v2, "no activity"

    invoke-static {v0, v2}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3126
    :cond_51
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-nez v0, :cond_78

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v0, :cond_78

    .line 3127
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3128
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_66

    const-string v0, "DeviceIdleController"

    const-string v1, "Moved from LIGHT_STATE_ACTIVE to LIGHT_STATE_INACTIVE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    :cond_66
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    .line 3130
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 3131
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const-string/jumbo v1, "no activity"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3134
    :cond_78
    return-void
.end method

.method cancelAlarmLocked()V
    .registers 5

    .line 3642
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 3643
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 3644
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3646
    :cond_11
    return-void
.end method

.method cancelLightAlarmLocked()V
    .registers 5

    .line 3649
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 3650
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 3651
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3653
    :cond_11
    return-void
.end method

.method cancelLocatingLocked()V
    .registers 3

    .line 3656
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v0, :cond_23

    .line 3657
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 3658
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 3661
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Constants;->getPolicy()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 3662
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->clearAllPendingBroadcastsLocked()V

    .line 3665
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    .line 3667
    :cond_23
    return-void
.end method

.method cancelSensingTimeoutAlarmLocked()V
    .registers 5

    .line 3670
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 3671
    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 3672
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3674
    :cond_11
    return-void
.end method

.method checkIfHitBatteryLowLocked(II)V
    .registers 11
    .param p1, "preBatterylevel"    # I
    .param p2, "currBatteryLevel"    # I

    .line 3067
    const/4 v0, 0x5

    if-gt p2, v0, :cond_67

    if-le p1, p2, :cond_67

    .line 3069
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3070
    .local v0, "nowELAPSED":J
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mElapseRealTimeofDeepIdleStart:J

    sub-long v2, v0, v2

    .line 3072
    .local v2, "deepIdlePeriod":J
    iget-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v4, :cond_67

    iget-boolean v4, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    if-eqz v4, :cond_67

    iget-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    if-eqz v4, :cond_1c

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mFakeMinimumPeriod:J

    goto :goto_1e

    :cond_1c
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMinimumPeriod:J

    :goto_1e
    cmp-long v4, v2, v4

    if-lez v4, :cond_67

    .line 3074
    iget v4, p0, Lcom/android/server/DeviceIdleController;->mBatteryCapacity:I

    if-lez v4, :cond_67

    .line 3075
    iget-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    if-eqz v4, :cond_2d

    iget v4, p0, Lcom/android/server/DeviceIdleController;->mFakeLevelDrop:I

    goto :goto_32

    :cond_2d
    iget v4, p0, Lcom/android/server/DeviceIdleController;->mBatteryLevelofDeepIdleStart:I

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I

    sub-int/2addr v4, v5

    .line 3076
    .local v4, "levelDrop":I
    :goto_32
    sget-boolean v5, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v5, :cond_63

    const-string v5, "DeviceIdleController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[opbugreportlite] Doesn\'t leaving DeepIdle, but Battery Low, period = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " (ms), batteryLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", levelDrop = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", start to evaulate the battery-drain."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    :cond_63
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/DeviceIdleController;->leavingDeepIdleLocked(Z)V

    .line 3083
    .end local v0    # "nowELAPSED":J
    .end local v2    # "deepIdlePeriod":J
    .end local v4    # "levelDrop":I
    :cond_67
    return-void
.end method

.method checkTempAppWhitelistTimeout(I)V
    .registers 9
    .param p1, "uid"    # I

    .line 2776
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2777
    .local v0, "timeNow":J
    sget-boolean v2, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v2, :cond_26

    .line 2778
    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkTempAppWhitelistTimeout: uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", timeNow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    :cond_26
    monitor-enter p0

    .line 2781
    :try_start_27
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2782
    .local v2, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    if-nez v2, :cond_33

    .line 2784
    monitor-exit p0

    return-void

    .line 2786
    :cond_33
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/MutableLong;

    iget-wide v3, v3, Landroid/util/MutableLong;->value:J

    cmp-long v3, v0, v3

    if-ltz v3, :cond_4a

    .line 2787
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2788
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    goto :goto_7c

    .line 2791
    :cond_4a
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_72

    .line 2792
    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time to remove UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/MutableLong;

    iget-wide v5, v5, Landroid/util/MutableLong;->value:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    :cond_72
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/MutableLong;

    iget-wide v3, v3, Landroid/util/MutableLong;->value:J

    sub-long/2addr v3, v0

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    .line 2796
    .end local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    :goto_7c
    monitor-exit p0

    .line 2797
    return-void

    .line 2796
    :catchall_7e
    move-exception v2

    monitor-exit p0
    :try_end_80
    .catchall {:try_start_27 .. :try_end_80} :catchall_7e

    throw v2
.end method

.method decActiveIdleOps()V
    .registers 2

    .line 3438
    monitor-enter p0

    .line 3439
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3440
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-gtz v0, :cond_13

    .line 3441
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 3442
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3444
    :cond_13
    monitor-exit p0

    .line 3445
    return-void

    .line 3444
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 4703
    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "DeviceIdleController"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 4705
    :cond_13
    const/4 v0, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_92

    .line 4706
    const/4 v5, 0x0

    .line 4707
    .local v5, "userId":I
    move v6, v5

    move v5, v4

    .line 4707
    .local v5, "i":I
    .local v6, "userId":I
    :goto_1a
    array-length v7, v3

    if-ge v5, v7, :cond_92

    .line 4708
    aget-object v7, v3, v5

    .line 4709
    .local v7, "arg":Ljava/lang/String;
    const-string v8, "-h"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 4710
    invoke-static/range {p2 .. p2}, Lcom/android/server/DeviceIdleController;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 4711
    return-void

    .line 4712
    :cond_2b
    const-string v8, "-u"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 4713
    add-int/lit8 v5, v5, 0x1

    .line 4714
    array-length v8, v3

    if-ge v5, v8, :cond_47

    .line 4715
    aget-object v7, v3, v5

    .line 4716
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_47

    .line 4718
    :cond_3f
    const-string v8, "-a"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 4707
    .end local v7    # "arg":Ljava/lang/String;
    :cond_47
    :goto_47
    add-int/2addr v5, v0

    goto :goto_1a

    .line 4720
    .restart local v7    # "arg":Ljava/lang/String;
    :cond_49
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6c

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x2d

    if-ne v0, v8, :cond_6c

    .line 4721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4722
    return-void

    .line 4724
    :cond_6c
    new-instance v0, Lcom/android/server/DeviceIdleController$Shell;

    invoke-direct {v0, v1}, Lcom/android/server/DeviceIdleController$Shell;-><init>(Lcom/android/server/DeviceIdleController;)V

    .line 4725
    .local v0, "shell":Lcom/android/server/DeviceIdleController$Shell;
    iput v6, v0, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    .line 4726
    array-length v8, v3

    sub-int/2addr v8, v5

    new-array v15, v8, [Ljava/lang/String;

    .line 4727
    .local v15, "newArgs":[Ljava/lang/String;
    array-length v8, v3

    sub-int/2addr v8, v5

    invoke-static {v3, v5, v15, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4728
    iget-object v9, v1, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    new-instance v4, Landroid/os/ResultReceiver;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v8, v0

    move-object/from16 v11, p1

    move-object v13, v15

    move-object/from16 v16, v15

    move-object v15, v4

    .end local v15    # "newArgs":[Ljava/lang/String;
    .local v16, "newArgs":[Ljava/lang/String;
    invoke-virtual/range {v8 .. v15}, Lcom/android/server/DeviceIdleController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4730
    return-void

    .line 4735
    .end local v0    # "shell":Lcom/android/server/DeviceIdleController$Shell;
    .end local v5    # "i":I
    .end local v6    # "userId":I
    .end local v7    # "arg":Ljava/lang/String;
    .end local v16    # "newArgs":[Ljava/lang/String;
    :cond_92
    monitor-enter p0

    .line 4736
    :try_start_93
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v5, v2}, Lcom/android/server/DeviceIdleController$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 4738
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v5, v5, v4

    if-eqz v5, :cond_fd

    .line 4739
    const-string v5, "  Idling history:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4740
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 4741
    .local v5, "now":J
    const/16 v7, 0x63

    .line 4741
    .local v7, "i":I
    :goto_a9
    if-ltz v7, :cond_fd

    .line 4742
    iget-object v8, v1, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v8, v8, v7

    .line 4743
    .local v8, "cmd":I
    if-nez v8, :cond_b2

    .line 4744
    goto :goto_fa

    .line 4747
    :cond_b2
    iget-object v9, v1, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v9, v9, v7

    packed-switch v9, :pswitch_data_3ba

    .line 4753
    const-string v9, "         ??"

    goto :goto_cb

    .line 4752
    :pswitch_bc
    const-string v9, " deep-maint"

    goto :goto_cb

    .line 4751
    :pswitch_bf
    const-string v9, "  deep-idle"

    goto :goto_cb

    .line 4750
    :pswitch_c2
    const-string/jumbo v9, "light-maint"

    goto :goto_cb

    .line 4749
    :pswitch_c6
    const-string v9, " light-idle"

    goto :goto_cb

    .line 4748
    :pswitch_c9
    const-string v9, "     normal"

    .line 4753
    .local v9, "label":Ljava/lang/String;
    :goto_cb
    nop

    .line 4755
    const-string v10, "    "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4756
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4757
    const-string v10, ": "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4758
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    aget-wide v10, v10, v7

    invoke-static {v10, v11, v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4759
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aget-object v10, v10, v7

    if-eqz v10, :cond_f7

    .line 4760
    const-string v10, " ("

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4761
    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4762
    const-string v10, ")"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4764
    :cond_f7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4741
    .end local v8    # "cmd":I
    .end local v9    # "label":Ljava/lang/String;
    :goto_fa
    add-int/lit8 v7, v7, -0x1

    goto :goto_a9

    .line 4769
    .end local v5    # "now":J
    .end local v7    # "i":I
    :cond_fd
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 4770
    .local v5, "size":I
    if-lez v5, :cond_120

    .line 4771
    const-string v6, "  Whitelist (except idle) system apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4772
    move v6, v4

    .line 4772
    .local v6, "i":I
    :goto_10b
    if-ge v6, v5, :cond_120

    .line 4773
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4774
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4772
    add-int/lit8 v6, v6, 0x1

    goto :goto_10b

    .line 4777
    .end local v6    # "i":I
    :cond_120
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v5, v6

    .line 4778
    if-lez v5, :cond_144

    .line 4779
    const-string v6, "  Whitelist system apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4780
    move v6, v4

    .line 4780
    .restart local v6    # "i":I
    :goto_12f
    if-ge v6, v5, :cond_144

    .line 4781
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4782
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4780
    add-int/lit8 v6, v6, 0x1

    goto :goto_12f

    .line 4785
    .end local v6    # "i":I
    :cond_144
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v5, v6

    .line 4786
    if-lez v5, :cond_168

    .line 4787
    const-string v6, "  Removed from whitelist system apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4788
    move v6, v4

    .line 4788
    .restart local v6    # "i":I
    :goto_153
    if-ge v6, v5, :cond_168

    .line 4789
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4790
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4788
    add-int/lit8 v6, v6, 0x1

    goto :goto_153

    .line 4793
    .end local v6    # "i":I
    :cond_168
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v5, v6

    .line 4794
    if-lez v5, :cond_18c

    .line 4795
    const-string v6, "  Whitelist user apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4796
    move v6, v4

    .line 4796
    .restart local v6    # "i":I
    :goto_177
    if-ge v6, v5, :cond_18c

    .line 4797
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4798
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4796
    add-int/lit8 v6, v6, 0x1

    goto :goto_177

    .line 4801
    .end local v6    # "i":I
    :cond_18c
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 4802
    if-lez v5, :cond_1b1

    .line 4803
    const-string v6, "  Whitelist (except idle) all app ids:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4804
    move v6, v4

    .line 4804
    .restart local v6    # "i":I
    :goto_19b
    if-ge v6, v5, :cond_1b1

    .line 4805
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4806
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 4807
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4804
    add-int/lit8 v6, v6, 0x1

    goto :goto_19b

    .line 4810
    .end local v6    # "i":I
    :cond_1b1
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 4811
    if-lez v5, :cond_1d6

    .line 4812
    const-string v6, "  Whitelist user app ids:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4813
    move v6, v4

    .line 4813
    .restart local v6    # "i":I
    :goto_1c0
    if-ge v6, v5, :cond_1d6

    .line 4814
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4815
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 4816
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4813
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c0

    .line 4819
    .end local v6    # "i":I
    :cond_1d6
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 4820
    if-lez v5, :cond_1fb

    .line 4821
    const-string v6, "  Whitelist all app ids:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4822
    move v6, v4

    .line 4822
    .restart local v6    # "i":I
    :goto_1e5
    if-ge v6, v5, :cond_1fb

    .line 4823
    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4824
    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 4825
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4822
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e5

    .line 4828
    .end local v6    # "i":I
    :cond_1fb
    invoke-virtual {v1, v2, v0}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    .line 4830
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    if-eqz v0, :cond_206

    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v0, v0

    goto :goto_207

    :cond_206
    move v0, v4

    .line 4831
    .end local v5    # "size":I
    .local v0, "size":I
    :goto_207
    if-lez v0, :cond_223

    .line 4832
    const-string v5, "  Temp whitelist app ids:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4833
    nop

    .line 4833
    .local v4, "i":I
    :goto_20f
    if-ge v4, v0, :cond_223

    .line 4834
    const-string v5, "    "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4835
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    aget v5, v5, v4

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 4836
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4833
    add-int/lit8 v4, v4, 0x1

    goto :goto_20f

    .line 4840
    .end local v4    # "i":I
    :cond_223
    const-string v4, "  mLightEnabled="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 4841
    const-string v4, "  mDeepEnabled="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4842
    const-string v4, "  mForceIdle="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4843
    const-string v4, "  mMotionSensor="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4844
    const-string v4, "  mScreenOn="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4845
    const-string v4, "  mScreenLocked="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4846
    const-string v4, "  mNetworkConnected="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4847
    const-string v4, "  mCharging="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4848
    const-string v4, "  mMotionActive="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v4, v4, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4849
    const-string v4, "  mNotMoving="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4850
    const-string v4, "  mLocating="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mLocating:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mHasGps="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4851
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mHasNetwork="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4852
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mLocated="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mLocated:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4853
    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    if-eqz v4, :cond_2bf

    .line 4854
    const-string v4, "  mLastGenericLocation="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4856
    :cond_2bf
    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    if-eqz v4, :cond_2cd

    .line 4857
    const-string v4, "  mLastGpsLocation="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4859
    :cond_2cd
    const-string v4, "  mState="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4860
    const-string v4, " mLightState="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4861
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4862
    const-string v4, "  mInactiveTimeout="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4863
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4864
    iget v4, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-eqz v4, :cond_304

    .line 4865
    const-string v4, "  mActiveIdleOpCount="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4867
    :cond_304
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_31d

    .line 4868
    const-string v4, "  mNextAlarmTime="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4869
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4870
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4872
    :cond_31d
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_330

    .line 4873
    const-string v4, "  mNextIdlePendingDelay="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4874
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4875
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4877
    :cond_330
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_343

    .line 4878
    const-string v4, "  mNextIdleDelay="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4879
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4880
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4882
    :cond_343
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_356

    .line 4883
    const-string v4, "  mNextIdleDelay="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4884
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4885
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4887
    :cond_356
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_36d

    .line 4888
    const-string v4, "  mNextLightAlarmTime="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4889
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4890
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4892
    :cond_36d
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_380

    .line 4893
    const-string v4, "  mCurIdleBudget="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4894
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4895
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4897
    :cond_380
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_397

    .line 4898
    const-string v4, "  mMaintenanceStartTime="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4899
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4900
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4902
    :cond_397
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-eqz v4, :cond_3a5

    .line 4903
    const-string v4, "  mJobsActive="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4905
    :cond_3a5
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-eqz v4, :cond_3b3

    .line 4906
    const-string v4, "  mAlarmsActive="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4908
    .end local v0    # "size":I
    :cond_3b3
    monitor-exit p0

    .line 4909
    return-void

    .line 4908
    :catchall_3b5
    move-exception v0

    monitor-exit p0
    :try_end_3b7
    .catchall {:try_start_93 .. :try_end_3b7} :catchall_3b5

    throw v0

    nop

    nop

    :pswitch_data_3ba
    .packed-switch 0x1
        :pswitch_c9
        :pswitch_c6
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
    .end packed-switch
.end method

.method dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "printTitle"    # Z

    .line 4912
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4913
    .local v0, "size":I
    if-lez v0, :cond_50

    .line 4914
    const-string v1, ""

    .line 4915
    .local v1, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_13

    .line 4916
    const-string v2, "  Temp whitelist schedule:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4917
    const-string v1, "    "

    .line 4919
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 4920
    .local v2, "timeNow":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    if-ge v4, v0, :cond_50

    .line 4921
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4922
    const-string v5, "UID="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4923
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 4924
    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4925
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 4926
    .local v5, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/util/MutableLong;

    iget-wide v6, v6, Landroid/util/MutableLong;->value:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4927
    const-string v6, " - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4928
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4920
    .end local v5    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/MutableLong;Ljava/lang/String;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 4931
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "timeNow":J
    .end local v4    # "i":I
    :cond_50
    return-void
.end method

.method enteringDeepIdleLocked()V
    .registers 5

    .line 2942
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    if-nez v0, :cond_10

    .line 2943
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_f

    const-string v0, "DeviceIdleController"

    const-string v1, "[opbugreportlite] m1stLightIdle is false, abort enteringDeepIdleLocked, just return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    :cond_f
    return-void

    .line 2946
    :cond_10
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryLevelofDeepIdleStart:I

    .line 2947
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mElapseRealTimeofDeepIdleStart:J

    .line 2949
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-nez v0, :cond_22

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_50

    :cond_22
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] Entering DeepIdle, batteryLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/DeviceIdleController;->mBatteryLevelofDeepIdleStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", nowElapseRealTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mElapseRealTimeofDeepIdleStart:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2951
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2949
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    :cond_50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlreadyReported:Z

    .line 2956
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDiagnosis:Z

    if-eqz v1, :cond_8c

    .line 2957
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlreadyDiagnosed:Z

    .line 2958
    sget-object v0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    if-eqz v0, :cond_8c

    .line 2960
    :try_start_5d
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_68

    const-string v0, "DeviceIdleController"

    const-string v1, "[opbugreportlite] Snapshot of start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    :cond_68
    sget-object v0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->KWL_WR:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_71} :catch_72

    .line 2965
    goto :goto_8c

    .line 2962
    :catch_72
    move-exception v0

    .line 2963
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2964
    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] got exception while snapshot of start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8c
    :goto_8c
    return-void
.end method

.method exitForceIdleLocked()V
    .registers 3

    .line 3152
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-eqz v0, :cond_18

    .line 3153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 3154
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_18

    .line 3155
    :cond_f
    const-string v0, "exit-force"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 3158
    :cond_18
    return-void
.end method

.method public exitIdleInternal(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 2816
    monitor-enter p0

    .line 2817
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2818
    monitor-exit p0

    .line 2819
    return-void

    .line 2818
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method exitMaintenanceEarlyIfNeededLocked()V
    .registers 8

    .line 3495
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_e

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eq v0, v2, :cond_e

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v1, :cond_58

    .line 3497
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 3498
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3499
    .local v3, "now":J
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_3c

    .line 3500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3501
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v5, "Exit: start="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3502
    iget-wide v5, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3503
    const-string v5, " now="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3504
    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3505
    const-string v5, "DeviceIdleController"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3c
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v0, v2, :cond_47

    .line 3508
    const-string/jumbo v0, "s:early"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    goto :goto_58

    .line 3509
    :cond_47
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v1, :cond_52

    .line 3510
    const-string/jumbo v0, "s:predone"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    goto :goto_58

    .line 3512
    :cond_52
    const-string/jumbo v0, "s:early"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 3516
    .end local v3    # "now":J
    :cond_58
    :goto_58
    return-void
.end method

.method public getAppIdTempWhitelistInternal()[I
    .registers 2

    .line 2613
    monitor-enter p0

    .line 2614
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2615
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdUserWhitelistInternal()[I
    .registers 2

    .line 2607
    monitor-enter p0

    .line 2608
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2609
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdWhitelistExceptIdleInternal()[I
    .registers 2

    .line 2595
    monitor-enter p0

    .line 2596
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2597
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getAppIdWhitelistInternal()[I
    .registers 2

    .line 2601
    monitor-enter p0

    .line 2602
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 2603
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getFullPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .registers 7

    .line 2547
    monitor-enter p0

    .line 2548
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2549
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2550
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2551
    .local v2, "cur":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "cur":I
    :goto_14
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_2b

    .line 2552
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v4

    .line 2553
    add-int/lit8 v4, v4, 0x1

    .line 2551
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 2555
    .end local v2    # "i":I
    :cond_2b
    nop

    .local v3, "i":I
    :goto_2c
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 2556
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v4

    .line 2557
    add-int/lit8 v4, v4, 0x1

    .line 2555
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2c

    .line 2559
    .end local v3    # "i":I
    :cond_44
    monitor-exit p0

    return-object v1

    .line 2560
    .end local v0    # "size":I
    .end local v1    # "apps":[Ljava/lang/String;
    .end local v4    # "cur":I
    :catchall_46
    move-exception v0

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_46

    throw v0
.end method

.method public getFullPowerWhitelistInternal()[Ljava/lang/String;
    .registers 7

    .line 2564
    monitor-enter p0

    .line 2565
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2566
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2567
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2568
    .local v2, "cur":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "cur":I
    :goto_14
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_2b

    .line 2569
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v4

    .line 2570
    add-int/lit8 v4, v4, 0x1

    .line 2568
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 2572
    .end local v2    # "i":I
    :cond_2b
    nop

    .local v3, "i":I
    :goto_2c
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 2573
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v4

    .line 2574
    add-int/lit8 v4, v4, 0x1

    .line 2572
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2c

    .line 2576
    .end local v3    # "i":I
    :cond_44
    monitor-exit p0

    return-object v1

    .line 2577
    .end local v0    # "size":I
    .end local v1    # "apps":[Ljava/lang/String;
    .end local v4    # "cur":I
    :catchall_46
    move-exception v0

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_46

    throw v0
.end method

.method public getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2418
    monitor-enter p0

    .line 2419
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 2420
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2497
    monitor-enter p0

    .line 2498
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 2499
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method getPowerSaveWhitelistUserAppIds()[I
    .registers 2

    .line 1968
    monitor-enter p0

    .line 1969
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    monitor-exit p0

    return-object v0

    .line 1970
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getRemovedSystemPowerWhitelistAppsInternal()[Ljava/lang/String;
    .registers 5

    .line 2525
    monitor-enter p0

    .line 2526
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2527
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2528
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_19

    .line 2529
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2528
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2531
    .end local v2    # "i":I
    :cond_19
    monitor-exit p0

    return-object v1

    .line 2532
    .end local v0    # "size":I
    .end local v1    # "apps":[Ljava/lang/String;
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public getSystemPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .registers 5

    .line 2503
    monitor-enter p0

    .line 2504
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2505
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2506
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_19

    .line 2507
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2506
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2509
    .end local v2    # "i":I
    :cond_19
    monitor-exit p0

    return-object v1

    .line 2510
    .end local v0    # "size":I
    .end local v1    # "apps":[Ljava/lang/String;
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public getSystemPowerWhitelistInternal()[Ljava/lang/String;
    .registers 5

    .line 2514
    monitor-enter p0

    .line 2515
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2516
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2517
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_19

    .line 2518
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2517
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2520
    .end local v2    # "i":I
    :cond_19
    monitor-exit p0

    return-object v1

    .line 2521
    .end local v0    # "size":I
    .end local v1    # "apps":[Ljava/lang/String;
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public getUserPowerWhitelistInternal()[Ljava/lang/String;
    .registers 5

    .line 2536
    monitor-enter p0

    .line 2537
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2538
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2539
    .local v1, "apps":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 2540
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2539
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2542
    .end local v2    # "i":I
    :cond_1f
    monitor-exit p0

    return-object v1

    .line 2543
    .end local v0    # "size":I
    .end local v1    # "apps":[Ljava/lang/String;
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0
.end method

.method handleMotionDetectedLocked(JLjava/lang/String;)V
    .registers 9
    .param p1, "timeout"    # J
    .param p3, "type"    # Ljava/lang/String;

    .line 3528
    const/4 v0, 0x0

    .line 3529
    .local v0, "becomeInactive":Z
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v2, 0x0

    if-eqz v1, :cond_49

    .line 3531
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v1, v3, :cond_19

    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_19

    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_17

    goto :goto_19

    :cond_17
    move v1, v2

    goto :goto_1a

    :cond_19
    :goto_19
    move v1, v4

    .line 3534
    .local v1, "lightIdle":Z
    :goto_1a
    if-nez v1, :cond_26

    .line 3536
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0, p3, v3}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    .line 3537
    invoke-direct {p0, v4, p3}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3539
    :cond_26
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3542
    new-array v3, v4, [I

    const/16 v4, 0x50

    aput v4, v3, v2

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 3543
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;

    iget v4, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-virtual {v3, v4}, Lcom/android/server/OnePlusPowerController$LocalService;->setDozeState(I)V

    .line 3546
    :cond_3b
    iput-wide p1, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 3547
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 3548
    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3549
    iget v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v3, p3}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3550
    const/4 v0, 0x1

    .line 3552
    .end local v1    # "lightIdle":Z
    :cond_49
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_56

    .line 3555
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3556
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v1, p3}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3557
    const/4 v0, 0x1

    .line 3559
    :cond_56
    if-eqz v0, :cond_5b

    .line 3560
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3562
    :cond_5b
    return-void
.end method

.method handleWriteConfigFile()V
    .registers 7

    .line 3889
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3892
    .local v0, "memStream":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_1c

    .line 3893
    :try_start_6
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3894
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3895
    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3896
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    monitor-exit p0

    .line 3898
    goto :goto_1d

    .line 3896
    :catchall_19
    move-exception v1

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 3897
    :catch_1c
    move-exception v1

    .line 3900
    :goto_1d
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v1

    .line 3901
    const/4 v2, 0x0

    .line 3903
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_21
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 3904
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 3905
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 3906
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3907
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3908
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_39} :catch_3c
    .catchall {:try_start_21 .. :try_end_39} :catchall_3a

    .line 3912
    goto :goto_49

    .line 3913
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :catchall_3a
    move-exception v2

    goto :goto_4b

    .line 3909
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :catch_3c
    move-exception v3

    .line 3910
    .local v3, "e":Ljava/io/IOException;
    :try_start_3d
    const-string v4, "DeviceIdleController"

    const-string v5, "Error writing config file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3911
    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3913
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_49
    monitor-exit v1

    .line 3914
    return-void

    .line 3913
    :goto_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_3a

    throw v2
.end method

.method ifReportLocked(IJ)Z
    .registers 11
    .param p1, "levelDrop"    # I
    .param p2, "deepIdlePeriod"    # J

    .line 3018
    const/4 v0, 0x0

    .line 3019
    .local v0, "ifTriggerDaignosis":Z
    if-lez p1, :cond_ce

    .line 3020
    long-to-float v1, p2

    const v2, 0x4a5bba00    # 3600000.0f

    div-float/2addr v1, v2

    .line 3021
    .local v1, "hours":F
    iget v2, p0, Lcom/android/server/DeviceIdleController;->mBatteryCapacity:I

    int-to-float v2, v2

    int-to-float v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 3022
    .local v2, "mA":F
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-nez v3, :cond_19

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_4e

    :cond_19
    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[opbugreportlite] levelDrop = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " %, hours = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", average current = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " mA, criteria = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " mA"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    :cond_4e
    iget v3, p0, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_ce

    .line 3024
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-nez v3, :cond_5c

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_92

    :cond_5c
    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[opbugreportlite] hit the criteria, mEnablePowerStandbyDetect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mEnablePowerStandbyDiagnosis ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDiagnosis:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mAlreadyReported = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mAlreadyReported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mAlreadyDiagnosed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mAlreadyDiagnosed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    :cond_92
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDiagnosis:Z

    if-eqz v3, :cond_ce

    .line 3035
    const/4 v0, 0x1

    .line 3037
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-nez v3, :cond_9f

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_c4

    :cond_9f
    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "schedule to SNAPSHOT in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/DeviceIdleController;->mDelaySnapShotMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms, now="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    :cond_c4
    new-instance v3, Lcom/android/server/DeviceIdleController$10;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/DeviceIdleController$10;-><init>(Lcom/android/server/DeviceIdleController;IF)V

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mDelaySnapShotMillis:J

    invoke-static {v3, v4, v5}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    .line 3063
    .end local v1    # "hours":F
    .end local v2    # "mA":F
    :cond_ce
    return v0
.end method

.method incActiveIdleOps()V
    .registers 2

    .line 3432
    monitor-enter p0

    .line 3433
    :try_start_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3434
    monitor-exit p0

    .line 3435
    return-void

    .line 3434
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method isAppOnWhitelistInternal(I)Z
    .registers 3
    .param p1, "appid"    # I

    .line 1962
    monitor-enter p0

    .line 1963
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    .line 1964
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method isOpsInactiveLocked()Z
    .registers 2

    .line 3491
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-gtz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2588
    monitor-enter p0

    .line 2589
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 2590
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    monitor-exit p0

    .line 2589
    return v0

    .line 2591
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2581
    monitor-enter p0

    .line 2582
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    .line 2583
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    monitor-exit p0

    .line 2582
    return v0

    .line 2584
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method keyguardShowingLocked(Z)V
    .registers 5
    .param p1, "showing"    # Z

    .line 2921
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keyguardShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-eq v0, p1, :cond_37

    .line 2923
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 2924
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-nez v0, :cond_37

    .line 2925
    const-string/jumbo v0, "unlocked"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2928
    :cond_37
    return-void
.end method

.method leavingDeepIdleLocked(Z)V
    .registers 11
    .param p1, "ifSkipMinimumPeriod"    # Z

    .line 2974
    const/4 v0, 0x0

    .line 2975
    .local v0, "ifTriggerDaignosis":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2986
    .local v1, "nowELAPSED":J
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mElapseRealTimeofDeepIdleStart:J

    sget v5, Lcom/android/server/DeviceIdleController;->TIME_OF_DEEPIDLE_START_RESET:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    .line 2988
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-nez v3, :cond_16

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_8f

    :cond_16
    const-string v3, "DeviceIdleController"

    const-string v4, "[opbugreportlite] Leaving DeepIdle, but reset, so skip"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8f

    .line 2990
    :cond_1f
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mElapseRealTimeofDeepIdleStart:J

    sub-long v3, v1, v3

    .line 2992
    .local v3, "deepIdlePeriod":J
    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    if-eqz v5, :cond_80

    if-nez p1, :cond_36

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    if-eqz v5, :cond_30

    iget-wide v5, p0, Lcom/android/server/DeviceIdleController;->mFakeMinimumPeriod:J

    goto :goto_32

    :cond_30
    iget-wide v5, p0, Lcom/android/server/DeviceIdleController;->mMinimumPeriod:J

    :goto_32
    cmp-long v5, v3, v5

    if-lez v5, :cond_80

    .line 2993
    :cond_36
    iget v5, p0, Lcom/android/server/DeviceIdleController;->mBatteryCapacity:I

    if-lez v5, :cond_8f

    .line 2994
    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    if-eqz v5, :cond_41

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mFakeLevelDrop:I

    goto :goto_46

    :cond_41
    iget v5, p0, Lcom/android/server/DeviceIdleController;->mBatteryLevelofDeepIdleStart:I

    iget v6, p0, Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I

    sub-int/2addr v5, v6

    .line 2995
    .local v5, "levelDrop":I
    :goto_46
    sget-boolean v6, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-nez v6, :cond_4e

    sget-boolean v6, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_7b

    :cond_4e
    const-string v6, "DeviceIdleController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[opbugreportlite] Leaving DeepIdle, period = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " (ms), batteryLevel = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", levelDrop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", start to evaulate the battery-drain."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    :cond_7b
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/DeviceIdleController;->ifReportLocked(IJ)Z

    move-result v0

    .line 3000
    .end local v5    # "levelDrop":I
    goto :goto_8f

    .line 3002
    :cond_80
    sget-boolean v5, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-nez v5, :cond_88

    sget-boolean v5, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_8f

    :cond_88
    const-string v5, "DeviceIdleController"

    const-string v6, "[opbugreportlite] Leaving DeepIdle, too short, so skip"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    .end local v3    # "deepIdlePeriod":J
    :cond_8f
    :goto_8f
    sget-object v3, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v3, v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->immediateInformScreenON(Z)V

    .line 3014
    return-void
.end method

.method motionLocked()V
    .registers 4

    .line 3519
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "motionLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    :cond_c
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "motion"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 3522
    return-void
.end method

.method public onAnyMotionResult(I)V
    .registers 5
    .param p1, "result"    # I

    .line 1279
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnyMotionResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_20
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->mDozeChange:Z

    if-eqz v0, :cond_40

    .line 1283
    const/4 p1, 0x0

    .line 1284
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change onAnyMotionResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_40
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4c

    .line 1288
    monitor-enter p0

    .line 1289
    :try_start_44
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 1290
    monitor-exit p0

    goto :goto_4c

    :catchall_49
    move-exception v0

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_49

    throw v0

    .line 1292
    :cond_4c
    :goto_4c
    const/4 v1, 0x1

    if-eq p1, v1, :cond_7e

    if-ne p1, v0, :cond_52

    goto :goto_7e

    .line 1297
    :cond_52
    if-nez p1, :cond_8a

    .line 1298
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_67

    .line 1300
    monitor-enter p0

    .line 1301
    :try_start_5a
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 1302
    const-string/jumbo v0, "s:stationary"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 1303
    monitor-exit p0

    goto :goto_8a

    :catchall_64
    move-exception v0

    monitor-exit p0
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_64

    throw v0

    .line 1304
    :cond_67
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_8a

    .line 1307
    monitor-enter p0

    .line 1308
    :try_start_6d
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 1309
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    if-eqz v0, :cond_79

    .line 1310
    const-string/jumbo v0, "s:stationary"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 1312
    :cond_79
    monitor-exit p0

    goto :goto_8a

    :catchall_7b
    move-exception v0

    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_6d .. :try_end_7d} :catchall_7b

    throw v0

    .line 1294
    :cond_7e
    :goto_7e
    monitor-enter p0

    .line 1295
    :try_start_7f
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "non_stationary"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    .line 1296
    monitor-exit p0

    .line 1315
    :cond_8a
    :goto_8a
    return-void

    .line 1296
    :catchall_8b
    move-exception v0

    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_7f .. :try_end_8d} :catchall_8b

    throw v0
.end method

.method public onBootPhase(I)V
    .registers 11
    .param p1, "phase"    # I

    .line 2230
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_347

    .line 2231
    monitor-enter p0

    .line 2232
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2233
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 2234
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    .line 2235
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 2238
    const-string/jumbo v0, "location"

    .line 2239
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService;

    sput-object v0, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    .line 2242
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x50

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 2243
    const-class v1, Lcom/android/server/OnePlusPowerController$LocalService;

    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusPowerController$LocalService;

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;

    .line 2246
    :cond_50
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    .line 2247
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "deviceidle_maint"

    invoke-virtual {v1, v0, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2249
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2250
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "deviceidle_going_idle"

    invoke-virtual {v1, v0, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2252
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2253
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService;

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mConnectivityService:Lcom/android/server/ConnectivityService;

    .line 2255
    const-string/jumbo v1, "netpolicy"

    .line 2256
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2255
    invoke-static {v1}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 2257
    const-class v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 2258
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "sensor"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2262
    new-array v1, v0, [I

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 2263
    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsManager;

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightsManager:Lcom/android/server/lights/LightsManager;

    .line 2264
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 2267
    :cond_c9
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 2268
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mBatteryCapacity:I

    .line 2269
    const-class v1, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalBatteryManager:Landroid/os/BatteryManagerInternal;

    .line 2270
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalBatteryManager:Landroid/os/BatteryManagerInternal;

    if-eqz v1, :cond_111

    .line 2272
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalBatteryManager:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mPreviousBatteryLevel:I

    .line 2273
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v1, :cond_111

    .line 2274
    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] mCurrentBatteryLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    :cond_111
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v1, :cond_19c

    .line 2277
    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] mBatteryCapacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DeviceIdleController;->mBatteryCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mAh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] mEnablePowerStandbyDetect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] mEnablePowerStandbyDiagnosis = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDiagnosis:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] m_mA_Criteria = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] mMinimumPeriod = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mMinimumPeriod:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    :cond_19c
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mOemExSvc:Lcom/oem/os/IOemExService;

    if-nez v1, :cond_1ac

    .line 2284
    const-string v1, "OEMExService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mOemExSvc:Lcom/oem/os/IOemExService;

    .line 2286
    :cond_1ac
    new-instance v1, Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    new-instance v4, Lcom/android/server/DeviceIdleController$DeviceIdleConfigUpdater;

    invoke-direct {v4, p0}, Lcom/android/server/DeviceIdleController$DeviceIdleConfigUpdater;-><init>(Lcom/android/server/DeviceIdleController;)V

    sget-object v5, Lcom/android/server/DeviceIdleController;->POWERSTANDBY_ONLINECONFIG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 2287
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 2288
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v2, 0x3e8

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2290
    invoke-static {}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->prepareThread()V

    .line 2293
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2295
    .local v1, "sigMotionSensorId":I
    if-lez v1, :cond_1ea

    .line 2296
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 2298
    :cond_1ea
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_209

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_209

    .line 2300
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 2303
    :cond_209
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_217

    .line 2305
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    .line 2309
    :cond_217
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_252

    .line 2311
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    .line 2313
    new-instance v2, Landroid/location/LocationRequest;

    invoke-direct {v2}, Landroid/location/LocationRequest;-><init>()V

    const/16 v3, 0x64

    .line 2314
    invoke-virtual {v2, v3}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v2

    .line 2315
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v2

    .line 2316
    invoke-virtual {v2, v3, v4}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v2

    .line 2317
    invoke-virtual {v2, v0}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    .line 2320
    :cond_252
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    .line 2322
    .local v0, "angleThreshold":F
    new-instance v2, Lcom/android/server/AnyMotionDetector;

    .line 2323
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/os/PowerManager;

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    move-object v3, v2

    move-object v7, p0

    move v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/AnyMotionDetector;-><init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)V

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    .line 2326
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v2}, Lcom/android/server/AppStateTracker;->onSystemServicesReady()V

    .line 2328
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    .line 2329
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    const/high16 v3, 0x50000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2331
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    .line 2332
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2335
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2336
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2337
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2339
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    .line 2340
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2341
    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2342
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2344
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    .line 2345
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2348
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    .line 2352
    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 2354
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2355
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2356
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2360
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_31c

    .line 2361
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    .line 2362
    const-string v3, "com.test.retrieve.battstats"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2363
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2367
    :cond_31c
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityManagerInternal;->setDeviceIdleWhitelist([I[I)V

    .line 2370
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v3, v4}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    .line 2372
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mScreenObserver:Landroid/app/ActivityManagerInternal$ScreenObserver;

    invoke-virtual {v3, v4}, Landroid/app/ActivityManagerInternal;->registerScreenObserver(Landroid/app/ActivityManagerInternal$ScreenObserver;)V

    .line 2374
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 2375
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateInteractivityLocked()V

    .line 2378
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    # invokes: Lcom/android/server/DeviceIdleController$Constants;->updateConstants()V
    invoke-static {v3}, Lcom/android/server/DeviceIdleController$Constants;->access$3700(Lcom/android/server/DeviceIdleController$Constants;)V

    .line 2380
    .end local v0    # "angleThreshold":F
    .end local v1    # "sigMotionSensorId":I
    .end local v2    # "filter":Landroid/content/IntentFilter;
    monitor-exit p0
    :try_end_33f
    .catchall {:try_start_5 .. :try_end_33f} :catchall_344

    .line 2381
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    goto :goto_347

    .line 2380
    :catchall_344
    move-exception v0

    :try_start_345
    monitor-exit p0
    :try_end_346
    .catchall {:try_start_345 .. :try_end_346} :catchall_344

    throw v0

    .line 2383
    :cond_347
    :goto_347
    return-void
.end method

.method onShellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;)I
    .registers 41
    .param p1, "shell"    # Lcom/android/server/DeviceIdleController$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 4003
    move-object/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v10

    .line 4004
    .local v10, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v0, "step"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v11, 0x0

    if-eqz v0, :cond_8b

    .line 4005
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4007
    monitor-enter p0

    .line 4008
    :try_start_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    .line 4009
    .local v1, "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_88

    move-object v3, v0

    .line 4011
    .local v3, "arg":Ljava/lang/String;
    if-eqz v3, :cond_69

    :try_start_2b
    const-string v0, "deep"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_69

    .line 4015
    :cond_34
    const-string/jumbo v0, "light"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 4016
    const-string/jumbo v0, "s:shell"

    invoke-virtual {v7, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 4017
    const-string v0, "Stepped to light: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7d

    .line 4019
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown idle mode: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7d

    .line 4022
    :catchall_67
    move-exception v0

    goto :goto_84

    .line 4012
    :cond_69
    :goto_69
    const-string/jumbo v0, "s:shell"

    invoke-virtual {v7, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 4013
    const-string v0, "Stepped to deep: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4014
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_2b .. :try_end_7d} :catchall_67

    .line 4022
    :goto_7d
    :try_start_7d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4023
    nop

    .line 4024
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_2a1

    .line 4022
    .restart local v1    # "token":J
    .restart local v3    # "arg":Ljava/lang/String;
    :goto_84
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4024
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    :catchall_88
    move-exception v0

    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_7d .. :try_end_8a} :catchall_88

    throw v0

    .line 4025
    :cond_8b
    const-string v0, "force-idle"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v12, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_15b

    .line 4026
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4028
    monitor-enter p0

    .line 4029
    :try_start_a1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v5, v0

    .line 4030
    .local v5, "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_aa
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_158

    move-object v1, v0

    .line 4032
    .local v1, "arg":Ljava/lang/String;
    if-eqz v1, :cond_10a

    :try_start_ad
    const-string v0, "deep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    goto :goto_10a

    .line 4051
    :cond_b6
    const-string/jumbo v0, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 4052
    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 4053
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 4054
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 4055
    .local v0, "curLightState":I
    :goto_c6
    if-eq v0, v3, :cond_ed

    .line 4056
    const-string/jumbo v2, "s:shell"

    invoke-virtual {v7, v2}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 4057
    iget v2, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v2, :cond_e9

    .line 4058
    const-string v2, "Unable to go light idle; stopped at "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4059
    iget v2, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4060
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_e3
    .catchall {:try_start_ad .. :try_end_e3} :catchall_108

    .line 4061
    nop

    .line 4070
    :try_start_e4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_e8
    .catchall {:try_start_e4 .. :try_end_e8} :catchall_158

    .line 4061
    return v12

    .line 4063
    :cond_e9
    :try_start_e9
    iget v2, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    move v0, v2

    goto :goto_c6

    .line 4065
    :cond_ed
    const-string v2, "Now forced in to light idle mode"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4066
    .end local v0    # "curLightState":I
    goto :goto_14d

    .line 4067
    :cond_f3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown idle mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14d

    .line 4070
    :catchall_108
    move-exception v0

    goto :goto_154

    .line 4033
    :cond_10a
    :goto_10a
    iget-boolean v0, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v0, :cond_119

    .line 4034
    const-string v0, "Unable to go deep idle; not enabled"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_113
    .catchall {:try_start_e9 .. :try_end_113} :catchall_108

    .line 4035
    nop

    .line 4070
    :try_start_114
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_118
    .catchall {:try_start_114 .. :try_end_118} :catchall_158

    .line 4035
    return v12

    .line 4037
    :cond_119
    :try_start_119
    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 4038
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 4039
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mState:I

    .line 4040
    .local v0, "curState":I
    :goto_120
    if-eq v0, v2, :cond_147

    .line 4041
    const-string/jumbo v3, "s:shell"

    invoke-virtual {v7, v3}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 4042
    iget v3, v7, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v0, v3, :cond_143

    .line 4043
    const-string v2, "Unable to go deep idle; stopped at "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4044
    iget v2, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4045
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_13d
    .catchall {:try_start_119 .. :try_end_13d} :catchall_108

    .line 4046
    nop

    .line 4070
    :try_start_13e
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_142
    .catchall {:try_start_13e .. :try_end_142} :catchall_158

    .line 4046
    return v12

    .line 4048
    :cond_143
    :try_start_143
    iget v3, v7, Lcom/android/server/DeviceIdleController;->mState:I

    move v0, v3

    goto :goto_120

    .line 4050
    :cond_147
    const-string v2, "Now forced in to deep idle mode"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_14c
    .catchall {:try_start_143 .. :try_end_14c} :catchall_108

    .line 4051
    .end local v0    # "curState":I
    nop

    .line 4070
    :goto_14d
    :try_start_14d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4071
    nop

    .line 4072
    .end local v1    # "arg":Ljava/lang/String;
    .end local v5    # "token":J
    monitor-exit p0

    goto/16 :goto_2a1

    .line 4070
    .restart local v1    # "arg":Ljava/lang/String;
    .restart local v5    # "token":J
    :goto_154
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4072
    .end local v1    # "arg":Ljava/lang/String;
    .end local v5    # "token":J
    :catchall_158
    move-exception v0

    monitor-exit p0
    :try_end_15a
    .catchall {:try_start_14d .. :try_end_15a} :catchall_158

    throw v0

    .line 4073
    :cond_15b
    const-string v0, "force-inactive"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 4074
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4076
    monitor-enter p0

    .line 4077
    :try_start_16d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_171
    .catchall {:try_start_16d .. :try_end_171} :catchall_19f

    move-wide v1, v0

    .line 4079
    .local v1, "token":J
    :try_start_172
    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    .line 4080
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 4081
    const-string v0, "Light state: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4082
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4083
    const-string v0, ", deep state: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4084
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_193
    .catchall {:try_start_172 .. :try_end_193} :catchall_19a

    .line 4086
    :try_start_193
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4087
    nop

    .line 4088
    .end local v1    # "token":J
    monitor-exit p0

    goto/16 :goto_2a1

    .line 4086
    .restart local v1    # "token":J
    :catchall_19a
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4088
    .end local v1    # "token":J
    :catchall_19f
    move-exception v0

    monitor-exit p0
    :try_end_1a1
    .catchall {:try_start_193 .. :try_end_1a1} :catchall_19f

    throw v0

    .line 4089
    :cond_1a2
    const-string/jumbo v0, "unforce"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 4090
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4092
    monitor-enter p0

    .line 4093
    :try_start_1b5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_1b9
    .catchall {:try_start_1b5 .. :try_end_1b9} :catchall_1e5

    move-wide v1, v0

    .line 4095
    .restart local v1    # "token":J
    :try_start_1ba
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    .line 4096
    const-string v0, "Light state: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4097
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4098
    const-string v0, ", deep state: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4099
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1d9
    .catchall {:try_start_1ba .. :try_end_1d9} :catchall_1e0

    .line 4101
    :try_start_1d9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4102
    nop

    .line 4103
    .end local v1    # "token":J
    monitor-exit p0

    goto/16 :goto_2a1

    .line 4101
    .restart local v1    # "token":J
    :catchall_1e0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4103
    .end local v1    # "token":J
    :catchall_1e5
    move-exception v0

    monitor-exit p0
    :try_end_1e7
    .catchall {:try_start_1d9 .. :try_end_1e7} :catchall_1e5

    throw v0

    .line 4104
    :cond_1e8
    const-string v0, "get"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_2a7

    .line 4105
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4107
    monitor-enter p0

    .line 4108
    :try_start_1fb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 4109
    .local v1, "arg":Ljava/lang/String;
    if-eqz v1, :cond_29b

    .line 4110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13
    :try_end_206
    .catchall {:try_start_1fb .. :try_end_206} :catchall_2a4

    .line 4112
    .local v13, "token":J
    :try_start_206
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_ece

    goto :goto_24d

    :sswitch_20e
    const-string/jumbo v0, "network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24d

    move v12, v2

    goto :goto_24d

    :sswitch_219
    const-string v0, "charging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24d

    move v12, v3

    goto :goto_24d

    :sswitch_223
    const-string/jumbo v0, "light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24d

    move v12, v11

    goto :goto_24d

    :sswitch_22e
    const-string v0, "force"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24d

    move v12, v5

    goto :goto_24d

    :sswitch_238
    const-string v0, "deep"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24d

    move v12, v4

    goto :goto_24d

    :sswitch_242
    const-string/jumbo v0, "screen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24d

    const/4 v0, 0x3

    move v12, v0

    :cond_24d
    :goto_24d
    packed-switch v12, :pswitch_data_ee8

    .line 4119
    new-instance v0, Ljava/lang/StringBuilder;

    goto :goto_27f

    .line 4118
    :pswitch_253
    iget-boolean v0, v7, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_291

    .line 4117
    :pswitch_259
    iget-boolean v0, v7, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_291

    .line 4116
    :pswitch_25f
    iget-boolean v0, v7, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_291

    .line 4115
    :pswitch_265
    iget-boolean v0, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_291

    .line 4114
    :pswitch_26b
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_291

    .line 4113
    :pswitch_275
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_291

    .line 4119
    :goto_27f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown get option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_291
    .catchall {:try_start_206 .. :try_end_291} :catchall_296

    .line 4122
    :goto_291
    :try_start_291
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4123
    nop

    .line 4124
    .end local v13    # "token":J
    goto :goto_2a0

    .line 4122
    .restart local v13    # "token":J
    :catchall_296
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4125
    .end local v13    # "token":J
    :cond_29b
    const-string v0, "Argument required"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4127
    .end local v1    # "arg":Ljava/lang/String;
    :goto_2a0
    monitor-exit p0

    .line 4699
    :goto_2a1
    move-object v2, v9

    goto/16 :goto_ebf

    .line 4127
    :catchall_2a4
    move-exception v0

    monitor-exit p0
    :try_end_2a6
    .catchall {:try_start_291 .. :try_end_2a6} :catchall_2a4

    throw v0

    .line 4128
    :cond_2a7
    const-string v0, "disable"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34b

    .line 4129
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4131
    monitor-enter p0

    .line 4132
    :try_start_2b9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    .line 4133
    .local v1, "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_2c2
    .catchall {:try_start_2b9 .. :try_end_2c2} :catchall_348

    move-object v3, v0

    .line 4135
    .restart local v3    # "arg":Ljava/lang/String;
    const/4 v0, 0x0

    .line 4136
    .local v0, "becomeActive":Z
    const/4 v4, 0x0

    .line 4137
    .local v4, "valid":Z
    if-eqz v3, :cond_2da

    :try_start_2c7
    const-string v5, "deep"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2da

    const-string v5, "all"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e7

    goto :goto_2da

    .line 4161
    .end local v0    # "becomeActive":Z
    .end local v4    # "valid":Z
    :catchall_2d8
    move-exception v0

    goto :goto_344

    .line 4138
    .restart local v0    # "becomeActive":Z
    .restart local v4    # "valid":Z
    :cond_2da
    :goto_2da
    const/4 v4, 0x1

    .line 4139
    iget-boolean v5, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v5, :cond_2e7

    .line 4140
    iput-boolean v11, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 4141
    const/4 v0, 0x1

    .line 4142
    const-string v5, "Deep idle mode disabled"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4145
    :cond_2e7
    if-eqz v3, :cond_2fa

    const-string/jumbo v5, "light"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2fa

    const-string v5, "all"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_307

    .line 4146
    :cond_2fa
    const/4 v4, 0x1

    .line 4147
    iget-boolean v5, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v5, :cond_307

    .line 4148
    iput-boolean v11, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 4149
    const/4 v0, 0x1

    .line 4150
    const-string v5, "Light idle mode disabled"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4153
    :cond_307
    if-eqz v0, :cond_327

    .line 4154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_313

    const-string v6, "all"

    goto :goto_314

    :cond_313
    move-object v6, v3

    :goto_314
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-disabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4155
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 4154
    invoke-virtual {v7, v5, v6}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 4157
    :cond_327
    if-nez v4, :cond_33d

    .line 4158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_33d
    .catchall {:try_start_2c7 .. :try_end_33d} :catchall_2d8

    .line 4161
    .end local v0    # "becomeActive":Z
    .end local v4    # "valid":Z
    :cond_33d
    :try_start_33d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4162
    nop

    .line 4163
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_2a1

    .line 4161
    .restart local v1    # "token":J
    .restart local v3    # "arg":Ljava/lang/String;
    :goto_344
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4163
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    :catchall_348
    move-exception v0

    monitor-exit p0
    :try_end_34a
    .catchall {:try_start_33d .. :try_end_34a} :catchall_348

    throw v0

    .line 4164
    :cond_34b
    const-string v0, "enable"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d4

    .line 4165
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4167
    monitor-enter p0

    .line 4168
    :try_start_35d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    .line 4169
    .restart local v1    # "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_366
    .catchall {:try_start_35d .. :try_end_366} :catchall_3d1

    move-object v3, v0

    .line 4171
    .restart local v3    # "arg":Ljava/lang/String;
    const/4 v0, 0x0

    .line 4172
    .local v0, "becomeInactive":Z
    const/4 v5, 0x0

    .line 4173
    .local v5, "valid":Z
    if-eqz v3, :cond_37e

    :try_start_36b
    const-string v6, "deep"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37e

    const-string v6, "all"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38b

    goto :goto_37e

    .line 4196
    .end local v0    # "becomeInactive":Z
    .end local v5    # "valid":Z
    :catchall_37c
    move-exception v0

    goto :goto_3cd

    .line 4174
    .restart local v0    # "becomeInactive":Z
    .restart local v5    # "valid":Z
    :cond_37e
    :goto_37e
    const/4 v5, 0x1

    .line 4175
    iget-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v6, :cond_38b

    .line 4176
    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    .line 4177
    const/4 v0, 0x1

    .line 4178
    const-string v6, "Deep idle mode enabled"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4181
    :cond_38b
    if-eqz v3, :cond_39e

    const-string/jumbo v6, "light"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39e

    const-string v6, "all"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3ab

    .line 4182
    :cond_39e
    const/4 v5, 0x1

    .line 4183
    iget-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-nez v6, :cond_3ab

    .line 4184
    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 4185
    const/4 v0, 0x1

    .line 4186
    const-string v4, "Light idle mode enable"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4189
    :cond_3ab
    if-eqz v0, :cond_3b0

    .line 4190
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 4192
    :cond_3b0
    if-nez v5, :cond_3c6

    .line 4193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle mode: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3c6
    .catchall {:try_start_36b .. :try_end_3c6} :catchall_37c

    .line 4196
    .end local v0    # "becomeInactive":Z
    .end local v5    # "valid":Z
    :cond_3c6
    :try_start_3c6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4197
    nop

    .line 4198
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    monitor-exit p0

    goto/16 :goto_2a1

    .line 4196
    .restart local v1    # "token":J
    .restart local v3    # "arg":Ljava/lang/String;
    :goto_3cd
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4198
    .end local v1    # "token":J
    .end local v3    # "arg":Ljava/lang/String;
    :catchall_3d1
    move-exception v0

    monitor-exit p0
    :try_end_3d3
    .catchall {:try_start_3c6 .. :try_end_3d3} :catchall_3d1

    throw v0

    .line 4199
    :cond_3d4
    const-string v0, "enabled"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_448

    .line 4200
    monitor-enter p0

    .line 4201
    :try_start_3dd
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 4202
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_430

    const-string v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3ec

    goto :goto_430

    .line 4204
    :cond_3ec
    const-string v1, "deep"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_403

    .line 4205
    iget-boolean v1, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v1, :cond_3fb

    const-string v1, "1"

    goto :goto_3ff

    :cond_3fb
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3ff
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_442

    .line 4206
    :cond_403
    const-string/jumbo v1, "light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41b

    .line 4207
    iget-boolean v1, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v1, :cond_413

    const-string v1, "1"

    goto :goto_417

    :cond_413
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_417
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_442

    .line 4209
    :cond_41b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown idle mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v0    # "arg":Ljava/lang/String;
    goto :goto_442

    .line 4203
    .restart local v0    # "arg":Ljava/lang/String;
    :cond_430
    :goto_430
    iget-boolean v1, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v1, :cond_43b

    iget-boolean v1, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v1, :cond_43b

    const-string v1, "1"

    goto :goto_43f

    :cond_43b
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_43f
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4211
    .end local v0    # "arg":Ljava/lang/String;
    :goto_442
    monitor-exit p0

    goto/16 :goto_2a1

    :catchall_445
    move-exception v0

    monitor-exit p0
    :try_end_447
    .catchall {:try_start_3dd .. :try_end_447} :catchall_445

    throw v0

    .line 4212
    :cond_448
    const-string/jumbo v0, "whitelist"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x3d

    const/16 v3, 0x2d

    const/16 v6, 0x2b

    if-eqz v0, :cond_59b

    .line 4213
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v13

    .line 4214
    .local v13, "arg":Ljava/lang/String;
    if-eqz v13, :cond_513

    .line 4215
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4217
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4217
    .local v0, "token":J
    :goto_46a
    move-wide v14, v0

    .line 4220
    .end local v0    # "token":J
    .local v14, "token":J
    :try_start_46b
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_4f5

    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_485

    .line 4221
    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_485

    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_485

    goto/16 :goto_4f5

    .line 4225
    :cond_485
    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4226
    .local v0, "op":C
    invoke-virtual {v13, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 4227
    .local v1, "pkg":Ljava/lang/String;
    if-ne v0, v6, :cond_4bf

    .line 4228
    invoke-virtual {v7, v1}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4aa

    .line 4229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e3

    .line 4231
    :cond_4aa
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e3

    .line 4233
    :cond_4bf
    if-ne v0, v3, :cond_4dc

    .line 4234
    invoke-virtual {v7, v1}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e3

    .line 4235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e3

    .line 4238
    :cond_4dc
    invoke-virtual {v7, v1}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 4240
    .end local v0    # "op":C
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_4e3
    :goto_4e3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_4e7
    .catchall {:try_start_46b .. :try_end_4e7} :catchall_50e

    move-object v13, v0

    if-nez v0, :cond_4f0

    .line 4242
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4243
    nop

    .line 4244
    .end local v14    # "token":J
    goto/16 :goto_596

    .line 4217
    .restart local v14    # "token":J
    :cond_4f0
    move-wide v0, v14

    const/16 v2, 0x3d

    goto/16 :goto_46a

    .line 4222
    :cond_4f5
    :goto_4f5
    :try_start_4f5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_509
    .catchall {:try_start_4f5 .. :try_end_509} :catchall_50e

    .line 4223
    nop

    .line 4242
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4223
    return v12

    .line 4242
    :catchall_50e
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4245
    .end local v14    # "token":J
    :cond_513
    monitor-enter p0

    .line 4246
    move v0, v11

    .line 4246
    .local v0, "j":I
    :goto_515
    :try_start_515
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_53f

    .line 4247
    const-string/jumbo v1, "system-excidle,"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4248
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4249
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4250
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4246
    add-int/lit8 v0, v0, 0x1

    goto :goto_515

    .line 4252
    .end local v0    # "j":I
    :cond_53f
    move v0, v11

    .line 4252
    .restart local v0    # "j":I
    :goto_540
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_56a

    .line 4253
    const-string/jumbo v1, "system,"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4254
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4255
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4256
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4252
    add-int/lit8 v0, v0, 0x1

    goto :goto_540

    .line 4258
    .end local v0    # "j":I
    :cond_56a
    move v0, v11

    .line 4258
    .restart local v0    # "j":I
    :goto_56b
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_595

    .line 4259
    const-string/jumbo v1, "user,"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4260
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4261
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4262
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4258
    add-int/lit8 v0, v0, 0x1

    goto :goto_56b

    .line 4264
    .end local v0    # "j":I
    :cond_595
    monitor-exit p0

    .line 4266
    .end local v13    # "arg":Ljava/lang/String;
    :goto_596
    goto/16 :goto_2a1

    .line 4264
    .restart local v13    # "arg":Ljava/lang/String;
    :catchall_598
    move-exception v0

    monitor-exit p0
    :try_end_59a
    .catchall {:try_start_515 .. :try_end_59a} :catchall_598

    throw v0

    .line 4266
    .end local v13    # "arg":Ljava/lang/String;
    :cond_59b
    const-string/jumbo v0, "tempwhitelist"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_648

    .line 4267
    const-wide/16 v0, 0x2710

    .line 4268
    .local v0, "duration":J
    move-wide v13, v0

    move v0, v11

    .line 4268
    .local v0, "removePkg":Z
    .local v13, "duration":J
    :goto_5a8
    move v15, v0

    .line 4270
    .end local v0    # "removePkg":Z
    .local v15, "removePkg":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 4270
    .local v6, "opt":Ljava/lang/String;
    if-eqz v0, :cond_5f0

    .line 4271
    const-string v0, "-u"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5cb

    .line 4272
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 4273
    .end local v6    # "opt":Ljava/lang/String;
    .local v0, "opt":Ljava/lang/String;
    if-nez v0, :cond_5c4

    .line 4274
    const-string v1, "-u requires a user number"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4275
    return v12

    .line 4277
    :cond_5c4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    goto :goto_5ee

    .line 4278
    .end local v0    # "opt":Ljava/lang/String;
    .restart local v6    # "opt":Ljava/lang/String;
    :cond_5cb
    const-string v0, "-d"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e4

    .line 4279
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 4280
    .end local v6    # "opt":Ljava/lang/String;
    .restart local v0    # "opt":Ljava/lang/String;
    if-nez v0, :cond_5df

    .line 4281
    const-string v1, "-d requires a duration"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4282
    return v12

    .line 4284
    :cond_5df
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_5ee

    .line 4285
    .end local v0    # "opt":Ljava/lang/String;
    .restart local v6    # "opt":Ljava/lang/String;
    :cond_5e4
    const-string v0, "-r"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ee

    .line 4286
    const/4 v0, 0x1

    .line 4286
    .end local v15    # "removePkg":Z
    .local v0, "removePkg":Z
    goto :goto_5a8

    .line 4268
    .end local v6    # "opt":Ljava/lang/String;
    :cond_5ee
    :goto_5ee
    move v0, v15

    goto :goto_5a8

    .line 4289
    .end local v0    # "removePkg":Z
    .restart local v6    # "opt":Ljava/lang/String;
    .restart local v15    # "removePkg":Z
    :cond_5f0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 4290
    .local v5, "arg":Ljava/lang/String;
    if-eqz v5, :cond_637

    .line 4292
    if-eqz v15, :cond_608

    .line 4293
    :try_start_5f8
    iget v0, v8, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    invoke-virtual {v7, v5, v0}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppChecked(Ljava/lang/String;I)V
    :try_end_5fd
    .catch Ljava/lang/Exception; {:try_start_5f8 .. :try_end_5fd} :catch_602

    .line 4300
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto :goto_61a

    .line 4297
    :catch_602
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto :goto_622

    .line 4295
    :cond_608
    :try_start_608
    iget v0, v8, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    const-string/jumbo v16, "shell"
    :try_end_60d
    .catch Ljava/lang/Exception; {:try_start_608 .. :try_end_60d} :catch_61d

    move-object v1, v7

    move-object v2, v5

    move-wide v3, v13

    move-object/from16 v17, v5

    move v5, v0

    .line 4295
    .end local v5    # "arg":Ljava/lang/String;
    .local v17, "arg":Ljava/lang/String;
    move-object/from16 v18, v6

    move-object/from16 v6, v16

    .line 4295
    .end local v6    # "opt":Ljava/lang/String;
    .local v18, "opt":Ljava/lang/String;
    :try_start_617
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_61a
    .catch Ljava/lang/Exception; {:try_start_617 .. :try_end_61a} :catch_61b

    .line 4300
    :goto_61a
    goto :goto_646

    .line 4297
    :catch_61b
    move-exception v0

    goto :goto_622

    .line 4297
    .end local v17    # "arg":Ljava/lang/String;
    .end local v18    # "opt":Ljava/lang/String;
    .restart local v5    # "arg":Ljava/lang/String;
    .restart local v6    # "opt":Ljava/lang/String;
    :catch_61d
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 4298
    .end local v5    # "arg":Ljava/lang/String;
    .end local v6    # "opt":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "arg":Ljava/lang/String;
    .restart local v18    # "opt":Ljava/lang/String;
    :goto_622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4299
    return v12

    .line 4301
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v17    # "arg":Ljava/lang/String;
    .end local v18    # "opt":Ljava/lang/String;
    .restart local v5    # "arg":Ljava/lang/String;
    .restart local v6    # "opt":Ljava/lang/String;
    :cond_637
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 4301
    .end local v5    # "arg":Ljava/lang/String;
    .end local v6    # "opt":Ljava/lang/String;
    .restart local v17    # "arg":Ljava/lang/String;
    .restart local v18    # "opt":Ljava/lang/String;
    if-eqz v15, :cond_643

    .line 4302
    const-string v0, "[-r] requires a package name"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4303
    return v12

    .line 4305
    :cond_643
    invoke-virtual {v7, v10, v11}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    .line 4307
    .end local v13    # "duration":J
    .end local v15    # "removePkg":Z
    .end local v17    # "arg":Ljava/lang/String;
    .end local v18    # "opt":Ljava/lang/String;
    :goto_646
    goto/16 :goto_2a1

    :cond_648
    const-string v0, "except-idle-whitelist"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_721

    .line 4308
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4310
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    .line 4312
    .local v1, "token":J
    :try_start_65e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 4313
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_66e

    .line 4314
    const-string v3, "No arguments given"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_669
    .catchall {:try_start_65e .. :try_end_669} :catchall_71c

    .line 4315
    nop

    .line 4342
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4315
    return v12

    .line 4316
    :cond_66e
    :try_start_66e
    const-string/jumbo v5, "reset"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67b

    .line 4317
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetPowerSaveWhitelistExceptIdleInternal()V

    goto :goto_6e4

    .line 4320
    :cond_67b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v4, :cond_703

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_696

    .line 4321
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_696

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v13, 0x3d

    if-eq v5, v13, :cond_696

    goto :goto_703

    .line 4325
    :cond_696
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 4326
    .local v5, "op":C
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 4327
    .local v13, "pkg":Ljava/lang/String;
    if-ne v5, v6, :cond_6d2

    .line 4328
    invoke-virtual {v7, v13}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6bd

    .line 4329
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Added: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4339
    :goto_6ba
    const/16 v14, 0x3d

    goto :goto_6dd

    .line 4331
    :cond_6bd
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6ba

    .line 4333
    :cond_6d2
    const/16 v14, 0x3d

    if-ne v5, v14, :cond_6ea

    .line 4334
    invoke-virtual {v7, v13}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v10, v15}, Ljava/io/PrintWriter;->println(Z)V

    .line 4339
    .end local v5    # "op":C
    .end local v13    # "pkg":Ljava/lang/String;
    :goto_6dd
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5
    :try_end_6e1
    .catchall {:try_start_66e .. :try_end_6e1} :catchall_71c

    move-object v0, v5

    if-nez v5, :cond_67b

    .line 4342
    .end local v0    # "arg":Ljava/lang/String;
    :goto_6e4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4343
    nop

    .line 4344
    .end local v1    # "token":J
    goto/16 :goto_2a1

    .line 4336
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v1    # "token":J
    .restart local v5    # "op":C
    .restart local v13    # "pkg":Ljava/lang/String;
    :cond_6ea
    :try_start_6ea
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6fe
    .catchall {:try_start_6ea .. :try_end_6fe} :catchall_71c

    .line 4337
    nop

    .line 4342
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4337
    return v12

    .line 4322
    .end local v5    # "op":C
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_703
    :goto_703
    :try_start_703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_717
    .catchall {:try_start_703 .. :try_end_717} :catchall_71c

    .line 4323
    nop

    .line 4342
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4323
    return v12

    .line 4342
    .end local v0    # "arg":Ljava/lang/String;
    :catchall_71c
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4344
    .end local v1    # "token":J
    :cond_721
    const-string/jumbo v0, "sys-whitelist"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f6

    .line 4345
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 4346
    .local v2, "arg":Ljava/lang/String;
    if-eqz v2, :cond_7ca

    .line 4347
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4349
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v13, v0

    .line 4351
    .local v13, "token":J
    :try_start_73e
    const-string/jumbo v0, "reset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74b

    .line 4352
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetSystemPowerWhitelistInternal()V

    goto :goto_7a7

    .line 4355
    :cond_74b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_7ac

    .line 4356
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_75e

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_75e

    goto :goto_7ac

    .line 4360
    :cond_75e
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4361
    .local v0, "op":C
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 4362
    .local v1, "pkg":Ljava/lang/String;
    if-eq v0, v6, :cond_786

    if-eq v0, v3, :cond_76b

    .line 4362
    .end local v0    # "op":C
    .end local v1    # "pkg":Ljava/lang/String;
    goto :goto_7a0

    .line 4369
    .restart local v0    # "op":C
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_76b
    invoke-virtual {v7, v1}, Lcom/android/server/DeviceIdleController;->removeSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7a0

    .line 4370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Removed "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v0    # "op":C
    .end local v1    # "pkg":Ljava/lang/String;
    goto :goto_7a0

    .line 4364
    .restart local v0    # "op":C
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_786
    invoke-virtual {v7, v1}, Lcom/android/server/DeviceIdleController;->restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7a0

    .line 4365
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Restored "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4374
    .end local v0    # "op":C
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_7a0
    :goto_7a0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_7a4
    .catchall {:try_start_73e .. :try_end_7a4} :catchall_7c5

    move-object v2, v0

    if-nez v0, :cond_74b

    .line 4377
    :goto_7a7
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4378
    nop

    .line 4379
    .end local v13    # "token":J
    goto :goto_7f1

    .line 4357
    .restart local v13    # "token":J
    :cond_7ac
    :goto_7ac
    :try_start_7ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package must be prefixed with + or - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7c0
    .catchall {:try_start_7ac .. :try_end_7c0} :catchall_7c5

    .line 4358
    nop

    .line 4377
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4358
    return v12

    .line 4377
    :catchall_7c5
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4380
    .end local v13    # "token":J
    :cond_7ca
    monitor-enter p0

    .line 4381
    move v0, v11

    .line 4381
    .local v0, "j":I
    :goto_7cc
    :try_start_7cc
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_7f0

    .line 4382
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4383
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4384
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4381
    add-int/lit8 v0, v0, 0x1

    goto :goto_7cc

    .line 4386
    .end local v0    # "j":I
    :cond_7f0
    monitor-exit p0

    .line 4390
    .end local v2    # "arg":Ljava/lang/String;
    :goto_7f1
    goto/16 :goto_2a1

    .line 4386
    .restart local v2    # "arg":Ljava/lang/String;
    :catchall_7f3
    move-exception v0

    monitor-exit p0
    :try_end_7f5
    .catchall {:try_start_7cc .. :try_end_7f5} :catchall_7f3

    throw v0

    .line 4390
    .end local v2    # "arg":Ljava/lang/String;
    :cond_7f6
    const-string v0, "aggressive"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a4

    .line 4391
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    .line 4393
    .local v1, "token":J
    :try_start_803
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 4394
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_87f

    .line 4395
    const-string v3, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aggressive doze: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4397
    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController$Constants;->getPolicy()I

    move-result v3

    .line 4398
    .local v3, "oldVal":I
    const-string/jumbo v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_830

    .line 4399
    const/4 v5, 0x1

    .line 4399
    .local v5, "setVal":I
    :goto_82f
    goto :goto_83a

    .line 4400
    .end local v5    # "setVal":I
    :cond_830
    const-string v5, "false"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_874

    .line 4401
    const/4 v5, 0x0

    goto :goto_82f

    .line 4404
    .restart local v5    # "setVal":I
    :goto_83a
    nop

    .line 4407
    iget-object v6, v7, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v6, v5}, Lcom/android/server/DeviceIdleController$Constants;->setPolicy(I)V

    .line 4409
    iget-object v6, v7, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v6, :cond_851

    .line 4410
    if-ne v5, v4, :cond_84c

    .line 4411
    iget-object v6, v7, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v6, v4}, Landroid/os/PowerManagerInternal;->setDeviceIdleAggressive(Z)V

    goto :goto_851

    .line 4413
    :cond_84c
    iget-object v4, v7, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v4, v11}, Landroid/os/PowerManagerInternal;->setDeviceIdleAggressive(Z)V

    .line 4417
    :cond_851
    :goto_851
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aggressive: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_86d
    .catchall {:try_start_803 .. :try_end_86d} :catchall_89f

    .line 4418
    .end local v3    # "oldVal":I
    .end local v5    # "setVal":I
    nop

    .line 4423
    .end local v0    # "arg":Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4424
    nop

    .line 4430
    .end local v1    # "token":J
    goto/16 :goto_2a1

    .line 4403
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v1    # "token":J
    .restart local v3    # "oldVal":I
    :cond_874
    :try_start_874
    const-string/jumbo v4, "please enter aggressive [true|false]"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_87a
    .catchall {:try_start_874 .. :try_end_87a} :catchall_89f

    .line 4404
    nop

    .line 4423
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4404
    return v11

    .line 4419
    .end local v3    # "oldVal":I
    :cond_87f
    :try_start_87f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPolicy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v4}, Lcom/android/server/DeviceIdleController$Constants;->getPolicy()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_89a
    .catchall {:try_start_87f .. :try_end_89a} :catchall_89f

    .line 4420
    nop

    .line 4423
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4420
    return v11

    .line 4423
    .end local v0    # "arg":Ljava/lang/String;
    :catchall_89f
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4430
    .end local v1    # "token":J
    :cond_8a4
    const-string v0, "abn_reporting"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_927

    .line 4431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    .line 4433
    .restart local v1    # "token":J
    :try_start_8b1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 4434
    .restart local v0    # "arg":Ljava/lang/String;
    if-eqz v0, :cond_906

    .line 4435
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_8d1

    .line 4436
    const-string v3, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "abn_reporting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4437
    :cond_8d1
    const-string v3, "enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e8

    .line 4438
    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    .line 4439
    sget-object v3, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateReportingFlag(Z)V

    .line 4440
    const-string v3, "abn_reporting is enabled"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_91c

    .line 4441
    :cond_8e8
    const-string v3, "disabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8ff

    .line 4442
    iput-boolean v11, v7, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    .line 4443
    sget-object v3, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateReportingFlag(Z)V

    .line 4444
    const-string v3, "abn_reporting is disabled"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_91c

    .line 4446
    :cond_8ff
    const-string/jumbo v3, "please enter abn_reporting [enabled|disabled]"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_91c

    .line 4449
    :cond_906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abn_reporting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_91c
    .catchall {:try_start_8b1 .. :try_end_91c} :catchall_922

    .line 4452
    .end local v0    # "arg":Ljava/lang/String;
    :goto_91c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4453
    nop

    .line 4455
    .end local v1    # "token":J
    goto/16 :goto_2a1

    .line 4452
    .restart local v1    # "token":J
    :catchall_922
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4455
    .end local v1    # "token":J
    :cond_927
    const-string/jumbo v0, "standby"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d3

    .line 4456
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    .line 4458
    .restart local v1    # "token":J
    :try_start_935
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 4459
    .restart local v0    # "arg":Ljava/lang/String;
    if-eqz v0, :cond_9c8

    .line 4460
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_956

    .line 4461
    const-string v3, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "standby: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4462
    :cond_956
    const-string/jumbo v3, "set_criteria"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99f

    .line 4463
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 4464
    if-eqz v0, :cond_9c8

    .line 4465
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 4466
    .local v3, "value":F
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_998

    .line 4467
    iput v3, v7, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    .line 4468
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config standby criteria to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " mA, and not allow update via online-config."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4469
    .local v5, "outputStr":Ljava/lang/String;
    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4470
    const-string v6, "DeviceIdleController"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4472
    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mTempDisableCriteriaUpdate:Z

    .line 4473
    .end local v5    # "outputStr":Ljava/lang/String;
    goto :goto_99e

    .line 4474
    :cond_998
    const-string/jumbo v4, "invalid standby criteria."

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4476
    .end local v3    # "value":F
    :goto_99e
    goto :goto_9c8

    .line 4477
    :cond_99f
    const-string/jumbo v3, "get_criteria"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c8

    .line 4478
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current standby criteria : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4479
    .local v3, "outputStr":Ljava/lang/String;
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4480
    const-string v4, "DeviceIdleController"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c8
    .catchall {:try_start_935 .. :try_end_9c8} :catchall_9ce

    .line 4484
    .end local v0    # "arg":Ljava/lang/String;
    .end local v3    # "outputStr":Ljava/lang/String;
    :cond_9c8
    :goto_9c8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4485
    nop

    .line 4487
    .end local v1    # "token":J
    goto/16 :goto_2a1

    .line 4484
    .restart local v1    # "token":J
    :catchall_9ce
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4487
    .end local v1    # "token":J
    :cond_9d3
    const-string/jumbo v0, "qxdm"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0b

    .line 4488
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    .line 4490
    .restart local v1    # "token":J
    :try_start_9e1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_9e5
    .catchall {:try_start_9e1 .. :try_end_9e5} :catchall_e06

    move-object v3, v0

    .line 4491
    .local v3, "arg":Ljava/lang/String;
    if-eqz v3, :cond_df9

    .line 4492
    :try_start_9e8
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z
    :try_end_9ea
    .catchall {:try_start_9e8 .. :try_end_9ea} :catchall_df7

    if-eqz v0, :cond_a03

    .line 4493
    :try_start_9ec
    const-string v0, "DeviceIdleController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "qxdm: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a03
    .catchall {:try_start_9ec .. :try_end_a03} :catchall_e06

    .line 4496
    :cond_a03
    :try_start_a03
    const-string/jumbo v0, "status"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba5

    .line 4497
    sget-object v0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->checkBugReportLiteEnable()Z

    move-result v0

    .line 4498
    .local v0, "isBugReportLiteEnable":Z
    sget-object v6, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->getQXDMGrabMechanismStatus()Z

    move-result v6

    .line 4499
    .local v6, "isQXDMGrabEnable":Z
    sget-object v12, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->getQXDMRecordingStatus()Z

    move-result v12

    .line 4500
    .local v12, "isQXDMrecording":Z
    sget-object v13, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->getQXDMGrabMinimumPeriod()J

    move-result-wide v13

    .line 4501
    .local v13, "minGrabPeriod":J
    sget-object v15, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->getQXDMGrabGapAfterStandbyStart()J

    move-result-wide v15

    move-wide/from16 v19, v15

    .line 4502
    .local v19, "minGrabGap":J
    sget-object v15, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->getStandbyStart()J

    move-result-wide v15

    move-wide/from16 v21, v15

    .line 4503
    .local v21, "latestStandbyStart":J
    sget-object v15, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->getLastQXDMGrabTimeStamp()J

    move-result-wide v15

    move-wide/from16 v23, v15

    .line 4504
    .local v23, "lastGrabTimeStamp":J
    sget-object v15, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->getMiddleCheckPeriod()J

    move-result-wide v15

    move-wide/from16 v25, v15

    .line 4506
    .local v25, "middleCheckPeriod":J
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 4507
    .local v15, "buffer":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/util/Formatter;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v15, v11}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 4509
    .local v4, "formatter":Ljava/util/Formatter;
    const-string v11, "%-25s: %1b"

    new-array v9, v5, [Ljava/lang/Object;

    const-string v16, "BugReportLiteEnable"

    const/16 v17, 0x0

    aput-object v16, v9, v17

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v9, v17

    invoke-virtual {v4, v11, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 4510
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4511
    const/4 v9, 0x0

    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4513
    const-string v9, "%-25s: %1b"

    new-array v11, v5, [Ljava/lang/Object;

    const-string/jumbo v16, "standby-abn-reporting"

    const/16 v17, 0x0

    aput-object v16, v11, v17

    iget-boolean v5, v7, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v16, 0x1

    aput-object v5, v11, v16

    invoke-virtual {v4, v9, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 4514
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4515
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4517
    const-string v5, "%-25s: %1b"

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/Object;

    const-string v9, "fast_report"

    const/16 v16, 0x0

    aput-object v9, v11, v16

    iget-boolean v9, v7, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v16, 0x1

    aput-object v9, v11, v16

    invoke-virtual {v4, v5, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 4518
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4519
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4521
    const-string v5, "%-25s: %1b"

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/Object;

    const-string/jumbo v9, "qxdm-grab"

    const/16 v16, 0x0

    aput-object v9, v11, v16

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v16, 0x1

    aput-object v9, v11, v16

    invoke-virtual {v4, v5, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 4522
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4523
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4525
    const-string v5, "%-25s: %1b"

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/Object;

    const-string/jumbo v9, "qxdm-under-recording"

    const/16 v16, 0x0

    aput-object v9, v11, v16

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v16, 0x1

    aput-object v9, v11, v16

    invoke-virtual {v4, v5, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 4526
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4527
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4529
    const-string v5, "%-25s: %1d ms"

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/Object;

    const-string/jumbo v9, "minGrabGap"

    const/16 v16, 0x0

    aput-object v9, v11, v16
    :try_end_af2
    .catchall {:try_start_a03 .. :try_end_af2} :catchall_df7

    move/from16 v29, v0

    move-wide/from16 v27, v1

    move-wide/from16 v0, v19

    :try_start_af8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .end local v1    # "token":J
    .end local v19    # "minGrabGap":J
    .local v0, "minGrabGap":J
    .local v27, "token":J
    .local v29, "isBugReportLiteEnable":Z
    const/4 v9, 0x1

    aput-object v2, v11, v9

    invoke-virtual {v4, v5, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 4530
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4531
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4533
    const-string v2, "%-25s: %1d ms"

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "latestStandbyStart"

    const/4 v11, 0x0

    aput-object v5, v9, v11

    move-wide/from16 v30, v0

    move-wide/from16 v0, v21

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .end local v21    # "latestStandbyStart":J
    .local v0, "latestStandbyStart":J
    .local v30, "minGrabGap":J
    const/4 v11, 0x1

    aput-object v5, v9, v11

    invoke-virtual {v4, v2, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 4534
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4535
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4537
    const-string v2, "%-25s: %1d ms"

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "minGrabPeriod"

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v9, v11

    invoke-virtual {v4, v2, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 4538
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4539
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4541
    const-string v2, "%-25s: %1d ms"

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "lastGrabTimeStamp"

    const/4 v11, 0x0

    aput-object v5, v9, v11

    move-wide/from16 v32, v0

    move-wide/from16 v0, v23

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .end local v23    # "lastGrabTimeStamp":J
    .local v0, "lastGrabTimeStamp":J
    .local v32, "latestStandbyStart":J
    const/4 v11, 0x1

    aput-object v5, v9, v11

    invoke-virtual {v4, v2, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 4542
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4543
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4545
    const-string v2, "%-25s: %1d ms"

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "middleCheckPeriod"

    const/4 v11, 0x0

    aput-object v5, v9, v11

    move-wide/from16 v34, v0

    move-wide/from16 v0, v25

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .end local v25    # "middleCheckPeriod":J
    .local v0, "middleCheckPeriod":J
    .local v34, "lastGrabTimeStamp":J
    const/4 v11, 0x1

    aput-object v5, v9, v11

    invoke-virtual {v4, v2, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 4546
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4547
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4549
    const-string v2, "%-25s: %1d ms"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v9, "now"

    const/4 v11, 0x0

    aput-object v9, v5, v11

    move-wide/from16 v36, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .end local v0    # "middleCheckPeriod":J
    .local v36, "middleCheckPeriod":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-virtual {v4, v2, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 4550
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4554
    .end local v4    # "formatter":Ljava/util/Formatter;
    .end local v6    # "isQXDMGrabEnable":Z
    .end local v12    # "isQXDMrecording":Z
    .end local v13    # "minGrabPeriod":J
    .end local v15    # "buffer":Ljava/lang/StringBuffer;
    .end local v29    # "isBugReportLiteEnable":Z
    .end local v30    # "minGrabGap":J
    .end local v32    # "latestStandbyStart":J
    .end local v34    # "lastGrabTimeStamp":J
    .end local v36    # "middleCheckPeriod":J
    goto/16 :goto_dfb

    .line 4554
    .end local v27    # "token":J
    .restart local v1    # "token":J
    :cond_ba5
    move-wide/from16 v27, v1

    .line 4554
    .end local v1    # "token":J
    .restart local v27    # "token":J
    const-string/jumbo v0, "time_reset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_bbf

    .line 4555
    sget-object v0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->setLastQXDMGrabTimeStamp(J)V

    .line 4556
    const-string/jumbo v0, "reset lastGrabTimeStamp to 0"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_dfb

    .line 4558
    :cond_bbf
    const-string/jumbo v0, "time_set"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_bc6
    .catchall {:try_start_af8 .. :try_end_bc6} :catchall_df3

    if-eqz v0, :cond_d18

    .line 4560
    :try_start_bc8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4561
    const-string/jumbo v0, "last"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1f

    .line 4563
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4564
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 4565
    .local v4, "lastQXDMGrabTimeStamp":J
    cmp-long v0, v4, v1

    if-gez v0, :cond_bfe

    .line 4566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "input an invalid time(ms):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c1d

    .line 4568
    :cond_bfe
    sget-object v0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->setLastQXDMGrabTimeStamp(J)V

    .line 4569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set lastGrabTimeStamp to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4571
    .end local v4    # "lastQXDMGrabTimeStamp":J
    :goto_c1d
    goto/16 :goto_d16

    :cond_c1f
    const-string/jumbo v0, "min"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c71

    .line 4573
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4574
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 4575
    .local v4, "minGrabPeriod":J
    cmp-long v0, v4, v1

    if-gez v0, :cond_c50

    .line 4576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "input an invalid minGrabPeriod(ms):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c6f

    .line 4578
    :cond_c50
    sget-object v0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDMGrabMinimumPeriod(J)V

    .line 4579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set minGrabPeriod to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4581
    .end local v4    # "minGrabPeriod":J
    :goto_c6f
    goto/16 :goto_d16

    :cond_c71
    const-string v0, "gap"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc1

    .line 4583
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4584
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 4585
    .local v4, "minGrabGap":J
    cmp-long v0, v4, v1

    if-gez v0, :cond_ca1

    .line 4586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "input an invalid minGrabGap(ms):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_cc0

    .line 4588
    :cond_ca1
    sget-object v0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDMGrabGapAfterStandbyStart(J)V

    .line 4589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set minGrabGap to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4591
    .end local v4    # "minGrabGap":J
    :goto_cc0
    goto :goto_d16

    :cond_cc1
    const-string/jumbo v0, "middle"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d16

    .line 4593
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 4594
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 4595
    .local v4, "middleCheck":J
    cmp-long v0, v4, v1

    if-gez v0, :cond_cf2

    .line 4596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "input an negative middleCheck(ms):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms, so disable this feature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d0c

    .line 4598
    :cond_cf2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set middleCheck to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4600
    :goto_d0c
    sget-object v0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyMiddleCheck(J)V
    :try_end_d11
    .catch Ljava/lang/Exception; {:try_start_bc8 .. :try_end_d11} :catch_d12
    .catchall {:try_start_bc8 .. :try_end_d11} :catchall_df3

    .line 4600
    .end local v4    # "middleCheck":J
    goto :goto_d16

    .line 4602
    :catch_d12
    move-exception v0

    .line 4603
    .local v0, "e":Ljava/lang/Exception;
    :try_start_d13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4604
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d16
    :goto_d16
    goto/16 :goto_dfb

    .line 4606
    :cond_d18
    const-string/jumbo v0, "grab"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4f

    .line 4607
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 4608
    .end local v3    # "arg":Ljava/lang/String;
    .local v0, "arg":Ljava/lang/String;
    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3a

    .line 4609
    sget-object v1, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDMGrabMechanism(Z)V

    .line 4610
    const-string v1, "config QXDMGrabMechanism to true"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_dfb

    .line 4611
    :cond_d3a
    const-string v1, "disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dfb

    .line 4612
    sget-object v1, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDMGrabMechanism(Z)V

    .line 4613
    const-string v1, "config QXDMGrabMechanism to false"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_dfb

    .line 4619
    .end local v0    # "arg":Ljava/lang/String;
    .restart local v3    # "arg":Ljava/lang/String;
    :cond_d4f
    const-string v0, "enabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d89

    .line 4620
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 4621
    .end local v3    # "arg":Ljava/lang/String;
    .restart local v0    # "arg":Ljava/lang/String;
    const-string/jumbo v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d72

    .line 4622
    const-string/jumbo v1, "qxdm short is enabled(20sec auto-stop)"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4623
    sget-object v1, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->simulateTelephonyAbnormal(Z)V

    goto/16 :goto_dfb

    .line 4624
    :cond_d72
    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dfb

    .line 4625
    const-string/jumbo v1, "qxdm normal is enabled(2 min auto-stop)"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4626
    sget-object v1, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->simulateTelephonyAbnormal(Z)V

    goto/16 :goto_dfb

    .line 4629
    .end local v0    # "arg":Ljava/lang/String;
    .restart local v3    # "arg":Ljava/lang/String;
    :cond_d89
    const-string v0, "clean"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dad

    .line 4630
    const-string v0, "Try to clean up the latest QXDM logs under sdcard..."

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4631
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.powercontroller.intent.CLEAN_QXDM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4632
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oem.oemlogkit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4633
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4635
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_dfb

    :cond_dad
    const-string v0, "copy1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc3

    .line 4636
    const-string v0, "copy1"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4637
    const-string/jumbo v0, "persist.sys.power_mask"

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dfb

    .line 4640
    :cond_dc3
    const-string v0, "copy2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dda

    .line 4641
    const-string v0, "copy2"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4642
    const-string/jumbo v0, "persist.sys.power_mask"

    const-string/jumbo v1, "service"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dfb

    .line 4645
    :cond_dda
    const-string v0, "copy3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dec

    .line 4646
    const-string/jumbo v0, "persist.sys.power_mask"

    const-string/jumbo v1, "ims"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dfb

    .line 4648
    :cond_dec
    const-string/jumbo v0, "please enter qxdm [enabled|disabled]"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_df2
    .catchall {:try_start_d13 .. :try_end_df2} :catchall_df3

    .line 4648
    .end local v3    # "arg":Ljava/lang/String;
    goto :goto_dfb

    .line 4652
    :catchall_df3
    move-exception v0

    move-wide/from16 v1, v27

    goto :goto_e07

    .line 4652
    .end local v27    # "token":J
    .restart local v1    # "token":J
    :catchall_df7
    move-exception v0

    .line 4652
    .end local v1    # "token":J
    .restart local v27    # "token":J
    goto :goto_e07

    .line 4652
    .end local v27    # "token":J
    .restart local v1    # "token":J
    :cond_df9
    move-wide/from16 v27, v1

    .line 4652
    .end local v1    # "token":J
    .restart local v27    # "token":J
    :cond_dfb
    :goto_dfb
    move-wide/from16 v1, v27

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4653
    .end local v27    # "token":J
    .restart local v1    # "token":J
    nop

    .line 4658
    .end local v1    # "token":J
    nop

    .line 4699
    move-object/from16 v2, p2

    goto/16 :goto_ebf

    .line 4652
    .restart local v1    # "token":J
    :catchall_e06
    move-exception v0

    :goto_e07
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4658
    .end local v1    # "token":J
    :cond_e0b
    const-string v0, "fast_report"

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e83

    .line 4659
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v3, v0

    .line 4661
    .local v3, "token":J
    :try_start_e1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 4662
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_e63

    .line 4663
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v1, :cond_e3a

    .line 4664
    const-string v1, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fast_report: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4665
    :cond_e3a
    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e4b

    .line 4666
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    .line 4667
    const-string v1, "fast_report is enabled"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e79

    .line 4668
    :cond_e4b
    const-string v1, "disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e5c

    .line 4669
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    .line 4670
    const-string v1, "fast_report is disabled"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e79

    .line 4672
    :cond_e5c
    const-string/jumbo v1, "please enter fast_report [enabled|disabled]"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e79

    .line 4675
    :cond_e63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fast_report: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v7, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e79
    .catchall {:try_start_e1a .. :try_end_e79} :catchall_e7e

    .line 4678
    .end local v0    # "arg":Ljava/lang/String;
    :goto_e79
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4679
    nop

    .line 4681
    .end local v3    # "token":J
    goto :goto_ebf

    .line 4678
    .restart local v3    # "token":J
    :catchall_e7e
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4681
    .end local v3    # "token":J
    :cond_e83
    const-string/jumbo v0, "motion"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec9

    .line 4682
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4684
    monitor-enter p0

    .line 4685
    :try_start_e96
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_e9a
    .catchall {:try_start_e96 .. :try_end_e9a} :catchall_ec6

    move-wide v3, v0

    .line 4687
    .restart local v3    # "token":J
    :try_start_e9b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->motionLocked()V

    .line 4688
    const-string v0, "Light state: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4689
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4690
    const-string v0, ", deep state: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4691
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_eba
    .catchall {:try_start_e9b .. :try_end_eba} :catchall_ec1

    .line 4693
    :try_start_eba
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4694
    nop

    .line 4695
    .end local v3    # "token":J
    monitor-exit p0

    .line 4699
    :goto_ebf
    const/4 v1, 0x0

    return v1

    .line 4693
    .restart local v3    # "token":J
    :catchall_ec1
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4695
    .end local v3    # "token":J
    :catchall_ec6
    move-exception v0

    monitor-exit p0
    :try_end_ec8
    .catchall {:try_start_eba .. :try_end_ec8} :catchall_ec6

    throw v0

    .line 4697
    :cond_ec9
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/DeviceIdleController$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :sswitch_data_ece
    .sparse-switch
        -0x361a3f94 -> :sswitch_242
        0x2efcec -> :sswitch_238
        0x5d18aeb -> :sswitch_22e
        0x6233516 -> :sswitch_223
        0x55996271 -> :sswitch_219
        0x6de15a2e -> :sswitch_20e
    .end sparse-switch

    :pswitch_data_ee8
    .packed-switch 0x0
        :pswitch_275
        :pswitch_26b
        :pswitch_265
        :pswitch_25f
        :pswitch_259
        :pswitch_253
    .end packed-switch
.end method

.method public onStart()V
    .registers 15

    .line 1979
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1981
    .local v0, "pm":Landroid/content/pm/PackageManager;
    monitor-enter p0

    .line 1982
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    .line 1986
    const-string/jumbo v1, "oem.dozeNetworkChange.control"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/DeviceIdleController;->isDozeChangeSupport:Z

    .line 1988
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 1989
    .local v1, "sysConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;

    move-result-object v2

    .line 1990
    .local v2, "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move v4, v3

    .line 1990
    .local v4, "i":I
    :goto_2f
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/high16 v6, 0x100000

    const/4 v7, 0x1

    if-ge v4, v5, :cond_5d

    .line 1991
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_116

    .line 1993
    .local v5, "pkg":Ljava/lang/String;
    :try_start_3e
    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 1995
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    iget v8, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 1996
    .local v8, "appid":I
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_58
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3e .. :try_end_58} :catch_59
    .catchall {:try_start_3e .. :try_end_58} :catchall_116

    .line 1999
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "appid":I
    goto :goto_5a

    .line 1998
    :catch_59
    move-exception v6

    .line 1990
    .end local v5    # "pkg":Ljava/lang/String;
    :goto_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 2001
    .end local v4    # "i":I
    :cond_5d
    :try_start_5d
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    move-result-object v4

    .line 2002
    .local v4, "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move v5, v3

    .line 2002
    .local v5, "i":I
    :goto_62
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v5, v8, :cond_9d

    .line 2003
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_6e
    .catchall {:try_start_5d .. :try_end_6e} :catchall_116

    .line 2005
    .local v8, "pkg":Ljava/lang/String;
    :try_start_6e
    invoke-virtual {v0, v8, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 2007
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    iget v10, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    .line 2010
    .local v10, "appid":I
    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2011
    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v10, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2012
    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v10, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_98
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6e .. :try_end_98} :catch_99
    .catchall {:try_start_6e .. :try_end_98} :catchall_116

    .line 2015
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "appid":I
    goto :goto_9a

    .line 2014
    :catch_99
    move-exception v9

    .line 2002
    .end local v8    # "pkg":Ljava/lang/String;
    :goto_9a
    add-int/lit8 v5, v5, 0x1

    goto :goto_62

    .line 2020
    .end local v5    # "i":I
    :cond_9d
    :try_start_9d
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    .line 2021
    .local v5, "size":I
    new-array v6, v5, [I

    iput-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleSystemAppIdArray:[I

    .line 2022
    move v6, v3

    .line 2022
    .local v6, "i":I
    :goto_a8
    if-ge v6, v5, :cond_b7

    .line 2023
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleSystemAppIdArray:[I

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    aput v9, v8, v6

    .line 2022
    add-int/lit8 v6, v6, 0x1

    goto :goto_a8

    .line 2026
    .end local v6    # "i":I
    :cond_b7
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 2027
    new-array v6, v5, [I

    iput-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdArray:[I

    .line 2028
    move v6, v3

    .line 2028
    .restart local v6    # "i":I
    :goto_c3
    if-ge v6, v5, :cond_d2

    .line 2029
    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdArray:[I

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    aput v9, v8, v6

    .line 2028
    add-int/lit8 v6, v6, 0x1

    goto :goto_c3

    .line 2033
    .end local v6    # "i":I
    :cond_d2
    new-instance v6, Lcom/android/server/DeviceIdleController$Constants;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-direct {v6, p0, v8, v9}, Lcom/android/server/DeviceIdleController$Constants;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v6, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 2035
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked()V

    .line 2036
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2038
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 2039
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 2040
    iput-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    .line 2043
    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 2044
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 2045
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 2046
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v6, v3, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v6, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    .line 2047
    .end local v1    # "sysConfig":Lcom/android/server/SystemConfig;
    .end local v2    # "allowPowerExceptIdle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "allowPower":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "size":I
    monitor-exit p0
    :try_end_fc
    .catchall {:try_start_9d .. :try_end_fc} :catchall_116

    .line 2049
    new-instance v1, Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$1;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    .line 2050
    const-string v1, "deviceidle"

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DeviceIdleController;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2051
    const-class v1, Lcom/android/server/DeviceIdleController$LocalService;

    new-instance v2, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-direct {v2, p0}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DeviceIdleController;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2052
    return-void

    .line 2047
    :catchall_116
    move-exception v1

    :try_start_117
    monitor-exit p0
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_116

    throw v1
.end method

.method public postToOPBackgroundThread(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "runable"    # Ljava/lang/Runnable;

    .line 546
    invoke-static {p1}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->post(Ljava/lang/Runnable;)V

    .line 547
    return-void
.end method

.method public postToOPBackgroundThread(Ljava/lang/Runnable;J)V
    .registers 4
    .param p1, "runable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .line 549
    invoke-static {p1, p2, p3}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    .line 550
    return-void
.end method

.method readConfigFileLocked()V
    .registers 4

    .line 3797
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading config from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    :cond_20
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3801
    :try_start_25
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2b} :catch_50

    .line 3804
    .local v0, "stream":Ljava/io/FileInputStream;
    nop

    .line 3803
    nop

    .line 3806
    :try_start_2d
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 3807
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3808
    invoke-direct {p0, v1}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_3d} :catch_48
    .catchall {:try_start_2d .. :try_end_3d} :catchall_41

    .line 3812
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_4d

    goto :goto_4c

    .line 3811
    :catchall_41
    move-exception v1

    .line 3812
    :try_start_42
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    .line 3814
    goto :goto_47

    .line 3813
    :catch_46
    move-exception v2

    .line 3814
    :goto_47
    throw v1

    .line 3809
    :catch_48
    move-exception v1

    .line 3812
    :try_start_49
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    .line 3814
    :goto_4c
    goto :goto_4f

    .line 3813
    :catch_4d
    move-exception v1

    .line 3815
    nop

    .line 3816
    :goto_4f
    return-void

    .line 3802
    .end local v0    # "stream":Ljava/io/FileInputStream;
    :catch_50
    move-exception v0

    .line 3803
    .local v0, "e":Ljava/io/FileNotFoundException;
    return-void
.end method

.method receivedGenericLocationLocked(Landroid/location/Location;)V
    .registers 5
    .param p1, "location"    # Landroid/location/Location;

    .line 3565
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 3566
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3567
    return-void

    .line 3569
    :cond_9
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generic location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    :cond_23
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 3571
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3b

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    if-eqz v0, :cond_3b

    .line 3572
    return-void

    .line 3574
    :cond_3b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 3575
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz v0, :cond_48

    .line 3576
    const-string/jumbo v0, "s:location"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 3578
    :cond_48
    return-void
.end method

.method receivedGpsLocationLocked(Landroid/location/Location;)V
    .registers 5
    .param p1, "location"    # Landroid/location/Location;

    .line 3581
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 3582
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3583
    return-void

    .line 3585
    :cond_9
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3586
    :cond_23
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 3589
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/DeviceIdleController;->mStopGps:Z

    .line 3590
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->mDozeChange:Z

    if-eqz v1, :cond_5a

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->isHasGpsRequest:Z

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController$Constants;->getPolicy()I

    move-result v1

    if-ne v1, v0, :cond_5a

    .line 3591
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_4b

    .line 3592
    iput-boolean v2, p0, Lcom/android/server/DeviceIdleController;->isFirstReport:Z

    .line 3593
    return-void

    .line 3595
    :cond_4b
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->isFirstReport:Z

    if-eqz v1, :cond_52

    .line 3596
    iput-boolean v2, p0, Lcom/android/server/DeviceIdleController;->isFirstReport:Z

    .line 3597
    return-void

    .line 3599
    :cond_52
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->checkLoctionWhiteUid()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 3600
    sput-boolean v2, Lcom/android/server/DeviceIdleController;->mStopGps:Z

    .line 3614
    :cond_5a
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->mDozeChange:Z

    if-eqz v1, :cond_6e

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->isHasGpsRequest:Z

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController$Constants;->getPolicy()I

    move-result v1

    if-ne v1, v0, :cond_6e

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->isFirstReport:Z

    if-eqz v1, :cond_7b

    .line 3616
    :cond_6e
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7b

    .line 3617
    return-void

    .line 3621
    :cond_7b
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 3622
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz v0, :cond_87

    .line 3623
    const-string/jumbo v0, "s:gps"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    .line 3625
    :cond_87
    return-void
.end method

.method registerMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)Z
    .registers 3
    .param p1, "listener"    # Landroid/os/IMaintenanceActivityListener;

    .line 3467
    monitor-enter p0

    .line 3468
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3469
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    monitor-exit p0

    return v0

    .line 3470
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public removeMessages(I)V
    .registers 2
    .param p1, "msgId"    # I

    .line 555
    invoke-static {p1}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->removeMessages(I)V

    .line 556
    return-void
.end method

.method removePowerSaveTempWhitelistAppChecked(Ljava/lang/String;I)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2642
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    const-string v2, "No permission to change device idle whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2645
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2646
    .local v0, "callingUid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 2647
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string/jumbo v9, "removePowerSaveTempWhitelistApp"

    .line 2646
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v5, v0

    move v6, p2

    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2653
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2655
    .local v1, "token":J
    :try_start_27
    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppInternal(Ljava/lang/String;I)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2f

    .line 2657
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2658
    nop

    .line 2659
    return-void

    .line 2657
    :catchall_2f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 2406
    monitor-enter p0

    .line 2407
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2408
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2409
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2410
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2411
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2413
    :cond_15
    monitor-exit p0

    .line 2414
    const/4 v0, 0x0

    return v0

    .line 2413
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public removeSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 2447
    monitor-enter p0

    .line 2448
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2449
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 2451
    :cond_c
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2452
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2453
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2454
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2455
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2456
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw v0
.end method

.method reportMaintenanceActivityIfNeededLocked()V
    .registers 6

    .line 3480
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    .line 3481
    .local v0, "active":Z
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    if-ne v0, v1, :cond_7

    .line 3482
    return-void

    .line 3484
    :cond_7
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    .line 3485
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v2, 0x7

    .line 3486
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    const/4 v4, 0x0

    .line 3485
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 3487
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3488
    return-void
.end method

.method resetIdleManagementLocked()V
    .registers 3

    .line 3137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3138
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3139
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 3140
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 3141
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 3142
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3143
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->stopMonitoringMotionLocked()V

    .line 3144
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 3145
    return-void
.end method

.method resetLightIdleManagementLocked()V
    .registers 1

    .line 3148
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 3149
    return-void
.end method

.method public resetPowerSaveWhitelistExceptIdleInternal()V
    .registers 4

    .line 2482
    monitor-enter p0

    .line 2483
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2485
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2486
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    .line 2489
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2491
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    .line 2493
    :cond_22
    monitor-exit p0

    .line 2494
    return-void

    .line 2493
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_24

    throw v0
.end method

.method resetSystemPowerWhitelistInternal()V
    .registers 3

    .line 2424
    monitor-enter p0

    .line 2425
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 2426
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2427
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2428
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2429
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2430
    monitor-exit p0

    .line 2431
    return-void

    .line 2430
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 2434
    monitor-enter p0

    .line 2435
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2436
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 2438
    :cond_c
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2439
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    .line 2440
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    .line 2441
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    .line 2442
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 2443
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw v0
.end method

.method scheduleAlarmLocked(JZ)V
    .registers 24
    .param p1, "delay"    # J
    .param p3, "idleUntil"    # Z

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 3677
    move/from16 v3, p3

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_2e

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "scheduleAlarmLocked("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3678
    :cond_2e
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v4, :cond_33

    .line 3683
    return-void

    .line 3685
    :cond_33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v1

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    .line 3686
    if-eqz v3, :cond_4b

    .line 3687
    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-string v10, "DeviceIdleController.deep"

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v12, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setIdleUntil(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_5e

    .line 3690
    :cond_4b
    iget-object v13, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v14, 0x2

    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-string v17, "DeviceIdleController.deep"

    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v7, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    move-wide v15, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    invoke-virtual/range {v13 .. v19}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 3693
    :goto_5e
    return-void
.end method

.method scheduleLightAlarmLocked(J)V
    .registers 12
    .param p1, "delay"    # J

    .line 3696
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleLightAlarmLocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    .line 3698
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    const-string v6, "DeviceIdleController.light"

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 3700
    return-void
.end method

.method scheduleReportActiveLocked(Ljava/lang/String;I)V
    .registers 6
    .param p1, "activeReason"    # Ljava/lang/String;
    .param p2, "activeUid"    # I

    .line 2931
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2932
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2933
    return-void
.end method

.method scheduleSensingTimeoutAlarmLocked(J)V
    .registers 12
    .param p1, "delay"    # J

    .line 3703
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleSensingAlarmLocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3704
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    .line 3705
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    const-string v6, "DeviceIdleController.sensing"

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 3707
    return-void
.end method

.method public sendEmptyMessageDelayed(IJ)V
    .registers 4
    .param p1, "msgId"    # I
    .param p2, "delayMillis"    # J

    .line 552
    invoke-static {p1, p2, p3}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->sendEmptyMessageDelayed(IJ)V

    .line 553
    return-void
.end method

.method setAlarmsActive(Z)V
    .registers 3
    .param p1, "active"    # Z

    .line 3458
    monitor-enter p0

    .line 3459
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    .line 3460
    if-nez p1, :cond_8

    .line 3461
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 3463
    :cond_8
    monitor-exit p0

    .line 3464
    return-void

    .line 3463
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method setJobsActive(Z)V
    .registers 3
    .param p1, "active"    # Z

    .line 3448
    monitor-enter p0

    .line 3449
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    .line 3450
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportMaintenanceActivityIfNeededLocked()V

    .line 3451
    if-nez p1, :cond_b

    .line 3452
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    .line 3454
    :cond_b
    monitor-exit p0

    .line 3455
    return-void

    .line 3454
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public setNetworkPolicyForceCloseSocketCallbackInternal(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 2735
    monitor-enter p0

    .line 2736
    :try_start_1
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyForceCloseSocketCallback:Ljava/lang/Runnable;

    .line 2737
    monitor-exit p0

    .line 2738
    return-void

    .line 2737
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method startMonitoringMotionLocked()V
    .registers 3

    .line 3628
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "startMonitoringMotionLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    :cond_c
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-nez v0, :cond_1b

    .line 3630
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->registerLocked()Z

    .line 3632
    :cond_1b
    return-void
.end method

.method stepIdleStateLocked(Ljava/lang/String;)V
    .registers 21
    .param p1, "reason"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 3250
    move-object/from16 v1, p1

    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stepIdleStateLocked: mState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleStep()V

    .line 3254
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3255
    .local v2, "now":J
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    add-long/2addr v4, v2

    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v6}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_4f

    .line 3257
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz v4, :cond_4e

    .line 3260
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_42

    const-string v4, "DeviceIdleController"

    const-string v5, "becomeActiveLocked due to near incoming AlarmClock"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    :cond_42
    const-string v4, "alarm"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 3263
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 3265
    :cond_4e
    return-void

    .line 3268
    :cond_4f
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch v4, :pswitch_data_2a8

    goto/16 :goto_294

    .line 3406
    :pswitch_5b
    iput v9, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3407
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3408
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-virtual {v0, v4, v5, v10}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3409
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_88

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Moved from STATE_IDLE to STATE_IDLE_MAINTENANCE. Next alarm in "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " ms."

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    :cond_88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3412
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    iget-wide v11, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    long-to-float v11, v11

    iget-object v12, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v12, v12, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    mul-float/2addr v11, v12

    float-to-long v11, v11

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3414
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v11, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    cmp-long v4, v4, v11

    if-gez v4, :cond_b1

    .line 3415
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3417
    :cond_b1
    const/4 v4, 0x6

    iput v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3418
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3419
    invoke-direct {v0, v6, v8}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3420
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v4, v7}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_294

    .line 3304
    :pswitch_c3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    .line 3305
    iput v7, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3306
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_d3

    const-string v4, "DeviceIdleController"

    const-string v11, "Moved from STATE_SENSING to STATE_LOCATING."

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    :cond_d3
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3331
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->mDozeChange:Z

    if-eqz v4, :cond_e2

    .line 3332
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->isHasGpsReport()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/DeviceIdleController;->isHasGpsRequest:Z

    .line 3334
    :cond_e2
    const-string v4, "DeviceIdleController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isHasGpsRequest ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v0, Lcom/android/server/DeviceIdleController;->isHasGpsRequest:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->mDozeChange:Z

    if-eqz v4, :cond_110

    .line 3336
    iget-boolean v4, v0, Lcom/android/server/DeviceIdleController;->isHasGpsRequest:Z

    if-eqz v4, :cond_10a

    .line 3337
    const-wide/32 v11, 0x1d4c0

    invoke-virtual {v0, v11, v12, v10}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    goto :goto_117

    .line 3339
    :cond_10a
    const-wide/16 v11, 0x2710

    invoke-virtual {v0, v11, v12, v10}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    goto :goto_117

    .line 3342
    :cond_110
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v4, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-virtual {v0, v11, v12, v10}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3344
    :goto_117
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->mDozeChange:Z

    if-eqz v4, :cond_152

    iget-boolean v4, v0, Lcom/android/server/DeviceIdleController;->isHasGpsRequest:Z

    if-eqz v4, :cond_152

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v11, "gps"

    .line 3345
    invoke-virtual {v4, v11}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v4

    if-eqz v4, :cond_152

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v11, "gps"

    .line 3346
    invoke-virtual {v4, v11}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_152

    .line 3347
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 3348
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->isFirstReport:Z

    .line 3349
    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v12, "gps"

    const-wide/16 v13, 0x3e8

    const/high16 v15, 0x41200000    # 10.0f

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 3350
    invoke-virtual {v5}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v17

    .line 3349
    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v17}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 3351
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    goto :goto_1a1

    .line 3353
    :cond_152
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v4, :cond_173

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v5, "network"

    .line 3354
    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v4

    if-eqz v4, :cond_173

    .line 3355
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    iget-object v12, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 3356
    invoke-virtual {v12}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    .line 3355
    invoke-virtual {v4, v5, v11, v12}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 3357
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    goto :goto_175

    .line 3359
    :cond_173
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    .line 3361
    :goto_175
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v4, :cond_19f

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v5, "gps"

    .line 3362
    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v4

    if-eqz v4, :cond_19f

    .line 3363
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 3364
    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v12, "gps"

    const-wide/16 v13, 0x3e8

    const/high16 v15, 0x40a00000    # 5.0f

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 3365
    invoke-virtual {v5}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v17

    .line 3364
    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v17}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 3366
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    goto :goto_1a1

    .line 3368
    :cond_19f
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    .line 3374
    :goto_1a1
    iget-boolean v4, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v4, :cond_1a7

    .line 3375
    goto/16 :goto_294

    .line 3380
    :cond_1a7
    :pswitch_1a7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    .line 3381
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3382
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v4}, Lcom/android/server/AnyMotionDetector;->stop()V

    .line 3385
    :pswitch_1b2
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-virtual {v0, v4, v5, v9}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3386
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_1d8

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Moved to STATE_IDLE. Next alarm in "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " ms."

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    :cond_1d8
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    long-to-float v4, v4

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v5, v5, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    mul-float/2addr v4, v5

    float-to-long v4, v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3389
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_1ff

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting mNextIdleDelay = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    :cond_1ff
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v11, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3391
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v11, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    cmp-long v4, v4, v11

    if-gez v4, :cond_21b

    .line 3392
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3394
    :cond_21b
    iput v6, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3395
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_227

    .line 3396
    iput v5, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3397
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    .line 3399
    :cond_227
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3400
    invoke-direct {v0, v7, v8}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3401
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3402
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 3403
    goto :goto_294

    .line 3292
    :pswitch_23b
    const/4 v4, 0x3

    iput v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3293
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_249

    const-string v4, "DeviceIdleController"

    const-string v5, "Moved from STATE_IDLE_PENDING to STATE_SENSING."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    :cond_249
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3295
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-virtual {v0, v4, v5}, Lcom/android/server/DeviceIdleController;->scheduleSensingTimeoutAlarmLocked(J)V

    .line 3296
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    .line 3297
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    .line 3298
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    .line 3299
    iput-object v8, v0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    .line 3300
    iput-object v8, v0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    .line 3301
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v4}, Lcom/android/server/AnyMotionDetector;->checkForAnyMotion()V

    .line 3302
    goto :goto_294

    .line 3279
    :pswitch_266
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->mDozeChange:Z

    if-nez v4, :cond_26d

    .line 3280
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    .line 3283
    :cond_26d
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-virtual {v0, v4, v5, v10}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    .line 3285
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    .line 3286
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    .line 3287
    const/4 v4, 0x2

    iput v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    .line 3288
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_28e

    const-string v4, "DeviceIdleController"

    const-string v5, "Moved from STATE_INACTIVE to STATE_IDLE_PENDING."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    :cond_28e
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    .line 3290
    nop

    .line 3425
    :goto_294
    new-array v4, v9, [I

    const/16 v5, 0x50

    aput v5, v4, v10

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_2a7

    .line 3426
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;

    iget v5, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-virtual {v4, v5}, Lcom/android/server/OnePlusPowerController$LocalService;->setDozeState(I)V

    .line 3429
    :cond_2a7
    return-void

    :pswitch_data_2a8
    .packed-switch 0x1
        :pswitch_266
        :pswitch_23b
        :pswitch_c3
        :pswitch_1a7
        :pswitch_5b
        :pswitch_1b2
    .end packed-switch
.end method

.method stepLightIdleStateLocked(Ljava/lang/String;)V
    .registers 15
    .param p1, "reason"    # Ljava/lang/String;

    .line 3161
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 3164
    return-void

    .line 3167
    :cond_6
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stepLightIdleStateLocked: mLightState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    :cond_23
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleLightStep()V

    .line 3170
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    if-eq v0, v3, :cond_a8

    packed-switch v0, :pswitch_data_144

    goto/16 :goto_141

    .line 3213
    :pswitch_35
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-nez v0, :cond_58

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_3f

    goto :goto_58

    .line 3234
    :cond_3f
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 3235
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_4f

    const-string v0, "DeviceIdleController"

    const-string v1, "Moved to LIGHT_WAITING_FOR_NETWORK."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    :cond_4f
    iput v4, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3237
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    goto/16 :goto_141

    .line 3215
    :cond_58
    :goto_58
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    .line 3216
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3217
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3218
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v0, v3, v7

    if-gez v0, :cond_76

    .line 3219
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    goto :goto_86

    .line 3220
    :cond_76
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    cmp-long v0, v3, v7

    if-lez v0, :cond_86

    .line 3221
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 3223
    :cond_86
    :goto_86
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 3224
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_96

    const-string v0, "DeviceIdleController"

    const-string v3, "Moved from LIGHT_STATE_IDLE to LIGHT_STATE_IDLE_MAINTENANCE."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    :cond_96
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3227
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3228
    invoke-direct {p0, v6, v2}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3229
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_141

    .line 3172
    :cond_a8
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v7, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 3174
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v7, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 3175
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3176
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    move-result v0

    if-nez v0, :cond_cb

    .line 3179
    iput v6, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3180
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3181
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 3182
    goto :goto_141

    .line 3187
    :cond_cb
    :pswitch_cb
    iget-wide v7, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long v0, v7, v4

    if-eqz v0, :cond_f6

    .line 3188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    sub-long/2addr v7, v9

    .line 3189
    .local v7, "duration":J
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v0, v7, v9

    if-gez v0, :cond_eb

    .line 3191
    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    sub-long/2addr v11, v7

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    goto :goto_f6

    .line 3194
    :cond_eb
    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    sub-long v11, v7, v11

    sub-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    .line 3197
    .end local v7    # "duration":J
    :cond_f6
    :goto_f6
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    .line 3198
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    .line 3199
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    iget-wide v7, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    long-to-float v0, v7

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v5, v5, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    mul-float/2addr v0, v5

    float-to-long v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 3201
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    cmp-long v0, v3, v7

    if-gez v0, :cond_120

    .line 3202
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    .line 3204
    :cond_120
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_12b

    const-string v0, "DeviceIdleController"

    const-string v3, "Moved to LIGHT_STATE_IDLE."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3205
    :cond_12b
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    .line 3206
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    .line 3207
    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    .line 3208
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3209
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    .line 3210
    nop

    .line 3241
    :goto_141
    return-void

    nop

    nop

    :pswitch_data_144
    .packed-switch 0x3
        :pswitch_cb
        :pswitch_35
        :pswitch_35
        :pswitch_cb
    .end packed-switch
.end method

.method stopMonitoringMotionLocked()V
    .registers 3

    .line 3635
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "stopMonitoringMotionLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    :cond_c
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz v0, :cond_1b

    .line 3637
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->unregisterLocked()V

    .line 3639
    :cond_1b
    return-void
.end method

.method unregisterMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/IMaintenanceActivityListener;

    .line 3474
    monitor-enter p0

    .line 3475
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3476
    monitor-exit p0

    .line 3477
    return-void

    .line 3476
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method updateChargingLocked(Z)V
    .registers 5
    .param p1, "charging"    # Z

    .line 2906
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateChargingLocked: charging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    :cond_1b
    if-nez p1, :cond_2c

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_2c

    .line 2908
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 2909
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_3d

    .line 2910
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    goto :goto_3d

    .line 2912
    :cond_2c
    if-eqz p1, :cond_3d

    .line 2913
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    .line 2914
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_3d

    .line 2915
    const-string v0, "charging"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2918
    :cond_3d
    :goto_3d
    return-void
.end method

.method updateConnectivityState(Landroid/content/Intent;)V
    .registers 7
    .param p1, "connIntent"    # Landroid/content/Intent;

    .line 2823
    monitor-enter p0

    .line 2824
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConnectivityService:Lcom/android/server/ConnectivityService;

    .line 2825
    .local v0, "cm":Lcom/android/server/ConnectivityService;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4a

    .line 2826
    if-nez v0, :cond_7

    .line 2827
    return-void

    .line 2830
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2831
    .local v1, "ni":Landroid/net/NetworkInfo;
    monitor-enter p0

    .line 2833
    if-nez v1, :cond_10

    .line 2834
    const/4 v2, 0x0

    .line 2834
    .local v2, "conn":Z
    :goto_f
    goto :goto_32

    .line 2836
    .end local v2    # "conn":Z
    :cond_10
    if-nez p1, :cond_17

    .line 2837
    :try_start_12
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_f

    .line 2839
    :cond_17
    const-string/jumbo v2, "networkType"

    const/4 v3, -0x1

    .line 2840
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2842
    .local v2, "networkType":I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v2, :cond_27

    .line 2843
    monitor-exit p0

    return-void

    .line 2845
    :cond_27
    const-string/jumbo v3, "noConnectivity"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 2845
    .end local v2    # "networkType":I
    move v2, v3

    .line 2849
    .local v2, "conn":Z
    :goto_32
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-eq v2, v3, :cond_45

    .line 2850
    iput-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    .line 2851
    if-eqz v2, :cond_45

    iget v3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_45

    .line 2852
    const-string/jumbo v3, "network"

    invoke-virtual {p0, v3}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    .line 2855
    .end local v2    # "conn":Z
    :cond_45
    monitor-exit p0

    .line 2856
    return-void

    .line 2855
    :catchall_47
    move-exception v2

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_12 .. :try_end_49} :catchall_47

    throw v2

    .line 2825
    .end local v0    # "cm":Lcom/android/server/ConnectivityService;
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method updateInteractivityLocked()V
    .registers 5

    .line 2862
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 2863
    .local v0, "screenOn":Z
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v1, :cond_21

    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateInteractivityLocked: screenOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    :cond_21
    const/4 v1, 0x0

    if-nez v0, :cond_39

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-eqz v2, :cond_39

    .line 2865
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 2866
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v2, :cond_31

    .line 2867
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    .line 2871
    :cond_31
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    .line 2875
    sget v1, Lcom/android/server/DeviceIdleController;->TIME_OF_DEEPIDLE_START_RESET:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController;->mElapseRealTimeofDeepIdleStart:J

    goto :goto_5f

    .line 2884
    :cond_39
    if-eqz v0, :cond_5f

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v2, :cond_5f

    .line 2885
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    .line 2886
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v2, :cond_5a

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v2, v2, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    if-nez v2, :cond_5a

    .line 2887
    :cond_50
    const-string/jumbo v2, "screen"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    .line 2891
    :cond_5a
    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->leavingDeepIdleLocked(Z)V

    .line 2894
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    .line 2901
    :cond_5f
    :goto_5f
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->clearWhiteUid()V

    .line 2903
    return-void
.end method

.method writeConfigFileLocked()V
    .registers 5

    .line 3884
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->removeMessages(I)V

    .line 3885
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3886
    return-void
.end method

.method writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3917
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3918
    const-string v0, "config"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3919
    const/4 v0, 0x0

    move v2, v0

    .line 3919
    .local v2, "i":I
    :goto_10
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 3920
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3921
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v4, "wl"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3922
    const-string/jumbo v4, "n"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3923
    const-string/jumbo v4, "wl"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3919
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 3925
    .end local v2    # "i":I
    :cond_35
    nop

    .line 3925
    .local v0, "i":I
    :goto_36
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_5b

    .line 3926
    const-string/jumbo v2, "un-wl"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3927
    const-string/jumbo v2, "n"

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3928
    const-string/jumbo v2, "un-wl"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3925
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 3930
    .end local v0    # "i":I
    :cond_5b
    const-string v0, "config"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3931
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3932
    return-void
.end method
