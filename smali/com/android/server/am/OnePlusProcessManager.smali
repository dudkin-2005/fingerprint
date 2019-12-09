.class public Lcom/android/server/am/OnePlusProcessManager;
.super Ljava/lang/Object;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusProcessManager$ProcessFreezerConfigUpdater;,
        Lcom/android/server/am/OnePlusProcessManager$Traffic;,
        Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;,
        Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;,
        Lcom/android/server/am/OnePlusProcessManager$gpsFreezeHandler;,
        Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;,
        Lcom/android/server/am/OnePlusProcessManager$SuspendMsgObj;,
        Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;,
        Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final APP_CFG_FILE:Ljava/lang/String; = "cfg.xml"

.field private static final APP_CFG_PATH:Ljava/lang/String; = "/data/data_bpm/cfg.xml"

.field public static final BIND_SERVICE_LOCKED_TIMEOUT:I = 0x251c

.field private static final BLACK_ALARM_FILE:Ljava/lang/String; = "black_alarm.xml"

.field private static final BLACK_ALARM_PATH:Ljava/lang/String; = "/data/data_bpm/black_alarm.xml"

.field private static final BLACK_BRD_APP_FILE:Ljava/lang/String; = "black_brd.xml"

.field private static final BLACK_BRD_APP_PATH:Ljava/lang/String; = "/data/data_bpm/black_brd.xml"

.field private static final BLACK_GPS_APP_FILE:Ljava/lang/String; = "black_gps.xml"

.field private static final BLACK_GPS_APP_PATH:Ljava/lang/String; = "/data/data_bpm/black_gps.xml"

.field private static final BPM_DIR:Ljava/lang/String; = "/data/data_bpm/"

.field private static final BPM_FILE:Ljava/lang/String; = "bpm.xml"

.field private static final BPM_PATH:Ljava/lang/String; = "/data/data_bpm/bpm.xml"

.field private static final BPM_STATUS_FILE:Ljava/lang/String; = "bpm_sts.xml"

.field public static final BPM_STATUS_PATH:Ljava/lang/String; = "/data/data_bpm/bpm_sts.xml"

.field private static final BRD_FILE:Ljava/lang/String; = "brd.xml"

.field private static final BRD_PATH:Ljava/lang/String; = "/data/data_bpm/brd.xml"

.field private static CFG_VERSOON:I = 0x0

.field private static CONFIG_NAME:Ljava/lang/String; = null

.field public static DEBUG:Z = false

.field public static DEBUG_DETAIL:Z = false

.field public static DEBUG_ONEPLUS:Z = false

.field private static final DEVICE_IDLE_SERVICE:Ljava/lang/String; = "deviceidle"

.field public static final DISPATCH_APP_VISIBILITY_TIMEOUT:I = 0x2454

.field public static final DISPATCH_RESIZED_TIMEOUT:I = 0x24b8

.field public static final DISPLAY_EVENT_TIMEOUT:I = 0x23f0

.field private static final FORCE_STOP_SENSOR_FILE:Ljava/lang/String; = "force_stop_sensor.xml"

.field private static final FORCE_STOP_SENSOR_PATH:Ljava/lang/String; = "/data/data_bpm/force_stop_sensor.xml"

.field private static final FORCE_SWITCH_IGNORE:I = 0x0

.field private static final FORCE_SWITCH_OFF:I = 0x2

.field private static final FORCE_SWITCH_ON:I = 0x1

.field private static final GET_CONFIG:I = 0x1

.field public static final GLOBAL_FLAG_SETTED_SIM_COUNTRY:I = 0x1

.field private static final GPS_BLOCK:I = 0x1

.field private static final GPS_UNBLOCK:I = 0x2

.field private static final INIT_CONFIG_DATA:I = 0x70

.field public static final INPUT_DEVICES_CHANGE_TIMEOUT:I = 0x238c

.field private static final MESSAGE_COMPLUTE_TRAFFIC:I = 0x74

.field private static final MESSAGE_SUSPEND_DELAY:I = 0x71

.field private static final MESSAGE_SUSPEND_UID_ADDPID:I = 0x73

.field private static final MESSAGE_UPDATE_FORGEGROUND:I = 0x77

.field private static final MESSAGE_UPDATE_STATE:I = 0x76

.field private static final MESSAGE_WRITE_PID_DELAY:I = 0x72

.field private static final PHONE_PKG_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final PKG_FILE:Ljava/lang/String; = "pkg.xml"

.field private static final PKG_PATH:Ljava/lang/String; = "/data/data_bpm/pkg.xml"

.field public static final POLICY_USE_CGROUP:Z = true

.field private static final PROP_FLAGS:Ljava/lang/String; = "persist.sys.cgroup.flags"

.field private static final PROP_REGION:Ljava/lang/String; = "persist.sys.oem.region"

.field private static final PROP_SIM_COUNTRY:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field private static final PROP_USING:Ljava/lang/String; = "persist.sys.cgroup.using"

.field public static final PUBLISH_SERVICE_TIMEOUT:I = 0x2328

.field static final ReceiverFailMax:I = 0x4

.field private static SCREEN_OFF_INTENT:Ljava/lang/String; = null

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final START_WATCHING:I = 0x6f

.field private static final SUSPEND_DELAY:J = 0xfde8L

.field static final SUSPEND_DELAY_DEFAULT:I = 0x1

.field static final SUSPEND_DELAY_LONG:I = 0x3

.field static final SUSPEND_DELAY_SHORT:I = 0x2

.field private static final SUSPEND_PRE_APP_DELAY:J = 0x30d40L

.field private static final SYS_BLACK_ALARM_FILE:Ljava/lang/String; = "/system/bpm/black_alarm.xml"

.field private static final SYS_BLACK_BRD_FILE:Ljava/lang/String; = "/system/bpm/black_brd.xml"

.field private static final SYS_BLACK_GPS_FILE:Ljava/lang/String; = "/system/bpm/black_gps.xml"

.field private static final SYS_BRD_FILE:Ljava/lang/String; = "/system/bpm/brd.xml"

.field private static final SYS_CFG_FILE:Ljava/lang/String; = "/system/bpm/cfg.xml"

.field private static final SYS_FORCE_STOP_SENSOR_FILE:Ljava/lang/String; = "/system/bpm/force_stop_sensor.xml"

.field private static final SYS_PKG_FILE:Ljava/lang/String; = "/system/bpm/pkg.xml"

.field public static final SYS_STATUS_FILE:Ljava/lang/String; = "/system/bpm/bpm_sts.xml"

.field private static final SYS_VERSION_FILE:Ljava/lang/String; = "/system/bpm/version.xml"

.field public static final TAG:Ljava/lang/String; = "OnePlusProcessManager"

.field private static final TRAFFIC_THRESHOLD:J = 0x32000L

.field public static final TRANSACT_2APP_TIMEOUT:I = 0x3a98

.field private static final UPDATE_APPWIDGET:I = 0x69

.field private static final UPDATE_BAD:I = 0x68

.field private static final UPDATE_BPM:I = 0x65

.field private static final UPDATE_BRD:I = 0x66

.field private static final UPDATE_PKG:I = 0x67

.field private static final UPDATE_STS:I = 0x64

.field public static final VERSION:I = 0xe69999

.field private static final VERSION_FILE:Ljava/lang/String; = "version.xml"

.field private static final VERSION_PATH:Ljava/lang/String; = "/data/data_bpm/version.xml"

.field static computeTrafficTime:J = 0x0L

.field private static isAlarmAdjust:Z = false

.field private static isChargeringCloseForzen:Z = false

.field static isSuppoerted:Z = false

.field private static isUsing:Z = false

.field private static lm:Lcom/android/server/LocationManagerService; = null

.field public static mActivityManager:Lcom/android/server/am/ActivityManagerService; = null

.field static mAdjustUids:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mAlarmManager:Landroid/app/AlarmManager; = null

.field static mAudioUids:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mBPMStatus:Z = false

.field private static mBPMStatusing:Z = false

.field static mCanFrozenUids:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final mCgroupFreezerPath:Ljava/lang/String; = "/sys/fs/cgroup/freezer/"

.field private static mCharging:Z

.field private static mDeviceIdleService:Landroid/os/IDeviceIdleController;

.field static mDoThawedUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mGlobalFlags:I

.field static mLoactionFailUidsCount:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mLock:Ljava/lang/Object;

.field public static mLockProcess:Ljava/lang/Object;

.field public static mMessageLock:Ljava/lang/Object;

.field private static mNotification:Landroid/app/INotificationManager;

.field private static mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

.field private static mOneplusProcessHandler:Landroid/os/Handler;

.field private static mPackageManager:Landroid/content/pm/PackageManager;

.field static mPendingUid:I

.field static mPhoneAppReady:Z

.field public static mProcess:Ljava/lang/Object;

.field private static mRegion:Ljava/lang/String;

.field private static mResumeFirst:Z

.field public static mScreenLock:Ljava/lang/Object;

.field private static mScreenOffCheckIntent:Landroid/app/PendingIntent;

.field static mScreenOffCount:I

.field private static mScreenOffIntent:Landroid/content/Intent;

.field static mScreen_ON:Z

.field static mScreen_ON_ING:Z

.field static mSuspendFailUidsCount:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mSuspendUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mTrafficUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mTrafficUidsCount:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mTrafficeWhiteUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mUidPackageNames:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mUidTraffic:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/OnePlusProcessManager$Traffic;",
            ">;"
        }
    .end annotation
.end field

.field static mUnFrozenReasonUids:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mWakeLock:Ljava/lang/Object;

.field public static mWhiteLock:Ljava/lang/Object;

.field static mWhiteUids:[I

.field public static sInputMethodUid:I

.field static screenOffCheckDelayTime:J

.field static suspendUidDelayTime:J


# instance fields
.field private SUSPEND_FAIL_DEFAULT:D

.field private SUSPEND_FAIL_LONG:D

.field private SUSPEND_FAIL_NOTRY:D

.field private SUSPEND_FAIL_SLEEP:D

.field private SUSPEND_OK:D

.field appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

.field mAlarm:Landroid/app/IAlarmManager;

.field mAlarmAdjust:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBPMList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackAlarmList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackBrdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackGpsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBrdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentFrontUid:I

.field private mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

.field mForceStopSensorPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mForceSwitch:I

.field mFrontActivityUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mFrontWindowTouchUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsFreezeHandler:Landroid/os/Handler;

.field mGpsReceiverLocationUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mImportantUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mOtherReceiverLocationUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPowerAdjust:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mPowerManager:Landroid/os/IPowerManager;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field private mProcessFreezerConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mResumeProcessHandler:Landroid/os/Handler;

.field final mResumeUidBroadcasts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final mRulesLock:Ljava/lang/Object;

.field mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field mStatusLocationUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendProcessHandler:Landroid/os/Handler;

.field private mSysCfgMapOnlineConifg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Landroid/os/HandlerThread;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final mUidState:Landroid/util/SparseIntArray;

.field private mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field pm:Landroid/os/PowerManager;

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 129
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 130
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 131
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    .line 139
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mPhoneAppReady:Z

    .line 141
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    .line 144
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 149
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    .line 150
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mCharging:Z

    .line 151
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mResumeFirst:Z

    .line 152
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatusing:Z

    .line 234
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mCanFrozenUids:Ljava/util/ArrayList;

    .line 241
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    .line 242
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    .line 245
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    .line 248
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    .line 253
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    .line 254
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mScreenLock:Ljava/lang/Object;

    .line 255
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLockProcess:Ljava/lang/Object;

    .line 256
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mWhiteLock:Ljava/lang/Object;

    .line 257
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mProcess:Ljava/lang/Object;

    .line 261
    const-string v2, "com.oneplus.android.screenOffCheckProcessState"

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    .line 264
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    .line 270
    new-array v2, v0, [I

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    .line 272
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 273
    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    .line 274
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mMessageLock:Ljava/lang/Object;

    .line 280
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    .line 282
    sput-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 283
    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCount:I

    .line 284
    const-wide/32 v2, 0x493e0

    sput-wide v2, Lcom/android/server/am/OnePlusProcessManager;->screenOffCheckDelayTime:J

    .line 285
    const-wide/32 v2, 0xea60

    sput-wide v2, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    .line 286
    const-wide/16 v2, 0x7530

    sput-wide v2, Lcom/android/server/am/OnePlusProcessManager;->computeTrafficTime:J

    .line 287
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    .line 288
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    .line 289
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    .line 299
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    .line 308
    sput v0, Lcom/android/server/am/OnePlusProcessManager;->sInputMethodUid:I

    .line 309
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    .line 312
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    .line 314
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    .line 316
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    .line 318
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    .line 320
    sput-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->isUsing:Z

    .line 321
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    .line 325
    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    .line 329
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    .line 337
    const-string v2, "ProcessFreezer"

    sput-object v2, Lcom/android/server/am/OnePlusProcessManager;->CONFIG_NAME:Ljava/lang/String;

    .line 344
    sput-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isChargeringCloseForzen:Z

    .line 345
    sput v1, Lcom/android/server/am/OnePlusProcessManager;->CFG_VERSOON:I

    .line 4391
    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    .line 4392
    const-string v0, ""

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mRegion:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 14
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 146
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 147
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBPMList:Ljava/util/List;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    .line 246
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    .line 247
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHandler:Landroid/os/Handler;

    .line 249
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    .line 250
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mCurrentFrontUid:I

    .line 268
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    .line 275
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->pm:Landroid/os/PowerManager;

    .line 276
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManager:Landroid/os/IPowerManager;

    .line 277
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    .line 291
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mImportantUids:Ljava/util/HashSet;

    .line 293
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    .line 295
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    .line 296
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    .line 297
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    .line 298
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    .line 301
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    .line 302
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    .line 307
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    .line 317
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    .line 322
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    .line 323
    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 330
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    .line 332
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerAdjust:Ljava/util/HashSet;

    .line 343
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    .line 346
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    .line 465
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusProcessManager$1;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidObserver:Landroid/app/IUidObserver;

    .line 866
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    .line 867
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    .line 868
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    iput-wide v3, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    .line 869
    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    iput-wide v3, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    .line 870
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    iput-wide v3, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_SLEEP:D

    .line 1388
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusProcessManager$2;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 1630
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$3;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusProcessManager$3;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1809
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$4;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusProcessManager$4;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 4397
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$6;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusProcessManager$6;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 349
    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "oem.background.control"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    .line 350
    const-string/jumbo v3, "persist.sys.cgroup.using"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->isUsing:Z

    .line 351
    const-string/jumbo v3, "persist.sys.alarmAdjust.using"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    .line 352
    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "fajitat"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    .line 353
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    .line 355
    :cond_113
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->isUsing:Z

    if-nez v3, :cond_119

    .line 356
    sput-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    .line 358
    :cond_119
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v3, :cond_136

    .line 359
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnePlusProcessManager isSuppoerted ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void

    .line 363
    :cond_136
    sput-object p1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 364
    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mContext:Landroid/content/Context;

    .line 366
    const-string v3, "OnePlusProcessManager"

    const-string v5, "OnePlusProcessManager VERSION = v15112601"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string/jumbo v3, "sys.cgroup.version"

    const-string/jumbo v5, "v15112601"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string/jumbo v3, "persist.sys.cgroup.debug"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 369
    const-string/jumbo v3, "persist.sys.cgroup.debugdetail"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 370
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    .line 371
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->registerSimReceiver()V

    .line 372
    new-instance v3, Landroid/os/HandlerThread;

    const-string v5, "OneplusProcessThread"

    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 373
    .local v3, "mOneplusThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 374
    new-instance v5, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    sput-object v5, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    .line 376
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    const/16 v6, 0x6f

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 377
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    const/16 v6, 0x70

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 380
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "SuspenPorcessThread"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 381
    .local v5, "mSuspendThread":Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 383
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "ResumeProcessThread"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 384
    .local v6, "mResumeThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 386
    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "GpsFreezeThread"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 387
    .local v7, "mGpsFreezeThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 389
    new-instance v8, Lcom/android/server/am/OnePlusProcessManager$gpsFreezeHandler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/am/OnePlusProcessManager$gpsFreezeHandler;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    .line 390
    new-instance v8, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    .line 391
    new-instance v8, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHandler:Landroid/os/Handler;

    .line 393
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->prepareBPMConfigFiles()V

    .line 394
    const-string/jumbo v8, "notification"

    .line 395
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 394
    invoke-static {v8}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v8

    sput-object v8, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    .line 396
    sget-object v8, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v9, "alarm"

    .line 397
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    sput-object v8, Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 398
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 399
    .local v8, "filter":Landroid/content/IntentFilter;
    new-instance v9, Landroid/content/Intent;

    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v9, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffIntent:Landroid/content/Intent;

    .line 400
    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string v9, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffIntent:Landroid/content/Intent;

    invoke-static {v9, v2, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    sput-object v9, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCheckIntent:Landroid/app/PendingIntent;

    .line 407
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 408
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    iput-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->pm:Landroid/os/PowerManager;

    .line 409
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->pm:Landroid/os/PowerManager;

    const-string v10, "frozenApp"

    invoke-virtual {v9, v4, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    .line 412
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11, v1, v0}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 414
    const-string v0, "deviceidle"

    .line 415
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 414
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 417
    new-instance v0, Landroid/content/IntentFilter;

    const-string v9, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, "whitelistFilter":Landroid/content/IntentFilter;
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->updatePowerSaveWhitelistLocked()V

    .line 422
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    sput-object v9, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 423
    const-string/jumbo v9, "location"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    check-cast v9, Lcom/android/server/LocationManagerService;

    sput-object v9, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    .line 424
    const-string/jumbo v9, "power"

    .line 425
    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 424
    invoke-static {v9}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerManager:Landroid/os/IPowerManager;

    .line 426
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "sensor"

    .line 427
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/SensorManager;

    iput-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 428
    new-instance v9, Lnet/oneplus/odm/insight/tracker/AppTracker;

    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 429
    const-string v9, "alarm"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    .line 430
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->initialOnlineConfig()V

    .line 431
    const-string/jumbo v9, "persist.sys.cgroup.charger"

    invoke-static {v9, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->isChargeringCloseForzen:Z

    .line 433
    new-instance v4, Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;

    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v9}, Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;-><init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mSettingsObserver:Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;

    .line 434
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    const-string v9, "doze_mode_policy"

    .line 435
    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusProcessManager;->mSettingsObserver:Lcom/android/server/am/OnePlusProcessManager$SettingsObserver;

    .line 434
    invoke-virtual {v4, v9, v2, v10, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 438
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OnePlusProcessManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .line 123
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusProcessManager;I)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->addSuspendDelayCount(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusProcessManager;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/OnePlusProcessManager;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/OnePlusProcessManager;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_SLEEP:D

    return-wide v0
.end method

.method static synthetic access$1400()Z
    .registers 1

    .line 123
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/OnePlusProcessManager;IJ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/OnePlusProcessManager;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->canFreezeGps(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800()Lcom/android/server/LocationManagerService;
    .registers 1

    .line 123
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/OnePlusProcessManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->startResumeUid(I)V

    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 123
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/am/OnePlusProcessManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->resumeRelateUid(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/am/OnePlusProcessManager;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    .line 123
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager;->mDataBpmDirFileObserver:Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300()I
    .registers 1

    .line 123
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Ljava/util/List;

    .line 123
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2500(IIZ)V
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 123
    invoke-static {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(IIZ)V

    return-void
.end method

.method static synthetic access$2600(II)V
    .registers 2
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 123
    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(II)V

    return-void
.end method

.method static synthetic access$2700()Lcom/android/server/am/OnePlusProcessManager;
    .registers 1

    .line 123
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/am/OnePlusProcessManager;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->computeUidTraffic(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/am/OnePlusProcessManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateForegroundActivityChange(I)V

    return-void
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 123
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatusing:Z

    return v0
.end method

.method static synthetic access$3000(IILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 123
    invoke-static {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->killBlockProcess(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/am/OnePlusProcessManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->removeTempWhiteList()V

    return-void
.end method

.method static synthetic access$3200()Landroid/app/PendingIntent;
    .registers 1

    .line 123
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCheckIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3300()Landroid/app/AlarmManager;
    .registers 1

    .line 123
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$3400()Ljava/lang/String;
    .registers 1

    .line 123
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->SCREEN_OFF_INTENT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/am/OnePlusProcessManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->handleAudioUid()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/am/OnePlusProcessManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->tryAddScreenOffTrafficUids()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/am/OnePlusProcessManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->hanleBlackSensor()V

    return-void
.end method

.method static synthetic access$3800()Z
    .registers 1

    .line 123
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isChargeringCloseForzen:Z

    return v0
.end method

.method static synthetic access$3900()Z
    .registers 1

    .line 123
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mResumeFirst:Z

    return v0
.end method

.method static synthetic access$3902(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 123
    sput-boolean p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeFirst:Z

    return p0
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 123
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mCharging:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/am/OnePlusProcessManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    iget v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mCurrentFrontUid:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/am/OnePlusProcessManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    iput p1, p0, Lcom/android/server/am/OnePlusProcessManager;->mCurrentFrontUid:I

    return p1
.end method

.method static synthetic access$402(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 123
    sput-boolean p0, Lcom/android/server/am/OnePlusProcessManager;->mCharging:Z

    return p0
.end method

.method static synthetic access$4100(Lcom/android/server/am/OnePlusProcessManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getCurrentFrontUid()I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/am/OnePlusProcessManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->startComputeUidTraffic(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/am/OnePlusProcessManager;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->scheduleChangeForGpsProcess(ZI)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/am/OnePlusProcessManager;ILjava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/am/OnePlusProcessManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->scheduleForegroundChangeMessage(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/am/OnePlusProcessManager;Lorg/json/JSONArray;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/am/OnePlusProcessManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->responseSIMStateChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusProcessManager;I)D
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->canSuspendUid(I)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusProcessManager;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 123
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/util/ArrayList;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getRelatedUids(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusProcessManager;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->startSuspendUid(I)Z

    move-result v0

    return v0
.end method

.method private add3rdAppProcessState(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 3012
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3013
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3014
    :try_start_9
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3015
    .local v1, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v1, :cond_1e

    .line 3016
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 3017
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3019
    :cond_1e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3020
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3021
    .end local v1    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-exit v0

    goto :goto_31

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_2e

    throw v1

    .line 3023
    :cond_31
    :goto_31
    return-void
.end method

.method private static addDozeWhiteList(Ljava/lang/String;)V
    .registers 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 2056
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v0, :cond_2d

    .line 2058
    :try_start_4
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1e

    .line 2059
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDozeWhiteList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :cond_1e
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p0}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_23} :catch_24

    goto :goto_2c

    .line 2061
    :catch_24
    move-exception v0

    .line 2062
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusProcessManager"

    const-string v2, "Falied to add package to doze whitelist"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2c
    goto :goto_34

    .line 2065
    :cond_2d
    const-string v0, "OnePlusProcessManager"

    const-string v1, "Cannot get DeviceIdleController"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    :goto_34
    return-void
.end method

.method private addLocationFailCount(I)Z
    .registers 8
    .param p1, "uid"    # I

    .line 1009
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1010
    :try_start_3
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1011
    .local v1, "count":Ljava/lang/Integer;
    const/4 v2, 0x1

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_35

    .line 1012
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 1015
    :cond_35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, v3

    .line 1016
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    :goto_47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_50

    .line 1019
    monitor-exit v0

    return v2

    .line 1021
    .end local v1    # "count":Ljava/lang/Integer;
    :cond_50
    monitor-exit v0

    .line 1022
    const/4 v0, 0x0

    return v0

    .line 1021
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw v1
.end method

.method static final addPidToCgroupTasksWithJudge(Lcom/android/server/am/ProcessRecord;I)V
    .registers 6
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "childPid"    # I

    .line 3566
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_5

    .line 3567
    return-void

    .line 3569
    :cond_5
    if-eqz p0, :cond_6b

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3570
    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-nez v0, :cond_6b

    .line 3573
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_6b

    .line 3574
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6b

    .line 3575
    if-lez p1, :cond_6b

    .line 3576
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/OnePlusProcessManager;->add3rdAppProcessState(II)V

    .line 3577
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6b

    .line 3578
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v2, "addPidToCgroupTasksWithJudge"

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    .line 3580
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3581
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x73

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3582
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3583
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3584
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3585
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3586
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3592
    .end local v0    # "msg":Landroid/os/Message;
    :cond_6b
    return-void
.end method

.method private addSuspendDelayCount(I)J
    .registers 8
    .param p1, "uid"    # I

    .line 991
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 992
    :try_start_3
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 993
    .local v1, "count":Ljava/lang/Integer;
    const/4 v2, 0x1

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_35

    .line 994
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 997
    :cond_35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, v3

    .line 998
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    :goto_47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_54

    .line 1001
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    .line 1003
    :cond_54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    mul-long/2addr v2, v4

    monitor-exit v0

    return-wide v2

    .line 1004
    .end local v1    # "count":Ljava/lang/Integer;
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method private addTempWhiteList(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 1776
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1778
    .local v0, "packageName":Ljava/lang/String;
    :try_start_4
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_20

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 1780
    invoke-interface {v1, v0}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1781
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1782
    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->addDozeWhiteList(Ljava/lang/String;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_20} :catch_21

    .line 1786
    :cond_20
    goto :goto_29

    .line 1784
    :catch_21
    move-exception v1

    .line 1785
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OnePlusProcessManager"

    const-string v3, "Falied to add package to doze whitelist"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_29
    return-void
.end method

.method private adjustSuspendMessage(ILjava/lang/String;J)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "why"    # Ljava/lang/String;
    .param p3, "delayTime"    # J

    .line 3632
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    if-eq v0, p1, :cond_10

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    .line 3633
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 3634
    :cond_10
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 3635
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustSuspendMessage message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " why = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    :cond_32
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    .line 3637
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v0

    .line 3638
    :try_start_38
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3639
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3640
    monitor-exit v0

    .line 3642
    :cond_4b
    return-void

    .line 3640
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_38 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method private canFreezeGps(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 1130
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GpsFreeze] canFreezeGps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1132
    :cond_32
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1134
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_49

    const-string v1, "OnePlusProcessManager"

    const-string v2, "[GpsFreeze] canFreezeGps return true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_49
    const/4 v1, 0x1

    return v1

    .line 1138
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_4b
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_56

    const-string v0, "OnePlusProcessManager"

    const-string v1, "[GpsFreeze] return false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_56
    const/4 v0, 0x0

    return v0
.end method

.method private canSuspendUid(I)D
    .registers 6
    .param p1, "uid"    # I

    .line 2597
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2598
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v0

    .line 2600
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2601
    :try_start_c
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2602
    .local v1, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_238

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_26

    goto/16 :goto_238

    .line 2605
    .end local v1    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_23c

    .line 2606
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2607
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check mFrontActivityUids fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v0

    .line 2610
    :cond_4c
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 2611
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkWhiteUid fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v0

    .line 2614
    :cond_6b
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkWhitePackageUid(I)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 2615
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkWhitePackageUid fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v0

    .line 2618
    :cond_8a
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_ae

    .line 2619
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkWhiteUid import top "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    return-wide v0

    .line 2622
    :cond_ae
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 2623
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check mFrontWindowTouchUids fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v0

    .line 2626
    :cond_d3
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->sInputMethodUid:I

    if-ne v0, p1, :cond_da

    .line 2627
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v0

    .line 2629
    :cond_da
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    add-int/lit16 v1, p1, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 2630
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "suspend hanlder already hasMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    return-wide v0

    .line 2633
    :cond_fe
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkActiveAudioUids(I)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 2634
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkActiveAudioUids fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v0

    .line 2637
    :cond_11d
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 2638
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkTrafficUid fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v0

    .line 2642
    :cond_142
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkActiveSensor(I)Z

    move-result v0

    if-eqz v0, :cond_188

    .line 2643
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkActiveSensor fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2645
    .local v0, "sensorPackage":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v1, :cond_185

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_185

    .line 2646
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_171
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2647
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, -0x2

    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 2648
    monitor-exit v1
    :try_end_17b
    .catchall {:try_start_171 .. :try_end_17b} :catchall_17f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_185

    :catchall_17f
    move-exception v2

    :try_start_180
    monitor-exit v1
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_17f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2650
    :cond_185
    :goto_185
    iget-wide v1, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_LONG:D

    return-wide v1

    .line 2653
    .end local v0    # "sensorPackage":Ljava/lang/String;
    :cond_188
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 2654
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check mAdjustUids fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    return-wide v0

    .line 2657
    :cond_1ad
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mImportantUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    .line 2658
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check mImportantUids fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    return-wide v0

    .line 2661
    :cond_1d2
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_220

    .line 2662
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2663
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_209

    .line 2664
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "skip suspend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " due to mGpsReceiverLocationUids"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    iget-wide v1, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    return-wide v1

    .line 2667
    :cond_209
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mGpsReceiverUids plan to suspend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_220
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_235

    .line 2670
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->addLocationFailCount(I)Z

    move-result v0

    if-nez v0, :cond_235

    .line 2671
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_DEFAULT:D

    return-wide v0

    .line 2681
    :cond_235
    iget-wide v0, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    return-wide v0

    .line 2603
    .restart local v1    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_238
    :goto_238
    :try_start_238
    iget-wide v2, p0, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_FAIL_NOTRY:D

    monitor-exit v0

    return-wide v2

    .line 2605
    .end local v1    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_23c
    move-exception v1

    monitor-exit v0
    :try_end_23e
    .catchall {:try_start_238 .. :try_end_23e} :catchall_23c

    throw v1
.end method

.method private cancelNotificationsForUid(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 2498
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/OnePlusProcessManager$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/OnePlusProcessManager$5;-><init>(Lcom/android/server/am/OnePlusProcessManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 2505
    return-void
.end method

.method public static cancelNotificationsWithPkg(Ljava/lang/String;I)V
    .registers 6
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 2508
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 2509
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelNotificationsWithPkg():pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    :cond_1a
    :try_start_1a
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    if-nez v0, :cond_1f

    .line 2512
    return-void

    .line 2514
    :cond_1f
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mNotification:Landroid/app/INotificationManager;

    invoke-interface {v0, p0, p1}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_24} :catch_25

    .line 2519
    goto :goto_3f

    .line 2516
    :catch_25
    move-exception v0

    .line 2517
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception---->cancelNotificationsWithPkg():pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2520
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3f
    return-void
.end method

.method private changeIntToList([I)Ljava/util/List;
    .registers 5
    .param p1, "elem"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1415
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_15

    .line 1416
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1415
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1418
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method private checkActiveAudioUids(I)Z
    .registers 9
    .param p1, "mUid"    # I

    .line 2330
    const/4 v0, 0x0

    .line 2331
    .local v0, "mTrackUids":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v0

    .line 2332
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_23

    .line 2333
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActiveAudioUid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    :cond_23
    const/4 v1, 0x0

    if-eqz v0, :cond_61

    .line 2336
    move v2, v1

    .local v2, "i":I
    :goto_27
    array-length v3, v0

    if-ge v2, v3, :cond_61

    .line 2337
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2338
    goto :goto_5e

    .line 2340
    :cond_33
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2345
    .local v3, "uid":I
    if-nez v3, :cond_40

    .line 2346
    return v1

    .line 2348
    :cond_40
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v4, :cond_5a

    .line 2349
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WakeLock owner uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    :cond_5a
    if-ne v3, p1, :cond_5e

    .line 2352
    const/4 v1, 0x1

    return v1

    .line 2336
    .end local v3    # "uid":I
    :cond_5e
    :goto_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 2356
    .end local v2    # "i":I
    :cond_61
    return v1
.end method

.method private checkActiveSensor(I)Z
    .registers 7
    .param p1, "mUid"    # I

    .line 2722
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0}, Landroid/hardware/SensorManager;->getActiveSensorList()Ljava/lang/String;

    move-result-object v0

    .line 2723
    .local v0, "activeSensor":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_20

    .line 2724
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkActiveSensor activeSensor= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    :cond_20
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2727
    .local v1, "mTrackUids":[Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_48

    .line 2728
    move v3, v2

    .local v3, "i":I
    :goto_28
    array-length v4, v1

    if-ge v3, v4, :cond_48

    .line 2729
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 2730
    goto :goto_45

    .line 2732
    :cond_34
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2733
    .local v4, "uid":I
    if-nez v4, :cond_41

    .line 2734
    return v2

    .line 2736
    :cond_41
    if-ne v4, p1, :cond_45

    .line 2737
    const/4 v2, 0x1

    return v2

    .line 2728
    .end local v4    # "uid":I
    :cond_45
    :goto_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 2741
    .end local v3    # "i":I
    :cond_48
    return v2
.end method

.method static final checkAppInLaunchingProviders(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3363
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_5

    .line 3364
    return-void

    .line 3366
    :cond_5
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_a

    .line 3367
    return-void

    .line 3369
    :cond_a
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " died but not restart......"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4f

    .line 3372
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3373
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 3374
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 3375
    .local v2, "cpr":Lcom/android/server/am/ContentProviderRecord;
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p0, v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    .line 3376
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    .line 3377
    iput-object v3, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 3378
    .end local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    goto :goto_33

    .line 3379
    :cond_4a
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 3382
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ContentProviderRecord;>;"
    :cond_4f
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3383
    .local v0, "NL":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_58
    if-ge v2, v0, :cond_78

    .line 3384
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .line 3385
    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p0, :cond_75

    .line 3386
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, p0, v3, v1}, Lcom/android/server/am/ActivityManagerService;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    .line 3387
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3383
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 3390
    .end local v2    # "i":I
    :cond_78
    return-void
.end method

.method static final checkBroadcast(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .registers 6
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3731
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 3732
    return v1

    .line 3734
    :cond_6
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_b

    .line 3735
    return v1

    .line 3737
    :cond_b
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_10

    .line 3738
    return v1

    .line 3741
    :cond_10
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-boolean v2, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-direct {v0, p1, p2, v2}, Lcom/android/server/am/OnePlusProcessManager;->skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3742
    return v1

    .line 3744
    :cond_1b
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_6b

    .line 3745
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BPM skip broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is ordered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    :cond_6b
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3749
    const/4 v0, 0x0

    return v0
.end method

.method static final checkBroadcastIsPackageCanStart(Lcom/android/server/am/BroadcastQueue;Landroid/content/pm/ResolveInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .registers 13
    .param p0, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 3786
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3787
    return v1

    .line 3789
    :cond_6
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_b

    .line 3790
    return v1

    .line 3792
    :cond_b
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_10

    .line 3793
    return v1

    .line 3795
    :cond_10
    if-eqz p1, :cond_9d

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_18

    goto/16 :goto_9d

    .line 3798
    :cond_18
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3799
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1f

    .line 3800
    return v1

    .line 3802
    :cond_1f
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_26

    .line 3803
    return v1

    .line 3805
    :cond_26
    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_35

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-nez v2, :cond_35

    .line 3806
    return v1

    .line 3808
    :cond_35
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v2, v0, p2}, Lcom/android/server/am/OnePlusProcessManager;->checkBroadcastIsPackageNotCanStartImpl(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 3809
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_89

    .line 3810
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not want to launch app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " callUid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callPid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3814
    :cond_89
    iget v5, p2, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v6, p2, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v8, p2, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 3816
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 3817
    const/4 v1, 0x1

    return v1

    .line 3819
    :cond_9c
    return v1

    .line 3796
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_9d
    :goto_9d
    return v1
.end method

.method private checkBroadcastIsPackageNotCanStartImpl(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .registers 9
    .param p1, "appinfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .line 3824
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3825
    .local v0, "broadcastAction":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3826
    .local v1, "isCheckBroadcast":Z
    const/4 v2, 0x0

    if-nez v0, :cond_b

    .line 3827
    return v2

    .line 3829
    :cond_b
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3830
    .local v4, "action":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 3831
    const/4 v1, 0x1

    .line 3832
    goto :goto_26

    .line 3834
    .end local v4    # "action":Ljava/lang/String;
    :cond_25
    goto :goto_11

    .line 3835
    :cond_26
    :goto_26
    if-eqz v1, :cond_58

    .line 3836
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 3837
    return v2

    .line 3839
    :cond_31
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusProcessManager;->checkWhitePackageUid(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 3840
    return v2

    .line 3842
    :cond_3a
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3843
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 3844
    const/4 v2, 0x1

    return v2

    .line 3847
    :cond_58
    return v2
.end method

.method static final checkProcessCanRestart(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3330
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 3331
    return v1

    .line 3333
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v0, :cond_b

    .line 3334
    return v1

    .line 3336
    :cond_b
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_16

    .line 3337
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessCanRestartImpl(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0

    .line 3339
    :cond_16
    return v1
.end method

.method private checkProcessCanRestartImpl(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3343
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 3344
    return v1

    .line 3346
    :cond_6
    if-nez p1, :cond_9

    .line 3347
    return v1

    .line 3349
    :cond_9
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v2, 0xc8

    if-gt v0, v2, :cond_10

    .line 3350
    return v1

    .line 3352
    :cond_10
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-eqz v0, :cond_19

    .line 3353
    return v1

    .line 3356
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method private checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3396
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3397
    return v0

    .line 3399
    :cond_4
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v2, 0x2710

    const/4 v3, 0x1

    if-ge v1, v2, :cond_26

    .line 3400
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_25

    .line 3401
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " app.uid < Process.FIRST_APPLICATION_UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    :cond_25
    return v3

    .line 3405
    :cond_26
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 3406
    return v3

    .line 3408
    :cond_2d
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 3409
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_40

    .line 3410
    const-string v0, "OnePlusProcessManager"

    const-string v1, "checkProcessRecord ->#return true, it\'s white app "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    :cond_40
    return v3

    .line 3414
    :cond_41
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    monitor-enter v1

    .line 3415
    :try_start_44
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3416
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->isInclude(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 3417
    monitor-exit v1

    return v3

    .line 3419
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_62
    goto :goto_4a

    .line 3420
    :cond_63
    monitor-exit v1

    .line 3421
    return v0

    .line 3420
    :catchall_65
    move-exception v0

    monitor-exit v1
    :try_end_67
    .catchall {:try_start_44 .. :try_end_67} :catchall_65

    throw v0
.end method

.method static final checkProcessWhileBroadcastTimeout(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 3700
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3701
    return v1

    .line 3703
    :cond_6
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_b

    .line 3704
    return v1

    .line 3706
    :cond_b
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_10

    .line 3707
    return v1

    .line 3709
    :cond_10
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_2a

    .line 3710
    const-string v0, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkProcessWhileBroadcastTimeout(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    :cond_2a
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v3, "checkProcessWhileBroadcastTimeout "

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3713
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_50

    .line 3714
    const-string v0, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkProcessWhileBroadcastTimeout(): and resumeUid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    :cond_50
    return v1

    .line 3720
    :cond_51
    return v1
.end method

.method static final checkProcessWhileTimeout(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 3672
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3673
    return v1

    .line 3675
    :cond_6
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_b

    .line 3676
    return v1

    .line 3678
    :cond_b
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_10

    .line 3679
    return v1

    .line 3681
    :cond_10
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_2a

    .line 3682
    const-string v0, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkProcessWhileTimeout(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    :cond_2a
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v3, "checkProcessWhileTimeout"

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3685
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_50

    .line 3686
    const-string v0, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkProcessWhileTimeout(): and resumeUid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    :cond_50
    return v1

    .line 3693
    :cond_51
    return v1
.end method

.method public static checkTimeoutBegin(III)V
    .registers 5
    .param p0, "key"    # I
    .param p1, "timeoutUid"    # I
    .param p2, "timeoutPid"    # I

    .line 4467
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_5

    .line 4468
    return-void

    .line 4470
    :cond_5
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_a

    .line 4471
    return-void

    .line 4473
    :cond_a
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_f

    .line 4474
    return-void

    .line 4477
    :cond_f
    const/16 v0, 0x2328

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x238c

    if-eq p0, v0, :cond_50

    const/16 v0, 0x23f0

    if-eq p0, v0, :cond_46

    const/16 v0, 0x2454

    if-eq p0, v0, :cond_3c

    const/16 v0, 0x24b8

    if-eq p0, v0, :cond_32

    const/16 v0, 0x251c

    if-eq p0, v0, :cond_28

    goto :goto_64

    .line 4499
    :cond_28
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4500
    .local v0, "msg":Landroid/os/Message;
    invoke-static {v0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->sendTimeOutMmgDelayed(Landroid/os/Message;II)V

    .line 4501
    goto :goto_64

    .line 4495
    .end local v0    # "msg":Landroid/os/Message;
    :cond_32
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4496
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-static {v0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->sendTimeOutMmgDelayed(Landroid/os/Message;II)V

    .line 4497
    goto :goto_64

    .line 4491
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3c
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4492
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-static {v0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->sendTimeOutMmgDelayed(Landroid/os/Message;II)V

    .line 4493
    goto :goto_64

    .line 4487
    .end local v0    # "msg":Landroid/os/Message;
    :cond_46
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4488
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-static {v0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->sendTimeOutMmgDelayed(Landroid/os/Message;II)V

    .line 4489
    goto :goto_64

    .line 4483
    .end local v0    # "msg":Landroid/os/Message;
    :cond_50
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4484
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-static {v0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->sendTimeOutMmgDelayed(Landroid/os/Message;II)V

    .line 4485
    goto :goto_64

    .line 4479
    .end local v0    # "msg":Landroid/os/Message;
    :cond_5a
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4480
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-static {v0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->sendTimeOutMmgDelayed(Landroid/os/Message;II)V

    .line 4481
    nop

    .line 4505
    .end local v0    # "msg":Landroid/os/Message;
    :goto_64
    return-void
.end method

.method public static checkTimeoutEnd(I)V
    .registers 3
    .param p0, "key"    # I

    .line 4523
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_5

    .line 4524
    return-void

    .line 4526
    :cond_5
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_a

    .line 4527
    return-void

    .line 4529
    :cond_a
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_f

    .line 4530
    return-void

    .line 4532
    :cond_f
    const/16 v0, 0x2328

    if-eq p0, v0, :cond_46

    const/16 v0, 0x238c

    if-eq p0, v0, :cond_40

    const/16 v0, 0x23f0

    if-eq p0, v0, :cond_3a

    const/16 v0, 0x2454

    if-eq p0, v0, :cond_34

    const/16 v0, 0x24b8

    if-eq p0, v0, :cond_2e

    const/16 v0, 0x251c

    if-eq p0, v0, :cond_28

    goto :goto_4c

    .line 4549
    :cond_28
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4550
    goto :goto_4c

    .line 4546
    :cond_2e
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4547
    goto :goto_4c

    .line 4543
    :cond_34
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4544
    goto :goto_4c

    .line 4540
    :cond_3a
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4541
    goto :goto_4c

    .line 4537
    :cond_40
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4538
    goto :goto_4c

    .line 4534
    :cond_46
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4535
    nop

    .line 4554
    :goto_4c
    return-void
.end method

.method private checkVersion()Z
    .registers 10

    .line 2523
    const-string v0, "/data/data_bpm/version.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2524
    .local v0, "dataCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "/system/bpm/version.xml"

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 2529
    .local v1, "sysCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 2530
    .local v2, "sv":I
    const/4 v3, 0x0

    .line 2531
    .local v3, "dv":I
    const/4 v4, 0x0

    if-nez v1, :cond_13

    .line 2532
    const/4 v2, 0x0

    .line 2533
    return v4

    .line 2535
    :cond_13
    const-string/jumbo v5, "version"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2536
    .local v5, "sysVersion":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2538
    if-nez v0, :cond_28

    .line 2539
    const/4 v3, 0x0

    goto :goto_39

    .line 2541
    :cond_28
    const-string/jumbo v6, "version"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2542
    .local v6, "dataVersion":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2544
    .end local v6    # "dataVersion":Ljava/lang/String;
    :goto_39
    const-string v6, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkVersion  sv="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " dv ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    if-le v2, v3, :cond_5b

    .line 2546
    const/4 v4, 0x1

    return v4

    .line 2548
    :cond_5b
    return v4
.end method

.method private checkWhitePackageUid(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 2411
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2412
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    monitor-enter v1

    .line 2413
    const/4 v2, 0x1

    if-eqz v0, :cond_16

    :try_start_a
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2414
    monitor-exit v1

    return v2

    .line 2416
    :catchall_14
    move-exception v2

    goto :goto_24

    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_14

    .line 2417
    if-eqz v0, :cond_22

    const-string v1, "com.cttl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2418
    return v2

    .line 2420
    :cond_22
    const/4 v1, 0x0

    return v1

    .line 2416
    :goto_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_14

    throw v2
.end method

.method private checkWhiteUid(I)Z
    .registers 9
    .param p1, "uid"    # I

    .line 2392
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2393
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, ""

    .line 2394
    .local v1, "whitePackage":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mWhiteLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2395
    :try_start_9
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    const/4 v4, 0x0

    if-eqz v3, :cond_3d

    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    array-length v3, v3
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_3f

    if-eqz v3, :cond_3d

    .line 2396
    move-object v3, v1

    move v1, v4

    .local v1, "i":I
    .local v3, "whitePackage":Ljava/lang/String;
    :goto_15
    :try_start_15
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    array-length v5, v5

    if-ge v1, v5, :cond_3c

    .line 2397
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    aget v5, v5, v1

    invoke-direct {p0, v5}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 2398
    if-eqz v3, :cond_39

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 2399
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_36

    .line 2400
    const-string v4, "OnePlusProcessManager"

    const-string v5, "checkWhiteUid ->#return true, it\'s white app "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    :cond_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_45

    const/4 v2, 0x1

    return v2

    .line 2396
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 2405
    .end local v1    # "i":I
    :cond_3c
    move-object v1, v3

    .end local v3    # "whitePackage":Ljava/lang/String;
    .local v1, "whitePackage":Ljava/lang/String;
    :cond_3d
    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3f

    return v4

    .line 2406
    :catchall_3f
    move-exception v3

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    .end local v1    # "whitePackage":Ljava/lang/String;
    .restart local v3    # "whitePackage":Ljava/lang/String;
    :goto_43
    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_45

    throw v1

    :catchall_45
    move-exception v1

    goto :goto_43
.end method

.method private computeUidTraffic(I)I
    .registers 16
    .param p1, "uid"    # I

    .line 1951
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1952
    const/4 v1, 0x1

    .line 1953
    .local v1, "checkAgain":Z
    :try_start_4
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1954
    .local v2, "count":Ljava/lang/Integer;
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_2a

    .line 1955
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeUidTraffic begin uid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    :cond_2a
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_12a

    .line 1957
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkTrafficUid(I)Z

    move-result v3

    move v1, v3

    .line 1958
    if-eqz v1, :cond_bd

    .line 1959
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1960
    .local v8, "now":J
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$Traffic;

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    .line 1961
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v12

    move-object v6, v3

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/android/server/am/OnePlusProcessManager$Traffic;-><init>(Lcom/android/server/am/OnePlusProcessManager;JJJ)V

    .line 1962
    .local v3, "traffic":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1963
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1965
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1966
    sget-boolean v6, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v6, :cond_7d

    .line 1967
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->addTempWhiteList(I)V

    .line 1969
    :cond_7d
    if-eqz v2, :cond_a1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_a1

    .line 1970
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1971
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v2, v5

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    :cond_a1
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_bb

    .line 1974
    const-string v5, "OnePlusProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "computeUidTraffic uid ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    .end local v3    # "traffic":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    .end local v8    # "now":J
    :cond_bb
    goto/16 :goto_161

    .line 1976
    :cond_bd
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_d7

    .line 1977
    const-string v3, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeUidTraffic not check  uid ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    :cond_d7
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1980
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v3, :cond_116

    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_116

    .line 1982
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 1983
    .local v3, "packageName":Ljava/lang/String;
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_116

    .line 1984
    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->removeDozeWhiteList(Ljava/lang/String;)V

    .line 1985
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1988
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_116
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v3, :cond_124

    .line 1989
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v5, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    invoke-direct {v3, p1, v5, v6}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    .line 1991
    :cond_124
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v2, v3

    goto :goto_161

    .line 1994
    :cond_12a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1995
    .restart local v8    # "now":J
    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$Traffic;

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    .line 1996
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v12

    move-object v6, v3

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/android/server/am/OnePlusProcessManager$Traffic;-><init>(Lcom/android/server/am/OnePlusProcessManager;JJJ)V

    .line 1997
    .local v3, "traffic":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1998
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v2, v6

    .line 2000
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2002
    .end local v3    # "traffic":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    .end local v8    # "now":J
    :goto_161
    if-nez v2, :cond_168

    .line 2003
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v2, v3

    .line 2005
    :cond_168
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    monitor-exit v0

    return v3

    .line 2006
    .end local v1    # "checkAgain":Z
    .end local v2    # "count":Ljava/lang/Integer;
    :catchall_16e
    move-exception v1

    monitor-exit v0
    :try_end_170
    .catchall {:try_start_4 .. :try_end_170} :catchall_16e

    throw v1
.end method

.method public static continueSuspendUid(I)V
    .registers 4
    .param p0, "uid"    # I

    .line 2189
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_5

    .line 2190
    return-void

    .line 2192
    :cond_5
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_a

    .line 2193
    return-void

    .line 2195
    :cond_a
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_f

    .line 2196
    return-void

    .line 2198
    :cond_f
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2199
    return-void

    .line 2201
    :cond_16
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 2202
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_48

    .line 2203
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "continueSuspendUid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    :cond_48
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    if-eq v0, p0, :cond_5c

    .line 2205
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    add-int/lit16 v1, p0, -0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2207
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    .line 2210
    :cond_5c
    return-void
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "fromFile"    # Ljava/lang/String;
    .param p2, "toFile"    # Ljava/lang/String;
    .param p3, "isForceUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4091
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4092
    .local v0, "targetFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez p3, :cond_e

    .line 4093
    return-void

    .line 4095
    :cond_e
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyFile():fromFile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", toFile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4097
    .local v1, "sourceFile":Ljava/io/File;
    invoke-static {v1, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 4098
    return-void
.end method

.method private getActiveAudioUids()[Ljava/lang/String;
    .registers 5

    .line 2440
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_12

    .line 2441
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    .line 2442
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    .line 2444
    :cond_12
    const-string v0, ""

    .line 2445
    .local v0, "uids":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_22

    .line 2447
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 2449
    :cond_22
    const-string v0, ":0"

    .line 2451
    :goto_24
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_3e

    .line 2452
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveAudioPids():pids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    :cond_3e
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getBPMEnable_out()Z
    .registers 2

    .line 2977
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_d

    .line 2978
    const-string v0, "OnePlusProcessManager"

    const-string v1, "Fatal: mOnePlusProcessManager = null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    const/4 v0, 0x0

    return v0

    .line 2981
    :cond_d
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusProcessManager;->getBPMEnable()Z

    move-result v0

    return v0
.end method

.method private getCurrentFrontUid()I
    .registers 6

    .line 1068
    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1070
    .local v1, "a":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_4a

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_4a

    .line 1071
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v2, :cond_45

    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GpsFreeze] pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |processName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_45
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_49} :catch_4c

    return v2

    .line 1080
    .end local v1    # "a":Lcom/android/server/am/ActivityRecord;
    :cond_4a
    nop

    .line 1081
    return v0

    .line 1076
    :catch_4c
    move-exception v1

    .line 1078
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v2, :cond_58

    const-string v2, "OnePlusProcessManager"

    const-string v3, "getCurrentFrontUid error, return -1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_58
    return v0
.end method

.method public static final getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusProcessManager;
    .registers 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 2181
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_b

    .line 2182
    new-instance v0, Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    .line 2184
    :cond_b
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    return-object v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 8
    .param p1, "uid"    # I

    .line 2033
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2034
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_17

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 2035
    return-object v0

    .line 2037
    :cond_17
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_43

    .line 2038
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2039
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_43

    .line 2040
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_25
    array-length v4, v1

    if-ge v3, v4, :cond_43

    .line 2042
    :try_start_28
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2043
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_3b

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3b

    .line 2044
    aget-object v2, v1, v3
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_3a} :catch_3f

    return-object v2

    .line 2048
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_3b
    nop

    .line 2040
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 2046
    :catch_3f
    move-exception v2

    .line 2047
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, ""

    return-object v4

    .line 2052
    .end local v1    # "packages":[Ljava/lang/String;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "i":I
    :cond_43
    const-string v1, ""

    return-object v1
.end method

.method private getProcessForUid(I)Ljava/util/ArrayList;
    .registers 11
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 3535
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLockProcess:Ljava/lang/Object;

    monitor-enter v0

    .line 3536
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3539
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 3540
    .local v2, "mUidPidClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3541
    .local v3, "mPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_68

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_25

    goto :goto_68

    .line 3544
    :cond_25
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3545
    .local v4, "mPidListClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 3546
    .local v5, "mProcessClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_6a

    .line 3547
    :try_start_35
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v7

    move-object v5, v7

    .line 3548
    monitor-exit v6
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_65

    .line 3549
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_40
    :try_start_40
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_6a

    if-ge v6, v7, :cond_63

    .line 3551
    :try_start_46
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4c} :catch_61
    .catchall {:try_start_46 .. :try_end_4c} :catchall_6a

    .line 3554
    .local v7, "pid":Ljava/lang/Integer;
    nop

    .line 3553
    nop

    .line 3555
    if-nez v7, :cond_51

    .line 3556
    goto :goto_5e

    .line 3557
    :cond_51
    :try_start_51
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 3558
    .local v8, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3549
    .end local v8    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_5e
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 3552
    .end local v7    # "pid":Ljava/lang/Integer;
    :catch_61
    move-exception v7

    .line 3553
    .local v7, "e":Ljava/lang/Exception;
    nop

    .line 3560
    .end local v6    # "i":I
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_51 .. :try_end_64} :catchall_6a

    return-object v1

    .line 3548
    :catchall_65
    move-exception v7

    :try_start_66
    monitor-exit v6
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    :try_start_67
    throw v7

    .line 3542
    .end local v4    # "mPidListClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "mProcessClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :cond_68
    :goto_68
    monitor-exit v0

    return-object v1

    .line 3561
    .end local v1    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v2    # "mUidPidClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v3    # "mPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method private getRelatedUids(I)Ljava/util/ArrayList;
    .registers 21
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2802
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OnePlusProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 2803
    .local v2, "mSuspendProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 2805
    .local v3, "mUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    if-eqz v2, :cond_18c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_18c

    .line 2809
    :cond_17
    const/4 v0, 0x0

    .line 2809
    .local v0, "k":I
    :goto_18
    move v6, v0

    .line 2809
    .end local v0    # "k":I
    .local v6, "k":I
    :try_start_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_16e

    .line 2810
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v7, v0

    .line 2811
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v7, :cond_2f

    .line 2812
    nop

    .line 2809
    move/from16 v8, p1

    move/from16 v17, v6

    goto/16 :goto_168

    .line 2815
    :cond_2f
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    if-lez v0, :cond_54

    .line 2816
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_51

    .line 2817
    const-string v0, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skip suspend due to requesting perm uid ="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_44} :catch_171

    move/from16 v8, p1

    :try_start_46
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 2819
    :cond_51
    move/from16 v8, p1

    :goto_53
    return-object v4

    .line 2821
    :cond_54
    move/from16 v8, p1

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    if-eqz v0, :cond_f5

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_f5

    .line 2822
    const/4 v0, 0x0

    .line 2823
    .local v0, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v9, v7, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2823
    .local v9, "it":Ljava/util/Iterator;
    :goto_69
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_6d} :catch_16c

    if-eqz v10, :cond_f5

    .line 2824
    const/4 v10, 0x0

    .line 2826
    .end local v0    # "sr":Lcom/android/server/am/ServiceRecord;
    .local v10, "sr":Lcom/android/server/am/ServiceRecord;
    :try_start_70
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_76} :catch_f1

    .line 2829
    .end local v10    # "sr":Lcom/android/server/am/ServiceRecord;
    .restart local v0    # "sr":Lcom/android/server/am/ServiceRecord;
    nop

    .line 2830
    if-eqz v0, :cond_eb

    :try_start_79
    iget-object v10, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    if-eqz v10, :cond_eb

    .line 2831
    const/4 v10, 0x0

    .line 2831
    .local v10, "conni":I
    :goto_7e
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v10, v11, :cond_eb

    .line 2832
    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 2833
    .local v11, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v12, 0x0

    .line 2833
    .local v12, "i":I
    :goto_8f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_e6

    .line 2834
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ConnectionRecord;

    .line 2835
    .local v13, "crd":Lcom/android/server/am/ConnectionRecord;
    if-eqz v13, :cond_df

    iget-object v14, v13, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v14, :cond_df

    iget v14, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v15, v13, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v15, v15, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v15, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v14, v15, :cond_df

    .line 2837
    iget-object v14, v13, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v14, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v14, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2838
    .local v14, "mUid":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Lcom/android/server/am/OnePlusProcessManager;->isUidSuspended(I)Z

    move-result v15

    if-eqz v15, :cond_c3

    .line 2839
    nop

    .line 2833
    move/from16 v17, v6

    goto :goto_e1

    .line 2841
    :cond_c3
    invoke-direct {v1, v14}, Lcom/android/server/am/OnePlusProcessManager;->canSuspendUid(I)D

    move-result-wide v15

    move/from16 v17, v6

    iget-wide v5, v1, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    .line 2841
    .end local v6    # "k":I
    .local v17, "k":I
    cmpl-double v5, v15, v5

    if-nez v5, :cond_de

    .line 2842
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2843
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e1

    .line 2845
    :cond_de
    return-object v4

    .line 2833
    .end local v13    # "crd":Lcom/android/server/am/ConnectionRecord;
    .end local v14    # "mUid":I
    .end local v17    # "k":I
    .restart local v6    # "k":I
    :cond_df
    move/from16 v17, v6

    .line 2833
    .end local v6    # "k":I
    .restart local v17    # "k":I
    :goto_e1
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v17

    goto :goto_8f

    .line 2831
    .end local v11    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v12    # "i":I
    .end local v17    # "k":I
    .restart local v6    # "k":I
    :cond_e6
    move/from16 v17, v6

    .line 2831
    .end local v6    # "k":I
    .restart local v17    # "k":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_7e

    .line 2823
    .end local v10    # "conni":I
    .end local v17    # "k":I
    .restart local v6    # "k":I
    :cond_eb
    move/from16 v17, v6

    .line 2823
    .end local v6    # "k":I
    .restart local v17    # "k":I
    move/from16 v6, v17

    goto/16 :goto_69

    .line 2827
    .end local v0    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v17    # "k":I
    .restart local v6    # "k":I
    .local v10, "sr":Lcom/android/server/am/ServiceRecord;
    :catch_f1
    move-exception v0

    move/from16 v17, v6

    .line 2828
    .end local v6    # "k":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "k":I
    goto :goto_f7

    .line 2854
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v10    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v17    # "k":I
    .restart local v6    # "k":I
    :cond_f5
    move/from16 v17, v6

    .line 2854
    .end local v6    # "k":I
    .restart local v17    # "k":I
    :goto_f7
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    if-eqz v0, :cond_168

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_168

    .line 2855
    const/4 v0, 0x0

    .line 2855
    .local v0, "conni":I
    :goto_104
    move v5, v0

    .line 2855
    .end local v0    # "conni":I
    .local v5, "conni":I
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v5, v0, :cond_168

    .line 2856
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    move-object v6, v0

    .line 2857
    .local v6, "c":Lcom/android/server/am/ContentProviderRecord;
    const/4 v0, 0x0

    .line 2858
    .local v0, "sr":Lcom/android/server/am/ContentProviderConnection;
    iget-object v9, v6, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v0

    .line 2858
    .end local v0    # "sr":Lcom/android/server/am/ContentProviderConnection;
    .restart local v9    # "it":Ljava/util/Iterator;
    .local v10, "sr":Lcom/android/server/am/ContentProviderConnection;
    :cond_11e
    :goto_11e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_122} :catch_16c

    if-eqz v0, :cond_165

    .line 2860
    :try_start_124
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_12a} :catch_163

    move-object v10, v0

    .line 2863
    nop

    .line 2864
    if-eqz v10, :cond_11e

    :try_start_12e
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v11, v10, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v11, v11, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v0, v11, :cond_11e

    .line 2865
    iget-object v0, v10, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2866
    .local v0, "mUid":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lcom/android/server/am/OnePlusProcessManager;->isUidSuspended(I)Z

    move-result v11

    if-eqz v11, :cond_149

    .line 2867
    goto :goto_11e

    .line 2869
    :cond_149
    invoke-direct {v1, v0}, Lcom/android/server/am/OnePlusProcessManager;->canSuspendUid(I)D

    move-result-wide v11

    iget-wide v13, v1, Lcom/android/server/am/OnePlusProcessManager;->SUSPEND_OK:D

    cmpl-double v11, v11, v13

    if-nez v11, :cond_162

    .line 2870
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2871
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_161} :catch_16c

    goto :goto_11e

    .line 2873
    :cond_162
    return-object v4

    .line 2861
    .end local v0    # "mUid":I
    :catch_163
    move-exception v0

    .line 2862
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 2855
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "c":Lcom/android/server/am/ContentProviderRecord;
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v10    # "sr":Lcom/android/server/am/ContentProviderConnection;
    :cond_165
    add-int/lit8 v0, v5, 0x1

    .line 2855
    .end local v5    # "conni":I
    .local v0, "conni":I
    goto :goto_104

    .line 2809
    .end local v0    # "conni":I
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_168
    :goto_168
    add-int/lit8 v0, v17, 0x1

    .line 2809
    .end local v17    # "k":I
    .local v0, "k":I
    goto/16 :goto_18

    .line 2880
    .end local v0    # "k":I
    :catch_16c
    move-exception v0

    goto :goto_174

    .line 2883
    :cond_16e
    move/from16 v8, p1

    goto :goto_18b

    .line 2880
    :catch_171
    move-exception v0

    move/from16 v8, p1

    .line 2882
    .local v0, "e":Ljava/lang/Exception;
    :goto_174
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "whoops, exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18b
    return-object v3

    .line 2806
    :cond_18c
    :goto_18c
    move/from16 v8, p1

    return-object v4
.end method

.method public static getScreenState()Z
    .registers 2

    .line 3178
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3179
    :try_start_3
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    monitor-exit v0

    return v1

    .line 3180
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getSilent_AudioUids()[Ljava/lang/String;
    .registers 5

    .line 2457
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_12

    .line 2458
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    .line 2459
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    .line 2461
    :cond_12
    const-string v0, ""

    .line 2462
    .local v0, "uids":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_22

    .line 2464
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "get_silent_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 2466
    :cond_22
    const-string v0, ":0"

    .line 2468
    :goto_24
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_3e

    .line 2469
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSilent_AudioUids():pids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    :cond_3e
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTrafficeWhiteUids()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1791
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isUsing:Z

    if-eqz v0, :cond_7

    .line 1792
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    return-object v0

    .line 1794
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleAudioUid()V
    .registers 11

    .line 1702
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getSilent_AudioUids()[Ljava/lang/String;

    move-result-object v0

    .line 1703
    .local v0, "silentUids":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v1

    .line 1705
    .local v1, "activeUids":[Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_28

    .line 1706
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_28
    const/4 v2, 0x0

    if-eqz v0, :cond_9f

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_9f

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    .line 1709
    invoke-virtual {v3}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9f

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9f

    .line 1710
    move v3, v2

    .local v3, "i":I
    :goto_42
    array-length v4, v0

    if-ge v3, v4, :cond_9f

    .line 1711
    aget-object v4, v0, v3

    if-eqz v4, :cond_9c

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1712
    goto :goto_9c

    .line 1714
    :cond_52
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1715
    .local v4, "silentUid":I
    const/16 v5, 0x2710

    if-lt v4, v5, :cond_9c

    .line 1716
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->checkWhiteUid(I)Z

    move-result v5

    if-nez v5, :cond_9c

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->checkWhitePackageUid(I)Z

    move-result v5

    if-nez v5, :cond_9c

    .line 1717
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 1718
    .local v5, "packageName":Ljava/lang/String;
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_73
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1719
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "forceStopPackage: silentPackage="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v5, v2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 1721
    monitor-exit v6
    :try_end_92
    .catchall {:try_start_73 .. :try_end_92} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_9c

    :catchall_96
    move-exception v2

    :try_start_97
    monitor-exit v6
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 1710
    .end local v4    # "silentUid":I
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_9c
    :goto_9c
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 1725
    .end local v3    # "i":I
    :cond_9f
    if-eqz v1, :cond_f4

    .line 1726
    move v3, v2

    .local v3, "j":I
    :goto_a2
    array-length v4, v1

    if-ge v3, v4, :cond_f4

    .line 1727
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 1728
    goto :goto_f1

    .line 1730
    :cond_ae
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1731
    .local v4, "activeUid":I
    const/4 v5, 0x0

    .line 1732
    .local v5, "mFind":Z
    if-eqz v0, :cond_dd

    .line 1733
    move v6, v2

    .local v6, "k":I
    :goto_bc
    array-length v7, v0

    if-ge v6, v7, :cond_dd

    .line 1734
    aget-object v7, v0, v6

    if-eqz v7, :cond_da

    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_cc

    .line 1735
    goto :goto_da

    .line 1737
    :cond_cc
    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1738
    .local v7, "silentUid":I
    if-ne v7, v4, :cond_da

    .line 1739
    const/4 v5, 0x1

    .line 1740
    goto :goto_dd

    .line 1733
    .end local v7    # "silentUid":I
    :cond_da
    :goto_da
    add-int/lit8 v6, v6, 0x1

    goto :goto_bc

    .line 1744
    .end local v6    # "k":I
    :cond_dd
    :goto_dd
    if-nez v5, :cond_f1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->isMusicPlaying()Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 1745
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->addTempWhiteList(I)V

    .line 1746
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1726
    .end local v4    # "activeUid":I
    .end local v5    # "mFind":Z
    :cond_f1
    :goto_f1
    add-int/lit8 v3, v3, 0x1

    goto :goto_a2

    .line 1750
    .end local v3    # "j":I
    :cond_f4
    return-void
.end method

.method private handlePackageChange(Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1424
    .local p1, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1425
    .local v0, "mAddPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1427
    .local v1, "mRemovePkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    move v3, v2

    .line 1427
    .local v3, "i":I
    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_24

    .line 1428
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1429
    .local v4, "pkg":Ljava/lang/Integer;
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 1430
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1427
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1433
    .end local v3    # "i":I
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_24
    move v3, v2

    .line 1433
    .restart local v3    # "i":I
    :goto_25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3d

    .line 1434
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1435
    .restart local v4    # "pkg":Ljava/lang/Integer;
    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 1436
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1433
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1439
    .end local v3    # "i":I
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_3d
    move v3, v2

    .line 1439
    .local v3, "j":I
    :goto_3e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_57

    .line 1440
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1441
    .restart local v4    # "pkg":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v6, "handlePackageChange"

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 1439
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 1443
    .end local v3    # "j":I
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_57
    nop

    .line 1443
    .local v2, "j":I
    :goto_58
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_70

    .line 1444
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1445
    .local v3, "pkg":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-wide v5, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    .line 1443
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 1447
    .end local v2    # "j":I
    .end local v3    # "pkg":Ljava/lang/Integer;
    :cond_70
    return-void
.end method

.method private handlePackageForPackageChange(Ljava/util/List;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1452
    .local p1, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1453
    .local v0, "mAddPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1455
    .local v1, "mRemovePkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move v3, v2

    .line 1455
    .local v3, "i":I
    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_24

    .line 1456
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1457
    .local v4, "pkg":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 1458
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1455
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1461
    .end local v3    # "i":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_24
    move v3, v2

    .line 1461
    .restart local v3    # "i":I
    :goto_25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3d

    .line 1462
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1463
    .restart local v4    # "pkg":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 1464
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1461
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1467
    .end local v3    # "i":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_3d
    move v3, v2

    .line 1467
    .local v3, "j":I
    :goto_3e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_5e

    .line 1468
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1471
    .restart local v4    # "pkg":Ljava/lang/String;
    :try_start_4b
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 1473
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v7, "handlePackageChange"

    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V
    :try_end_59
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4b .. :try_end_59} :catch_5a

    .line 1475
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_5b

    .line 1474
    :catch_5a
    move-exception v5

    .line 1467
    :goto_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 1477
    .end local v3    # "j":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_5e
    nop

    .line 1477
    .local v2, "j":I
    :goto_5f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_80

    .line 1478
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1480
    .local v3, "pkg":Ljava/lang/String;
    :try_start_6b
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1482
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/16 v7, 0x2

    sget-wide v9, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    mul-long/2addr v7, v9

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V
    :try_end_7b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6b .. :try_end_7b} :catch_7c

    .line 1484
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_7d

    .line 1483
    :catch_7c
    move-exception v4

    .line 1477
    :goto_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 1486
    .end local v2    # "j":I
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_80
    return-void
.end method

.method private declared-synchronized handleSettingsChangedLocked()V
    .registers 5

    monitor-enter p0

    .line 452
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    const-string v1, "doze_mode_policy"

    .line 453
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    const/4 v3, -0x2

    .line 452
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 454
    .local v0, "policy":I
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_31

    .line 455
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSettingsChangedLocked # mBPMStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", policy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_31
    if-nez v0, :cond_35

    const/4 v1, 0x0

    goto :goto_36

    :cond_35
    const/4 v1, 0x1

    .line 459
    .local v1, "changedPolicy":Z
    :goto_36
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eq v1, v2, :cond_42

    .line 460
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnableFromDB(Z)V

    .line 461
    const-string v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 463
    :cond_42
    monitor-exit p0

    return-void

    .line 451
    .end local v0    # "policy":I
    .end local v1    # "changedPolicy":Z
    :catchall_44
    move-exception v0

    monitor-exit p0

    .line 451
    .end local p0    # "this":Lcom/android/server/am/OnePlusProcessManager;
    throw v0
.end method

.method private handleUidChange(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 11
    .param p1, "oldList"    # Ljava/util/HashSet;
    .param p2, "newList"    # Ljava/util/HashSet;

    .line 1490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1491
    .local v0, "mAddPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1493
    .local v1, "mRemovePkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1495
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1496
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1497
    .local v3, "mUid":Ljava/lang/Integer;
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1498
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1501
    .end local v3    # "mUid":Ljava/lang/Integer;
    :cond_24
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1502
    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1503
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1504
    .restart local v3    # "mUid":Ljava/lang/Integer;
    invoke-virtual {p2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 1505
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 1508
    .end local v3    # "mUid":Ljava/lang/Integer;
    :cond_3e
    const/4 v3, 0x0

    move v4, v3

    .line 1508
    .local v4, "j":I
    :goto_40
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_59

    .line 1509
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1510
    .local v5, "pkg":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v7, "handleUidChange"

    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 1508
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 1512
    .end local v4    # "j":I
    .end local v5    # "pkg":Ljava/lang/Integer;
    :cond_59
    nop

    .line 1512
    .local v3, "j":I
    :goto_5a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_72

    .line 1513
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1516
    .local v4, "pkg":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-wide v6, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    .line 1512
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 1518
    .end local v3    # "j":I
    .end local v4    # "pkg":Ljava/lang/Integer;
    :cond_72
    return-void
.end method

.method private hanleBlackSensor()V
    .registers 9

    .line 1679
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0}, Landroid/hardware/SensorManager;->getActiveSensorList()Ljava/lang/String;

    move-result-object v0

    .line 1680
    .local v0, "activeSensor":Ljava/lang/String;
    const-string v1, ""

    .line 1681
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1682
    .local v2, "mTrackUids":[Ljava/lang/String;
    if-eqz v2, :cond_6a

    .line 1683
    const/4 v3, 0x0

    .line 1683
    .local v3, "i":I
    :goto_f
    array-length v4, v2

    if-ge v3, v4, :cond_6a

    .line 1684
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1685
    goto :goto_67

    .line 1687
    :cond_1b
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1688
    .local v4, "uid":I
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 1690
    const-string v5, "OnePlusProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hanleBlackSensor  uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " package ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 1693
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_53
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1694
    sget-object v6, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, -0x2

    invoke-virtual {v6, v1, v7}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 1695
    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_61

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_67

    :catchall_61
    move-exception v6

    :try_start_62
    monitor-exit v5
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 1683
    .end local v4    # "uid":I
    :cond_67
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1699
    .end local v3    # "i":I
    :cond_6a
    return-void
.end method

.method private initialOnlineConfig()V
    .registers 6

    .line 4223
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mConfigHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/OnePlusProcessManager$ProcessFreezerConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusProcessManager$ProcessFreezerConfigUpdater;-><init>(Lcom/android/server/am/OnePlusProcessManager;)V

    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessFreezerConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 4225
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessFreezerConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 4228
    return-void
.end method

.method private isBlockedGpsUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 1085
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/LocationManagerService;->checkUidBlock(I)Z

    move-result v0

    return v0
.end method

.method public static isDeliverDisplayChange(I)Z
    .registers 3
    .param p0, "uid"    # I

    .line 3041
    const/4 v0, 0x1

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_6

    .line 3042
    return v0

    .line 3044
    :cond_6
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v1, :cond_11

    .line 3045
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;->isDeliverDisplayChangeLock(I)Z

    move-result v0

    return v0

    .line 3047
    :cond_11
    return v0
.end method

.method private isDeliverDisplayChangeLock(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 3052
    const/4 v0, 0x0

    .line 3053
    .local v0, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3054
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    .line 3055
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_3b

    .line 3056
    const/4 v1, 0x1

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ltz v2, :cond_3a

    .line 3057
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 3058
    return v1

    .line 3061
    :cond_2c
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    const/16 v3, 0x12

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_38

    .line 3062
    return v1

    .line 3064
    :cond_38
    const/4 v1, 0x0

    return v1

    .line 3068
    :cond_3a
    return v1

    .line 3055
    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method private isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3323
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isInclude(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "list"    # [Ljava/lang/String;

    .line 3851
    const/4 v0, 0x0

    if-eqz p2, :cond_1b

    array-length v1, p2

    if-lez v1, :cond_1b

    if-nez p1, :cond_9

    goto :goto_1b

    .line 3855
    :cond_9
    array-length v1, p2

    move v2, v0

    :goto_b
    if-ge v2, v1, :cond_1a

    aget-object v3, p2, v2

    .line 3856
    .local v3, "v":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 3857
    const/4 v0, 0x1

    return v0

    .line 3855
    .end local v3    # "v":Ljava/lang/String;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3860
    :cond_1a
    return v0

    .line 3852
    :cond_1b
    :goto_1b
    return v0
.end method

.method private isMusicPlaying()Z
    .registers 6

    .line 1753
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1754
    .local v0, "currentVolume":I
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    .line 1756
    .local v1, "isMusicActive":Z
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_3e

    .line 1757
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentVolume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isMusicActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
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

.method public static isSupportFrozenApp()Z
    .registers 1

    .line 543
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isUidSuspended(I)Z
    .registers 7
    .param p0, "uid"    # I

    .line 3026
    const-string/jumbo v0, "isUidSuspended"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3027
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3028
    const/4 v3, 0x0

    .line 3029
    .local v3, "resturn":Z
    :try_start_c
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    if-eqz v4, :cond_29

    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_19

    goto :goto_29

    .line 3034
    :cond_19
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    move v3, v4

    .line 3035
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3036
    monitor-exit v0

    return v3

    .line 3030
    :cond_29
    :goto_29
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3031
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3037
    .end local v3    # "resturn":Z
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private static killBlockProcess(IILjava/lang/String;)V
    .registers 6
    .param p0, "timeoutUid"    # I
    .param p1, "timeoutPid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 4557
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", kill this process"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4559
    invoke-static {p0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 4560
    return-void
.end method

.method public static loadStateLocked(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3965
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3966
    .local v0, "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3967
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 3968
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FO]loadStateLocked():path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " file don\'t exist!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    return-object v0

    .line 3971
    :cond_2c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3972
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 3973
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 3975
    .local v4, "success":Z
    :try_start_33
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 3976
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 3977
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3980
    :cond_41
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 3981
    .local v7, "type":I
    const/4 v8, 0x2

    if-ne v7, v8, :cond_60

    .line 3982
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 3983
    .local v8, "tag":Ljava/lang/String;
    const-string/jumbo v9, "p"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 3984
    const-string v9, "att"

    invoke-interface {v5, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3985
    .local v9, "value":Ljava/lang/String;
    if-eqz v9, :cond_60

    .line 3986
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_60} :catch_72
    .catchall {:try_start_33 .. :try_end_60} :catchall_70

    .line 3990
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_60
    const/4 v8, 0x1

    if-ne v7, v8, :cond_41

    .line 3991
    const/4 v4, 0x1

    .line 3996
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    nop

    .line 3997
    :try_start_65
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_6a

    .line 3998
    :goto_68
    const/4 v3, 0x0

    goto :goto_6f

    .line 4000
    :catch_6a
    move-exception v5

    .line 4001
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 4003
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_94

    .line 4002
    :cond_6f
    :goto_6f
    goto :goto_94

    .line 3995
    :catchall_70
    move-exception v5

    goto :goto_dd

    .line 3992
    :catch_72
    move-exception v5

    .line 3993
    .local v5, "e":Ljava/lang/Exception;
    :try_start_73
    const-string v6, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[FO]loadStateLocked():path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  --> failed parsing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8e
    .catchall {:try_start_73 .. :try_end_8e} :catchall_70

    .line 3996
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_6f

    .line 3997
    :try_start_90
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_6a

    goto :goto_68

    .line 4004
    :goto_94
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_ba

    .line 4005
    const-string v5, "OnePlusProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FO]loadStateLocked():path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " date size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4006
    :cond_ba
    if-eqz v4, :cond_bd

    .line 4007
    return-object v2

    .line 4009
    :cond_bd
    sget-boolean v5, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v5, :cond_dc

    .line 4010
    const-string v5, "OnePlusProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FO]loadStateLocked(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " file failed parsing!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4011
    :cond_dc
    return-object v0

    .line 3995
    :goto_dd
    nop

    .line 3996
    if-eqz v3, :cond_ea

    .line 3997
    :try_start_e0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_e5

    .line 3998
    const/4 v3, 0x0

    goto :goto_ea

    .line 4000
    :catch_e5
    move-exception v6

    .line 4001
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 4001
    .end local v6    # "e":Ljava/io/IOException;
    nop

    .line 4002
    :cond_ea
    :goto_ea
    throw v5
.end method

.method public static loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 11
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "loadXmlLocked():path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3867
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3868
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3b

    .line 3869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FO]loadXmlLocked():path="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " file don\'t exist!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3870
    return-object v2

    .line 3872
    :cond_3b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3873
    .local v1, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 3874
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 3876
    .local v4, "success":Z
    :try_start_42
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 3877
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 3878
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3881
    :cond_4f
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 3882
    .local v6, "type":I
    const/4 v7, 0x2

    if-ne v6, v7, :cond_73

    .line 3883
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 3884
    .local v7, "tag":Ljava/lang/String;
    const-string/jumbo v8, "item"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_73

    .line 3885
    const-string/jumbo v8, "name"

    invoke-interface {v5, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3888
    .local v8, "name":Ljava/lang/String;
    if-eqz v8, :cond_73

    .line 3889
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    .line 3892
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_73} :catch_84
    .catchall {:try_start_42 .. :try_end_73} :catchall_82

    .line 3896
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_73
    const/4 v7, 0x1

    if-ne v6, v7, :cond_4f

    .line 3897
    const/4 v4, 0x1

    .line 3902
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    nop

    .line 3903
    :try_start_78
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_81

    .line 3905
    :catch_7c
    move-exception v5

    .line 3906
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 3908
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_a7

    .line 3907
    :cond_81
    :goto_81
    goto :goto_a7

    .line 3901
    :catchall_82
    move-exception v2

    goto :goto_e4

    .line 3898
    :catch_84
    move-exception v5

    .line 3899
    .local v5, "e":Ljava/lang/Exception;
    :try_start_85
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FO]loadXmlLocked():path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  --> failed parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_85 .. :try_end_a1} :catchall_82

    .line 3902
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_81

    .line 3903
    :try_start_a3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_7c

    goto :goto_81

    .line 3910
    :goto_a7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FO]loadXmlLocked():path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " data size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3911
    if-eqz v4, :cond_ca

    .line 3912
    return-object v1

    .line 3915
    :cond_ca
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FO]loadXmlLocked(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " file failed parsing!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3916
    return-object v2

    .line 3901
    :goto_e4
    nop

    .line 3902
    if-eqz v3, :cond_f0

    .line 3903
    :try_start_e7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_eb

    goto :goto_f0

    .line 3905
    :catch_eb
    move-exception v5

    .line 3906
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 3906
    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 3907
    :cond_f0
    :goto_f0
    throw v2
.end method

.method public static myLog(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 4218
    const-string v0, "OnePlusProcessManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4219
    return-void
.end method

.method private parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "uids"    # Ljava/lang/String;

    .line 2474
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_1b

    .line 2475
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseActiveAudioPidsStr():pids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    :cond_1b
    const/4 v0, 0x0

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25

    goto :goto_35

    .line 2480
    :cond_25
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 2481
    return-object v0

    .line 2484
    :cond_2e
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2485
    .local v0, "uid":[Ljava/lang/String;
    return-object v0

    .line 2477
    .end local v0    # "uid":[Ljava/lang/String;
    :cond_35
    :goto_35
    return-object v0
.end method

.method private printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V
    .registers 8
    .param p1, "preceding"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4114
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4115
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4116
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4117
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_18

    .line 4118
    :cond_39
    return-void
.end method

.method private registerSimReceiver()V
    .registers 4

    .line 4408
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 4409
    const-string v0, "OnePlusProcessManager"

    const-string v1, "Fatal Exception # registerGeneralReceiver # mContext=null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4410
    return-void

    .line 4412
    :cond_c
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_18

    .line 4413
    const-string v0, "OnePlusProcessManager"

    const-string/jumbo v1, "registerSimReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4414
    :cond_18
    const-string/jumbo v0, "persist.sys.cgroup.flags"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    .line 4415
    const-string/jumbo v0, "persist.sys.oem.region"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mRegion:Ljava/lang/String;

    .line 4416
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mRegion:Ljava/lang/String;

    const-string v2, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_60

    .line 4417
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    and-int/2addr v0, v2

    if-nez v0, :cond_83

    .line 4418
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->responseSIMStateChanged()Z

    move-result v0

    if-nez v0, :cond_83

    .line 4419
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->updateDozePolicyToDB(Z)V

    .line 4420
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4421
    const-string v0, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    .line 4422
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4423
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4424
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4425
    .end local v0    # "filter":Landroid/content/IntentFilter;
    goto :goto_83

    .line 4428
    :cond_60
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    and-int/2addr v0, v2

    if-nez v0, :cond_83

    .line 4429
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    or-int/2addr v0, v2

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    .line 4430
    const-string/jumbo v0, "persist.sys.cgroup.flags"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4433
    :cond_83
    :goto_83
    return-void
.end method

.method private static removeDozeWhiteList(Ljava/lang/String;)V
    .registers 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 2070
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v0, :cond_2e

    .line 2072
    :try_start_4
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1f

    .line 2073
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeDozeWhiteList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    :cond_1f
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p0}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_24} :catch_25

    goto :goto_2d

    .line 2075
    :catch_25
    move-exception v0

    .line 2076
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusProcessManager"

    const-string v2, "Falied to add package to doze whitelist"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2d
    goto :goto_35

    .line 2079
    :cond_2e
    const-string v0, "OnePlusProcessManager"

    const-string v1, "Cannot get DeviceIdleController"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    :goto_35
    return-void
.end method

.method private removeTempWhiteList()V
    .registers 4

    .line 1766
    const-string v0, ""

    .line 1767
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 1768
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 1769
    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->removeDozeWhiteList(Ljava/lang/String;)V

    .line 1767
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1771
    .end local v1    # "i":I
    :cond_1a
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficeWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1772
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .registers 14
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 4238
    if-nez p1, :cond_3

    .line 4239
    return-void

    .line 4242
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    .line 4242
    .local v1, "index":I
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_336

    .line 4243
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 4244
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "black_alarm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 4245
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4246
    .local v3, "blackbrdArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    monitor-enter v4
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_28} :catch_337

    .line 4247
    :try_start_28
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 4248
    move v5, v0

    .line 4248
    .local v5, "i":I
    :goto_2e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_49

    .line 4249
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4250
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4248
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 4252
    .end local v5    # "i":I
    :cond_49
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_28 .. :try_end_4a} :catchall_59

    .line 4253
    :try_start_4a
    const-string v4, "OnePlusProcessManager"

    const-string v5, "[OnlineConfig] update blackbrdlist success"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    const-string v5, "/data/data_bpm/black_alarm.xml"

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_58} :catch_337

    .line 4254
    .end local v3    # "blackbrdArray":Lorg/json/JSONArray;
    goto :goto_5c

    .line 4252
    .restart local v3    # "blackbrdArray":Lorg/json/JSONArray;
    :catchall_59
    move-exception v0

    :try_start_5a
    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    throw v0

    .line 4256
    .end local v3    # "blackbrdArray":Lorg/json/JSONArray;
    :cond_5c
    :goto_5c
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "black_gps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 4257
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4258
    .local v3, "blackGpsArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 4259
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    monitor-enter v4
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_7a} :catch_337

    .line 4260
    move v5, v0

    .line 4260
    .restart local v5    # "i":I
    :goto_7b
    :try_start_7b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_96

    .line 4261
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4262
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4260
    add-int/lit8 v5, v5, 0x1

    goto :goto_7b

    .line 4264
    .end local v5    # "i":I
    :cond_96
    monitor-exit v4
    :try_end_97
    .catchall {:try_start_7b .. :try_end_97} :catchall_a6

    .line 4265
    :try_start_97
    const-string v4, "OnePlusProcessManager"

    const-string v5, "[OnlineConfig] update blackgpslist success"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    const-string v5, "/data/data_bpm/black_gps.xml"

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_a5
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_a5} :catch_337

    .line 4266
    .end local v3    # "blackGpsArray":Lorg/json/JSONArray;
    goto :goto_a9

    .line 4264
    .restart local v3    # "blackGpsArray":Lorg/json/JSONArray;
    :catchall_a6
    move-exception v0

    :try_start_a7
    monitor-exit v4
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    :try_start_a8
    throw v0

    .line 4268
    .end local v3    # "blackGpsArray":Lorg/json/JSONArray;
    :cond_a9
    :goto_a9
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "force_stop_senfor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_130

    .line 4269
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4270
    .local v3, "forceStopSensorArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 4271
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    monitor-enter v4
    :try_end_c7
    .catch Lorg/json/JSONException; {:try_start_a8 .. :try_end_c7} :catch_337

    .line 4272
    :try_start_c7
    const-string v5, "OnePlusProcessManager"

    const-string v6, "[GpsFreeze] resolveConfigFromJSON mForceStopSensorPackage"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4273
    move v5, v0

    .line 4273
    .restart local v5    # "i":I
    :goto_cf
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_10c

    .line 4274
    const-string v6, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GpsFreeze] update mForceStopSensorPackage i:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " |pkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4275
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4276
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4273
    add-int/lit8 v5, v5, 0x1

    goto :goto_cf

    .line 4278
    .end local v5    # "i":I
    :cond_10c
    monitor-exit v4
    :try_end_10d
    .catchall {:try_start_c7 .. :try_end_10d} :catchall_12d

    .line 4279
    :try_start_10d
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GpsFreeze] update mForceStopSensorPackage success, mForceStopSensorPackage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    const-string v5, "/data/data_bpm/force_stop_sensor.xml"

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_12c
    .catch Lorg/json/JSONException; {:try_start_10d .. :try_end_12c} :catch_337

    .line 4280
    .end local v3    # "forceStopSensorArray":Lorg/json/JSONArray;
    goto :goto_130

    .line 4278
    .restart local v3    # "forceStopSensorArray":Lorg/json/JSONArray;
    :catchall_12d
    move-exception v0

    :try_start_12e
    monitor-exit v4
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_12d

    :try_start_12f
    throw v0

    .line 4282
    .end local v3    # "forceStopSensorArray":Lorg/json/JSONArray;
    :cond_130
    :goto_130
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cfg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23b

    .line 4283
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4284
    .local v3, "cfgArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 4285
    const-string v4, ""

    .line 4286
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_150
    .catch Lorg/json/JSONException; {:try_start_12f .. :try_end_150} :catch_337

    .line 4287
    move-object v6, v4

    move v4, v0

    .line 4287
    .local v4, "i":I
    .local v6, "value":Ljava/lang/String;
    :goto_152
    :try_start_152
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_218

    .line 4288
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "itemname"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "forceSwitch"

    .line 4289
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a5

    .line 4290
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "itemvalue"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 4291
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    const-string v8, "forceSwitch"

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4292
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "forceSwitch = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4293
    const-string/jumbo v7, "off"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1a5

    .line 4294
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4295
    const-string v7, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v7, v0}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    .line 4298
    :cond_1a5
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "itemname"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "version"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_214

    .line 4299
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "itemvalue"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4300
    .local v7, "itemvalue":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    const-string/jumbo v9, "version"

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4301
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 4302
    .local v8, "cfgVersion":Ljava/lang/Integer;
    const-string v9, "OnePlusProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cfgVersion = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4303
    if-eqz v8, :cond_214

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget v10, Lcom/android/server/am/OnePlusProcessManager;->CFG_VERSOON:I

    if-le v9, v10, :cond_214

    .line 4304
    const-string/jumbo v9, "off"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_202

    .line 4305
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4306
    const-string v9, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v9, v0}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    goto :goto_214

    .line 4307
    :cond_202
    const-string/jumbo v9, "on"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_214

    .line 4308
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4309
    const-string v10, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v10, v9}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    .line 4287
    .end local v7    # "itemvalue":Ljava/lang/String;
    .end local v8    # "cfgVersion":Ljava/lang/Integer;
    :cond_214
    :goto_214
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_152

    .line 4314
    .end local v4    # "i":I
    :cond_218
    const-string v4, "/data/data_bpm/cfg.xml"

    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mSysCfgMapOnlineConifg:Ljava/util/HashMap;

    invoke-static {v4, v7}, Lcom/android/server/am/OnePlusProcessManager;->saveXmlLocked(Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 4315
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->prepareConfigStatus()V

    .line 4316
    iget v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_22f

    .line 4317
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4318
    const-string v4, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v4, v0}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    .line 4320
    :cond_22f
    monitor-exit v5
    :try_end_230
    .catchall {:try_start_152 .. :try_end_230} :catchall_238

    .line 4321
    :try_start_230
    const-string v4, "OnePlusProcessManager"

    const-string v5, "[OnlineConfig] update cfg success"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_237
    .catch Lorg/json/JSONException; {:try_start_230 .. :try_end_237} :catch_337

    .line 4321
    .end local v3    # "cfgArray":Lorg/json/JSONArray;
    .end local v6    # "value":Ljava/lang/String;
    goto :goto_23b

    .line 4320
    .restart local v3    # "cfgArray":Lorg/json/JSONArray;
    .restart local v6    # "value":Ljava/lang/String;
    :catchall_238
    move-exception v0

    :try_start_239
    monitor-exit v5
    :try_end_23a
    .catchall {:try_start_239 .. :try_end_23a} :catchall_238

    :try_start_23a
    throw v0

    .line 4323
    .end local v3    # "cfgArray":Lorg/json/JSONArray;
    .end local v6    # "value":Ljava/lang/String;
    :cond_23b
    :goto_23b
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "black_brd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_288

    .line 4324
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4325
    .local v3, "brdArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    monitor-enter v4
    :try_end_254
    .catch Lorg/json/JSONException; {:try_start_23a .. :try_end_254} :catch_337

    .line 4326
    :try_start_254
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 4327
    move v5, v0

    .line 4327
    .restart local v5    # "i":I
    :goto_25a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_275

    .line 4328
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4329
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4327
    add-int/lit8 v5, v5, 0x1

    goto :goto_25a

    .line 4331
    .end local v5    # "i":I
    :cond_275
    monitor-exit v4
    :try_end_276
    .catchall {:try_start_254 .. :try_end_276} :catchall_285

    .line 4332
    :try_start_276
    const-string v4, "OnePlusProcessManager"

    const-string v5, "[OnlineConfig] update brdlist success"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4333
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    const-string v5, "/data/data_bpm/black_brd.xml"

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_284
    .catch Lorg/json/JSONException; {:try_start_276 .. :try_end_284} :catch_337

    .line 4333
    .end local v3    # "brdArray":Lorg/json/JSONArray;
    goto :goto_288

    .line 4331
    .restart local v3    # "brdArray":Lorg/json/JSONArray;
    :catchall_285
    move-exception v0

    :try_start_286
    monitor-exit v4
    :try_end_287
    .catchall {:try_start_286 .. :try_end_287} :catchall_285

    :try_start_287
    throw v0

    .line 4335
    .end local v3    # "brdArray":Lorg/json/JSONArray;
    :cond_288
    :goto_288
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "brd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d5

    .line 4336
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4337
    .restart local v3    # "brdArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 4338
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    monitor-enter v4
    :try_end_2a6
    .catch Lorg/json/JSONException; {:try_start_287 .. :try_end_2a6} :catch_337

    .line 4339
    move v5, v0

    .line 4339
    .restart local v5    # "i":I
    :goto_2a7
    :try_start_2a7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2c2

    .line 4340
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4341
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4339
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a7

    .line 4343
    .end local v5    # "i":I
    :cond_2c2
    monitor-exit v4
    :try_end_2c3
    .catchall {:try_start_2a7 .. :try_end_2c3} :catchall_2d2

    .line 4344
    :try_start_2c3
    const-string v4, "OnePlusProcessManager"

    const-string v5, "[OnlineConfig] update mBrdList success"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4345
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    const-string v5, "/data/data_bpm/brd.xml"

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_2d1
    .catch Lorg/json/JSONException; {:try_start_2c3 .. :try_end_2d1} :catch_337

    .line 4345
    .end local v3    # "brdArray":Lorg/json/JSONArray;
    goto :goto_2d5

    .line 4343
    .restart local v3    # "brdArray":Lorg/json/JSONArray;
    :catchall_2d2
    move-exception v0

    :try_start_2d3
    monitor-exit v4
    :try_end_2d4
    .catchall {:try_start_2d3 .. :try_end_2d4} :catchall_2d2

    :try_start_2d4
    throw v0

    .line 4347
    .end local v3    # "brdArray":Lorg/json/JSONArray;
    :cond_2d5
    :goto_2d5
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pkg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_332

    .line 4348
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 4349
    .local v3, "pkgArray":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4350
    .local v4, "mOldPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4351
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    monitor-enter v5
    :try_end_2f9
    .catch Lorg/json/JSONException; {:try_start_2d4 .. :try_end_2f9} :catch_337

    .line 4352
    :try_start_2f9
    iget-object v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 4353
    move v6, v0

    .line 4353
    .local v6, "i":I
    :goto_2ff
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_31a

    .line 4354
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4355
    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4353
    add-int/lit8 v6, v6, 0x1

    goto :goto_2ff

    .line 4357
    .end local v6    # "i":I
    :cond_31a
    monitor-exit v5
    :try_end_31b
    .catchall {:try_start_2f9 .. :try_end_31b} :catchall_32f

    .line 4358
    :try_start_31b
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->handlePackageForPackageChange(Ljava/util/List;Ljava/util/List;)V

    .line 4359
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    const-string v6, "/data/data_bpm/pkg.xml"

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusProcessManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z

    .line 4360
    const-string v5, "OnePlusProcessManager"

    const-string v6, "[OnlineConfig] update pkglist success"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32e
    .catch Lorg/json/JSONException; {:try_start_31b .. :try_end_32e} :catch_337

    .line 4360
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "pkgArray":Lorg/json/JSONArray;
    .end local v4    # "mOldPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_332

    .line 4357
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "pkgArray":Lorg/json/JSONArray;
    .restart local v4    # "mOldPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_32f
    move-exception v0

    :try_start_330
    monitor-exit v5
    :try_end_331
    .catchall {:try_start_330 .. :try_end_331} :catchall_32f

    :try_start_331
    throw v0
    :try_end_332
    .catch Lorg/json/JSONException; {:try_start_331 .. :try_end_332} :catch_337

    .line 4242
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "pkgArray":Lorg/json/JSONArray;
    .end local v4    # "mOldPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_332
    :goto_332
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 4365
    .end local v1    # "index":I
    :cond_336
    goto :goto_352

    .line 4363
    :catch_337
    move-exception v0

    .line 4364
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4366
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_352
    return-void
.end method

.method private responseSIMStateChanged()Z
    .registers 6

    .line 4436
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 4437
    return v1

    .line 4439
    :cond_7
    const/4 v0, 0x0

    .line 4441
    .local v0, "ret":Z
    const-string/jumbo v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4442
    .local v2, "mccCountry":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5b

    .line 4443
    const-string/jumbo v3, "in"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    const-string v3, "cn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_34

    .line 4451
    :cond_2a
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4452
    const-string v4, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v4, v3}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    goto :goto_3c

    .line 4448
    :cond_34
    :goto_34
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 4449
    const-string v3, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    .line 4454
    :goto_3c
    const/4 v0, 0x1

    .line 4455
    sget v3, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    or-int/2addr v1, v3

    sput v1, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    .line 4456
    const-string/jumbo v1, "persist.sys.cgroup.flags"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4459
    :cond_5b
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-nez v1, :cond_61

    if-eqz v0, :cond_80

    .line 4460
    :cond_61
    const-string v1, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseSIMStateChanged # mccCountry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4461
    :cond_80
    return v0
.end method

.method public static resumeAllProcess(Ljava/lang/String;)V
    .registers 2
    .param p0, "why"    # Ljava/lang/String;

    .line 3155
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_5

    .line 3156
    return-void

    .line 3158
    :cond_5
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_a

    .line 3159
    return-void

    .line 3161
    :cond_a
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_f

    .line 3162
    return-void

    .line 3164
    :cond_f
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_18

    .line 3165
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v0, p0}, Lcom/android/server/am/OnePlusProcessManager;->resumeAllProcessLock(Ljava/lang/String;)V

    .line 3167
    :cond_18
    return-void
.end method

.method public static final resumeProcessByUID_out(ILjava/lang/String;)V
    .registers 3
    .param p0, "uid"    # I
    .param p1, "why"    # Ljava/lang/String;

    .line 3598
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_5

    .line 3599
    return-void

    .line 3601
    :cond_5
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_a

    .line 3602
    return-void

    .line 3604
    :cond_a
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;Z)V

    .line 3605
    return-void
.end method

.method public static final resumeProcessByUID_out(ILjava/lang/String;Z)V
    .registers 4
    .param p0, "uid"    # I
    .param p1, "why"    # Ljava/lang/String;
    .param p2, "isResumeTop"    # Z

    .line 3608
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_5

    .line 3609
    return-void

    .line 3611
    :cond_5
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_a

    .line 3612
    return-void

    .line 3614
    :cond_a
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_f

    .line 3615
    return-void

    .line 3617
    :cond_f
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 3618
    return-void

    .line 3624
    :cond_16
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    .line 3629
    return-void
.end method

.method public static final resumeProcessByUID_out_Delay(ILjava/lang/String;I)V
    .registers 4
    .param p0, "uid"    # I
    .param p1, "why"    # Ljava/lang/String;
    .param p2, "suspendDelayTime"    # I

    .line 3646
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_5

    .line 3647
    return-void

    .line 3649
    :cond_5
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_a

    .line 3650
    return-void

    .line 3652
    :cond_a
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_f

    .line 3653
    return-void

    .line 3655
    :cond_f
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 3656
    return-void

    .line 3662
    :cond_16
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;I)Z

    .line 3666
    return-void
.end method

.method private resumeRelateProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3230
    if-nez p1, :cond_3

    .line 3231
    return-void

    .line 3233
    :cond_3
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_a

    .line 3234
    return-void

    .line 3236
    :cond_a
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    if-eqz v0, :cond_5e

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_5e

    .line 3237
    const/4 v0, 0x0

    .line 3238
    .local v0, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3238
    .local v1, "it":Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 3239
    const/4 v0, 0x0

    .line 3241
    :try_start_24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_5c

    move-object v0, v2

    .line 3244
    nop

    .line 3245
    if-nez v0, :cond_2f

    .line 3246
    goto :goto_1d

    .line 3248
    :cond_2f
    iget-object v2, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1d

    .line 3250
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v2, v3, :cond_1d

    .line 3251
    iget-object v2, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v3, "resumeRelateProcess connection"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    goto :goto_1d

    .line 3242
    :catch_5c
    move-exception v2

    .line 3243
    .local v2, "e":Ljava/lang/Exception;
    nop

    .line 3256
    .end local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5e
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    if-eqz v0, :cond_ac

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_ac

    .line 3257
    const/4 v0, 0x0

    .line 3258
    .local v0, "cc":Lcom/android/server/am/ContentProviderConnection;
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    .line 3259
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3260
    .local v1, "contentClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderConnection;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3260
    .local v2, "it":Ljava/util/Iterator;
    :cond_77
    :goto_77
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 3261
    const/4 v0, 0x0

    .line 3263
    :try_start_7e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderConnection;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_84} :catch_aa

    move-object v0, v3

    .line 3266
    nop

    .line 3267
    if-nez v0, :cond_89

    .line 3268
    goto :goto_77

    .line 3270
    :cond_89
    iget-object v3, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v3, :cond_77

    iget-object v3, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_77

    .line 3271
    iget-object v3, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v3, v4, :cond_77

    .line 3272
    iget-object v3, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v4, "resumeRelateProcess conProviders"

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    goto :goto_77

    .line 3264
    :catch_aa
    move-exception v3

    .line 3265
    .local v3, "e":Ljava/lang/Exception;
    nop

    .line 3279
    .end local v0    # "cc":Lcom/android/server/am/ContentProviderConnection;
    .end local v1    # "contentClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ContentProviderConnection;>;"
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_ac
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v0, :cond_ca

    .line 3280
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_ca

    .line 3281
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 3282
    .local v0, "adjustApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_ca

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v1, v2, :cond_ca

    .line 3283
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v2, "resumeRelateProcess adjSource"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    .line 3287
    .end local v0    # "adjustApp":Lcom/android/server/am/ProcessRecord;
    :cond_ca
    return-void
.end method

.method private resumeRelateUid(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 1233
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mProcess:Ljava/lang/Object;

    monitor-enter v0

    .line 1234
    :try_start_3
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v1, p1}, Lcom/android/server/am/OnePlusProcessManager;->getProcessForUid(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1235
    .local v1, "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_12

    goto :goto_29

    .line 1238
    :cond_12
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 1239
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-direct {v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->resumeRelateProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1238
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1241
    .end local v1    # "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v2    # "i":I
    :cond_27
    monitor-exit v0

    .line 1242
    return-void

    .line 1236
    .restart local v1    # "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_29
    :goto_29
    monitor-exit v0

    return-void

    .line 1241
    .end local v1    # "mProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private static saveBpmStsLocked(Ljava/lang/String;Z)Z
    .registers 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "sts"    # Z

    .line 4015
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 4016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveBpmStsLocked():path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 4017
    :cond_21
    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4018
    .local v0, "endLine":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v2, v1

    .line 4020
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_2a
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 4022
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 4023
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v4, "utf-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4024
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4025
    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4026
    const-string/jumbo v5, "gs"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4027
    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4029
    const-string/jumbo v5, "p"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4030
    const-string v5, "att"

    if-eqz p1, :cond_61

    const-string/jumbo v6, "true"

    goto :goto_63

    :cond_61
    const-string v6, "false"

    :goto_63
    invoke-interface {v3, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4031
    const-string/jumbo v5, "p"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4032
    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4034
    const-string/jumbo v5, "gs"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4035
    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4036
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_7b} :catch_8a
    .catchall {:try_start_2a .. :try_end_7b} :catchall_88

    .line 4037
    nop

    .line 4043
    nop

    .line 4044
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_86

    .line 4046
    :catch_81
    move-exception v1

    .line 4047
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 4047
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_87

    .line 4048
    :goto_86
    nop

    .line 4037
    :goto_87
    return v4

    .line 4042
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_88
    move-exception v1

    goto :goto_b0

    .line 4038
    :catch_8a
    move-exception v1

    .line 4039
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_8b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_8b .. :try_end_a2} :catchall_88

    .line 4040
    const/4 v3, 0x0

    .line 4043
    if-eqz v2, :cond_ae

    .line 4044
    :try_start_a5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    goto :goto_ae

    .line 4046
    :catch_a9
    move-exception v4

    .line 4047
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 4047
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_af

    .line 4048
    :cond_ae
    :goto_ae
    nop

    .line 4040
    :goto_af
    return v3

    .line 4042
    .end local v1    # "e":Ljava/io/IOException;
    :goto_b0
    nop

    .line 4043
    if-eqz v2, :cond_bc

    .line 4044
    :try_start_b3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_bc

    .line 4046
    :catch_b7
    move-exception v3

    .line 4047
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 4047
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 4048
    :cond_bc
    :goto_bc
    throw v1
.end method

.method private static saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z
    .registers 12
    .param p1, "patch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 4053
    .local p0, "config":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 4054
    .local v0, "stream":Ljava/io/FileOutputStream;
    const-string/jumbo v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4056
    .local v1, "endLine":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_9
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 4058
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 4059
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v4, "utf-8"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4060
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4061
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4062
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4063
    .local v4, "iterator":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68

    .line 4064
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4065
    .local v6, "pkg":Ljava/lang/String;
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saved pkg is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4066
    if-eqz v6, :cond_67

    .line 4067
    const-string/jumbo v7, "p"

    invoke-interface {v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4068
    const-string v7, "att"

    invoke-interface {v3, v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4069
    const-string/jumbo v7, "p"

    invoke-interface {v3, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4070
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4072
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_67
    goto :goto_2e

    .line 4073
    :cond_68
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4074
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_6e} :catch_7c
    .catchall {:try_start_9 .. :try_end_6e} :catchall_7a

    .line 4080
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "iterator":Ljava/util/Iterator;
    nop

    .line 4081
    :try_start_6f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_78

    .line 4083
    :catch_73
    move-exception v3

    .line 4084
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 4086
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_79

    .line 4085
    :goto_78
    nop

    .line 4087
    :goto_79
    return v2

    .line 4079
    :catchall_7a
    move-exception v2

    goto :goto_a2

    .line 4075
    :catch_7c
    move-exception v3

    .line 4076
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_7d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_7d .. :try_end_94} :catchall_7a

    .line 4077
    nop

    .line 4080
    if-eqz v0, :cond_a0

    .line 4081
    :try_start_97
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_a0

    .line 4083
    :catch_9b
    move-exception v4

    .line 4084
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 4084
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_a1

    .line 4085
    :cond_a0
    :goto_a0
    nop

    .line 4077
    :goto_a1
    return v2

    .line 4079
    .end local v3    # "e":Ljava/io/IOException;
    :goto_a2
    nop

    .line 4080
    if-eqz v0, :cond_ae

    .line 4081
    :try_start_a5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    goto :goto_ae

    .line 4083
    :catch_a9
    move-exception v3

    .line 4084
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 4084
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 4085
    :cond_ae
    :goto_ae
    throw v2
.end method

.method private static saveXmlLocked(Ljava/lang/String;Ljava/util/HashMap;)Z
    .registers 12
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 3920
    .local p1, "confMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveXmlLocked():path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 3921
    const/4 v0, 0x0

    if-nez p1, :cond_19

    .line 3922
    return v0

    .line 3925
    :cond_19
    const-string/jumbo v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3926
    .local v1, "endLine":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v3, v2

    .line 3928
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_22
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 3930
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 3931
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3932
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3933
    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3934
    const-string v6, "cfg"

    invoke-interface {v4, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3935
    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3937
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_52
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_83

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 3938
    .local v7, "ss":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "item"

    invoke-interface {v4, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3939
    const-string/jumbo v8, "name"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4, v2, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3941
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3942
    const-string/jumbo v8, "item"

    invoke-interface {v4, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3943
    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3944
    .end local v7    # "ss":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_52

    .line 3946
    :cond_83
    const-string v6, "cfg"

    invoke-interface {v4, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3947
    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3948
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_8e} :catch_9d
    .catchall {:try_start_22 .. :try_end_8e} :catchall_9b

    .line 3949
    nop

    .line 3955
    nop

    .line 3956
    :try_start_90
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_99

    .line 3958
    :catch_94
    move-exception v0

    .line 3959
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3959
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_9a

    .line 3960
    :goto_99
    nop

    .line 3949
    :goto_9a
    return v5

    .line 3954
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_9b
    move-exception v0

    goto :goto_c0

    .line 3950
    :catch_9d
    move-exception v2

    .line 3951
    .local v2, "e":Ljava/io/IOException;
    :try_start_9e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_9e .. :try_end_b2} :catchall_9b

    .line 3952
    nop

    .line 3955
    if-eqz v3, :cond_be

    .line 3956
    :try_start_b5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_b9

    goto :goto_be

    .line 3958
    :catch_b9
    move-exception v4

    .line 3959
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 3959
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_bf

    .line 3960
    :cond_be
    :goto_be
    nop

    .line 3952
    :goto_bf
    return v0

    .line 3954
    .end local v2    # "e":Ljava/io/IOException;
    :goto_c0
    nop

    .line 3955
    if-eqz v3, :cond_cc

    .line 3956
    :try_start_c3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_c7

    goto :goto_cc

    .line 3958
    :catch_c7
    move-exception v2

    .line 3959
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 3959
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 3960
    :cond_cc
    :goto_cc
    throw v0
.end method

.method private scheduleChangeForGpsProcess(ZI)V
    .registers 7
    .param p1, "foregroundActivities"    # Z
    .param p2, "uid"    # I

    .line 1104
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GpsFreeze] scheduleForegroundChangeForGpsProcess uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |foregroundActivities:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_22
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_42

    .line 1106
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1107
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1110
    :cond_33
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-static {v2, p2, v3, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1111
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1112
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_73

    .line 1113
    :cond_42
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mCurrentFrontUid:I

    if-ne v2, p2, :cond_52

    .line 1114
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_51

    const-string v0, "OnePlusProcessManager"

    const-string v1, "[GpsFreeze] uid same, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_51
    return-void

    .line 1118
    :cond_52
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1119
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    invoke-virtual {v2, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1122
    :cond_5f
    invoke-direct {p0, p2}, Lcom/android/server/am/OnePlusProcessManager;->canFreezeGps(I)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1123
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v2, p2, v3, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1124
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1127
    .end local v0    # "msg":Landroid/os/Message;
    :cond_73
    :goto_73
    return-void
.end method

.method private scheduleForegroundChangeMessage(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 1897
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1898
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x77

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1899
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1900
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1901
    return-void
.end method

.method private scheduleLocationReceiverUidsChangeForGpsProcess(IZ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "isAdd"    # Z

    .line 1089
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_2c

    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GpsFreeze] scheduleLocationReceiverUidsChangeForGpsProcess uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |isAdd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mFrontActivityUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_2c
    if-eqz p2, :cond_60

    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->isBlockedGpsUid(I)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_60

    .line 1095
    :cond_41
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->canFreezeGps(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1096
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1097
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1098
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsFreezeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1101
    .end local v0    # "msg":Landroid/os/Message;
    :cond_5f
    return-void

    .line 1091
    :cond_60
    :goto_60
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_6b

    const-string v0, "OnePlusProcessManager"

    const-string v1, "[GpsFreeze] this uid dont need to block, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_6b
    return-void
.end method

.method private scheduleResumeMessage(IJLjava/lang/String;I)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "delay"    # J
    .param p4, "why"    # Ljava/lang/String;
    .param p5, "suspendTime"    # I

    .line 2233
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v0

    .line 2234
    :try_start_3
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2235
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    .line 2236
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2237
    .local v0, "msg":Landroid/os/Message;
    add-int/lit16 v1, p1, -0x2710

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2238
    iput p5, v0, Landroid/os/Message;->arg1:I

    .line 2239
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 2240
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2241
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2242
    return-void

    .line 2235
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private scheduleResumeUid(ILjava/lang/String;)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "why"    # Ljava/lang/String;

    .line 3073
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private scheduleResumeUid(ILjava/lang/String;I)Z
    .registers 14
    .param p1, "uid"    # I
    .param p2, "why"    # Ljava/lang/String;
    .param p3, "suspendDelayTime"    # I

    .line 3077
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3078
    return v1

    .line 3083
    :cond_6
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_b

    .line 3084
    return v1

    .line 3086
    :cond_b
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    const/4 v2, 0x1

    if-ne v0, p1, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    .line 3088
    .local v0, "mPendingFrozen":Z
    :goto_13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->isUidSuspended(I)Z

    move-result v3

    if-nez v3, :cond_56

    if-eqz v0, :cond_24

    goto :goto_56

    .line 3104
    :cond_24
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v2, :cond_47

    .line 3105
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleResumeUid -> adjustSuspendMessage for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " delay code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    :cond_47
    const/4 v2, 0x2

    if-ne p3, v2, :cond_50

    .line 3107
    const-wide/16 v2, 0x4e20

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->adjustSuspendMessage(ILjava/lang/String;J)V

    goto :goto_55

    .line 3109
    :cond_50
    sget-wide v2, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->adjustSuspendMessage(ILjava/lang/String;J)V

    .line 3112
    :goto_55
    return v1

    .line 3089
    :cond_56
    :goto_56
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mMessageLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3090
    :try_start_59
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    add-int/lit16 v5, p1, -0x2710

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3091
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHandler:Landroid/os/Handler;

    add-int/lit16 v5, p1, -0x2710

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 3092
    monitor-exit v3

    return v2

    .line 3094
    :cond_6c
    const-wide/16 v6, 0x0

    move-object v4, p0

    move v5, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeMessage(IJLjava/lang/String;I)V

    .line 3096
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_78
    .catchall {:try_start_59 .. :try_end_78} :catchall_a4

    .line 3097
    :try_start_78
    invoke-static {p1, v1}, Landroid/os/Binder;->setBlockUid(IZ)V

    .line 3098
    monitor-exit v4
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_a1

    .line 3099
    :try_start_7c
    monitor-exit v3
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_a4

    .line 3100
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_a0

    .line 3101
    const-string v1, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleResumeUid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " why = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    :cond_a0
    return v2

    .line 3098
    :catchall_a1
    move-exception v1

    :try_start_a2
    monitor-exit v4
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    :try_start_a3
    throw v1

    .line 3099
    :catchall_a4
    move-exception v1

    monitor-exit v3
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a4

    throw v1
.end method

.method private scheduleSuspendUid(IJ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "delay"    # J

    .line 2213
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    monitor-enter v0

    .line 2214
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2215
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_2a

    .line 2216
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleSuspendUid not suspend FG Uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    :cond_2a
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2218
    monitor-exit v0

    return-void

    .line 2220
    :cond_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_69

    .line 2223
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_59

    .line 2224
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleSuspendUid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " delay= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :cond_59
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2227
    .local v0, "msg":Landroid/os/Message;
    add-int/lit16 v1, p1, -0x2710

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2228
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2229
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2230
    return-void

    .line 2220
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_69
    move-exception v1

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public static sendSignal(II)V
    .registers 2
    .param p0, "pid"    # I
    .param p1, "sigNo"    # I

    .line 851
    invoke-static {p0, p1}, Landroid/os/Process;->sendSignal(II)V

    .line 852
    return-void
.end method

.method public static sendTimeOutMmgDelayed(Landroid/os/Message;II)V
    .registers 6
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "timeoutUid"    # I
    .param p2, "timeoutPid"    # I

    .line 4508
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_5

    .line 4509
    return-void

    .line 4511
    :cond_5
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_a

    .line 4512
    return-void

    .line 4514
    :cond_a
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_f

    .line 4515
    return-void

    .line 4517
    :cond_f
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 4518
    iput p2, p0, Landroid/os/Message;->arg2:I

    .line 4519
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4520
    return-void
.end method

.method private setCGroupStateLocked(IZ)Z
    .registers 20
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 556
    const/4 v3, 0x0

    .line 557
    .local v3, "indexCanUids":I
    const/4 v4, 0x0

    .line 558
    .local v4, "canUid":Ljava/lang/Integer;
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mCanFrozenUids:Ljava/util/ArrayList;

    monitor-enter v5

    .line 559
    :try_start_9
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mCanFrozenUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    .line 560
    if-ltz v3, :cond_20

    .line 561
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mCanFrozenUids:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 566
    .end local v4    # "canUid":Ljava/lang/Integer;
    .local v0, "canUid":Ljava/lang/Integer;
    move-object v4, v0

    goto :goto_2a

    .line 563
    .end local v0    # "canUid":Ljava/lang/Integer;
    .restart local v4    # "canUid":Ljava/lang/Integer;
    :cond_20
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    .line 564
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mCanFrozenUids:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    :goto_2a
    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_3a7

    .line 568
    const/16 v0, 0x2710

    const/4 v5, 0x1

    if-lt v2, v0, :cond_3a5

    .line 569
    const/4 v0, 0x0

    move-object v6, v0

    .line 571
    .local v6, "cgroupout":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    :try_start_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/sys/fs/cgroup/freezer/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/freezer.state"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 572
    .local v8, "mCgroupFreezerstate":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 573
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c1

    .line 574
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object v10, v0

    .line 575
    .local v10, "pf":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_64

    .line 576
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 578
    :cond_64
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 579
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c1

    .line 580
    const-string v0, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception : file not exists : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_83} :catch_30c
    .catchall {:try_start_33 .. :try_end_83} :catchall_309

    .line 581
    nop

    .line 679
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 680
    :try_start_87
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 681
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 683
    :cond_94
    monitor-exit v5
    :try_end_95
    .catchall {:try_start_87 .. :try_end_95} :catchall_be

    .line 685
    if-eqz v6, :cond_bc

    .line 686
    :try_start_97
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9c

    .line 687
    const/4 v6, 0x0

    goto :goto_bc

    .line 689
    :catch_9c
    move-exception v0

    move-object v5, v0

    .line 690
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "OnePlusProcessManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 691
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_bd

    .line 692
    :cond_bc
    :goto_bc
    nop

    .line 581
    :goto_bd
    return v7

    .line 683
    :catchall_be
    move-exception v0

    :try_start_bf
    monitor-exit v5
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v0

    .line 584
    .end local v10    # "pf":Ljava/io/File;
    :cond_c1
    :try_start_c1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 587
    if-eqz p2, :cond_24b

    .line 588
    const/4 v11, 0x0

    .line 589
    .local v11, "index":I
    const/4 v12, 0x0

    .line 590
    .local v12, "isAdjustUid":Z
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_ce} :catch_30c
    .catchall {:try_start_c1 .. :try_end_ce} :catchall_309

    .line 591
    :try_start_ce
    sget-object v14, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v14
    :try_end_d1
    .catchall {:try_start_ce .. :try_end_d1} :catchall_248

    .line 592
    :try_start_d1
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v12, v0

    .line 593
    monitor-exit v14
    :try_end_dd
    .catchall {:try_start_d1 .. :try_end_dd} :catchall_245

    .line 594
    if-nez v12, :cond_1e8

    .line 595
    :try_start_df
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move v11, v0

    .line 596
    if-gez v11, :cond_f8

    .line 597
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-static {v2, v5}, Landroid/os/Binder;->setBlockUid(IZ)V

    .line 605
    :cond_f8
    monitor-exit v13
    :try_end_f9
    .catchall {:try_start_df .. :try_end_f9} :catchall_248

    .line 607
    :try_start_f9
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v13
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_30c
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_309

    .line 608
    :try_start_fc
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_181

    .line 609
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_10b
    .catchall {:try_start_fc .. :try_end_10b} :catchall_1e5

    .line 610
    :try_start_10b
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move v11, v0

    .line 611
    if-ltz v11, :cond_120

    .line 612
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 613
    invoke-static {v2, v7}, Landroid/os/Binder;->setBlockUid(IZ)V

    .line 615
    :cond_120
    monitor-exit v5
    :try_end_121
    .catchall {:try_start_10b .. :try_end_121} :catchall_17e

    .line 616
    :try_start_121
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_141

    .line 617
    const-string v0, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setCGroupStateLocked: skip to freeze "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " due to mAdjustUids"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_141
    monitor-exit v13
    :try_end_142
    .catchall {:try_start_121 .. :try_end_142} :catchall_1e5

    .line 679
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 680
    :try_start_145
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_152

    .line 681
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 683
    :cond_152
    monitor-exit v5
    :try_end_153
    .catchall {:try_start_145 .. :try_end_153} :catchall_17b

    .line 685
    nop

    .line 686
    :try_start_154
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_157} :catch_159

    .line 687
    const/4 v6, 0x0

    goto :goto_179

    .line 689
    :catch_159
    move-exception v0

    move-object v5, v0

    .line 690
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 691
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_17a

    .line 692
    :goto_179
    nop

    .line 618
    :goto_17a
    return v7

    .line 683
    :catchall_17b
    move-exception v0

    :try_start_17c
    monitor-exit v5
    :try_end_17d
    .catchall {:try_start_17c .. :try_end_17d} :catchall_17b

    throw v0

    .line 615
    :catchall_17e
    move-exception v0

    :try_start_17f
    monitor-exit v5
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_17e

    :try_start_180
    throw v0

    .line 620
    :cond_181
    monitor-exit v13
    :try_end_182
    .catchall {:try_start_180 .. :try_end_182} :catchall_1e5

    .line 621
    if-gez v11, :cond_1e3

    .line 622
    :try_start_184
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_187} :catch_30c
    .catchall {:try_start_184 .. :try_end_187} :catchall_309

    .line 623
    :try_start_187
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v0, :cond_198

    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_198

    .line 624
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 626
    :cond_198
    monitor-exit v13
    :try_end_199
    .catchall {:try_start_187 .. :try_end_199} :catchall_1e0

    .line 627
    if-eqz v4, :cond_1e3

    .line 628
    :try_start_19b
    monitor-enter v4
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_19c} :catch_30c
    .catchall {:try_start_19b .. :try_end_19c} :catchall_309

    .line 629
    :try_start_19c
    const-string v0, "FROZEN"

    move-object v13, v0

    .line 630
    .local v13, "freeze":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    move-object v14, v0

    .line 631
    .local v14, "statebuffer":[B
    invoke-virtual {v6, v14}, Ljava/io/FileOutputStream;->write([B)V

    .line 633
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1c7

    .line 634
    const-string v0, "OnePlusProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCGroupStateLocked "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " FROZEN"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_1c7
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1ca
    .catchall {:try_start_19c .. :try_end_1ca} :catchall_1dd

    .line 636
    :try_start_1ca
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1d7

    .line 637
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 639
    :cond_1d7
    monitor-exit v5
    :try_end_1d8
    .catchall {:try_start_1ca .. :try_end_1d8} :catchall_1da

    .line 640
    .end local v13    # "freeze":Ljava/lang/String;
    .end local v14    # "statebuffer":[B
    :try_start_1d8
    monitor-exit v4
    :try_end_1d9
    .catchall {:try_start_1d8 .. :try_end_1d9} :catchall_1dd

    goto :goto_1e3

    .line 639
    .restart local v13    # "freeze":Ljava/lang/String;
    .restart local v14    # "statebuffer":[B
    :catchall_1da
    move-exception v0

    :try_start_1db
    monitor-exit v5
    :try_end_1dc
    .catchall {:try_start_1db .. :try_end_1dc} :catchall_1da

    :try_start_1dc
    throw v0

    .line 640
    .end local v13    # "freeze":Ljava/lang/String;
    .end local v14    # "statebuffer":[B
    :catchall_1dd
    move-exception v0

    monitor-exit v4
    :try_end_1df
    .catchall {:try_start_1dc .. :try_end_1df} :catchall_1dd

    :try_start_1df
    throw v0
    :try_end_1e0
    .catch Ljava/io/IOException; {:try_start_1df .. :try_end_1e0} :catch_30c
    .catchall {:try_start_1df .. :try_end_1e0} :catchall_309

    .line 626
    :catchall_1e0
    move-exception v0

    :try_start_1e1
    monitor-exit v13
    :try_end_1e2
    .catchall {:try_start_1e1 .. :try_end_1e2} :catchall_1e0

    :try_start_1e2
    throw v0
    :try_end_1e3
    .catch Ljava/io/IOException; {:try_start_1e2 .. :try_end_1e3} :catch_30c
    .catchall {:try_start_1e2 .. :try_end_1e3} :catchall_309

    .line 643
    .end local v11    # "index":I
    .end local v12    # "isAdjustUid":Z
    :cond_1e3
    :goto_1e3
    goto/16 :goto_2c5

    .line 620
    .restart local v11    # "index":I
    .restart local v12    # "isAdjustUid":Z
    :catchall_1e5
    move-exception v0

    :try_start_1e6
    monitor-exit v13
    :try_end_1e7
    .catchall {:try_start_1e6 .. :try_end_1e7} :catchall_1e5

    :try_start_1e7
    throw v0
    :try_end_1e8
    .catch Ljava/io/IOException; {:try_start_1e7 .. :try_end_1e8} :catch_30c
    .catchall {:try_start_1e7 .. :try_end_1e8} :catchall_309

    .line 601
    :cond_1e8
    :try_start_1e8
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_208

    .line 602
    const-string v0, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setCGroupStateLocked: skip to freeze "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " due to mAdjustUids"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_208
    monitor-exit v13
    :try_end_209
    .catchall {:try_start_1e8 .. :try_end_209} :catchall_248

    .line 679
    sget-object v5, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 680
    :try_start_20c
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_219

    .line 681
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 683
    :cond_219
    monitor-exit v5
    :try_end_21a
    .catchall {:try_start_20c .. :try_end_21a} :catchall_242

    .line 685
    nop

    .line 686
    :try_start_21b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_21e
    .catch Ljava/io/IOException; {:try_start_21b .. :try_end_21e} :catch_220

    .line 687
    const/4 v6, 0x0

    goto :goto_240

    .line 689
    :catch_220
    move-exception v0

    move-object v5, v0

    .line 690
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 691
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_241

    .line 692
    :goto_240
    nop

    .line 603
    :goto_241
    return v7

    .line 683
    :catchall_242
    move-exception v0

    :try_start_243
    monitor-exit v5
    :try_end_244
    .catchall {:try_start_243 .. :try_end_244} :catchall_242

    throw v0

    .line 593
    :catchall_245
    move-exception v0

    :try_start_246
    monitor-exit v14
    :try_end_247
    .catchall {:try_start_246 .. :try_end_247} :catchall_245

    :try_start_247
    throw v0

    .line 605
    :catchall_248
    move-exception v0

    monitor-exit v13
    :try_end_24a
    .catchall {:try_start_247 .. :try_end_24a} :catchall_248

    :try_start_24a
    throw v0

    .line 644
    .end local v11    # "index":I
    .end local v12    # "isAdjustUid":Z
    :cond_24b
    const/4 v5, 0x0

    .line 645
    .local v5, "index":I
    sget-object v11, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_24f
    .catch Ljava/io/IOException; {:try_start_24a .. :try_end_24f} :catch_30c
    .catchall {:try_start_24a .. :try_end_24f} :catchall_309

    .line 646
    :try_start_24f
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move v5, v0

    .line 647
    if-ltz v5, :cond_264

    .line 648
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 649
    invoke-static {v2, v7}, Landroid/os/Binder;->setBlockUid(IZ)V

    .line 651
    :cond_264
    monitor-exit v11
    :try_end_265
    .catchall {:try_start_24f .. :try_end_265} :catchall_306

    .line 652
    :try_start_265
    sget-object v11, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_268
    .catch Ljava/io/IOException; {:try_start_265 .. :try_end_268} :catch_30c
    .catchall {:try_start_265 .. :try_end_268} :catchall_309

    .line 653
    :try_start_268
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v0, :cond_279

    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_279

    .line 654
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 656
    :cond_279
    monitor-exit v11
    :try_end_27a
    .catchall {:try_start_268 .. :try_end_27a} :catchall_303

    .line 657
    if-eqz v4, :cond_2c5

    .line 658
    :try_start_27c
    monitor-enter v4
    :try_end_27d
    .catch Ljava/io/IOException; {:try_start_27c .. :try_end_27d} :catch_30c
    .catchall {:try_start_27c .. :try_end_27d} :catchall_309

    .line 659
    :try_start_27d
    const-string v0, "THAWED"

    move-object v11, v0

    .line 660
    .local v11, "thawed":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    move-object v12, v0

    .line 661
    .local v12, "statebuffer":[B
    invoke-virtual {v6, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 663
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2a8

    .line 664
    const-string v0, "OnePlusProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setCGroupStateLocked "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " THAWED"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_2a8
    sget-object v13, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_2ab
    .catchall {:try_start_27d .. :try_end_2ab} :catchall_2c2

    .line 666
    :try_start_2ab
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    if-nez v0, :cond_2bc

    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2bc

    .line 667
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 669
    :cond_2bc
    monitor-exit v13
    :try_end_2bd
    .catchall {:try_start_2ab .. :try_end_2bd} :catchall_2bf

    .line 670
    .end local v11    # "thawed":Ljava/lang/String;
    .end local v12    # "statebuffer":[B
    :try_start_2bd
    monitor-exit v4
    :try_end_2be
    .catchall {:try_start_2bd .. :try_end_2be} :catchall_2c2

    goto :goto_2c5

    .line 669
    .restart local v11    # "thawed":Ljava/lang/String;
    .restart local v12    # "statebuffer":[B
    :catchall_2bf
    move-exception v0

    :try_start_2c0
    monitor-exit v13
    :try_end_2c1
    .catchall {:try_start_2c0 .. :try_end_2c1} :catchall_2bf

    :try_start_2c1
    throw v0

    .line 670
    .end local v11    # "thawed":Ljava/lang/String;
    .end local v12    # "statebuffer":[B
    :catchall_2c2
    move-exception v0

    monitor-exit v4
    :try_end_2c4
    .catchall {:try_start_2c1 .. :try_end_2c4} :catchall_2c2

    :try_start_2c4
    throw v0
    :try_end_2c5
    .catch Ljava/io/IOException; {:try_start_2c4 .. :try_end_2c5} :catch_30c
    .catchall {:try_start_2c4 .. :try_end_2c5} :catchall_309

    .line 673
    .end local v5    # "index":I
    :cond_2c5
    :goto_2c5
    nop

    .line 679
    sget-object v12, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v12

    .line 680
    :try_start_2c9
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2d6

    .line 681
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 683
    :cond_2d6
    monitor-exit v12
    :try_end_2d7
    .catchall {:try_start_2c9 .. :try_end_2d7} :catchall_300

    .line 685
    nop

    .line 686
    :try_start_2d8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2db
    .catch Ljava/io/IOException; {:try_start_2d8 .. :try_end_2db} :catch_2dd

    .line 687
    const/4 v6, 0x0

    goto :goto_2fd

    .line 689
    :catch_2dd
    move-exception v0

    move-object v5, v0

    .line 690
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "OnePlusProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 691
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2fe

    .line 692
    :goto_2fd
    nop

    .line 673
    :goto_2fe
    const/4 v5, 0x1

    return v5

    .line 683
    :catchall_300
    move-exception v0

    :try_start_301
    monitor-exit v12
    :try_end_302
    .catchall {:try_start_301 .. :try_end_302} :catchall_300

    throw v0

    .line 656
    .restart local v5    # "index":I
    :catchall_303
    move-exception v0

    :try_start_304
    monitor-exit v11
    :try_end_305
    .catchall {:try_start_304 .. :try_end_305} :catchall_303

    :try_start_305
    throw v0
    :try_end_306
    .catch Ljava/io/IOException; {:try_start_305 .. :try_end_306} :catch_30c
    .catchall {:try_start_305 .. :try_end_306} :catchall_309

    .line 651
    :catchall_306
    move-exception v0

    :try_start_307
    monitor-exit v11
    :try_end_308
    .catchall {:try_start_307 .. :try_end_308} :catchall_306

    :try_start_308
    throw v0
    :try_end_309
    .catch Ljava/io/IOException; {:try_start_308 .. :try_end_309} :catch_30c
    .catchall {:try_start_308 .. :try_end_309} :catchall_309

    .line 679
    .end local v5    # "index":I
    .end local v8    # "mCgroupFreezerstate":Ljava/lang/String;
    .end local v9    # "f":Ljava/io/File;
    :catchall_309
    move-exception v0

    move-object v5, v0

    goto :goto_369

    .line 674
    :catch_30c
    move-exception v0

    move-object v5, v0

    .line 675
    .local v5, "ex":Ljava/io/IOException;
    :try_start_30e
    const-string v0, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException -->  setCGroupStateLocked():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_32b
    .catchall {:try_start_30e .. :try_end_32b} :catchall_309

    .line 677
    nop

    .line 679
    sget-object v8, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v8

    .line 680
    :try_start_32f
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_33c

    .line 681
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 683
    :cond_33c
    monitor-exit v8
    :try_end_33d
    .catchall {:try_start_32f .. :try_end_33d} :catchall_366

    .line 685
    if-eqz v6, :cond_364

    .line 686
    :try_start_33f
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_342
    .catch Ljava/io/IOException; {:try_start_33f .. :try_end_342} :catch_344

    .line 687
    const/4 v6, 0x0

    goto :goto_364

    .line 689
    :catch_344
    move-exception v0

    move-object v8, v0

    .line 690
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "OnePlusProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 691
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_365

    .line 692
    :cond_364
    :goto_364
    nop

    .line 677
    :goto_365
    return v7

    .line 683
    :catchall_366
    move-exception v0

    :try_start_367
    monitor-exit v8
    :try_end_368
    .catchall {:try_start_367 .. :try_end_368} :catchall_366

    throw v0

    .line 679
    .end local v5    # "ex":Ljava/io/IOException;
    :goto_369
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v7

    .line 680
    :try_start_36c
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_379

    .line 681
    iget-object v0, v1, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 683
    :cond_379
    monitor-exit v7
    :try_end_37a
    .catchall {:try_start_36c .. :try_end_37a} :catchall_3a2

    .line 685
    if-eqz v6, :cond_3a1

    .line 686
    :try_start_37c
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_37f
    .catch Ljava/io/IOException; {:try_start_37c .. :try_end_37f} :catch_381

    .line 687
    const/4 v6, 0x0

    goto :goto_3a1

    .line 689
    :catch_381
    move-exception v0

    move-object v7, v0

    .line 690
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException: 2-->  setCGroupStateLocked():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OnePlusProcessManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 691
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 692
    :cond_3a1
    :goto_3a1
    throw v5

    .line 683
    :catchall_3a2
    move-exception v0

    :try_start_3a3
    monitor-exit v7
    :try_end_3a4
    .catchall {:try_start_3a3 .. :try_end_3a4} :catchall_3a2

    throw v0

    .line 695
    .end local v6    # "cgroupout":Ljava/io/FileOutputStream;
    :cond_3a5
    const/4 v5, 0x1

    return v5

    .line 566
    :catchall_3a7
    move-exception v0

    :try_start_3a8
    monitor-exit v5
    :try_end_3a9
    .catchall {:try_start_3a8 .. :try_end_3a9} :catchall_3a7

    throw v0
.end method

.method public static setCurrentInputMethod(Landroid/content/pm/ServiceInfo;)V
    .registers 2
    .param p0, "si"    # Landroid/content/pm/ServiceInfo;

    .line 2436
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->sInputMethodUid:I

    .line 2437
    return-void
.end method

.method public static setScreenState(Z)Z
    .registers 3
    .param p0, "screenState"    # Z

    .line 3184
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mScreenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3185
    :try_start_3
    sput-boolean p0, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON:Z

    .line 3186
    monitor-exit v0

    .line 3187
    const/4 v0, 0x1

    return v0

    .line 3186
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method static final skipBroadcast(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
    .registers 8
    .param p0, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "ordered"    # Z

    .line 3757
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3758
    return v1

    .line 3760
    :cond_6
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-nez v0, :cond_b

    .line 3761
    return v1

    .line 3763
    :cond_b
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-nez v0, :cond_10

    .line 3764
    return v1

    .line 3766
    :cond_10
    const-string/jumbo v0, "skipBroadcast"

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3767
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v4, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v4, v4, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v0, v4, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 3768
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_8e

    .line 3769
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BPM Denial: receiving "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v4, v4, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (pid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v4, v4, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") due to sender "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") is ordered "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ;  ordered "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3774
    :cond_8e
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3775
    const/4 v0, 0x1

    return v0

    .line 3777
    :cond_93
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3778
    return v1
.end method

.method private skipBroadcast(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z
    .registers 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "ordered"    # Z

    .line 3428
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3429
    return v0

    .line 3431
    :cond_4
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_b

    .line 3432
    return v0

    .line 3434
    :cond_b
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_10

    .line 3435
    return v0

    .line 3437
    :cond_10
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_19

    .line 3438
    return v0

    .line 3440
    :cond_19
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3441
    .local v1, "broadcastAction":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v1, :cond_f2

    .line 3442
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "cn.kuwo.player"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 3443
    return v3

    .line 3445
    :cond_37
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    monitor-enter v4

    .line 3446
    :try_start_3a
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_40
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ed

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3447
    .local v6, "action":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_eb

    .line 3449
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->checkProcessRecord(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 3451
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkProcessRecord "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for action ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    .line 3452
    monitor-exit v4

    return v0

    .line 3454
    :cond_7a
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v7, 0x12

    invoke-virtual {v2, v5, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/4 v5, 0x3

    if-le v2, v5, :cond_c8

    .line 3455
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c8

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3456
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c8

    .line 3457
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_c6

    .line 3458
    const-string v0, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skip Broadcast: r="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; app="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    :cond_c6
    monitor-exit v4

    return v3

    .line 3463
    :cond_c8
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resume "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for action ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    .line 3464
    monitor-exit v4

    return v0

    .line 3466
    .end local v6    # "action":Ljava/lang/String;
    :cond_eb
    goto/16 :goto_40

    .line 3467
    :cond_ed
    monitor-exit v4

    goto :goto_f2

    :catchall_ef
    move-exception v0

    monitor-exit v4
    :try_end_f1
    .catchall {:try_start_3a .. :try_end_f1} :catchall_ef

    throw v0

    .line 3469
    :cond_f2
    :goto_f2
    iget v4, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-lt v4, v2, :cond_17b

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-lt v4, v2, :cond_17b

    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v2, v4, :cond_17b

    if-eqz v1, :cond_17b

    .line 3472
    const-string v2, "AlarmTaskSchedule"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14f

    const-string v2, "com.igexin.sdk.action"

    .line 3473
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14f

    const-string v2, "AlarmTaskScheduleBak"

    .line 3474
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11b

    goto :goto_14f

    .line 3479
    :cond_11b
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17b

    .line 3480
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_14e

    .line 3481
    const-string v0, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skip Broadcast mBlackAlarmList: a="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " r="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; app="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    :cond_14e
    return v3

    .line 3475
    :cond_14f
    :goto_14f
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_17a

    .line 3476
    const-string v0, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skip Broadcast: a="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " r="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; app="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    :cond_17a
    return v3

    .line 3485
    :cond_17b
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for action ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    .line 3486
    return v0
.end method

.method private startComputeUidTraffic(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 1932
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1933
    .local v0, "msg2":Landroid/os/Message;
    const/16 v1, 0x74

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1934
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1935
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1936
    return-void
.end method

.method private startResumeUid(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 2790
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)Z

    .line 2791
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2792
    :try_start_7
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2793
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_1e

    .line 2794
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 2795
    const-string v0, "OnePlusProcessManager"

    const-string/jumbo v1, "startResumeUid --------- end"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    :cond_1d
    return-void

    .line 2793
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private startSuspendUid(I)Z
    .registers 7
    .param p1, "uid"    # I

    .line 2746
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupState(IZ)Z

    move-result v1

    .line 2747
    .local v1, "isSuspended":Z
    if-eqz v1, :cond_91

    .line 2748
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2749
    :try_start_a
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2750
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_8e

    .line 2751
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 2752
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2761
    :cond_29
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 2762
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    invoke-static {p1, v0}, Lcom/android/server/LocationManagerService;->updateUidBlock(IZ)V

    .line 2764
    :cond_3a
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 2765
    :cond_52
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->lm:Lcom/android/server/LocationManagerService;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/LocationManagerService;->updateReceiverBlockRequest(IZ)V

    .line 2767
    :cond_57
    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    if-eqz v2, :cond_7d

    .line 2768
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    .line 2769
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2770
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 2771
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_7d

    .line 2773
    :try_start_76
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    invoke-interface {v3, v2, v0, v0}, Landroid/app/IAlarmManager;->setBlockAlarmUid(Ljava/lang/String;ZI)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_7b} :catch_7c

    .line 2775
    goto :goto_7d

    .line 2774
    :catch_7c
    move-exception v0

    .line 2779
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_7d
    :goto_7d
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2780
    :try_start_80
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2781
    monitor-exit v0

    goto :goto_91

    :catchall_8b
    move-exception v2

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_80 .. :try_end_8d} :catchall_8b

    throw v2

    .line 2750
    :catchall_8e
    move-exception v0

    :try_start_8f
    monitor-exit v2
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v0

    .line 2784
    :cond_91
    :goto_91
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_b9

    .line 2785
    const-string v0, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSuspendUid uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isSuspended ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ---- end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    :cond_b9
    return v1
.end method

.method private tryAddScreenOffTrafficUids()V
    .registers 6

    .line 1939
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1940
    :try_start_3
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 1941
    .local v1, "mTraffic":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1943
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1944
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1945
    .local v3, "mUid":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusProcessManager;->computeUidTraffic(I)I

    goto :goto_f

    .line 1947
    .end local v1    # "mTraffic":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "mUid":Ljava/lang/Integer;
    :cond_23
    monitor-exit v0

    .line 1948
    return-void

    .line 1947
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private updateBPMEnableState(Z)V
    .registers 8
    .param p1, "flag"    # Z

    .line 2937
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 2938
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBPMEnableState # flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    :cond_1b
    const/4 v0, 0x0

    if-nez p1, :cond_4b

    .line 2940
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2941
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2943
    move v2, v0

    .line 2943
    .local v2, "i":I
    :goto_29
    :try_start_29
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 2944
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2945
    .local v3, "uid":I
    const-string/jumbo v4, "updateBPMEnableState"

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z

    .line 2943
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 2948
    .end local v2    # "i":I
    .end local v3    # "uid":I
    :cond_46
    monitor-exit v1

    goto :goto_4b

    :catchall_48
    move-exception v0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_48

    throw v0

    .line 2950
    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->computeThreeAppState()V

    .line 2951
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7f

    .line 2952
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2954
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2955
    nop

    .line 2955
    .local v0, "i":I
    :goto_5c
    :try_start_5c
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_7a

    .line 2956
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2957
    .local v2, "uid":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    .line 2955
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 2959
    .end local v0    # "i":I
    .end local v2    # "uid":Ljava/lang/Integer;
    :cond_7a
    monitor-exit v1

    goto :goto_7f

    :catchall_7c
    move-exception v0

    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_5c .. :try_end_7e} :catchall_7c

    throw v0

    .line 2961
    :cond_7f
    :goto_7f
    return-void
.end method

.method private updateDozePolicyToDB(Z)V
    .registers 5
    .param p1, "flag"    # Z

    .line 2964
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 2965
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDozePolicyToDB # flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    :cond_1b
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    if-ne v0, v1, :cond_21

    .line 2967
    const/4 p1, 0x0

    .line 2969
    :cond_21
    if-eqz p1, :cond_2c

    .line 2970
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    const-string v1, "doze_mode_policy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_34

    .line 2972
    :cond_2c
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->resolver:Landroid/content/ContentResolver;

    const-string v1, "doze_mode_policy"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2974
    :goto_34
    return-void
.end method

.method private updateForegroundActivityChange(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 1910
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isAlarmAdjust:Z

    if-eqz v0, :cond_28

    .line 1911
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1912
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1913
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1914
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_28

    .line 1916
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v0, v2, v3}, Landroid/app/IAlarmManager;->setBlockAlarmUid(Ljava/lang/String;ZI)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    .line 1918
    goto :goto_28

    .line 1917
    :catch_27
    move-exception v1

    .line 1927
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPowerAdjust:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1928
    return-void
.end method

.method public static updateImportantUidChange(Ljava/util/HashSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1534
    .local p0, "mNewImportUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_5

    .line 1535
    return-void

    .line 1537
    :cond_5
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_3b

    .line 1538
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mImportantUids:Ljava/util/HashSet;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/OnePlusProcessManager;->handleUidChange(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1540
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2d

    .line 1541
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateImportantUidChange change ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :cond_2d
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mImportantUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1543
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mImportantUids:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1545
    :cond_3b
    return-void
.end method

.method public static updateLocationReceiverUidsChange(IZZ)V
    .registers 4
    .param p0, "mUid"    # I
    .param p1, "isAdd"    # Z
    .param p2, "isReceiver"    # Z

    .line 1569
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusProcessManager;->updateLocationReceiverUidsChange(IZZZ)V

    .line 1570
    return-void
.end method

.method public static updateLocationReceiverUidsChange(IZZZ)V
    .registers 9
    .param p0, "mUid"    # I
    .param p1, "isAdd"    # Z
    .param p2, "isReceiver"    # Z
    .param p3, "isGps"    # Z

    .line 1574
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v0, :cond_32

    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GpsFreeze] updateLocationReceiverUidsChange mUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |isAdd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |isReceiver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |isGps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_32
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_37

    .line 1576
    return-void

    .line 1578
    :cond_37
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_d2

    .line 1579
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_d2

    .line 1580
    if-eqz p2, :cond_a6

    .line 1581
    if-eqz p1, :cond_5e

    .line 1583
    if-eqz p3, :cond_52

    .line 1584
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_cd

    .line 1586
    :cond_52
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    .line 1589
    :cond_5e
    const-wide/16 v0, 0x2

    if-eqz p3, :cond_84

    .line 1590
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    .line 1591
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 1592
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    .line 1593
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1594
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v3, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    div-long/2addr v3, v0

    .line 1595
    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    goto :goto_cd

    .line 1598
    :cond_84
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    .line 1599
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 1600
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    .line 1601
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1602
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v3, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    div-long/2addr v3, v0

    .line 1603
    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V

    goto :goto_cd

    .line 1608
    :cond_a6
    if-eqz p1, :cond_b4

    .line 1610
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    .line 1612
    :cond_b4
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 1613
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1617
    :cond_cd
    :goto_cd
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->scheduleLocationReceiverUidsChangeForGpsProcess(IZ)V

    .line 1620
    :cond_d2
    return-void
.end method

.method public static updateScreenState(Z)V
    .registers 4
    .param p0, "screenState"    # Z

    .line 3116
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_5

    .line 3117
    return-void

    .line 3119
    :cond_5
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 3120
    if-eqz p0, :cond_11

    .line 3121
    sput-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 3122
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->setScreenState(Z)Z

    .line 3124
    :cond_11
    return-void

    .line 3126
    :cond_12
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3133
    if-eqz p0, :cond_22

    .line 3134
    const/4 v2, 0x0

    sput v2, Lcom/android/server/am/OnePlusProcessManager;->mScreenOffCount:I

    .line 3135
    sput-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    .line 3149
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->setScreenState(Z)Z

    .line 3151
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3152
    return-void

    .line 3151
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static updateTouchWindowUidChange(Ljava/util/HashSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1548
    .local p0, "fontWindowTouchUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->isSuppoerted:Z

    if-nez v0, :cond_5

    .line 1549
    return-void

    .line 1551
    :cond_5
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_3b

    .line 1552
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/OnePlusProcessManager;->handleUidChange(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1554
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2d

    .line 1555
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTouchWindowUidChange change ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_2d
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1557
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1559
    :cond_3b
    return-void
.end method

.method private static writePidToTasksFile(II)V
    .registers 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 753
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFile(IIZ)V

    .line 754
    return-void
.end method

.method private static writePidToTasksFile(IIZ)V
    .registers 20
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "retry"    # Z

    move/from16 v1, p0

    move/from16 v2, p1

    .line 757
    move/from16 v3, p2

    const/16 v0, 0x2710

    if-ge v1, v0, :cond_b

    .line 758
    return-void

    .line 760
    :cond_b
    const/4 v4, -0x1

    .line 761
    .local v4, "pidState":I
    const/4 v5, 0x0

    .line 762
    .local v5, "cgroupout":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    move-object v6, v0

    .line 764
    .local v6, "f":Ljava/io/File;
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys/fs/cgroup/freezer/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/freezer.state"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 765
    .local v7, "mCgroupFreezerstate":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 766
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_95

    .line 767
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object v8, v0

    .line 768
    .local v8, "pf":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_40

    .line 769
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 771
    :cond_40
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 772
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_95

    .line 773
    const-string v0, "OnePlusProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception : file not exists : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_5f} :catch_1d7
    .catchall {:try_start_f .. :try_end_5f} :catchall_1d1

    .line 827
    if-eqz v5, :cond_93

    .line 828
    :try_start_61
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_66

    .line 829
    const/4 v5, 0x0

    goto :goto_93

    .line 831
    :catch_66
    move-exception v0

    move-object v9, v0

    .line 832
    .local v0, "ec":Ljava/io/IOException;
    const-string v9, "OnePlusProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " : close Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 832
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    .end local v0    # "ec":Ljava/io/IOException;
    goto :goto_94

    .line 834
    :cond_93
    :goto_93
    nop

    .line 774
    :goto_94
    return-void

    .line 777
    .end local v8    # "pf":Ljava/io/File;
    :cond_95
    :try_start_95
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 778
    sget-object v8, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_9e} :catch_1d7
    .catchall {:try_start_95 .. :try_end_9e} :catchall_1d1

    .line 779
    :try_start_9e
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_b3

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    .line 780
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 781
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 783
    :cond_b3
    monitor-exit v8
    :try_end_b4
    .catchall {:try_start_9e .. :try_end_b4} :catchall_1ce

    .line 784
    :try_start_b4
    const-string v0, "THAWED"

    move-object v8, v0

    .line 785
    .local v8, "thawed":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    move-object v9, v0

    .line 786
    .local v9, "statebuffer":[B
    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 787
    sget-object v10, Lcom/android/server/am/OnePlusProcessManager;->mWakeLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_c2} :catch_1d7
    .catchall {:try_start_b4 .. :try_end_c2} :catchall_1d1

    .line 788
    :try_start_c2
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    if-eqz v0, :cond_d7

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    .line 789
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 790
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mWakeLockFrozen:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 792
    :cond_d7
    monitor-exit v10
    :try_end_d8
    .catchall {:try_start_c2 .. :try_end_d8} :catchall_1cb

    .line 794
    :try_start_d8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/sys/fs/cgroup/freezer/"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/tasks"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 795
    .local v10, "mCgroupFreezerPathbytasks":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 796
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_164

    .line 797
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10f

    .line 798
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 799
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 802
    :cond_10f
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_164

    .line 803
    const-string v0, "OnePlusProcessManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " not exist ------- Exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_12f} :catch_1d7
    .catchall {:try_start_d8 .. :try_end_12f} :catchall_1d1

    .line 827
    nop

    .line 828
    :try_start_130
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_133} :catch_135

    .line 829
    const/4 v5, 0x0

    goto :goto_162

    .line 831
    :catch_135
    move-exception v0

    move-object v11, v0

    .line 832
    .restart local v0    # "ec":Ljava/io/IOException;
    const-string v11, "OnePlusProcessManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " : close Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 832
    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    .end local v0    # "ec":Ljava/io/IOException;
    goto :goto_163

    .line 834
    :goto_162
    nop

    .line 804
    :goto_163
    return-void

    .line 807
    :cond_164
    :try_start_164
    const-string v0, ""

    .line 808
    .local v0, "pidsStr":Ljava/lang/String;
    const-string v11, ""

    .line 809
    .local v11, "pidsStr_debug":Ljava/lang/String;
    const-string v12, ""

    .line 810
    .local v12, "processName":Ljava/lang/String;
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v13

    .line 811
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    .line 812
    .local v13, "pidbuffer":[B
    invoke-virtual {v5, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 814
    sget-boolean v14, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v14, :cond_1ba

    .line 815
    const-string v14, "OnePlusProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string/jumbo v0, "writePidToTasksFile():uid="

    .line 815
    .end local v0    # "pidsStr":Ljava/lang/String;
    .local v16, "pidsStr":Ljava/lang/String;
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pid="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", retry="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " --> ok"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ba
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_1ba} :catch_1d7
    .catchall {:try_start_164 .. :try_end_1ba} :catchall_1d1

    .line 827
    .end local v7    # "mCgroupFreezerstate":Ljava/lang/String;
    .end local v8    # "thawed":Ljava/lang/String;
    .end local v9    # "statebuffer":[B
    .end local v10    # "mCgroupFreezerPathbytasks":Ljava/lang/String;
    .end local v11    # "pidsStr_debug":Ljava/lang/String;
    .end local v12    # "processName":Ljava/lang/String;
    .end local v13    # "pidbuffer":[B
    .end local v16    # "pidsStr":Ljava/lang/String;
    :cond_1ba
    nop

    .line 828
    :try_start_1bb
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1be
    .catch Ljava/io/IOException; {:try_start_1bb .. :try_end_1be} :catch_1c1

    .line 829
    const/4 v5, 0x0

    goto/16 :goto_24e

    .line 831
    :catch_1c1
    move-exception v0

    move-object v7, v0

    .line 832
    .local v0, "ec":Ljava/io/IOException;
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_22a

    .line 792
    .end local v0    # "ec":Ljava/io/IOException;
    .restart local v7    # "mCgroupFreezerstate":Ljava/lang/String;
    .restart local v8    # "thawed":Ljava/lang/String;
    .restart local v9    # "statebuffer":[B
    :catchall_1cb
    move-exception v0

    :try_start_1cc
    monitor-exit v10
    :try_end_1cd
    .catchall {:try_start_1cc .. :try_end_1cd} :catchall_1cb

    :try_start_1cd
    throw v0
    :try_end_1ce
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1ce} :catch_1d7
    .catchall {:try_start_1cd .. :try_end_1ce} :catchall_1d1

    .line 783
    .end local v8    # "thawed":Ljava/lang/String;
    .end local v9    # "statebuffer":[B
    :catchall_1ce
    move-exception v0

    :try_start_1cf
    monitor-exit v8
    :try_end_1d0
    .catchall {:try_start_1cf .. :try_end_1d0} :catchall_1ce

    :try_start_1d0
    throw v0
    :try_end_1d1
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_1d1} :catch_1d7
    .catchall {:try_start_1d0 .. :try_end_1d1} :catchall_1d1

    .line 826
    .end local v7    # "mCgroupFreezerstate":Ljava/lang/String;
    :catchall_1d1
    move-exception v0

    move-object v7, v6

    move-object v6, v5

    move-object v5, v0

    goto/16 :goto_250

    .line 817
    :catch_1d7
    move-exception v0

    .line 818
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1d8
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", retry = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", , pidState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 818
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    if-eqz v3, :cond_219

    .line 823
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v7, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->writePidToTasksFileDelayed(II)V
    :try_end_219
    .catchall {:try_start_1d8 .. :try_end_219} :catchall_1d1

    .line 827
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_219
    if-eqz v5, :cond_24e

    .line 828
    :try_start_21b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_21e
    .catch Ljava/io/IOException; {:try_start_21b .. :try_end_21e} :catch_221

    .line 829
    const/4 v0, 0x0

    .line 834
    .end local v5    # "cgroupout":Ljava/io/FileOutputStream;
    .local v0, "cgroupout":Ljava/io/FileOutputStream;
    move-object v5, v0

    goto :goto_24e

    .line 831
    .end local v0    # "cgroupout":Ljava/io/FileOutputStream;
    .restart local v5    # "cgroupout":Ljava/io/FileOutputStream;
    :catch_221
    move-exception v0

    move-object v7, v0

    .line 832
    .local v0, "ec":Ljava/io/IOException;
    const-string v7, "OnePlusProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_22a
    const-string v9, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " : close Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 832
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .end local v0    # "ec":Ljava/io/IOException;
    goto :goto_24f

    .line 834
    :cond_24e
    :goto_24e
    nop

    .line 836
    :goto_24f
    return-void

    .line 826
    .end local v5    # "cgroupout":Ljava/io/FileOutputStream;
    .local v6, "cgroupout":Ljava/io/FileOutputStream;
    .local v7, "f":Ljava/io/File;
    :goto_250
    nop

    .line 827
    if-eqz v6, :cond_285

    .line 828
    :try_start_253
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_256
    .catch Ljava/io/IOException; {:try_start_253 .. :try_end_256} :catch_258

    .line 829
    const/4 v6, 0x0

    goto :goto_285

    .line 831
    :catch_258
    move-exception v0

    move-object v8, v0

    .line 832
    .restart local v0    # "ec":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException --> writePidToTasksFile() : uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " : close Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 832
    const-string v9, "OnePlusProcessManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    .end local v0    # "ec":Ljava/io/IOException;
    nop

    .line 834
    :cond_285
    :goto_285
    throw v5
.end method


# virtual methods
.method checkTrafficUid(I)Z
    .registers 18
    .param p1, "uid"    # I

    .line 2010
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2011
    .local v0, "now":J
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;

    .line 2012
    .local v2, "obj":Lcom/android/server/am/OnePlusProcessManager$Traffic;
    const/4 v3, 0x0

    if-nez v2, :cond_14

    .line 2013
    return v3

    .line 2015
    :cond_14
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 2016
    .local v4, "txBytes":J
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    .line 2017
    .local v6, "rxBytes":J
    const-wide/16 v8, 0x1

    .line 2018
    .local v8, "timeDuring":J
    sget-wide v10, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_2e

    .line 2019
    iget-wide v10, v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;->startTime:J

    sub-long v10, v0, v10

    sget-wide v12, Lcom/android/server/am/OnePlusProcessManager;->computeTrafficTime:J

    div-long v8, v10, v12

    .line 2021
    :cond_2e
    const-wide/16 v10, 0x1

    cmp-long v10, v8, v10

    if-gtz v10, :cond_36

    .line 2022
    const-wide/16 v8, 0x1

    .line 2024
    :cond_36
    iget-wide v10, v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;->rxBytes:J

    sub-long v10, v6, v10

    div-long/2addr v10, v8

    const-wide/32 v12, 0x32000

    cmp-long v10, v12, v10

    const/4 v11, 0x1

    if-gez v10, :cond_44

    .line 2025
    return v11

    .line 2026
    :cond_44
    iget-wide v14, v2, Lcom/android/server/am/OnePlusProcessManager$Traffic;->txBytes:J

    sub-long v14, v4, v14

    div-long/2addr v14, v8

    cmp-long v10, v12, v14

    if-gez v10, :cond_4e

    .line 2027
    return v11

    .line 2029
    :cond_4e
    return v3
.end method

.method public computeThreeAppState()V
    .registers 7

    .line 2987
    const/4 v0, 0x0

    .line 2988
    .local v0, "mProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2989
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    .line 2990
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_62

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2991
    if-nez v0, :cond_19

    .line 2992
    return-void

    .line 2995
    :cond_19
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_61

    .line 2996
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 2997
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_5e

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-nez v3, :cond_31

    .line 2998
    goto :goto_5e

    .line 3000
    :cond_31
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_5e

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-nez v3, :cond_5e

    .line 3002
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->add3rdAppProcessState(II)V

    .line 3003
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3004
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUidPackageNames:Landroid/util/ArrayMap;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2995
    :cond_5e
    :goto_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 3008
    .end local v1    # "i":I
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_61
    return-void

    .line 2990
    :catchall_62
    move-exception v2

    :try_start_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@The BPM status is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4122
    const-string v0, "@The BPM list : "

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBPMList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 4123
    const-string v0, "@The PKG list : "

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 4124
    const-string v0, "@The BRD list : "

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/am/OnePlusProcessManager;->printList(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 4126
    const-string v0, "UidPidState list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4127
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4128
    const/4 v1, 0x0

    move v2, v1

    .line 4128
    .local v2, "i":I
    :goto_35
    :try_start_35
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_84

    .line 4129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t mUidPidState uid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4130
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4131
    .local v3, "mPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v4, v1

    .line 4131
    .local v4, "j":I
    :goto_60
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_81

    .line 4132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t \t  mUidPidState pid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4131
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 4128
    .end local v3    # "mPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "j":I
    :cond_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 4135
    .end local v2    # "i":I
    :cond_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_35 .. :try_end_85} :catchall_2ac

    .line 4136
    const-string v0, "Suspend list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4137
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4138
    move v0, v1

    .line 4138
    .local v0, "i":I
    :goto_8e
    :try_start_8e
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_b3

    .line 4139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t suspend uid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4138
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    .line 4141
    .end local v0    # "i":I
    :cond_b3
    monitor-exit v2
    :try_end_b4
    .catchall {:try_start_8e .. :try_end_b4} :catchall_2a9

    .line 4142
    const-string/jumbo v0, "mGpsReceiverLocationUids list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4144
    move v0, v1

    .line 4144
    .restart local v0    # "i":I
    :goto_bb
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_e0

    .line 4145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t mGpsReceiverLocationUids uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mGpsReceiverLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4144
    add-int/lit8 v0, v0, 0x1

    goto :goto_bb

    .line 4148
    .end local v0    # "i":I
    :cond_e0
    const-string/jumbo v0, "mBlackGpsList list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4149
    move v0, v1

    .line 4149
    .restart local v0    # "i":I
    :goto_e7
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_10e

    .line 4150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t mBlackGpsList uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4149
    add-int/lit8 v0, v0, 0x1

    goto :goto_e7

    .line 4153
    .end local v0    # "i":I
    :cond_10e
    const-string/jumbo v0, "mForceStopSensorPackage list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4154
    move v0, v1

    .line 4154
    .restart local v0    # "i":I
    :goto_115
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_13c

    .line 4155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t mForceStopSensorPackage uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4154
    add-int/lit8 v0, v0, 0x1

    goto :goto_115

    .line 4158
    .end local v0    # "i":I
    :cond_13c
    const-string/jumbo v0, "mOtherReceiverLocationUids list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4160
    move v0, v1

    .line 4160
    .restart local v0    # "i":I
    :goto_143
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_168

    .line 4161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t mOtherReceiverLocationUids uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mOtherReceiverLocationUids:Ljava/util/ArrayList;

    .line 4162
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4161
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4160
    add-int/lit8 v0, v0, 0x1

    goto :goto_143

    .line 4165
    .end local v0    # "i":I
    :cond_168
    const-string/jumbo v0, "mStatusLocationUids list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4167
    move v0, v1

    .line 4167
    .restart local v0    # "i":I
    :goto_16f
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_194

    .line 4168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t mStatusLocationUids uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mStatusLocationUids:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4167
    add-int/lit8 v0, v0, 0x1

    goto :goto_16f

    .line 4170
    .end local v0    # "i":I
    :cond_194
    const-string/jumbo v0, "mFrontWindowTouchUids list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4172
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4173
    :try_start_19d
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4174
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1a3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c4

    .line 4175
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4176
    .local v3, "mUid":Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t mFrontWindowTouchUids uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a3

    .line 4178
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "mUid":Ljava/lang/Integer;
    :cond_1c4
    monitor-exit v0
    :try_end_1c5
    .catchall {:try_start_19d .. :try_end_1c5} :catchall_2a6

    .line 4179
    const-string v0, "UnFrozenReasonUids list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4180
    move v0, v1

    .line 4180
    .restart local v0    # "i":I
    :goto_1cb
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_200

    .line 4181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t mUnFrozenUids uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reseason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    .line 4182
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4181
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1cb

    .line 4184
    .end local v0    # "i":I
    :cond_200
    const-string v0, "ResumeBroadcastUids list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4188
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    if-eqz v0, :cond_273

    .line 4189
    move v0, v1

    .line 4189
    .restart local v0    # "i":I
    :goto_20a
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_273

    .line 4190
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 4191
    .local v2, "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeUidBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4192
    .local v3, "uid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t resumeBroadcastUids uid = : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4193
    if-eqz v2, :cond_270

    .line 4194
    move v4, v1

    .line 4194
    .restart local v4    # "j":I
    :goto_237
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_270

    .line 4195
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4196
    .local v5, "broadcasts":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 4197
    .local v6, "mCount":Ljava/lang/Integer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t resumeBroadcastUids uid = : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " broadcast ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " mCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4194
    add-int/lit8 v4, v4, 0x1

    goto :goto_237

    .line 4189
    .end local v2    # "mBroadcasts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "j":I
    .end local v5    # "broadcasts":Ljava/lang/String;
    .end local v6    # "mCount":Ljava/lang/Integer;
    :cond_270
    add-int/lit8 v0, v0, 0x1

    goto :goto_20a

    .line 4204
    .end local v0    # "i":I
    .end local v3    # "uid":I
    :cond_273
    const-string v0, "SuspendProcessHandler list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4205
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    if-eqz v0, :cond_28c

    .line 4206
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v2, "\t message list"

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4209
    :cond_28c
    const-string v0, "ResumeProcessHandler list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4210
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2a5

    .line 4211
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mResumeProcessHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v2, "\t message list"

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4215
    :cond_2a5
    return-void

    .line 4178
    :catchall_2a6
    move-exception v1

    :try_start_2a7
    monitor-exit v0
    :try_end_2a8
    .catchall {:try_start_2a7 .. :try_end_2a8} :catchall_2a6

    throw v1

    .line 4141
    :catchall_2a9
    move-exception v0

    :try_start_2aa
    monitor-exit v2
    :try_end_2ab
    .catchall {:try_start_2aa .. :try_end_2ab} :catchall_2a9

    throw v0

    .line 4135
    :catchall_2ac
    move-exception v1

    :try_start_2ad
    monitor-exit v0
    :try_end_2ae
    .catchall {:try_start_2ad .. :try_end_2ae} :catchall_2ac

    throw v1
.end method

.method public getBPMEnable()Z
    .registers 4

    .line 2888
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_1c

    .line 2889
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBPMEnable():mBPMStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    :cond_1c
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    return v0
.end method

.method loadNPMConfigFiles()V
    .registers 8

    .line 2140
    const-string v0, "/data/data_bpm/brd.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    .line 2141
    const-string v0, "/data/data_bpm/pkg.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    .line 2142
    const-string v0, "/data/data_bpm/black_gps.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    .line 2143
    const-string v0, "/data/data_bpm/black_brd.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    .line 2144
    const-string v0, "/data/data_bpm/black_alarm.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    .line 2145
    const-string v0, "/data/data_bpm/force_stop_sensor.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    .line 2147
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadNPMConfigFiles: mPkgList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadNPMConfigFiles: mBrdList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBrdList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadNPMConfigFiles mBlackBrdList= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackBrdList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadNPMConfigFiles mBlackGpsList= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackGpsList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadNPMConfigFiles mBlackAlarmList= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mBlackAlarmList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadNPMConfigFiles mForceStopSensorPackage= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceStopSensorPackage:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    const-string v0, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2156
    .local v0, "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_11f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11f

    .line 2157
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2158
    .local v3, "temp":Z
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FO]UPDATE_STS: before: temp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->prepareConfigStatus()V

    .line 2160
    sget v4, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_11f

    .line 2161
    iget v4, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    if-ne v4, v2, :cond_10e

    .line 2162
    invoke-virtual {p0, v2}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 2163
    const-string v1, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    goto :goto_11f

    .line 2164
    :cond_10e
    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_11c

    .line 2165
    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 2166
    const-string v2, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusProcessManager;->saveBpmStsLocked(Ljava/lang/String;Z)Z

    goto :goto_11f

    .line 2168
    :cond_11c
    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 2172
    .end local v3    # "temp":Z
    :cond_11f
    :goto_11f
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusProcessManager;->updateProperties()V

    .line 2174
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FO]UPDATE_STS: before: mBPMStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    return-void
.end method

.method public openDebug(Z)V
    .registers 2
    .param p1, "on"    # Z

    .line 4109
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    .line 4110
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    .line 4111
    return-void
.end method

.method prepareBPMConfigFiles()V
    .registers 6

    .line 2552
    const-string v0, "OnePlusProcessManager"

    const-string v1, "[FO]prepareBPMConfigFiles()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    :try_start_7
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data_bpm/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2555
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    .line 2556
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2558
    :cond_17
    const/4 v1, 0x0

    .line 2559
    .local v1, "isForceUpdate":Z
    invoke-direct {p0}, Lcom/android/server/am/OnePlusProcessManager;->checkVersion()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2560
    const/4 v1, 0x1

    .line 2562
    :cond_1f
    const-string v2, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FO]prepareBPMConfigFiles() isForceUpdate ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    const-string v2, "/system/bpm/pkg.xml"

    const-string v3, "/data/data_bpm/pkg.xml"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2564
    const-string v2, "/system/bpm/brd.xml"

    const-string v3, "/data/data_bpm/brd.xml"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2565
    const-string v2, "/system/bpm/bpm_sts.xml"

    const-string v3, "/data/data_bpm/bpm_sts.xml"

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2566
    const-string v2, "/system/bpm/black_gps.xml"

    const-string v3, "/data/data_bpm/black_gps.xml"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2567
    const-string v2, "/system/bpm/black_brd.xml"

    const-string v3, "/data/data_bpm/black_brd.xml"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2568
    const-string v2, "/system/bpm/black_alarm.xml"

    const-string v3, "/data/data_bpm/black_alarm.xml"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2569
    const-string v2, "/system/bpm/version.xml"

    const-string v3, "/data/data_bpm/version.xml"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2570
    const-string v2, "/system/bpm/force_stop_sensor.xml"

    const-string v3, "/data/data_bpm/force_stop_sensor.xml"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_6e} :catch_6f

    .line 2573
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "isForceUpdate":Z
    goto :goto_86

    .line 2571
    :catch_6f
    move-exception v0

    .line 2572
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FO]initBPMConfigFiles(): failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_86
    :try_start_86
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "chmod 0770 /data/data_bpm/"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2577
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "chmod 0770 /data/data_bpm/pkg.xml"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2578
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "chmod 0770 /data/data_bpm/brd.xml"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2579
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "chmod 0770 /data/data_bpm/bpm_sts.xml"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2580
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "chmod 0770 /data/data_bpm/black_gps.xml"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2581
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "chmod 0770 /data/data_bpm/black_brd.xml"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 2582
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "chmod 0770 /data/data_bpm/force_stop_sensor.xml"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_c5} :catch_c6

    .line 2586
    goto :goto_e0

    .line 2583
    :catch_c6
    move-exception v0

    .line 2584
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FO]prepareBPMConfigFiles(): failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2587
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e0
    return-void
.end method

.method prepareConfigStatus()V
    .registers 8

    .line 2093
    const-string/jumbo v0, "prepareConfigStatus()"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->myLog(Ljava/lang/String;)V

    .line 2094
    const-string v0, "/data/data_bpm/cfg.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2095
    .local v0, "dataCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "/system/bpm/cfg.xml"

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 2102
    .local v1, "sysCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 2103
    .local v2, "sv":I
    const/4 v3, 0x0

    .line 2104
    .local v3, "dv":I
    if-nez v1, :cond_18

    .line 2105
    const/4 v2, 0x0

    .line 2106
    return-void

    .line 2108
    :cond_18
    const-string/jumbo v4, "version"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2109
    .local v4, "sysVersion":Ljava/lang/String;
    if-eqz v4, :cond_2b

    .line 2110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2114
    :cond_2b
    if-nez v0, :cond_2f

    .line 2115
    const/4 v3, 0x0

    goto :goto_42

    .line 2117
    :cond_2f
    const-string/jumbo v5, "version"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2118
    .local v5, "dataVersion":Ljava/lang/String;
    if-eqz v5, :cond_42

    .line 2119
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2122
    .end local v5    # "dataVersion":Ljava/lang/String;
    :cond_42
    :goto_42
    sput v3, Lcom/android/server/am/OnePlusProcessManager;->CFG_VERSOON:I

    .line 2123
    if-le v2, v3, :cond_70

    .line 2124
    sput v2, Lcom/android/server/am/OnePlusProcessManager;->CFG_VERSOON:I

    .line 2125
    const-string v5, "forceSwitch"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2126
    .local v5, "forceSwitch":Ljava/lang/String;
    if-eqz v5, :cond_6b

    .line 2127
    const-string/jumbo v6, "on"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 2128
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    goto :goto_6b

    .line 2129
    :cond_5f
    const-string/jumbo v6, "off"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 2130
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    .line 2134
    :cond_6b
    :goto_6b
    const-string v6, "/data/data_bpm/cfg.xml"

    invoke-static {v6, v1}, Lcom/android/server/am/OnePlusProcessManager;->saveXmlLocked(Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 2136
    .end local v5    # "forceSwitch":Ljava/lang/String;
    :cond_70
    return-void
.end method

.method removeUidStateLocked(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 1623
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 1624
    .local v0, "index":I
    if-ltz v0, :cond_13

    .line 1625
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 1626
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1628
    .end local v1    # "oldUidState":I
    :cond_13
    return-void
.end method

.method public resumeAllProcessLock(Ljava/lang/String;)V
    .registers 7
    .param p1, "why"    # Ljava/lang/String;

    .line 3170
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 3172
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;

    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mSuspendUids:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, p1, v4}, Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;I)Z

    .line 3171
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3174
    .end local v1    # "i":I
    :cond_21
    monitor-exit v0

    .line 3175
    return-void

    .line 3174
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public setBPMEnable(Z)V
    .registers 4
    .param p1, "flag"    # Z

    .line 2894
    iget v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_6

    .line 2895
    const/4 p1, 0x0

    .line 2898
    :cond_6
    if-eqz p1, :cond_11

    .line 2899
    const-string/jumbo v0, "sys.cgroup.active"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 2901
    :cond_11
    const-string/jumbo v0, "sys.cgroup.active"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2904
    :goto_19
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eq p1, v0, :cond_27

    .line 2905
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatusing:Z

    .line 2906
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateBPMEnableState(Z)V

    .line 2907
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateDozePolicyToDB(Z)V

    .line 2908
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    .line 2910
    :cond_27
    return-void
.end method

.method public setBPMEnableFromDB(Z)V
    .registers 5
    .param p1, "flag"    # Z

    .line 2914
    iget v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mForceSwitch:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_6

    .line 2915
    const/4 p1, 0x0

    .line 2918
    :cond_6
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_2a

    .line 2919
    sget v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    .line 2920
    const-string/jumbo v0, "persist.sys.cgroup.flags"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/server/am/OnePlusProcessManager;->mGlobalFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    :cond_2a
    if-eqz p1, :cond_35

    .line 2924
    const-string/jumbo v0, "sys.cgroup.active"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 2926
    :cond_35
    const-string/jumbo v0, "sys.cgroup.active"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2929
    :goto_3d
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    if-eq p1, v0, :cond_48

    .line 2930
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatusing:Z

    .line 2931
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusProcessManager;->updateBPMEnableState(Z)V

    .line 2932
    sput-boolean p1, Lcom/android/server/am/OnePlusProcessManager;->mBPMStatus:Z

    .line 2934
    :cond_48
    return-void
.end method

.method public setCGroupState(IZ)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    .line 847
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusProcessManager;->setCGroupStateLocked(IZ)Z

    move-result v0

    return v0
.end method

.method updatePowerSaveWhitelistLocked()V
    .registers 5

    .line 1398
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [I

    .line 1399
    .local v0, "mWhiteUid":[I
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_e

    .line 1400
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v1}, Landroid/os/IDeviceIdleController;->getAppIdUserWhitelist()[I

    move-result-object v1

    move-object v0, v1

    .line 1402
    :cond_e
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_25

    .line 1403
    :try_start_11
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    invoke-direct {p0, v2}, Lcom/android/server/am/OnePlusProcessManager;->changeIntToList([I)Ljava/util/List;

    move-result-object v2

    .line 1404
    .local v2, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusProcessManager;->changeIntToList([I)Ljava/util/List;

    move-result-object v3

    .line 1405
    .local v3, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->handlePackageChange(Ljava/util/List;Ljava/util/List;)V

    .line 1406
    sput-object v0, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    .line 1407
    .end local v2    # "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-exit v1

    .line 1410
    .end local v0    # "mWhiteUid":[I
    goto :goto_29

    .line 1407
    .restart local v0    # "mWhiteUid":[I
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_22

    :try_start_24
    throw v2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_25} :catch_25

    .line 1408
    .end local v0    # "mWhiteUid":[I
    :catch_25
    move-exception v0

    .line 1409
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/OnePlusProcessManager;->mWhiteUids:[I

    .line 1411
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    return-void
.end method

.method updateProperties()V
    .registers 1

    .line 2178
    return-void
.end method

.method updateUidStateLocked(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .line 1526
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1527
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_f

    .line 1529
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1531
    :cond_f
    return-void
.end method

.method writePidToTasksFileDelayed(II)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 839
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 840
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x72

    iput v1, v0, Landroid/os/Message;->what:I

    .line 841
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 842
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 843
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 844
    return-void
.end method
