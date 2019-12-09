.class public Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorUpdater;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    }
.end annotation


# static fields
.field private static final ACTION_DEBUG:Ljava/lang/String; = "com.OPCS.action.debug"

.field private static final ACTION_REPORT:Ljava/lang/String; = "com.OPCS.action.report"

.field private static final ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field private static final ACTION_TIME_SET:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field private static final APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static BootDelayTime:J = 0x0L

.field private static CalculateIntervalThreshold:J = 0x0L

.field private static DEBUG_LOG:Z = false

.field private static final DEBUG_LOG_ENABLE:Ljava/lang/String; = "persist.sys.opcs.debug_log"

.field private static DEBUG_ONEPLUS:Z = false

.field private static DEBUG_SPECIFIC:Z = false

.field private static final DEBUG_SPECIFIC_ENABLE:Ljava/lang/String; = "persist.sys.opcs.debug_specific"

.field private static DEBUG_VERIFY:Z = false

.field private static final DEBUG_VERIFY_ENABLE:Ljava/lang/String; = "persist.sys.opcs.debug_verify"

.field private static final DES_CMD_CALCULATEPOWER:Ljava/lang/String; = "cmd_calculatePower"

.field private static final DES_EMPTY:Ljava/lang/String; = "null"

.field private static final DES_GENERATE_POWERCONSUMPTION_DATA:Ljava/lang/String; = "generatePowerConsumptionData"

.field private static final DES_HANDLE_PLUG_EVENT:Ljava/lang/String; = "handle_plug_event"

.field private static final DES_NONE:Ljava/lang/String; = "none"

.field private static final DES_NULL:Ljava/lang/String; = ""

.field private static final DES_PLUGGED_AC:Ljava/lang/String; = "AC"

.field private static final DES_PLUGGED_FASTCHARGE:Ljava/lang/String; = "FASTCHARGE"

.field private static final DES_PLUGGED_NONE:Ljava/lang/String; = "NONE"

.field private static final DES_PLUGGED_USB:Ljava/lang/String; = "USB"

.field private static final DES_PLUGGED_WIRELESS:Ljava/lang/String; = "WIRELESS"

.field private static final DES_TYPE_DOZE:Ljava/lang/String; = "doze"

.field private static final DES_TYPE_PKG:Ljava/lang/String; = "frontPkg"

.field private static final DES_TYPE_PLUG:Ljava/lang/String; = "plug"

.field private static final DES_TYPE_POWERLEVEL:Ljava/lang/String; = "powerLevel"

.field private static final DES_TYPE_SCREEN:Ljava/lang/String; = "screen"

.field private static final DES_UNKNOW:Ljava/lang/String; = "unknow"

.field private static ENABLE:Z = false

.field private static final ENDLINE:Ljava/lang/String;

.field private static final EVENT_ACTIVE:I = 0x0

.field private static final EVENT_IDLE:I = 0x1

.field private static final EVENT_PLUG:I = 0x1

.field private static final EVENT_SCREEN_OFF:I = 0x0

.field private static final EVENT_SCREEN_ON:I = 0x1

.field private static final EVENT_UNPLUG:I = 0x0

.field public static final FAKE_UID_AMBIENT_DISPLAY:I = -0x63

.field public static final FAKE_UID_APP:I = -0x62

.field public static final FAKE_UID_BASE:I = -0x64

.field public static final FAKE_UID_BLUETOOTH:I = -0x61

.field public static final FAKE_UID_CAMERA:I = -0x60

.field public static final FAKE_UID_CELL:I = -0x5f

.field public static final FAKE_UID_DEFAULT:I = -0x55

.field public static final FAKE_UID_END:I = -0x54

.field public static final FAKE_UID_FLASHLIGHT:I = -0x5e

.field public static final FAKE_UID_IDLE:I = -0x5d

.field public static final FAKE_UID_MEMORY:I = -0x5c

.field public static final FAKE_UID_OVERCOUNTED:I = -0x5b

.field public static final FAKE_UID_PHONE:I = -0x5a

.field public static final FAKE_UID_SCREEN:I = -0x59

.field public static final FAKE_UID_UNACCOUNTED:I = -0x58

.field public static final FAKE_UID_USER:I = -0x57

.field public static final FAKE_UID_WIFI:I = -0x56

.field private static INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic; = null

.field private static INSTANCE_BAK:Lcom/android/server/am/OnePlusPowerConsumptionStatistic; = null

.field private static final MSG_DOZE_EVENT:I = 0x6

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final MSG_PERSIST:I = 0x7

.field private static final MSG_PKG_EVENT:I = 0xe

.field private static final MSG_PLUGGED_FASTCHARGE_EVENT:I = 0x3

.field private static final MSG_PLUG_EVENT:I = 0x2

.field private static final MSG_PLUG_INIT_EVENT:I = 0x8

.field private static final MSG_POWERLEVEL_EVENT:I = 0x5

.field private static final MSG_REPORT:I = 0x9

.field private static final MSG_RESET_LISTENER:I = 0xd

.field private static final MSG_SCREEN_EVENT:I = 0x4

.field private static final MSG_SHUTDOWN:I = 0xb

.field private static final MSG_TIME_SET:I = 0xa

.field private static final MSG_TRACKDATA:I = 0xc

.field private static RandomInterval:I = 0x0

.field private static ReportTimePoint:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "OPCS"

.field private static final TAG_SPECIFIC:Ljava/lang/String; = "OPCS_SPECIFIC"

.field private static TopKernelWakeLocks:I = 0x0

.field private static TopKernelWakeupReasons:I = 0x0

.field private static TopSize:I = 0x0

.field private static final VALUE_FULL_POWER:I = 0x64

.field private static final VALUE_ONE_DAY:J = 0x5265c00L

.field private static final VERSION:I = 0x1141301


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAppInForegroundDischargeDurationTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

.field private mBaseData:Landroid/util/AtomicFile;

.field private mBaseEventList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

.field private mBatteryManager:Landroid/os/BatteryManager;

.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

.field private mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private final mCalculateAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mCalculateTime_Begin:J

.field private mCalculateTime_End:J

.field mChargeFragment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

.field private mConsumptionDetectorHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCumulativeAppInForeground:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDozeSeq:I

.field private mCurrentPkgSeq:I

.field private mCurrentPlugSeq:I

.field private mCurrentPowerLevelSeq:I

.field private mCurrentScreenSeq:I

.field private mCurrentTotalSeq:I

.field private mDebugReceiver:Landroid/content/BroadcastReceiver;

.field mDozeFragment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mDozeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;

.field private mFrontPkg:Ljava/lang/String;

.field private mIdleState:Z

.field private mKernelWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mKernelWakeLocks_Past:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mKernelWakeLocks_Temp_Verify:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mKernelWakeupReasons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mKernelWakeupReasons_Past:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mKernelWakeupReasons_Temp_Verify:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedConsiderPast:Z

.field private mNewVersionFirstReport:Z

.field private mOnePlusConsumptionDetectorConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPersistData:Landroid/util/AtomicFile;

.field private mPlugState:Z

.field private mPowerConsumptionList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerConsumptionList_Past:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerConsumptionList_Temp_Verify:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerLevel:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

.field private mResetParamListener:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;

.field private mRetForKernelWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRetForKernelWakeupReasons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRetForPowerConsumptionList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenState:Z

.field private mSpecificCounter_ScreenOffDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

.field private mSpecificCounter_ScreenOnDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

.field private mSpecificCounter_TotalDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

.field private mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

.field private mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

.field private mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

.field private mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

.field private mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

.field private mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

.field private mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

.field private mSpecificTimer_TotalScreenOnDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

.field private mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

.field private final mTrackAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private pi:Landroid/app/PendingIntent;

.field final timerComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private timerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 86
    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE_BAK:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_LOG:Z

    .line 89
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_ONEPLUS:Z

    .line 90
    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_SPECIFIC:Z

    .line 91
    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    .line 140
    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    .line 143
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    .line 144
    const/16 v0, 0x168

    sput v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->RandomInterval:I

    .line 145
    const-wide/32 v0, 0xa4cb80

    sput-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ReportTimePoint:J

    .line 146
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->CalculateIntervalThreshold:J

    .line 147
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BootDelayTime:J

    .line 148
    const/16 v0, 0xa

    sput v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopSize:I

    .line 149
    const/16 v0, 0x8

    sput v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeLocks:I

    .line 150
    sput v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeupReasons:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "batteryStatsService"    # Lcom/android/server/am/BatteryStatsService;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    .line 153
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mOnePlusConsumptionDetectorConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 154
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    .line 155
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseData:Landroid/util/AtomicFile;

    .line 156
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    .line 157
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    .line 158
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryManager:Landroid/os/BatteryManager;

    .line 159
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 160
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 161
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 162
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    .line 163
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    .line 164
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerManager:Landroid/os/PowerManager;

    .line 165
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 166
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 167
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 168
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    .line 169
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    .line 170
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mResetParamListener:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;

    .line 171
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 172
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->timerLock:Ljava/lang/Object;

    .line 174
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    .line 175
    iput-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    .line 177
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    .line 178
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mIdleState:Z

    .line 179
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNeedConsiderPast:Z

    .line 180
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I

    .line 181
    const-string/jumbo v2, "none"

    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mFrontPkg:Ljava/lang/String;

    .line 182
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->pi:Landroid/app/PendingIntent;

    .line 183
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNewVersionFirstReport:Z

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragment:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragment:Ljava/util/ArrayList;

    .line 188
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    const-string v2, "TotalDischarge"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_TotalDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    .line 190
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    const-string v2, "TotalDischargeDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    .line 192
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    const-string v2, "TotalChargeDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    .line 195
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    const-string v2, "ScreenOnDischarge"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOnDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    .line 197
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    const-string v2, "TotalScreenOnDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOnDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    .line 199
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    const-string v2, "ScreenOnDischargeDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    .line 201
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    const-string v2, "ScreenOnChargeDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    .line 204
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    const-string v2, "ScreenOffDischarge"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOffDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    .line 206
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    const-string v2, "TotalScreenOffDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    .line 208
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    const-string v2, "ScreenOffDischargeDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    .line 210
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    const-string v2, "ScreenOffChargeDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    .line 213
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;

    .line 214
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCumulativeAppInForeground:Ljava/util/HashMap;

    .line 217
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAppInForegroundDischargeDurationTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    .line 218
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    .line 219
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList_Temp_Verify:Landroid/util/SparseArray;

    .line 220
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList_Past:Landroid/util/SparseArray;

    .line 221
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForPowerConsumptionList:Landroid/util/SparseArray;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks:Ljava/util/HashMap;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks_Temp_Verify:Ljava/util/HashMap;

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks_Past:Ljava/util/HashMap;

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeLocks:Ljava/util/HashMap;

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons:Ljava/util/HashMap;

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons_Temp_Verify:Ljava/util/HashMap;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons_Past:Ljava/util/HashMap;

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeupReasons:Ljava/util/HashMap;

    .line 233
    iput v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentTotalSeq:I

    .line 234
    iput v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPowerLevelSeq:I

    .line 235
    iput v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentScreenSeq:I

    .line 236
    iput v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPlugSeq:I

    .line 237
    iput v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentDozeSeq:I

    .line 238
    iput v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPkgSeq:I

    .line 244
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    .line 615
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$1;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 659
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    .line 1036
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$3;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 1051
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$4;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$4;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mTrackAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 3572
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$5;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->timerComparator:Ljava/util/Comparator;

    .line 273
    const-string v0, "OnePlusPowerConsumptionStatistic()--constructor:18092801"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 275
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    .line 276
    iput-object p2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 277
    iput-object p3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 278
    const-string/jumbo v0, "persist.sys.opcs.debug_log"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_LOG:Z

    .line 279
    const-string/jumbo v0, "persist.sys.opcs.debug_specific"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_SPECIFIC:Z

    .line 281
    const-string/jumbo v0, "persist.sys.opcs.debug_verify"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    .line 283
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "mConsumptionDetectorThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, "mConsumptionDetectorThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 286
    new-instance v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;

    .line 287
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    .line 289
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    .line 290
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    .line 291
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    .line 292
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerManager:Landroid/os/PowerManager;

    .line 293
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    const-string v3, "batterymanager"

    .line 294
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryManager;

    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryManager:Landroid/os/BatteryManager;

    .line 295
    const-string/jumbo v2, "package"

    .line 296
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 297
    const-string/jumbo v2, "usagestats"

    .line 298
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 300
    new-instance v2, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 302
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 303
    .local v2, "dataDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "system"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    .local v3, "systemDir":Ljava/io/File;
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "consumptionDetector_statistcal_data.xml"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    .line 306
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "consumptionDetector_base_data.xml"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseData:Landroid/util/AtomicFile;

    .line 309
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 310
    .local v4, "opcsDebugFilter":Landroid/content/IntentFilter;
    const-string v5, "com.OPCS.action.debug"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 314
    .local v5, "opcsFilter":Landroid/content/IntentFilter;
    const-string v6, "com.OPCS.action.report"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 320
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.OPCS.action.report"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v6, "alarmIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    const/high16 v8, 0x8000000

    invoke-static {v7, v1, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->pi:Landroid/app/PendingIntent;

    .line 324
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->init()V

    .line 325
    sput-object p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    sput-object p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE_BAK:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 326
    return-void
.end method

.method private BaseEventList_clear()V
    .registers 3

    .line 4384
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4385
    :try_start_3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    .line 4386
    monitor-exit v0

    .line 4387
    return-void

    .line 4386
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private BaseEventList_get(I)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;
    .registers 4
    .param p1, "totalSeq"    # I

    .line 4378
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4379
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;

    monitor-exit v0

    return-object v1

    .line 4380
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private BaseEventList_put(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;)V
    .registers 5
    .param p1, "brp"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;

    .line 4371
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4372
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->totalSeq:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4373
    monitor-exit v0

    .line 4374
    return-void

    .line 4373
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 83
    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # Z

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleReport(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleBatteryStatsRelated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->dumpAppForeground()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->dumpPowerConsumptionList()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->generatePowerConsumptionData()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->generateSortListAndSystemList(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->dumpBaseEventList()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculateKernelWakeLocks(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 83
    invoke-static {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 83
    invoke-static {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lorg/json/JSONArray;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->initStatistics()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    .line 83
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    .line 83
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # J

    .line 83
    iput-wide p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getCurrentPoint()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->acquireWakeLock()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # I

    .line 83
    iput p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/BatteryManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryManager:Landroid/os/BatteryManager;

    return-object v0
.end method

.method static synthetic access$3300()Z
    .registers 1

    .line 83
    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mFrontPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mFrontPkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePkgEvent()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # I

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePlugInitEvent(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePlugFastChargeEvent()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleScreenEvent()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleDozeEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calibrateCalculateAlarm()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calibrateReportAlarm()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mIdleState:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mIdleState:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # I

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePlugEvent(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # Z

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePowerLevelEvent(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->toTrackImmediately()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->resetListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # Z

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePersist(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->dumpInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->dumpState()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->timerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # I

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getDescriptionByPlugType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/app/usage/UsageStatsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCumulativeAppInForeground:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleCalculate(Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # I

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getDrainTypeByFakeUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/pm/PackageManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 83
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$8900(D)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # D

    .line 83
    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p1, "x1"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->persistToLocal(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    return-void
.end method

.method private acquireWakeLock()V
    .registers 4

    .line 600
    const-string v0, "acquireWakeLock"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_14

    .line 602
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "OPCS"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 605
    :cond_14
    return-void
.end method

.method private calculateKernelWakeLocks(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 24
    .param p1, "from"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3441
    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateKernelWakeLocks from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 3443
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3444
    .local v2, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;>;"
    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3445
    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    .line 3446
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v3

    .line 3447
    .local v3, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_12a

    .line 3448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 3449
    .local v4, "rawRealtime":J
    const/4 v6, 0x0

    .line 3450
    .local v6, "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    const/4 v7, 0x0

    .line 3451
    .local v7, "temp_new":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    nop

    .line 3452
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 3451
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_40
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 3453
    .local v9, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Timer;

    .line 3454
    .local v10, "timer":Landroid/os/BatteryStats$Timer;
    const/4 v11, 0x2

    invoke-static {v10, v4, v5, v11}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v12

    .line 3456
    .local v12, "totalTimeMillis":J
    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_120

    .line 3457
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Ljava/lang/String;

    .line 3458
    .local v14, "key":Ljava/lang/String;
    iget-object v15, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks_Temp_Verify:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v6, v15

    check-cast v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 3459
    new-instance v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 3462
    move-object/from16 v17, v3

    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    .line 3462
    .end local v3    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v17, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-direct {v15, v14, v12, v13, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>(Ljava/lang/String;JI)V

    move-object v7, v15

    .line 3463
    if-eqz v6, :cond_a2

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->equals(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z
    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->access$8400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 3464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculateKernelWakeLocks # continue key:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " |totalTimeMillis:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 3465
    nop

    .line 3451
    move-object/from16 v3, v17

    goto :goto_40

    .line 3468
    :cond_a2
    const-string/jumbo v3, "handle_plug_event"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 3469
    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks_Temp_Verify:Ljava/util/HashMap;

    invoke-virtual {v3, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3472
    :cond_b0
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 3473
    .local v3, "old_te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    const/4 v15, 0x0

    .line 3474
    .local v15, "new_te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    if-nez v3, :cond_c5

    .line 3475
    move-wide/from16 v18, v4

    new-instance v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 3478
    .end local v4    # "rawRealtime":J
    .local v18, "rawRealtime":J
    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-direct {v4, v14, v12, v13, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>(Ljava/lang/String;JI)V

    .line 3478
    .end local v15    # "new_te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .local v4, "new_te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    goto :goto_d4

    .line 3480
    .end local v18    # "rawRealtime":J
    .local v4, "rawRealtime":J
    .restart local v15    # "new_te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    :cond_c5
    move-wide/from16 v18, v4

    .line 3480
    .end local v4    # "rawRealtime":J
    .restart local v18    # "rawRealtime":J
    new-instance v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-direct {v4, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)V

    .line 3481
    .end local v15    # "new_te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .local v4, "new_te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    nop

    .line 3483
    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 3481
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->updateData(JI)V
    invoke-static {v4, v12, v13, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->access$8500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;JI)V

    .line 3486
    :goto_d4
    const/4 v5, 0x1

    .line 3487
    .local v5, "isRight":Z
    iget-boolean v11, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNeedConsiderPast:Z

    if-eqz v11, :cond_e5

    .line 3488
    iget-object v11, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks_Past:Ljava/util/HashMap;

    .line 3489
    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 3488
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->handlePastData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z
    invoke-static {v4, v11}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->access$8600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z

    move-result v5

    .line 3492
    :cond_e5
    if-eqz v5, :cond_105

    move/from16 v21, v5

    move-object/from16 v20, v6

    iget-wide v5, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    .line 3492
    .end local v5    # "isRight":Z
    .end local v6    # "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .local v20, "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .local v21, "isRight":Z
    const-wide/16 v15, 0x0

    cmp-long v5, v5, v15

    if-lez v5, :cond_109

    .line 3493
    const-string/jumbo v5, "handle_plug_event"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_101

    .line 3494
    iget-object v5, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v5, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3496
    :cond_101
    invoke-virtual {v2, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_109

    .line 3498
    .end local v20    # "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .end local v21    # "isRight":Z
    .restart local v5    # "isRight":Z
    .restart local v6    # "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    :cond_105
    move/from16 v21, v5

    move-object/from16 v20, v6

    .line 3498
    .end local v5    # "isRight":Z
    .end local v6    # "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .restart local v20    # "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .restart local v21    # "isRight":Z
    :cond_109
    :goto_109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateKernelWakeLocks # wakeLock_new = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 3500
    .end local v3    # "old_te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .end local v4    # "new_te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v10    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v12    # "totalTimeMillis":J
    .end local v14    # "key":Ljava/lang/String;
    .end local v21    # "isRight":Z
    move-object/from16 v6, v20

    goto :goto_124

    .line 3500
    .end local v17    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v18    # "rawRealtime":J
    .end local v20    # "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .local v3, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v4, "rawRealtime":J
    .restart local v6    # "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    :cond_120
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    .line 3451
    .end local v3    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v4    # "rawRealtime":J
    .restart local v17    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v18    # "rawRealtime":J
    :goto_124
    move-object/from16 v3, v17

    move-wide/from16 v4, v18

    goto/16 :goto_40

    .line 3503
    .end local v6    # "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .end local v7    # "temp_new":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .end local v17    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v18    # "rawRealtime":J
    .restart local v3    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_12a
    move-object/from16 v17, v3

    .line 3503
    .end local v3    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v17    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    return-object v2
.end method

.method private calculatePastKernelWakeLocks()V
    .registers 13

    .line 3297
    const-string v0, "calculatePastKernelWakeLocks"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 3299
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    .line 3300
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v0

    .line 3301
    .local v0, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_68

    .line 3302
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 3303
    .local v1, "rawRealtime":J
    nop

    .line 3304
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 3303
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3305
    .local v4, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    .line 3306
    .local v5, "timer":Landroid/os/BatteryStats$Timer;
    const/4 v6, 0x2

    invoke-static {v5, v1, v2, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v7

    .line 3308
    .local v7, "totalTimeMillis":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_67

    .line 3309
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3310
    .local v9, "key":Ljava/lang/String;
    new-instance v10, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 3313
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    invoke-direct {v10, v9, v7, v8, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>(Ljava/lang/String;JI)V

    move-object v6, v10

    .line 3314
    .local v6, "tmp":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    iget-object v10, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks_Past:Ljava/util/HashMap;

    invoke-virtual {v10, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3315
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculatePastKernelWakeLocks # wakeLock_new = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 3318
    .end local v4    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v5    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v6    # "tmp":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .end local v7    # "totalTimeMillis":J
    .end local v9    # "key":Ljava/lang/String;
    :cond_67
    goto :goto_21

    .line 3320
    .end local v1    # "rawRealtime":J
    :cond_68
    return-void
.end method

.method private calculatePastKernelWakeupReasons()V
    .registers 13

    .line 3323
    const-string v0, "calculatePastKernelWakeupReasons"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 3325
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    .line 3326
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v0

    .line 3327
    .local v0, "kernelWakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_68

    .line 3328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 3329
    .local v1, "rawRealtime":J
    nop

    .line 3330
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 3329
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3331
    .local v4, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    .line 3332
    .local v5, "timer":Landroid/os/BatteryStats$Timer;
    const/4 v6, 0x2

    invoke-static {v5, v1, v2, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v7

    .line 3334
    .local v7, "totalTimeMillis":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_67

    .line 3335
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3336
    .local v9, "key":Ljava/lang/String;
    new-instance v10, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 3339
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    invoke-direct {v10, v9, v7, v8, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>(Ljava/lang/String;JI)V

    move-object v6, v10

    .line 3340
    .local v6, "tmp":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    iget-object v10, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons_Past:Ljava/util/HashMap;

    invoke-virtual {v10, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3341
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculatePastKernelWakeupReasons # reason_new = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 3344
    .end local v4    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v5    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v6    # "tmp":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .end local v7    # "totalTimeMillis":J
    .end local v9    # "key":Ljava/lang/String;
    :cond_67
    goto :goto_21

    .line 3346
    .end local v1    # "rawRealtime":J
    :cond_68
    return-void
.end method

.method private calculatePastPowerConsumption()V
    .registers 8

    .line 3265
    const-string v0, "calculatePastPowerConsumption"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 3267
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    .line 3268
    .local v0, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v0, :cond_85

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_85

    .line 3269
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_85

    .line 3270
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 3271
    .local v2, "bs":Lcom/android/internal/os/BatterySipper;
    if-eqz v2, :cond_82

    iget-wide v3, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_82

    .line 3272
    const/4 v3, 0x0

    .line 3273
    .local v3, "pc_past":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$6;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v5, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_49

    .line 3278
    new-instance v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    iget-object v5, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 3279
    invoke-direct {p0, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getFakeUidByDrainType(Lcom/android/internal/os/BatterySipper$DrainType;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/Integer;)V

    move-object v3, v4

    goto :goto_5a

    .line 3275
    :cond_49
    new-instance v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    iget-object v5, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/Integer;)V

    move-object v3, v4

    .line 3276
    nop

    .line 3283
    :goto_5a
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->updatePowerItems(Lcom/android/internal/os/BatterySipper;)V
    invoke-static {v3, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->access$7900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;Lcom/android/internal/os/BatterySipper;)V

    .line 3285
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->initPkgNameByUid()Z
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->access$8000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z

    move-result v4

    .line 3286
    .local v4, "isRight":Z
    if-eqz v4, :cond_6e

    .line 3287
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList_Past:Landroid/util/SparseArray;

    iget-object v6, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3289
    :cond_6e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculatePastPowerConsumption # pc_past = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 3269
    .end local v2    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v3    # "pc_past":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    .end local v4    # "isRight":Z
    :cond_82
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 3294
    .end local v1    # "i":I
    :cond_85
    return-void
.end method

.method private calculatePowerConsumption(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 15
    .param p1, "from"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;",
            ">;"
        }
    .end annotation

    .line 3381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CalculatePowerConsumption mNeedConsiderPast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNeedConsiderPast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 3384
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    .line 3385
    .local v0, "ret":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;>;"
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    .line 3386
    .local v1, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v1, :cond_115

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_115

    .line 3387
    const/4 v2, 0x0

    .line 3388
    .local v2, "pc_new":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    const/4 v3, 0x0

    .line 3389
    .local v3, "pc_old":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    const/4 v4, 0x0

    .line 3390
    .local v4, "temp":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    const/4 v5, 0x0

    .line 3390
    .local v5, "i":I
    :goto_36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_115

    .line 3391
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .line 3392
    .local v6, "bs":Lcom/android/internal/os/BatterySipper;
    if-eqz v6, :cond_111

    iget-wide v7, v6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_111

    .line 3393
    sget-object v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$6;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v8, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v8}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6a

    .line 3398
    new-instance v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    iget-object v8, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 3399
    invoke-direct {p0, v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getFakeUidByDrainType(Lcom/android/internal/os/BatterySipper$DrainType;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/Integer;)V

    move-object v2, v7

    goto :goto_7b

    .line 3395
    :cond_6a
    new-instance v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    iget-object v8, v6, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/Integer;)V

    move-object v2, v7

    .line 3396
    nop

    .line 3403
    :goto_7b
    iget-object v7, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList_Temp_Verify:Landroid/util/SparseArray;

    iget-object v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    .line 3404
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->equals(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z
    invoke-static {v2, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->access$8100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 3405
    goto/16 :goto_111

    .line 3408
    :cond_92
    const-string/jumbo v7, "handle_plug_event"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a6

    .line 3409
    iget-object v7, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList_Temp_Verify:Landroid/util/SparseArray;

    iget-object v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3412
    :cond_a6
    iget-object v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    .line 3413
    if-nez v3, :cond_b9

    .line 3414
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->updatePowerItems(Lcom/android/internal/os/BatterySipper;)V
    invoke-static {v2, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->access$7900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;Lcom/android/internal/os/BatterySipper;)V

    goto :goto_bc

    .line 3416
    :cond_b9
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->updatePowerItems(Lcom/android/internal/os/BatterySipper;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)V
    invoke-static {v2, v6, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->access$8200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;Lcom/android/internal/os/BatterySipper;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)V

    .line 3419
    :goto_bc
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->initPkgNameByUid()Z
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->access$8000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z

    move-result v7

    .line 3420
    .local v7, "isRight":Z
    iget-boolean v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNeedConsiderPast:Z

    if-eqz v8, :cond_d8

    if-eqz v7, :cond_d8

    .line 3421
    iget-object v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList_Past:Landroid/util/SparseArray;

    iget-object v11, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    .line 3423
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    .line 3422
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->handlePastData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z
    invoke-static {v2, v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->access$8300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z

    move-result v7

    .line 3426
    :cond_d8
    if-eqz v7, :cond_fd

    iget-wide v11, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    cmpl-double v8, v11, v9

    if-lez v8, :cond_fd

    .line 3427
    const-string/jumbo v8, "handle_plug_event"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f4

    .line 3428
    iget-object v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    iget-object v9, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3430
    :cond_f4
    iget-object v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3432
    :cond_fd
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CalculatePowerConsumption # pc_new = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 3390
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v7    # "isRight":Z
    :cond_111
    :goto_111
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_36

    .line 3437
    .end local v2    # "pc_new":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    .end local v3    # "pc_old":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    .end local v4    # "temp":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    .end local v5    # "i":I
    :cond_115
    return-object v0
.end method

.method private calculateReportTime(J)J
    .registers 11
    .param p1, "_realStartTime"    # J

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateReportTime _realStartTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1251
    move-wide v0, p1

    .line 1252
    .local v0, "realStartTime":J
    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ReportTimePoint:J

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 1253
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1254
    .local v2, "format":Ljava/text/SimpleDateFormat;
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1256
    .local v3, "time":Ljava/lang/String;
    :try_start_2c
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ReportTimePoint:J
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_36} :catch_38

    add-long/2addr v4, v6

    return-wide v4

    .line 1257
    :catch_38
    move-exception v4

    .line 1258
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "OPCS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculateReportTime Exception e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1260
    const-wide/16 v5, 0x0

    return-wide v5
.end method

.method private calculateWakeupReasons(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 24
    .param p1, "from"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3507
    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateWakeupReasons from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 3509
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3510
    .local v2, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;>;"
    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3511
    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    .line 3512
    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v3

    .line 3513
    .local v3, "kernelWakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_12a

    .line 3514
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 3515
    .local v4, "rawRealtime":J
    const/4 v6, 0x0

    .line 3516
    .local v6, "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    const/4 v7, 0x0

    .line 3517
    .local v7, "temp_new":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    nop

    .line 3518
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 3517
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_40
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 3519
    .local v9, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Timer;

    .line 3520
    .local v10, "timer":Landroid/os/BatteryStats$Timer;
    const/4 v11, 0x2

    invoke-static {v10, v4, v5, v11}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v12

    .line 3522
    .local v12, "totalTimeMillis":J
    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_120

    .line 3523
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Ljava/lang/String;

    .line 3524
    .local v14, "key":Ljava/lang/String;
    iget-object v15, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons_Temp_Verify:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v6, v15

    check-cast v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 3525
    new-instance v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 3528
    move-object/from16 v17, v3

    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    .line 3528
    .end local v3    # "kernelWakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v17, "kernelWakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-direct {v15, v14, v12, v13, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>(Ljava/lang/String;JI)V

    move-object v7, v15

    .line 3529
    if-eqz v6, :cond_a2

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->equals(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z
    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->access$8400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 3530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculateWakeupReasons # continue key:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " |totalTimeMillis:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 3531
    nop

    .line 3517
    move-object/from16 v3, v17

    goto :goto_40

    .line 3534
    :cond_a2
    const-string/jumbo v3, "handle_plug_event"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 3535
    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons_Temp_Verify:Ljava/util/HashMap;

    invoke-virtual {v3, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3538
    :cond_b0
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 3539
    .local v3, "old_te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    const/4 v15, 0x0

    .line 3540
    .local v15, "new_te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    if-nez v3, :cond_c5

    .line 3541
    move-wide/from16 v18, v4

    new-instance v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 3544
    .end local v4    # "rawRealtime":J
    .local v18, "rawRealtime":J
    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-direct {v4, v14, v12, v13, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>(Ljava/lang/String;JI)V

    .line 3544
    .end local v15    # "new_te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .local v4, "new_te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    goto :goto_d4

    .line 3546
    .end local v18    # "rawRealtime":J
    .local v4, "rawRealtime":J
    .restart local v15    # "new_te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    :cond_c5
    move-wide/from16 v18, v4

    .line 3546
    .end local v4    # "rawRealtime":J
    .restart local v18    # "rawRealtime":J
    new-instance v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-direct {v4, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)V

    .line 3547
    .end local v15    # "new_te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .local v4, "new_te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    nop

    .line 3549
    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 3547
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->updateData(JI)V
    invoke-static {v4, v12, v13, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->access$8500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;JI)V

    .line 3552
    :goto_d4
    const/4 v5, 0x1

    .line 3553
    .local v5, "isRight":Z
    iget-boolean v11, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNeedConsiderPast:Z

    if-eqz v11, :cond_e5

    .line 3554
    iget-object v11, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons_Past:Ljava/util/HashMap;

    .line 3555
    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 3554
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->handlePastData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z
    invoke-static {v4, v11}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->access$8600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z

    move-result v5

    .line 3558
    :cond_e5
    if-eqz v5, :cond_105

    move/from16 v21, v5

    move-object/from16 v20, v6

    iget-wide v5, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    .line 3558
    .end local v5    # "isRight":Z
    .end local v6    # "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .local v20, "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .local v21, "isRight":Z
    const-wide/16 v15, 0x0

    cmp-long v5, v5, v15

    if-lez v5, :cond_109

    .line 3559
    const-string/jumbo v5, "handle_plug_event"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_101

    .line 3560
    iget-object v5, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons:Ljava/util/HashMap;

    invoke-virtual {v5, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3562
    :cond_101
    invoke-virtual {v2, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_109

    .line 3564
    .end local v20    # "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .end local v21    # "isRight":Z
    .restart local v5    # "isRight":Z
    .restart local v6    # "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    :cond_105
    move/from16 v21, v5

    move-object/from16 v20, v6

    .line 3564
    .end local v5    # "isRight":Z
    .end local v6    # "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .restart local v20    # "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .restart local v21    # "isRight":Z
    :cond_109
    :goto_109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateWakeupReasons # reason_new = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 3566
    .end local v3    # "old_te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .end local v4    # "new_te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v10    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v12    # "totalTimeMillis":J
    .end local v14    # "key":Ljava/lang/String;
    .end local v21    # "isRight":Z
    move-object/from16 v6, v20

    goto :goto_124

    .line 3566
    .end local v17    # "kernelWakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v18    # "rawRealtime":J
    .end local v20    # "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .local v3, "kernelWakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .local v4, "rawRealtime":J
    .restart local v6    # "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    :cond_120
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    .line 3517
    .end local v3    # "kernelWakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v4    # "rawRealtime":J
    .restart local v17    # "kernelWakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v18    # "rawRealtime":J
    :goto_124
    move-object/from16 v3, v17

    move-wide/from16 v4, v18

    goto/16 :goto_40

    .line 3569
    .end local v6    # "temp_last":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .end local v7    # "temp_new":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .end local v17    # "kernelWakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v18    # "rawRealtime":J
    .restart local v3    # "kernelWakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_12a
    move-object/from16 v17, v3

    .line 3569
    .end local v3    # "kernelWakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v17    # "kernelWakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    return-object v2
.end method

.method private calibrateCalculateAlarm()V
    .registers 12

    .line 1275
    const-string v0, "calibrateCalculateAlarm"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1277
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->CalculateIntervalThreshold:J

    add-long/2addr v0, v2

    .line 1279
    .local v0, "nextCalculateAlarmTime":J
    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v8, "OPCS_CalculateAlarm"

    iget-object v9, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    move-wide v6, v0

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1282
    return-void
.end method

.method private calibrateReportAlarm()V
    .registers 10

    .line 1285
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1286
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    if-nez v0, :cond_c

    .line 1287
    return-void

    .line 1289
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v0, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculateReportTime(J)J

    move-result-wide v0

    .line 1290
    .local v0, "shouldReportTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 1291
    .local v2, "timeLeft":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 1292
    .local v4, "nextReportAlarmTime":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calibrateReportAlarm timeLeft:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " |nextReportAlarmTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1294
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_51

    const-wide/32 v6, 0x5265c00

    cmp-long v6, v2, v6

    if-gtz v6, :cond_51

    .line 1295
    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_54

    .line 1299
    :cond_51
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleException()V

    .line 1301
    :goto_54
    return-void
.end method

.method private calibrateTrackAlarm()V
    .registers 13

    .line 1265
    const-string v0, "calibrateTrackAlarm"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1266
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1267
    .local v0, "rand":Ljava/util/Random;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->RandomInterval:I

    mul-int/lit16 v3, v3, 0x3e8

    .line 1268
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 1269
    .local v1, "nextTrackAlarmTime":J
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v9, "OPCS_TrackAlarm"

    iget-object v10, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mTrackAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v11, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    move-wide v7, v1

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1272
    return-void
.end method

.method private cancelAlarm()V
    .registers 3

    .line 1651
    const-string v0, "cancelAlarm"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1652
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1653
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1654
    return-void
.end method

.method private checkState()V
    .registers 6

    .line 1400
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mResetParamListener:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;

    if-eqz v0, :cond_36

    .line 1401
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mResetParamListener:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;

    invoke-interface {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;->getPlugState()I

    move-result v0

    .line 1402
    .local v0, "plugType":I
    if-eqz v0, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 1403
    .local v1, "plug":Z
    :goto_f
    iget-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eq v2, v1, :cond_36

    .line 1404
    const-string v2, "OPCS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkState mPlugState is error, correct to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " |plugType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    .line 1406
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePlugEvent(I)V

    .line 1411
    .end local v0    # "plugType":I
    .end local v1    # "plug":Z
    :cond_36
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 1412
    .local v0, "screen":Z
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eq v1, v0, :cond_5b

    .line 1413
    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkState mScreenState is error, correct to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    .line 1415
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleScreenEvent()V

    .line 1417
    :cond_5b
    return-void
.end method

.method private clearAllData()V
    .registers 4

    .line 1676
    const-string v0, "clearAllData"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1677
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearBaseTimer()V

    .line 1678
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearSpecificCounter()V

    .line 1679
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearSpecificTimer()V

    .line 1680
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearFragment()V

    .line 1681
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearPowerConsumption()V

    .line 1682
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearLocalData()V

    .line 1683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    .line 1684
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNewVersionFirstReport:Z

    .line 1685
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    .line 1686
    iput-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    .line 1687
    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    if-eqz v1, :cond_33

    .line 1688
    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentTotalSeq:I

    .line 1689
    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPowerLevelSeq:I

    .line 1690
    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentScreenSeq:I

    .line 1691
    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPlugSeq:I

    .line 1692
    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentDozeSeq:I

    .line 1693
    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPkgSeq:I

    .line 1695
    :cond_33
    return-void
.end method

.method private clearBaseTimer()V
    .registers 3

    .line 2643
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->timerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2644
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    .line 2645
    monitor-exit v0

    .line 2646
    return-void

    .line 2645
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private clearFragment()V
    .registers 2

    .line 1736
    const-string v0, "clearFragment"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1737
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1738
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1740
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->clear()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->access$6600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;)V

    .line 1741
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->clear()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$6700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)V

    .line 1742
    return-void
.end method

.method private clearLocalData()V
    .registers 2

    .line 2245
    const-string v0, "clearLocalData"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 2246
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearPersistData(Landroid/util/AtomicFile;)V

    .line 2247
    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    if-eqz v0, :cond_16

    .line 2248
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseData:Landroid/util/AtomicFile;

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearPersistData(Landroid/util/AtomicFile;)V

    .line 2249
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BaseEventList_clear()V

    .line 2251
    :cond_16
    return-void
.end method

.method private clearPersistData(Landroid/util/AtomicFile;)V
    .registers 8
    .param p1, "file"    # Landroid/util/AtomicFile;

    .line 2254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPersistData file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 2255
    if-nez p1, :cond_1f

    .line 2256
    const-string v0, "OPCS"

    const-string/jumbo v1, "persistToDisk file is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    return-void

    .line 2260
    :cond_1f
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 2261
    .local v0, "out":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v1, 0x0

    move-object v2, v1

    .line 2263
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_25
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 2264
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2265
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2266
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2268
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2269
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2270
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_49} :catch_4a

    .line 2277
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_6a

    .line 2271
    :catch_4a
    move-exception v1

    .line 2272
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persistToDisk Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2274
    if-eqz v2, :cond_6a

    .line 2275
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2278
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6a
    :goto_6a
    return-void
.end method

.method private clearPowerConsumption()V
    .registers 2

    .line 1705
    const-string v0, "clearPowerConsumption"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1706
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAppInForegroundDischargeDurationTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->resetTime()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->access$6400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)V

    .line 1707
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCumulativeAppInForeground:Ljava/util/HashMap;

    .line 1708
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    .line 1709
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList_Temp_Verify:Landroid/util/SparseArray;

    .line 1710
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList_Past:Landroid/util/SparseArray;

    .line 1711
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForPowerConsumptionList:Landroid/util/SparseArray;

    .line 1712
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks:Ljava/util/HashMap;

    .line 1713
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks_Temp_Verify:Ljava/util/HashMap;

    .line 1714
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks_Past:Ljava/util/HashMap;

    .line 1715
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeLocks:Ljava/util/HashMap;

    .line 1716
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons:Ljava/util/HashMap;

    .line 1717
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons_Temp_Verify:Ljava/util/HashMap;

    .line 1718
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons_Past:Ljava/util/HashMap;

    .line 1719
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeupReasons:Ljava/util/HashMap;

    .line 1720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNeedConsiderPast:Z

    .line 1721
    return-void
.end method

.method private clearSpecificCounter()V
    .registers 2

    .line 1698
    const-string v0, "clearSpecificCounter"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1699
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_TotalDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->clear()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$6300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V

    .line 1700
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOnDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->clear()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$6300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V

    .line 1701
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOffDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->clear()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$6300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V

    .line 1702
    return-void
.end method

.method private clearSpecificTimer()V
    .registers 2

    .line 1724
    const-string v0, "clearSpecificTimer"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1725
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->resetTime()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    .line 1726
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->resetTime()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    .line 1727
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOnDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->resetTime()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    .line 1728
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->resetTime()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    .line 1729
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->resetTime()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    .line 1730
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->resetTime()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    .line 1731
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->resetTime()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    .line 1732
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->resetTime()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    .line 1733
    return-void
.end method

.method private completePowerConsumptionData(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;",
            ">;)V"
        }
    .end annotation

    .line 3682
    .local p1, "pcList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;>;"
    const-string v0, "completePowerConsumptionData"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 3683
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAppInForegroundDischargeDurationTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    .line 3684
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->getCumulativeTime()Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->access$1800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)Ljava/util/HashMap;

    move-result-object v0

    .line 3685
    .local v0, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 3686
    .local v1, "pc":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 3687
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    .line 3688
    if-eqz v1, :cond_32

    .line 3689
    iget-object v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 3690
    iget-object v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalTime:J

    .line 3686
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 3694
    .end local v2    # "i":I
    :cond_35
    return-void
.end method

.method public static computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .registers 10
    .param p0, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 3589
    if-eqz p0, :cond_d

    .line 3591
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    .line 3593
    .local v0, "totalTimeMicros":J
    const-wide/16 v2, 0x1f4

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 3594
    .local v2, "totalTimeMillis":J
    return-wide v2

    .line 3596
    .end local v0    # "totalTimeMicros":J
    .end local v2    # "totalTimeMillis":J
    :cond_d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private dumpAppForeground()V
    .registers 8

    .line 766
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAppInForegroundDischargeDurationTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    .line 767
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->getCumulativeTime()Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->access$1800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)Ljava/util/HashMap;

    move-result-object v0

    .line 768
    .local v0, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v1, "OPCS"

    const-string v2, "# dump # dumpAppForeground # begin #"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/4 v1, 0x0

    .line 770
    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 771
    .local v3, "pkg":Ljava/lang/String;
    const-string v4, "OPCS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# dump # dumpAppForeground # i :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " |pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " |duration:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 771
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    add-int/lit8 v1, v1, 0x1

    .line 774
    .end local v3    # "pkg":Ljava/lang/String;
    goto :goto_16

    .line 775
    :cond_4f
    const-string v2, "OPCS"

    const-string v3, "# dump # dumpAppForeground # end #"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    return-void
.end method

.method private dumpBaseEventList()V
    .registers 6

    .line 792
    const-string v0, "OPCS"

    const-string v1, "# dump # dumpBaseEventList # begin #"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v0, 0x0

    .line 794
    .local v0, "b":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 795
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;

    .line 796
    if-eqz v0, :cond_3a

    .line 797
    const-string v2, "OPCS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mBaseEventList # i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |b:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 800
    .end local v1    # "i":I
    :cond_3d
    const-string v1, "OPCS"

    const-string v2, "# dump # dumpBaseEventList # end #"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    return-void
.end method

.method private dumpInfo()V
    .registers 3

    .line 722
    const-string v0, "OPCS"

    const-string v1, "# dump # VERSION # 18092801"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    return-void
.end method

.method private dumpPowerConsumptionList()V
    .registers 6

    .line 779
    const-string v0, "OPCS"

    const-string v1, "# dump # dumpPowerConsumptionList # begin #"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v0, 0x0

    .line 781
    .local v0, "pc":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 782
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    .line 783
    if-eqz v0, :cond_3a

    .line 784
    const-string v2, "OPCS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # dumpPowerConsumptionList # i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |pc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 788
    .end local v1    # "i":I
    :cond_3d
    const-string v1, "OPCS"

    const-string v2, "# dump # dumpPowerConsumptionList # end #"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return-void
.end method

.method private dumpState()V
    .registers 11

    .line 726
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mScreenState # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mPlugState # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mIdleState # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mIdleState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mPowerLevel # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # ENABLE # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # RandomInterval # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->RandomInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # ReportTimePoint # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ReportTimePoint:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # CalculateIntervalThreshold # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->CalculateIntervalThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # BootDelayTime # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BootDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    if-eqz v0, :cond_116

    .line 739
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v0, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculateReportTime(J)J

    move-result-wide v0

    .line 740
    .local v0, "shouldReportTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 741
    .local v2, "timeLeft":J
    const-string v4, "OPCS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# dump # timeLeft # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " |format-minute:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    const-string v5, "dumpState()"

    invoke-virtual {v4, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dump(Ljava/lang/String;)V

    .line 746
    .end local v0    # "shouldReportTime":J
    .end local v2    # "timeLeft":J
    :cond_116
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mDozeFragment # size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v0, 0x0

    .line 748
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_139
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    .line 749
    .local v2, "d":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    const-string v3, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# dump # mDozeFragment # i:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 749
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    add-int/lit8 v0, v0, 0x1

    .line 753
    .end local v2    # "d":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    goto :goto_139

    .line 755
    :cond_16a
    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# dump # mChargeFragment # size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v0, 0x0

    .line 757
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1be

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    .line 758
    .local v2, "c":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    const-string v3, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# dump # mChargeFragment # i:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 758
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    add-int/lit8 v0, v0, 0x1

    .line 762
    .end local v2    # "c":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    goto :goto_18d

    .line 763
    :cond_1be
    return-void
.end method

.method private errorCorrectionProcess(Ljava/lang/String;)V
    .registers 3
    .param p1, "des"    # Ljava/lang/String;

    .line 1422
    const-string/jumbo v0, "plug"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1424
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_18

    .line 1425
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1426
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_5e

    .line 1428
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1429
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_5e

    .line 1431
    :cond_23
    const-string/jumbo v0, "screen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1433
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_3b

    .line 1434
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1435
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_5e

    .line 1437
    :cond_3b
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1438
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_5e

    .line 1440
    :cond_46
    const-string/jumbo v0, "powerLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    goto :goto_5e

    .line 1442
    :cond_50
    const-string v0, "doze"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_5e

    .line 1444
    :cond_59
    const-string v0, "frontPkg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1448
    :goto_5e
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->checkState()V

    .line 1449
    return-void
.end method

.method private static formatDouble(D)Ljava/lang/String;
    .registers 7
    .param p0, "data"    # D

    .line 3826
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_9

    .line 3827
    const-string v0, "0"

    return-object v0

    .line 3830
    :cond_9
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, p0, v0

    if-gez v0, :cond_15

    .line 3831
    const-string v0, "%.6f"

    .local v0, "format":Ljava/lang/String;
    :goto_14
    goto :goto_4a

    .line 3832
    .end local v0    # "format":Ljava/lang/String;
    :cond_15
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, p0, v0

    if-gez v0, :cond_21

    .line 3833
    const-string v0, "%.5f"

    goto :goto_14

    .line 3834
    :cond_21
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2d

    .line 3835
    const-string v0, "%.4f"

    goto :goto_14

    .line 3836
    :cond_2d
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_36

    .line 3837
    const-string v0, "%.3f"

    goto :goto_14

    .line 3838
    :cond_36
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3f

    .line 3839
    const-string v0, "%.2f"

    goto :goto_14

    .line 3840
    :cond_3f
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_48

    .line 3841
    const-string v0, "%.1f"

    goto :goto_14

    .line 3843
    :cond_48
    const-string v0, "%.0f"

    .line 3845
    .restart local v0    # "format":Ljava/lang/String;
    :goto_4a
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generatePowerConsumptionData()V
    .registers 2

    .line 1830
    const-string v0, "generatePowerConsumptionData"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1831
    const-string v0, "generatePowerConsumptionData"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleBatteryStatsRelated(Ljava/lang/String;)V

    .line 1832
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForPowerConsumptionList:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->completePowerConsumptionData(Landroid/util/SparseArray;)V

    .line 1833
    return-void
.end method

.method private generateSortListAndSystemList(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V
    .registers 13
    .param p1, "data"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    .line 1836
    const-string v0, "generateSortqueueAnddSystemqueue"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1837
    if-nez p1, :cond_c

    .line 1838
    const-string v0, "generateSortqueueAnddSystemqueue data is null, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1841
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1842
    .local v0, "temp_ArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;>;"
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->systemModule:Landroid/util/SparseArray;

    .line 1843
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->appTop:Ljava/util/ArrayList;

    .line 1844
    const/4 v1, 0x0

    .line 1845
    .local v1, "pc":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    .line 1845
    .local v1, "i":I
    .local v3, "pc":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    :goto_23
    iget-object v4, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->powerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_69

    .line 1846
    iget-object v4, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->powerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    .line 1847
    if-eqz v3, :cond_66

    .line 1848
    const-string/jumbo v4, "null"

    iget-object v5, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 1849
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateSortqueueAnddSystemqueue mSystemModule:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1851
    iget-object v4, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->systemModule:Landroid/util/SparseArray;

    iget-object v5, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_66

    .line 1853
    :cond_63
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1845
    :cond_66
    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1858
    .end local v1    # "i":I
    :cond_69
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1859
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopSize:I

    if-le v1, v4, :cond_77

    sget v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopSize:I

    goto :goto_7b

    .line 1860
    :cond_77
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1861
    .local v1, "length":I
    :goto_7b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateSortqueueAnddSystemqueue app length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1862
    const/4 v4, 0x0

    .line 1863
    .local v4, "p":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    move-object v5, v4

    move v4, v2

    .line 1863
    .local v4, "i":I
    .local v5, "p":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    :goto_92
    if-ge v4, v1, :cond_d1

    .line 1864
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    .line 1865
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateSortqueueAnddSystemqueue app sort i:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " |pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " |totalPowerMah:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1867
    iget-object v6, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->appTop:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1863
    add-int/lit8 v4, v4, 0x1

    goto :goto_92

    .line 1870
    .end local v4    # "i":I
    :cond_d1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1871
    .local v4, "temp_ArrayList_wakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocksTop:Ljava/util/ArrayList;

    .line 1872
    iget-object v6, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ff

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1873
    .local v7, "s":Ljava/lang/String;
    iget-object v8, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1874
    .end local v7    # "s":Ljava/lang/String;
    goto :goto_e7

    .line 1875
    :cond_ff
    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->timerComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1876
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sget v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeLocks:I

    if-le v6, v7, :cond_10f

    sget v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeLocks:I

    goto :goto_113

    .line 1877
    :cond_10f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_113
    move v1, v6

    .line 1878
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateSortqueueAnddSystemqueue wakeLocks length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1879
    const/4 v6, 0x0

    .line 1880
    .local v6, "e":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    move-object v7, v6

    move v6, v2

    .line 1880
    .local v6, "i":I
    .local v7, "e":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    :goto_12b
    if-ge v6, v1, :cond_174

    .line 1881
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 1882
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateSortqueueAnddSystemqueue wakeLocks Top sort i:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " |name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " |time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " |count:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1884
    iget-object v8, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocksTop:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1880
    add-int/lit8 v6, v6, 0x1

    goto :goto_12b

    .line 1887
    .end local v6    # "i":I
    :cond_174
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1888
    .local v6, "temp_ArrayList_wakeupReasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasonsTop:Ljava/util/ArrayList;

    .line 1889
    iget-object v8, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasons:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_18a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1890
    .local v9, "s":Ljava/lang/String;
    iget-object v10, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasons:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1891
    .end local v9    # "s":Ljava/lang/String;
    goto :goto_18a

    .line 1892
    :cond_1a2
    iget-object v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->timerComparator:Ljava/util/Comparator;

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1893
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    sget v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeupReasons:I

    if-le v8, v9, :cond_1b2

    sget v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeupReasons:I

    goto :goto_1b6

    .line 1894
    :cond_1b2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_1b6
    move v1, v8

    .line 1895
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateSortqueueAnddSystemqueue wakeupReasons length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1896
    const/4 v7, 0x0

    .line 1897
    nop

    .line 1897
    .local v2, "i":I
    :goto_1cd
    if-ge v2, v1, :cond_216

    .line 1898
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 1899
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateSortqueueAnddSystemqueue wakeupReason Top sort i:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " |name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " |time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " |count:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1901
    iget-object v8, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasonsTop:Ljava/util/ArrayList;

    .line 1902
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1897
    add-int/lit8 v2, v2, 0x1

    goto :goto_1cd

    .line 1904
    .end local v2    # "i":I
    :cond_216
    return-void
.end method

.method private getCurrentPoint()J
    .registers 3

    .line 2659
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2660
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->getCurrentPoint()J
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->access$7300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;)J

    move-result-wide v0

    return-wide v0

    .line 2663
    :cond_d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getDescriptionByPlugType(I)Ljava/lang/String;
    .registers 4
    .param p1, "plugType"    # I

    .line 2884
    const-string v0, ""

    .line 2885
    .local v0, "description":Ljava/lang/String;
    const/4 v1, 0x4

    if-eq p1, v1, :cond_14

    packed-switch p1, :pswitch_data_18

    .line 2899
    const-string v0, "NONE"

    goto :goto_17

    .line 2890
    :pswitch_b
    const-string v0, "USB"

    .line 2891
    goto :goto_17

    .line 2887
    :pswitch_e
    const-string v0, "AC"

    .line 2888
    goto :goto_17

    .line 2896
    :pswitch_11
    const-string v0, "NONE"

    .line 2897
    goto :goto_17

    .line 2893
    :cond_14
    const-string v0, "WIRELESS"

    .line 2894
    nop

    .line 2903
    :goto_17
    return-object v0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method private getDrainTypeByFakeUid(I)Ljava/lang/String;
    .registers 3
    .param p1, "fakeUid"    # I

    .line 3771
    packed-switch p1, :pswitch_data_40

    .line 3818
    const-string/jumbo v0, "unknown"

    goto :goto_3c

    .line 3815
    :pswitch_7
    const-string v0, "default"

    .line 3816
    .local v0, "retType":Ljava/lang/String;
    goto :goto_3c

    .line 3812
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v0, "wifi"

    .line 3813
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_3c

    .line 3809
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_e
    const-string/jumbo v0, "user"

    .line 3810
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_3c

    .line 3806
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_12
    const-string/jumbo v0, "unaccounted"

    .line 3807
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_3c

    .line 3803
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_16
    const-string/jumbo v0, "screen"

    .line 3804
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_3c

    .line 3800
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_1a
    const-string/jumbo v0, "phone"

    .line 3801
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_3c

    .line 3797
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_1e
    const-string/jumbo v0, "overcounted"

    .line 3798
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_3c

    .line 3794
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_22
    const-string/jumbo v0, "memory"

    .line 3795
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_3c

    .line 3791
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_26
    const-string/jumbo v0, "idle"

    .line 3792
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_3c

    .line 3788
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_2a
    const-string v0, "flashlight"

    .line 3789
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_3c

    .line 3785
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_2d
    const-string v0, "cell"

    .line 3786
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_3c

    .line 3782
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_30
    const-string v0, "camera"

    .line 3783
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_3c

    .line 3779
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_33
    const-string v0, "bluetooth"

    .line 3780
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_3c

    .line 3776
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_36
    const-string v0, "app"

    .line 3777
    .restart local v0    # "retType":Ljava/lang/String;
    goto :goto_3c

    .line 3773
    .end local v0    # "retType":Ljava/lang/String;
    :pswitch_39
    const-string v0, "ambient_display"

    .line 3774
    .restart local v0    # "retType":Ljava/lang/String;
    nop

    .line 3818
    :goto_3c
    nop

    .line 3822
    return-object v0

    nop

    nop

    :pswitch_data_40
    .packed-switch -0x63
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method private getFakeUidByDrainType(Lcom/android/internal/os/BatterySipper$DrainType;)I
    .registers 5
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;

    .line 3715
    const/16 v0, -0x55

    .line 3717
    .local v0, "retUid":I
    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$6;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    .line 3761
    const/16 v0, -0x55

    goto :goto_3a

    .line 3758
    :pswitch_10
    const/16 v0, -0x56

    .line 3759
    goto :goto_3a

    .line 3755
    :pswitch_13
    const/16 v0, -0x57

    .line 3756
    goto :goto_3a

    .line 3752
    :pswitch_16
    const/16 v0, -0x58

    .line 3753
    goto :goto_3a

    .line 3749
    :pswitch_19
    const/16 v0, -0x59

    .line 3750
    goto :goto_3a

    .line 3746
    :pswitch_1c
    const/16 v0, -0x5a

    .line 3747
    goto :goto_3a

    .line 3743
    :pswitch_1f
    const/16 v0, -0x5b

    .line 3744
    goto :goto_3a

    .line 3740
    :pswitch_22
    const/16 v0, -0x5c

    .line 3741
    goto :goto_3a

    .line 3737
    :pswitch_25
    const/16 v0, -0x5d

    .line 3738
    goto :goto_3a

    .line 3734
    :pswitch_28
    const/16 v0, -0x5e

    .line 3735
    goto :goto_3a

    .line 3731
    :pswitch_2b
    const/16 v0, -0x5f

    .line 3732
    goto :goto_3a

    .line 3728
    :pswitch_2e
    const/16 v0, -0x60

    .line 3729
    goto :goto_3a

    .line 3725
    :pswitch_31
    const/16 v0, -0x61

    .line 3726
    goto :goto_3a

    .line 3719
    :pswitch_34
    const/16 v0, -0x63

    .line 3720
    goto :goto_3a

    .line 3722
    :pswitch_37
    const/16 v0, -0x62

    .line 3723
    nop

    .line 3765
    :goto_3a
    return v0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .registers 1

    .line 259
    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "batteryStatsService"    # Lcom/android/server/am/BatteryStatsService;

    .line 264
    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    if-nez v0, :cond_b

    .line 265
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;)V

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 268
    :cond_b
    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    return-object v0
.end method

.method private getOsVersion()Ljava/lang/String;
    .registers 4

    .line 1907
    const-string/jumbo v0, "ro.build.version.ota"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1908
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 1909
    const-string v1, "Hydrogen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1910
    const-string v0, "Hydrogen "

    goto :goto_21

    .line 1911
    :cond_14
    const-string v1, "Oxygen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1912
    const-string v0, "Oxygen "

    goto :goto_21

    .line 1915
    :cond_1f
    const-string v0, ""

    .line 1918
    :cond_21
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleBatteryStatsRelated(Ljava/lang/String;)V
    .registers 6
    .param p1, "from"    # Ljava/lang/String;

    .line 3349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleBatteryStatsRelated from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 3350
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    .line 3351
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    .line 3352
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 3356
    :try_start_35
    const-string/jumbo v0, "handle_plug_event"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_67

    .line 3357
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForPowerConsumptionList:Landroid/util/SparseArray;

    .line 3358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeLocks:Ljava/util/HashMap;

    .line 3359
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeLocks:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3360
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeupReasons:Ljava/util/HashMap;

    .line 3361
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeupReasons:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_98

    .line 3363
    :cond_67
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculatePowerConsumption(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForPowerConsumptionList:Landroid/util/SparseArray;

    .line 3364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeLocks:Ljava/util/HashMap;

    .line 3365
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeLocks:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculateKernelWakeLocks(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeupReasons:Ljava/util/HashMap;

    .line 3367
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeupReasons:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculateWakeupReasons(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3369
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNeedConsiderPast:Z

    if-eqz v0, :cond_98

    .line 3370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNeedConsiderPast:Z
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_98} :catch_99

    .line 3377
    :cond_98
    :goto_98
    goto :goto_b7

    .line 3373
    :catch_99
    move-exception v0

    .line 3374
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleBatteryStatsRelated Exception e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3376
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleException()V

    .line 3378
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b7
    return-void
.end method

.method private handleCalculate(Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    .registers 10
    .param p1, "from"    # Ljava/lang/String;

    .line 1746
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getCurrentPoint()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    .line 1747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleCalculate begin, calculateTime_Begin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |calculateTime_End:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1751
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_35

    .line 1752
    const-string/jumbo v0, "handleCalculate mBaseTimer is null, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1753
    return-object v1

    .line 1756
    :cond_35
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 1758
    .local v0, "newData":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    :try_start_3a
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->os_version:Ljava/lang/String;

    .line 1759
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    .line 1760
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realEndTime:J

    .line 1761
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->duration:J

    iget-wide v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    iget-wide v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->duration:J

    .line 1764
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischarge:I

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_TotalDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    .line 1765
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->getCumulativeCount()I
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$6800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischarge:I

    .line 1766
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischargeDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    .line 1768
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->getCumulativeTime(J)J
    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischargeDuration:J

    .line 1769
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalChargeDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    .line 1771
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->getCumulativeTime(J)J
    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalChargeDuration:J

    .line 1773
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischarge:I

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOnDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    .line 1774
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->getCumulativeCount()I
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$6800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischarge:I

    .line 1775
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOnDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOnDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    .line 1777
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->getCumulativeTime(J)J
    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOnDuration:J

    .line 1778
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischargeDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    .line 1780
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->getCumulativeTime(J)J
    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischargeDuration:J

    .line 1781
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnChargeDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    .line 1783
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->getCumulativeTime(J)J
    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnChargeDuration:J

    .line 1785
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischarge:I

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOffDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    .line 1786
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->getCumulativeCount()I
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$6800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischarge:I

    .line 1787
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOffDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    .line 1789
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->getCumulativeTime(J)J
    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOffDuration:J

    .line 1790
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischargeDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    .line 1792
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->getCumulativeTime(J)J
    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischargeDuration:J

    .line 1793
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffChargeDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    .line 1795
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->getCumulativeTime(J)J
    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffChargeDuration:J

    .line 1797
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-object v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    .line 1798
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    .line 1799
    iget-object v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1800
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->getCacheDozeFragment()Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->access$7000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    move-result-object v2

    .line 1801
    .local v2, "d":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    if-eqz v2, :cond_117

    .line 1802
    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1805
    :cond_117
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-object v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    .line 1806
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    .line 1807
    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1808
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->getCacheChargeFragment()Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$7100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    move-result-object v3

    .line 1809
    .local v3, "c":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    if-eqz v3, :cond_137

    .line 1810
    iget-object v4, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1813
    :cond_137
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->generatePowerConsumptionData()V

    .line 1814
    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForPowerConsumptionList:Landroid/util/SparseArray;

    iput-object v4, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->powerConsumptionList:Landroid/util/SparseArray;

    .line 1815
    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeLocks:Ljava/util/HashMap;

    iput-object v4, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocks:Ljava/util/HashMap;

    .line 1816
    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeupReasons:Ljava/util/HashMap;

    iput-object v4, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasons:Ljava/util/HashMap;

    .line 1818
    const-string/jumbo v4, "handleCalculate end"

    invoke-static {v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1819
    sget-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_ONEPLUS:Z

    if-nez v4, :cond_154

    sget-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_LOG:Z

    if-eqz v4, :cond_157

    :cond_154
    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dump(Ljava/lang/String;)V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_157} :catch_159

    .line 1824
    .end local v2    # "d":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    .end local v3    # "c":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    :cond_157
    nop

    .line 1826
    return-object v0

    .line 1820
    :catch_159
    move-exception v2

    .line 1821
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleCalculate Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1823
    return-object v1
.end method

.method private handleDozeEvent(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 1588
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mIdleState:Z

    if-eqz v0, :cond_a

    .line 1589
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->startTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->access$6100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;)Z

    goto :goto_f

    .line 1591
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->stopTiming(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->access$6200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;Ljava/lang/String;)Z

    .line 1594
    :goto_f
    const-string v0, "doze"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->errorCorrectionProcess(Ljava/lang/String;)V

    .line 1595
    const-string v0, "doze"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->makeBaseRecordPoint(Ljava/lang/String;)V

    .line 1596
    return-void
.end method

.method private handleException()V
    .registers 2

    .line 1618
    const-string/jumbo v0, "handleException"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1619
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->cancelAlarm()V

    .line 1620
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearAllData()V

    .line 1621
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->resetListener()V

    .line 1622
    return-void
.end method

.method private handlePastBatteryStatsRelated()V
    .registers 5

    .line 3245
    const-string/jumbo v0, "handlePastBatteryStatsRelated"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 3248
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    .line 3249
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    .line 3250
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 3252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNeedConsiderPast:Z

    .line 3254
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculatePastPowerConsumption()V

    .line 3255
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculatePastKernelWakeLocks()V

    .line 3256
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculatePastKernelWakeupReasons()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_28} :catch_29

    .line 3261
    goto :goto_47

    .line 3257
    :catch_29
    move-exception v0

    .line 3258
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handlePastBatteryStatsRelated Exception e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3260
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleException()V

    .line 3262
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47
    return-void
.end method

.method private handlePersist(Z)V
    .registers 4
    .param p1, "shutDown"    # Z

    .line 1604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePersist shutDown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1605
    const-string/jumbo v0, "handlePersist"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleCalculate(Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v0

    .line 1606
    .local v0, "data":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    if-nez v0, :cond_25

    .line 1607
    const-string/jumbo v1, "handlePersist StatisticalData is null, return"

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1608
    return-void

    .line 1611
    :cond_25
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->persistToLocal(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    .line 1612
    if-nez p1, :cond_2d

    .line 1613
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calibrateCalculateAlarm()V

    .line 1615
    :cond_2d
    return-void
.end method

.method private handlePkgEvent()V
    .registers 2

    .line 1599
    const-string v0, "frontPkg"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->errorCorrectionProcess(Ljava/lang/String;)V

    .line 1600
    const-string v0, "frontPkg"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->makeBaseRecordPoint(Ljava/lang/String;)V

    .line 1601
    return-void
.end method

.method private handlePlugEvent(I)V
    .registers 4
    .param p1, "plugType"    # I

    .line 1496
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_19

    .line 1497
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1498
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1499
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->stopTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$5400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Z

    .line 1500
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAppInForegroundDischargeDurationTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->startTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->access$5200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)Z

    goto :goto_33

    .line 1502
    :cond_19
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1503
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1504
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->startTiming(I)Z
    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$5100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;I)Z

    .line 1505
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAppInForegroundDischargeDurationTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->access$5500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)Z

    .line 1506
    const-string/jumbo v0, "handle_plug_event"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleBatteryStatsRelated(Ljava/lang/String;)V

    .line 1509
    :goto_33
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_46

    .line 1510
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1511
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_58

    .line 1512
    :cond_46
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_58

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_58

    .line 1513
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1514
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1517
    :cond_58
    :goto_58
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_6b

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_6b

    .line 1518
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1519
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_7d

    .line 1520
    :cond_6b
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_7d

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_7d

    .line 1521
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1522
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1525
    :cond_7d
    :goto_7d
    const-string/jumbo v0, "plug"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->errorCorrectionProcess(Ljava/lang/String;)V

    .line 1526
    const-string/jumbo v0, "plug"

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getDescriptionByPlugType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->makeBaseRecordPoint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    return-void
.end method

.method private handlePlugFastChargeEvent()V
    .registers 3

    .line 1561
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->updatePlugTypeFastCharge()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$5800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Z

    .line 1563
    const-string/jumbo v0, "plug"

    const-string v1, "FASTCHARGE"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->makeBaseRecordPoint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    return-void
.end method

.method private handlePlugInitEvent(I)V
    .registers 5
    .param p1, "plugType"    # I

    .line 1452
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_11

    .line 1453
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    .line 1454
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming(J)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    .line 1455
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->startTiming(I)Z
    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$5100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;I)Z

    goto :goto_20

    .line 1457
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    .line 1458
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming(J)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    .line 1459
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAppInForegroundDischargeDurationTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->startTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->access$5200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)Z

    .line 1460
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePastBatteryStatsRelated()V

    .line 1463
    :goto_20
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_2c

    .line 1464
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOnDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    .line 1465
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming(J)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    goto :goto_33

    .line 1467
    :cond_2c
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    .line 1468
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming(J)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    .line 1471
    :goto_33
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_42

    .line 1472
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    .line 1473
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming(J)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    .line 1476
    :cond_42
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_51

    .line 1477
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    .line 1478
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming(J)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    .line 1481
    :cond_51
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_60

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_60

    .line 1482
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    .line 1483
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming(J)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    .line 1486
    :cond_60
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_6f

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_6f

    .line 1487
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    .line 1488
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming(J)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    .line 1491
    :cond_6f
    const-string/jumbo v0, "plug"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->errorCorrectionProcess(Ljava/lang/String;)V

    .line 1492
    const-string/jumbo v0, "plug"

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getDescriptionByPlugType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->makeBaseRecordPoint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    return-void
.end method

.method private handlePowerLevelEvent(Z)V
    .registers 4
    .param p1, "isDown"    # Z

    .line 1567
    if-eqz p1, :cond_b

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_b

    .line 1568
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_TotalDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->countAdd()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$5900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V

    .line 1571
    :cond_b
    if-eqz p1, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_1a

    .line 1572
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOnDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->countAdd()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$5900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V

    .line 1575
    :cond_1a
    if-eqz p1, :cond_29

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_29

    .line 1576
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOffDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->countAdd()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$5900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V

    .line 1579
    :cond_29
    if-nez p1, :cond_3a

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_3a

    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3a

    .line 1580
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->updateFirstFullTime()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$6000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Z

    .line 1583
    :cond_3a
    const-string/jumbo v0, "powerLevel"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->errorCorrectionProcess(Ljava/lang/String;)V

    .line 1584
    const-string/jumbo v0, "powerLevel"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->makeBaseRecordPoint(Ljava/lang/String;)V

    .line 1585
    return-void
.end method

.method private handleReport(Z)V
    .registers 4
    .param p1, "immediately"    # Z

    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleReport immediately:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1626
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->cancelAlarm()V

    .line 1627
    const-string/jumbo v0, "handleReport"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleCalculate(Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    .line 1628
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    if-nez v0, :cond_2c

    .line 1629
    const-string/jumbo v0, "handleReport mReportData is null, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1630
    return-void

    .line 1633
    :cond_2c
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->generateSortListAndSystemList(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    .line 1634
    if-eqz p1, :cond_37

    .line 1635
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->toTrackImmediately()V

    goto :goto_3a

    .line 1637
    :cond_37
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calibrateTrackAlarm()V

    .line 1639
    :goto_3a
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearAllData()V

    .line 1640
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->resetListener()V

    .line 1641
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->releaseWakeLock()V

    .line 1642
    return-void
.end method

.method private handleScreenEvent()V
    .registers 2

    .line 1530
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_14

    .line 1531
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOnDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1532
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1533
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->startTiming_ScreenOn()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$5600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)V

    goto :goto_23

    .line 1535
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOnDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1536
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1537
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->pauseTiming_ScreenOn()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$5700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)V

    .line 1540
    :goto_23
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_36

    .line 1541
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1542
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_48

    .line 1543
    :cond_36
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_48

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_48

    .line 1544
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1545
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1548
    :cond_48
    :goto_48
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_5b

    .line 1549
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1550
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_6d

    .line 1551
    :cond_5b
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_6d

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_6d

    .line 1552
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1553
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 1556
    :cond_6d
    :goto_6d
    const-string/jumbo v0, "screen"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->errorCorrectionProcess(Ljava/lang/String;)V

    .line 1557
    const-string/jumbo v0, "screen"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->makeBaseRecordPoint(Ljava/lang/String;)V

    .line 1558
    return-void
.end method

.method private init()V
    .registers 1

    .line 1067
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->initOnlineConfig()V

    .line 1068
    return-void
.end method

.method private initConsumption()V
    .registers 7

    .line 1233
    const-string/jumbo v0, "initConsumption"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-object v0, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->powerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    .line 1235
    const/4 v0, 0x0

    .line 1236
    .local v0, "pc":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    const/4 v1, 0x0

    .line 1236
    .local v1, "i":I
    :goto_12
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_56

    .line 1237
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    .line 1238
    if-eqz v0, :cond_53

    .line 1239
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCumulativeAppInForeground:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    iget-wide v4, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initConsumption pkgName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |totalTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1236
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1245
    .end local v1    # "i":I
    :cond_56
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-object v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1246
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-object v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasons:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1247
    return-void
.end method

.method private initOnlineConfig()V
    .registers 6

    .line 1071
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorUpdater;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    const-string v4, "OPCS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mOnePlusConsumptionDetectorConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 1074
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mOnePlusConsumptionDetectorConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 1075
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    .line 1077
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BootDelayTime:J

    .line 1076
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1078
    return-void
.end method

.method private initStatistics()V
    .registers 13

    .line 1187
    const-string/jumbo v0, "initStatistics"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1189
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->loadFromDisk()Z

    move-result v0

    .line 1190
    .local v0, "isLoadsuccess":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    if-nez v2, :cond_1c

    .line 1191
    :cond_11
    const-string/jumbo v2, "initStatistics Not load correctly"

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1192
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearLocalData()V

    .line 1193
    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    .line 1196
    :cond_1c
    if-eqz v0, :cond_b0

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    if-eqz v2, :cond_b0

    .line 1197
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    .line 1198
    .local v2, "currentVersion":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculateReportTime(J)J

    move-result-wide v3

    .line 1200
    .local v3, "shouldReportTime":J
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-object v5, v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->os_version:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 1201
    const-string/jumbo v5, "initStatistics version change"

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1202
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearLocalData()V

    .line 1203
    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    .line 1204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNewVersionFirstReport:Z

    goto :goto_b0

    .line 1205
    :cond_47
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    const-wide/32 v8, 0x5265c00

    if-eqz v7, :cond_79

    .line 1206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v7, v10, v3

    if-gez v7, :cond_79

    .line 1207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v3, v10

    cmp-long v7, v10, v8

    if-gez v7, :cond_79

    .line 1208
    const-string/jumbo v1, "initStatistics load correctly, continue to statistic"

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1209
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-boolean v1, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->firstReport:Z

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNewVersionFirstReport:Z

    .line 1210
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->initConsumption()V

    .line 1211
    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    if-eqz v1, :cond_b0

    .line 1212
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->loadBaseEventFromDisk()V

    goto :goto_b0

    .line 1214
    :cond_79
    cmp-long v5, v3, v5

    if-eqz v5, :cond_a5

    .line 1215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_a5

    .line 1216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long v5, v5, v8

    if-gez v5, :cond_a5

    .line 1217
    const-string/jumbo v5, "initStatistics load correctly, report and start new statistics"

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1218
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-boolean v5, v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->firstReport:Z

    iput-boolean v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNewVersionFirstReport:Z

    .line 1219
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    invoke-direct {p0, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->trackPowerData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    .line 1220
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearLocalData()V

    .line 1221
    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    goto :goto_b0

    .line 1223
    :cond_a5
    const-string/jumbo v5, "initStatistics clear data and start new statistics"

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1224
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearLocalData()V

    .line 1225
    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    .line 1229
    .end local v2    # "currentVersion":Ljava/lang/String;
    .end local v3    # "shouldReportTime":J
    :cond_b0
    :goto_b0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->resetListener()V

    .line 1230
    return-void
.end method

.method private isBaseTimerInited()Z
    .registers 3

    .line 2649
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->timerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2650
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    if-nez v1, :cond_a

    .line 2651
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2654
    :cond_a
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2655
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private loadBaseEventFromDisk()V
    .registers 11

    .line 1922
    const-string/jumbo v0, "loadBaseEventFromDisk"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1923
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseData:Landroid/util/AtomicFile;

    if-nez v0, :cond_13

    .line 1924
    const-string v0, "OPCS"

    const-string/jumbo v1, "loadBaseEventFromDisk mBaseData is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    return-void

    .line 1928
    :cond_13
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1929
    .local v0, "data":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 1930
    .local v1, "in":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    move-object v3, v2

    .line 1932
    .local v3, "ios":Ljava/io/FileInputStream;
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseData:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    move-object v3, v4

    .line 1933
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1935
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 1936
    .local v4, "eventType":I
    :goto_32
    const/4 v5, 0x1

    if-eq v4, v5, :cond_14c

    .line 1937
    if-eqz v4, :cond_144

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3c

    goto/16 :goto_145

    .line 1941
    :cond_3c
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1942
    .local v6, "tag":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1943
    .local v7, "b":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;
    const-string v8, "BaseEvent"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_145

    .line 1944
    new-instance v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;

    invoke-direct {v8, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    move-object v7, v8

    .line 1946
    const-string/jumbo v8, "totalSeq"

    invoke-interface {v1, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->totalSeq:I

    .line 1948
    iget v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->totalSeq:I

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentTotalSeq:I

    .line 1949
    iget v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentTotalSeq:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentTotalSeq:I

    .line 1950
    const-string v8, "eventType"

    invoke-interface {v1, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->eventType:Ljava/lang/String;

    .line 1951
    const-string/jumbo v8, "typeSeq"

    invoke-interface {v1, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->typeSeq:I

    .line 1954
    const-string/jumbo v8, "powerLevel"

    iget-object v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->eventType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 1955
    iget v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->typeSeq:I

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPowerLevelSeq:I

    .line 1956
    iget v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPowerLevelSeq:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPowerLevelSeq:I

    goto :goto_e0

    .line 1957
    :cond_8f
    const-string/jumbo v8, "screen"

    iget-object v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->eventType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a4

    .line 1958
    iget v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->typeSeq:I

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentScreenSeq:I

    .line 1959
    iget v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentScreenSeq:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentScreenSeq:I

    goto :goto_e0

    .line 1960
    :cond_a4
    const-string/jumbo v8, "plug"

    iget-object v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->eventType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 1961
    iget v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->typeSeq:I

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPlugSeq:I

    .line 1962
    iget v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPlugSeq:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPlugSeq:I

    goto :goto_e0

    .line 1963
    :cond_b9
    const-string v8, "doze"

    iget-object v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->eventType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cd

    .line 1964
    iget v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->typeSeq:I

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentDozeSeq:I

    .line 1965
    iget v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentDozeSeq:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentDozeSeq:I

    goto :goto_e0

    .line 1966
    :cond_cd
    const-string v8, "frontPkg"

    iget-object v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->eventType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e0

    .line 1967
    iget v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->typeSeq:I

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPkgSeq:I

    .line 1968
    iget v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPkgSeq:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPkgSeq:I

    .line 1971
    :cond_e0
    :goto_e0
    const-string/jumbo v5, "relativeTime"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->relativeTime:J

    .line 1973
    const-string/jumbo v5, "realTime"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->realTime:J

    .line 1975
    const-string/jumbo v5, "screenState"

    .line 1976
    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1975
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->screenState:Z

    .line 1977
    const-string/jumbo v5, "plugState"

    .line 1978
    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1977
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->plugState:Z

    .line 1979
    const-string/jumbo v5, "idleState"

    .line 1980
    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1979
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->idleState:Z

    .line 1981
    const-string/jumbo v5, "powerlevelState"

    .line 1982
    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1981
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->powerlevelState:I

    .line 1983
    const-string v5, "frontPkg"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->frontPkg:Ljava/lang/String;

    .line 1984
    const-string v5, "description"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->description:Ljava/lang/String;

    .line 1986
    iget v5, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->totalSeq:I

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_145

    .line 1939
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "b":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;
    :cond_144
    nop

    .line 1992
    :cond_145
    :goto_145
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v4, v5

    goto/16 :goto_32

    .line 1995
    :cond_14c
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    .line 1996
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->dumpBaseEventList()V
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_151} :catch_158
    .catchall {:try_start_1e .. :try_end_151} :catchall_156

    .line 2002
    .end local v4    # "eventType":I
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2003
    nop

    .line 2004
    return-void

    .line 2002
    :catchall_156
    move-exception v2

    goto :goto_177

    .line 1997
    :catch_158
    move-exception v2

    .line 1998
    .local v2, "e":Ljava/lang/Exception;
    :try_start_159
    const-string v4, "OPCS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadBaseEventFromDisk Exception e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_173
    .catchall {:try_start_159 .. :try_end_173} :catchall_156

    .line 2002
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2000
    return-void

    .line 2002
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_177
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private loadFromDisk()Z
    .registers 14

    .line 2007
    const-string/jumbo v0, "loadFromDisk"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 2008
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 2009
    const-string v0, "OPCS"

    const-string/jumbo v2, "loadFromDisk mStatisticalData is null, return"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    return v1

    .line 2013
    :cond_14
    const/4 v0, 0x0

    .line 2014
    .local v0, "count":I
    new-instance v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 2015
    .local v2, "data":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2016
    .local v3, "in":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    move-object v5, v4

    .line 2018
    .local v5, "ios":Ljava/io/FileInputStream;
    :try_start_20
    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    move-object v5, v6

    .line 2019
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2021
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 2022
    .local v6, "eventType":I
    :goto_34
    const/4 v7, 0x1

    if-eq v6, v7, :cond_3fd

    .line 2023
    if-eqz v6, :cond_3f5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3e

    goto/16 :goto_3f6

    .line 2027
    :cond_3e
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2028
    .local v7, "tag":Ljava/lang/String;
    const-string v8, "OPCS"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_87

    .line 2029
    const-string/jumbo v8, "os_version"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->os_version:Ljava/lang/String;

    .line 2031
    const-string/jumbo v8, "realStartTime"

    .line 2032
    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2031
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    .line 2033
    const-string/jumbo v8, "realEndTime"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realEndTime:J

    .line 2035
    const-string v8, "duration"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->duration:J

    .line 2037
    const-string v8, "firstReport"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->firstReport:Z

    .line 2039
    add-int/lit8 v0, v0, 0x1

    .line 2042
    :cond_87
    const-string/jumbo v8, "totalDischarge"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 2043
    const-string v8, "count"

    .line 2044
    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2043
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischarge:I

    .line 2045
    add-int/lit8 v0, v0, 0x1

    .line 2047
    :cond_9e
    const-string/jumbo v8, "totalDischargeDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 2048
    const-string v8, "duration"

    .line 2049
    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2048
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischargeDuration:J

    .line 2050
    add-int/lit8 v0, v0, 0x1

    .line 2052
    :cond_b5
    const-string/jumbo v8, "totalChargeDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_cc

    .line 2053
    const-string v8, "duration"

    .line 2054
    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2053
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalChargeDuration:J

    .line 2055
    add-int/lit8 v0, v0, 0x1

    .line 2058
    :cond_cc
    const-string/jumbo v8, "screenOnDischarge"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e3

    .line 2059
    const-string v8, "count"

    .line 2060
    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2059
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischarge:I

    .line 2061
    add-int/lit8 v0, v0, 0x1

    .line 2063
    :cond_e3
    const-string/jumbo v8, "totalScreenOnDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fa

    .line 2064
    const-string v8, "duration"

    .line 2065
    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2064
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOnDuration:J

    .line 2066
    add-int/lit8 v0, v0, 0x1

    .line 2068
    :cond_fa
    const-string/jumbo v8, "screenOnDischargeDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_111

    .line 2069
    const-string v8, "duration"

    .line 2070
    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2069
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischargeDuration:J

    .line 2071
    add-int/lit8 v0, v0, 0x1

    .line 2073
    :cond_111
    const-string/jumbo v8, "screenOnChargeDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_128

    .line 2074
    const-string v8, "duration"

    .line 2075
    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2074
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnChargeDuration:J

    .line 2076
    add-int/lit8 v0, v0, 0x1

    .line 2079
    :cond_128
    const-string/jumbo v8, "screenOffDischarge"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13f

    .line 2080
    const-string v8, "count"

    .line 2081
    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2080
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischarge:I

    .line 2082
    add-int/lit8 v0, v0, 0x1

    .line 2084
    :cond_13f
    const-string/jumbo v8, "totalScreenOffDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_156

    .line 2085
    const-string v8, "duration"

    .line 2086
    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2085
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOffDuration:J

    .line 2087
    add-int/lit8 v0, v0, 0x1

    .line 2089
    :cond_156
    const-string/jumbo v8, "screenOffDischargeDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16d

    .line 2090
    const-string v8, "duration"

    .line 2091
    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2090
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischargeDuration:J

    .line 2092
    add-int/lit8 v0, v0, 0x1

    .line 2094
    :cond_16d
    const-string/jumbo v8, "screenOffChargeDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_184

    .line 2095
    const-string v8, "duration"

    .line 2096
    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2095
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffChargeDuration:J

    .line 2097
    add-int/lit8 v0, v0, 0x1

    .line 2100
    :cond_184
    const-string v8, "dozeFragment"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e9

    .line 2101
    new-instance v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    invoke-direct {v8, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 2102
    .local v8, "df":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    const-string/jumbo v9, "relativeBeginTime"

    .line 2103
    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2102
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    .line 2104
    const-string/jumbo v9, "relativeEndTime"

    .line 2105
    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2104
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    .line 2106
    const-string v9, "duration"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    .line 2108
    const-string/jumbo v9, "realBeginTime"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    .line 2110
    const-string v9, "beginPowerLevel"

    .line 2111
    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2110
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    .line 2112
    const-string v9, "endPowerLevel"

    .line 2113
    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2112
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    .line 2114
    const-string v9, "exitReason"

    .line 2115
    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    .line 2117
    iget-object v9, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2120
    .end local v8    # "df":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    :cond_1e9
    const-string v8, "chargeFragment"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_268

    .line 2121
    new-instance v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    invoke-direct {v8, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 2122
    .local v8, "cf":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    const-string/jumbo v9, "relativeBeginTime"

    .line 2123
    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2122
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    .line 2124
    const-string/jumbo v9, "relativeEndTime"

    .line 2125
    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2124
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    .line 2126
    const-string v9, "duration"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    .line 2128
    const-string/jumbo v9, "realBeginTime"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    .line 2130
    const-string v9, "beginPowerLevel"

    .line 2131
    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2130
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    .line 2132
    const-string v9, "endPowerLevel"

    .line 2133
    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2132
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    .line 2134
    const-string/jumbo v9, "screenOnDuration"

    .line 2135
    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2134
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    .line 2136
    const-string v9, "firstFullTimeToRelativeBeginTime"

    .line 2137
    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2136
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    .line 2139
    const-string/jumbo v9, "plugType"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    .line 2141
    iget-object v9, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2144
    .end local v8    # "cf":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    :cond_268
    const-string/jumbo v8, "powerConsumption"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_362

    .line 2145
    new-instance v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    invoke-direct {v8, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 2146
    .local v8, "pc":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    const-string/jumbo v9, "uid"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_281

    .line 2147
    goto/16 :goto_34

    .line 2149
    :cond_281
    const-string/jumbo v9, "uid"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2151
    .local v9, "uid":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    .line 2152
    const-string v10, "drainType"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    .line 2153
    const-string/jumbo v10, "pkgName"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    .line 2154
    const-string/jumbo v10, "versionName"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    .line 2156
    const-string/jumbo v10, "versionCode"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionCode:I

    .line 2158
    const-string/jumbo v10, "totalTime"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalTime:J

    .line 2160
    const-string/jumbo v10, "totalPowerMah"

    .line 2161
    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2160
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    .line 2162
    const-string v10, "cpuPowerMah"

    .line 2163
    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2162
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    .line 2164
    const-string v10, "audioPowerMah"

    .line 2165
    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2164
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    .line 2166
    const-string/jumbo v10, "wakeLockPowerMah"

    .line 2167
    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2166
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    .line 2168
    const-string/jumbo v10, "mobileRadioPowerMah"

    .line 2169
    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    .line 2171
    const-string/jumbo v10, "wifiPowerMah"

    .line 2172
    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2171
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    .line 2173
    const-string v10, "bluetoothPowerMah"

    .line 2174
    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2173
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    .line 2175
    const-string/jumbo v10, "gpsPowerMah"

    .line 2176
    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2175
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    .line 2177
    const-string/jumbo v10, "sensorPowerMah"

    .line 2178
    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2177
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    .line 2179
    const-string v10, "cameraPowerMah"

    .line 2180
    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2179
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    .line 2181
    const-string v10, "flashlightPowerMah"

    .line 2182
    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2181
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    .line 2183
    const-string/jumbo v10, "videoPowerMah"

    .line 2184
    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2183
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    .line 2186
    iget-object v10, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->powerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v10, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2189
    .end local v8    # "pc":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    .end local v9    # "uid":I
    :cond_362
    const-string/jumbo v8, "kernelWakeLocks"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_3ac

    .line 2190
    new-instance v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-direct {v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>()V

    .line 2191
    .local v8, "te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    const-string/jumbo v11, "time"

    invoke-interface {v3, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v11, v11, v9

    if-nez v11, :cond_383

    .line 2192
    goto/16 :goto_34

    .line 2195
    :cond_383
    const-string/jumbo v11, "name"

    invoke-interface {v3, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    .line 2196
    const-string/jumbo v11, "time"

    invoke-interface {v3, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    .line 2198
    const-string v11, "count"

    invoke-interface {v3, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    .line 2201
    iget-object v11, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocks:Ljava/util/HashMap;

    iget-object v12, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v11, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2204
    .end local v8    # "te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    :cond_3ac
    const-string/jumbo v8, "kernelWakeupReasons"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f6

    .line 2205
    new-instance v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-direct {v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>()V

    .line 2206
    .restart local v8    # "te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    const-string/jumbo v11, "time"

    invoke-interface {v3, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v9, v11, v9

    if-nez v9, :cond_3cb

    .line 2207
    goto/16 :goto_34

    .line 2210
    :cond_3cb
    const-string/jumbo v9, "name"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    .line 2211
    const-string/jumbo v9, "time"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    .line 2213
    const-string v9, "count"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    .line 2216
    iget-object v9, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasons:Ljava/util/HashMap;

    iget-object v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2217
    .end local v8    # "te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    goto :goto_3f6

    .line 2025
    .end local v7    # "tag":Ljava/lang/String;
    :cond_3f5
    nop

    .line 2223
    :cond_3f6
    :goto_3f6
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v6, v7

    goto/16 :goto_34

    .line 2226
    :cond_3fd
    sget-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_ONEPLUS:Z

    if-nez v4, :cond_405

    sget-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_LOG:Z

    if-eqz v4, :cond_40b

    :cond_405
    const-string/jumbo v4, "loadFromDisk()"

    invoke-virtual {v2, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dump(Ljava/lang/String;)V

    .line 2227
    :cond_40b
    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    :try_end_40d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_40d} :catch_430
    .catchall {:try_start_20 .. :try_end_40d} :catchall_42e

    .line 2233
    .end local v6    # "eventType":I
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2234
    nop

    .line 2236
    const/16 v4, 0xc

    if-ne v0, v4, :cond_416

    .line 2237
    return v7

    .line 2240
    :cond_416
    const-string v4, "OPCS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadFromDisk incomplete data, return false count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    return v1

    .line 2233
    :catchall_42e
    move-exception v1

    goto :goto_450

    .line 2228
    :catch_430
    move-exception v4

    .line 2229
    .local v4, "e":Ljava/lang/Exception;
    :try_start_431
    const-string v6, "OPCS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadFromDisk Exception e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44b
    .catchall {:try_start_431 .. :try_end_44b} :catchall_42e

    .line 2231
    nop

    .line 2233
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2231
    return v1

    .line 2233
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_450
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private makeBaseRecordPoint(Ljava/lang/String;)V
    .registers 3
    .param p1, "eventType"    # Ljava/lang/String;

    .line 4330
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->makeBaseRecordPoint(Ljava/lang/String;Ljava/lang/String;)V

    .line 4331
    return-void
.end method

.method private declared-synchronized makeBaseRecordPoint(Ljava/lang/String;Ljava/lang/String;)V
    .registers 22
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 4335
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeBaseRecordPoint eventType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 4336
    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    if-nez v1, :cond_26

    .line 4337
    const-string/jumbo v1, "makeBaseRecordPoint DEBUG_VERIFY is false, return"

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_be

    .line 4338
    monitor-exit p0

    return-void

    .line 4341
    :cond_26
    :try_start_26
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getCurrentPoint()J

    move-result-wide v6

    .line 4342
    .local v6, "relativeTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 4344
    .local v8, "realTime":J
    iget v3, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentTotalSeq:I

    .line 4345
    .local v3, "totalSeq":I
    const/4 v1, 0x0

    .line 4347
    .local v1, "typeSeq":I
    const-string/jumbo v2, "powerLevel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 4348
    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPowerLevelSeq:I

    move v1, v2

    .line 4349
    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPowerLevelSeq:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPowerLevelSeq:I

    .line 4363
    :cond_43
    :goto_43
    move/from16 v16, v1

    goto :goto_90

    .line 4350
    :cond_46
    const-string/jumbo v2, "screen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 4351
    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentScreenSeq:I

    move v1, v2

    .line 4352
    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentScreenSeq:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentScreenSeq:I

    goto :goto_43

    .line 4353
    :cond_59
    const-string/jumbo v2, "plug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 4354
    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPlugSeq:I

    move v1, v2

    .line 4355
    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPlugSeq:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPlugSeq:I

    goto :goto_43

    .line 4356
    :cond_6c
    const-string v2, "doze"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 4357
    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentDozeSeq:I

    move v1, v2

    .line 4358
    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentDozeSeq:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentDozeSeq:I

    goto :goto_43

    .line 4359
    :cond_7e
    const-string v2, "frontPkg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 4360
    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPkgSeq:I

    move v1, v2

    .line 4361
    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPkgSeq:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPkgSeq:I

    goto :goto_43

    .line 4363
    .end local v1    # "typeSeq":I
    .local v16, "typeSeq":I
    :goto_90
    iget v1, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentTotalSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentTotalSeq:I

    .line 4365
    new-instance v14, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;

    iget-boolean v10, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    iget-boolean v11, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    iget-boolean v12, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mIdleState:Z

    iget v13, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I

    iget-object v5, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mFrontPkg:Ljava/lang/String;
    :try_end_a2
    .catchall {:try_start_26 .. :try_end_a2} :catchall_be

    move-object v1, v14

    move-object v2, v15

    move/from16 v4, v16

    move-object/from16 v17, v5

    move-object v5, v0

    move-object v0, v14

    move-object/from16 v14, v17

    move-object/from16 v15, p2

    :try_start_ae
    invoke-direct/range {v1 .. v15}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;IILjava/lang/String;JJZZZILjava/lang/String;Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_ba

    move-object/from16 v1, p0

    :try_start_b3
    invoke-direct {v1, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BaseEventList_put(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;)V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b8

    .line 4368
    monitor-exit p0

    return-void

    .line 4334
    .end local v3    # "totalSeq":I
    .end local v6    # "relativeTime":J
    .end local v8    # "realTime":J
    .end local v16    # "typeSeq":I
    .end local p1    # "eventType":Ljava/lang/String;
    .end local p2    # "description":Ljava/lang/String;
    :catchall_b8
    move-exception v0

    goto :goto_c0

    :catchall_ba
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_c0

    :catchall_be
    move-exception v0

    move-object v1, v15

    :goto_c0
    monitor-exit p0

    .line 4334
    .end local p0    # "this":Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    throw v0
.end method

.method private makeDataToString(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)Ljava/util/Map;
    .registers 8
    .param p1, "data"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4124
    const-string/jumbo v0, "makeDataToString"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 4126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4127
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4130
    .local v1, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_10
    const-string/jumbo v2, "os_version"

    iget-object v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->os_version:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4131
    const-string/jumbo v2, "realStartTime"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4132
    const-string/jumbo v2, "realEndTime"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realEndTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4133
    const-string v2, "duration"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->duration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4134
    const-string v2, "firstReport"

    iget-boolean v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNewVersionFirstReport:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4136
    const-string/jumbo v2, "totalDischarge"

    iget v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischarge:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4137
    const-string/jumbo v2, "totalDischargeDuration"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischargeDuration:J

    .line 4138
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 4137
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4139
    const-string/jumbo v2, "totalChargeDuration"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalChargeDuration:J

    .line 4140
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 4139
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4142
    const-string/jumbo v2, "screenOnDischarge"

    iget v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischarge:I

    .line 4143
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 4142
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4144
    const-string/jumbo v2, "totalScreenOnDuration"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOnDuration:J

    .line 4145
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 4144
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4146
    const-string/jumbo v2, "screenOnDischargeDuration"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischargeDuration:J

    .line 4147
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 4146
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4148
    const-string/jumbo v2, "screenOnChargeDuration"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnChargeDuration:J

    .line 4149
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 4148
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4151
    const-string/jumbo v2, "screenOffDischarge"

    iget v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischarge:I

    .line 4152
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 4151
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4153
    const-string/jumbo v2, "totalScreenOffDuration"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOffDuration:J

    .line 4154
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 4153
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4155
    const-string/jumbo v2, "screenOffDischargeDuration"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischargeDuration:J

    .line 4156
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 4155
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4157
    const-string/jumbo v2, "screenOffChargeDuration"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffChargeDuration:J

    .line 4158
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 4157
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    .line 4161
    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_10d

    .line 4162
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4163
    move v2, v3

    .line 4163
    .local v2, "i":I
    :goto_e0
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_108

    .line 4164
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->toMDM(I)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->access$9000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4165
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_105

    .line 4166
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4163
    :cond_105
    add-int/lit8 v2, v2, 0x1

    goto :goto_e0

    .line 4168
    .end local v2    # "i":I
    :cond_108
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4170
    :cond_10d
    const-string v2, "dozeFragment"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    .line 4173
    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_157

    .line 4174
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4175
    move v2, v3

    .line 4175
    .restart local v2    # "i":I
    :goto_12a
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_152

    .line 4176
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->toMDM(I)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->access$9100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4177
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_14f

    .line 4178
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4175
    :cond_14f
    add-int/lit8 v2, v2, 0x1

    goto :goto_12a

    .line 4180
    .end local v2    # "i":I
    :cond_152
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4182
    :cond_157
    const-string v2, "chargeFragment"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    .line 4185
    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->systemModule:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1a1

    .line 4186
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4187
    move v2, v3

    .line 4187
    .restart local v2    # "i":I
    :goto_174
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->systemModule:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_19c

    .line 4188
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->systemModule:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->toMDM(IZ)Ljava/lang/String;
    invoke-static {v5, v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->access$9200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4189
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->systemModule:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_199

    .line 4190
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4187
    :cond_199
    add-int/lit8 v2, v2, 0x1

    goto :goto_174

    .line 4192
    .end local v2    # "i":I
    :cond_19c
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4194
    :cond_1a1
    const-string/jumbo v2, "systemModule"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    .line 4197
    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->appTop:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1ec

    .line 4198
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4199
    move v2, v3

    .line 4199
    .restart local v2    # "i":I
    :goto_1bf
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->appTop:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1e7

    .line 4200
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->appTop:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->toMDM(IZ)Ljava/lang/String;
    invoke-static {v5, v2, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->access$9200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4201
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->appTop:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_1e4

    .line 4202
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4199
    :cond_1e4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1bf

    .line 4204
    .end local v2    # "i":I
    :cond_1e7
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4206
    :cond_1ec
    const-string v2, "appTop"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    .line 4209
    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocksTop:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_236

    .line 4210
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4211
    move v2, v3

    .line 4211
    .restart local v2    # "i":I
    :goto_209
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocksTop:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_231

    .line 4212
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocksTop:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->toMDM(I)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->access$9300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4213
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocksTop:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_22e

    .line 4214
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4211
    :cond_22e
    add-int/lit8 v2, v2, 0x1

    goto :goto_209

    .line 4216
    .end local v2    # "i":I
    :cond_231
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4218
    :cond_236
    const-string/jumbo v2, "kernelWakeLocks"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    .line 4221
    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasonsTop:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_281

    .line 4222
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4223
    move v2, v3

    .line 4223
    .restart local v2    # "i":I
    :goto_254
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasonsTop:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_27c

    .line 4224
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasonsTop:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->toMDM(I)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->access$9300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4225
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasonsTop:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_279

    .line 4226
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4223
    :cond_279
    add-int/lit8 v2, v2, 0x1

    goto :goto_254

    .line 4228
    .end local v2    # "i":I
    :cond_27c
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4230
    :cond_281
    const-string/jumbo v2, "kernelWakeupReasons"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4232
    sget-boolean v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    if-eqz v2, :cond_2da

    .line 4233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    .line 4234
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_2d1

    .line 4235
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4236
    nop

    .line 4236
    .local v3, "i":I
    :goto_2a3
    move v2, v3

    .line 4236
    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2cc

    .line 4237
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->toMDM()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->access$9400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4238
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-eq v2, v3, :cond_2c9

    .line 4239
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4236
    :cond_2c9
    add-int/lit8 v3, v2, 0x1

    .line 4236
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2a3

    .line 4241
    .end local v3    # "i":I
    :cond_2cc
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4243
    :cond_2d1
    const-string v2, "baseEvent"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2da
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2da} :catch_2f7

    .line 4249
    :cond_2da
    nop

    .line 4251
    const-string v2, "OPCS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mdmData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4252
    return-object v1

    .line 4245
    :catch_2f7
    move-exception v2

    .line 4246
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeDataToString Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4247
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 4248
    return-object v1
.end method

.method private static myLog(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 247
    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_LOG:Z

    if-eqz v0, :cond_9

    .line 248
    const-string v0, "OPCS"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_9
    return-void
.end method

.method private static myLogSpecific(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 253
    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_SPECIFIC:Z

    if-eqz v0, :cond_9

    .line 254
    const-string v0, "OPCS_SPECIFIC"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_9
    return-void
.end method

.method private persistBaseDataToDisk()V
    .registers 10

    .line 2511
    const-string/jumbo v0, "persistBaseDataToDisk"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 2512
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseData:Landroid/util/AtomicFile;

    if-nez v0, :cond_13

    .line 2513
    const-string v0, "OPCS"

    const-string/jumbo v1, "persistBaseDataToDisk mBaseData is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    return-void

    .line 2517
    :cond_13
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 2518
    .local v0, "out":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v1, 0x0

    move-object v2, v1

    .line 2520
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_19
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseData:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 2521
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2522
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2523
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2524
    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2526
    const/4 v4, 0x0

    .line 2527
    .local v4, "b":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;
    const/4 v5, 0x0

    .line 2527
    .local v5, "i":I
    :goto_3d
    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_d6

    .line 2528
    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;

    move-object v4, v6

    .line 2529
    const-string v6, "BaseEvent"

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2530
    const-string/jumbo v6, "totalSeq"

    iget v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->totalSeq:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2531
    const-string/jumbo v6, "typeSeq"

    iget v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->typeSeq:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2532
    const-string v6, "eventType"

    iget-object v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->eventType:Ljava/lang/String;

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2533
    const-string/jumbo v6, "relativeTime"

    iget-wide v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->relativeTime:J

    .line 2534
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 2533
    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2535
    const-string/jumbo v6, "realTime"

    iget-wide v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->realTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2536
    const-string/jumbo v6, "screenState"

    iget-boolean v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->screenState:Z

    .line 2537
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    .line 2536
    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2538
    const-string/jumbo v6, "plugState"

    iget-boolean v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->plugState:Z

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2539
    const-string/jumbo v6, "idleState"

    iget-boolean v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->idleState:Z

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2540
    const-string/jumbo v6, "powerlevelState"

    iget v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->powerlevelState:I

    .line 2541
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 2540
    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2542
    const-string v6, "frontPkg"

    iget-object v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->frontPkg:Ljava/lang/String;

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2543
    const-string v6, "description"

    iget-object v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->description:Ljava/lang/String;

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2544
    const-string v6, "BaseEvent"

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2545
    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2527
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3d

    .line 2548
    .end local v5    # "i":I
    :cond_d6
    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2549
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2550
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2551
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseData:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_e6} :catch_e7

    .line 2558
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "b":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;
    goto :goto_109

    .line 2552
    :catch_e7
    move-exception v1

    .line 2553
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persistBaseDataToDisk Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2555
    if-eqz v2, :cond_109

    .line 2556
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseData:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2559
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_109
    :goto_109
    return-void
.end method

.method private persistToDisk(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V
    .registers 19
    .param p1, "data"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-object/from16 v1, p0

    .line 2288
    move-object/from16 v2, p1

    const-string/jumbo v0, "persistToDisk"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 2289
    iget-object v0, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    if-nez v0, :cond_17

    .line 2290
    const-string v0, "OPCS"

    const-string/jumbo v3, "persistToDisk mStatisticalData is null, return"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    return-void

    .line 2294
    :cond_17
    if-nez v2, :cond_22

    .line 2295
    const-string v0, "OPCS"

    const-string/jumbo v3, "persistToDisk data is null, return"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    return-void

    .line 2299
    :cond_22
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 2300
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v0, 0x0

    move-object v4, v0

    .line 2302
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_28
    iget-object v5, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 2303
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2304
    .local v5, "bos":Ljava/io/BufferedOutputStream;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2305
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2307
    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2308
    const-string v6, "OPCS"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2309
    const-string/jumbo v6, "os_version"

    iget-object v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->os_version:Ljava/lang/String;

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2310
    const-string/jumbo v6, "realStartTime"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    .line 2311
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 2310
    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2312
    const-string/jumbo v6, "realEndTime"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realEndTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2313
    const-string v6, "duration"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->duration:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2314
    const-string v6, "firstReport"

    iget-boolean v7, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNewVersionFirstReport:Z

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2315
    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2317
    const-string/jumbo v6, "totalDischarge"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2318
    const-string v6, "count"

    iget v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischarge:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2319
    const-string/jumbo v6, "totalDischarge"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2320
    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2321
    const-string/jumbo v6, "totalDischargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2322
    const-string v6, "duration"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischargeDuration:J

    .line 2323
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 2322
    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2324
    const-string/jumbo v6, "totalDischargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2325
    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2326
    const-string/jumbo v6, "totalChargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2327
    const-string v6, "duration"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalChargeDuration:J

    .line 2328
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 2327
    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2329
    const-string/jumbo v6, "totalChargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2330
    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2332
    const-string/jumbo v6, "screenOnDischarge"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2333
    const-string v6, "count"

    iget v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischarge:I

    .line 2334
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 2333
    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2335
    const-string/jumbo v6, "screenOnDischarge"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2336
    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2337
    const-string/jumbo v6, "totalScreenOnDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2338
    const-string v6, "duration"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOnDuration:J

    .line 2339
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 2338
    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2340
    const-string/jumbo v6, "totalScreenOnDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2341
    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2342
    const-string/jumbo v6, "screenOnDischargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2343
    const-string v6, "duration"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischargeDuration:J

    .line 2344
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 2343
    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2345
    const-string/jumbo v6, "screenOnDischargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2346
    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2347
    const-string/jumbo v6, "screenOnChargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2348
    const-string v6, "duration"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnChargeDuration:J

    .line 2349
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 2348
    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2350
    const-string/jumbo v6, "screenOnChargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2351
    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2353
    const-string/jumbo v6, "screenOffDischarge"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2354
    const-string v6, "count"

    iget v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischarge:I

    .line 2355
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 2354
    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2356
    const-string/jumbo v6, "screenOffDischarge"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2357
    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2358
    const-string/jumbo v6, "totalScreenOffDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2359
    const-string v6, "duration"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOffDuration:J

    .line 2360
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 2359
    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2361
    const-string/jumbo v6, "totalScreenOffDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2362
    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2363
    const-string/jumbo v6, "screenOffDischargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2364
    const-string v6, "duration"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischargeDuration:J

    .line 2365
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 2364
    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2366
    const-string/jumbo v6, "screenOffDischargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2367
    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2368
    const-string/jumbo v6, "screenOffChargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2369
    const-string v6, "duration"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffChargeDuration:J

    .line 2370
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 2369
    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2371
    const-string/jumbo v6, "screenOffChargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2372
    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2374
    const/4 v6, 0x0

    .line 2375
    .local v6, "df":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    const/4 v7, 0x0

    move-object v8, v6

    move v6, v7

    .line 2375
    .local v6, "i":I
    .local v8, "df":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    :goto_1c2
    iget-object v9, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_23b

    .line 2376
    iget-object v9, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    move-object v8, v9

    .line 2377
    const-string v9, "dozeFragment"

    invoke-interface {v3, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2378
    const-string/jumbo v9, "seq"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2379
    const-string/jumbo v9, "relativeBeginTime"

    iget-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    .line 2380
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 2379
    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2381
    const-string/jumbo v9, "relativeEndTime"

    iget-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    .line 2382
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 2381
    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2383
    const-string v9, "duration"

    iget-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2384
    const-string/jumbo v9, "realBeginTime"

    iget-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    .line 2385
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 2384
    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2386
    const-string v9, "beginPowerLevel"

    iget v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    .line 2387
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 2386
    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2388
    const-string v9, "endPowerLevel"

    iget v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    .line 2389
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 2388
    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2390
    const-string v9, "exitReason"

    iget-object v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2391
    const-string v9, "dozeFragment"

    invoke-interface {v3, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2392
    sget-object v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2375
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c2

    .line 2395
    .end local v6    # "i":I
    :cond_23b
    const/4 v6, 0x0

    .line 2396
    .local v6, "cf":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    move-object v9, v6

    move v6, v7

    .line 2396
    .local v6, "i":I
    .local v9, "cf":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    :goto_23e
    iget-object v10, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_2d0

    .line 2397
    iget-object v10, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    move-object v9, v10

    .line 2398
    const-string v10, "chargeFragment"

    invoke-interface {v3, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2399
    const-string/jumbo v10, "seq"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2400
    const-string/jumbo v10, "relativeBeginTime"

    iget-wide v11, v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    .line 2401
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 2400
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2402
    const-string/jumbo v10, "relativeEndTime"

    iget-wide v11, v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    .line 2403
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 2402
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2404
    const-string v10, "duration"

    iget-wide v11, v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2405
    const-string/jumbo v10, "realBeginTime"

    iget-wide v11, v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    .line 2406
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 2405
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2407
    const-string v10, "beginPowerLevel"

    iget v11, v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    .line 2408
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 2407
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2409
    const-string v10, "endPowerLevel"

    iget v11, v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    .line 2410
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 2409
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2411
    const-string/jumbo v10, "screenOnDuration"

    iget-wide v11, v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    .line 2412
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 2411
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2413
    const-string v10, "firstFullTimeToRelativeBeginTime"

    iget-wide v11, v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    .line 2414
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 2413
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2415
    const-string/jumbo v10, "plugType"

    iget-object v11, v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2416
    const-string v10, "chargeFragment"

    invoke-interface {v3, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2417
    sget-object v10, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2396
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_23e

    .line 2420
    .end local v6    # "i":I
    :cond_2d0
    const/4 v6, 0x0

    .line 2421
    .local v6, "pc":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    nop

    .line 2421
    .local v7, "i":I
    :goto_2d2
    iget-object v10, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->powerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v7, v10, :cond_3e0

    .line 2422
    iget-object v10, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->powerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    move-object v6, v10

    .line 2423
    iget-object v10, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    if-nez v10, :cond_2e9

    .line 2424
    goto/16 :goto_3dc

    .line 2426
    :cond_2e9
    const-string/jumbo v10, "powerConsumption"

    invoke-interface {v3, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2427
    const-string/jumbo v10, "uid"

    iget-object v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2428
    const-string v10, "drainType"

    .line 2429
    iget-object v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    if-nez v11, :cond_309

    const-string/jumbo v11, "null"

    goto :goto_30b

    :cond_309
    iget-object v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    .line 2428
    :goto_30b
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2430
    const-string/jumbo v10, "pkgName"

    iget-object v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    if-nez v11, :cond_319

    const-string/jumbo v11, "null"

    goto :goto_31b

    .line 2431
    :cond_319
    iget-object v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    .line 2430
    :goto_31b
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2432
    const-string/jumbo v10, "versionName"

    .line 2433
    iget-object v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    if-nez v11, :cond_329

    const-string/jumbo v11, "null"

    goto :goto_32b

    :cond_329
    iget-object v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    .line 2432
    :goto_32b
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2434
    const-string/jumbo v10, "versionCode"

    iget v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionCode:I

    .line 2435
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 2434
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2436
    const-string/jumbo v10, "totalTime"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2437
    const-string/jumbo v10, "totalPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    .line 2438
    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    .line 2437
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2439
    const-string v10, "cpuPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    .line 2440
    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    .line 2439
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2441
    const-string v10, "audioPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    .line 2442
    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    .line 2441
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2443
    const-string/jumbo v10, "wakeLockPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    .line 2444
    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    .line 2443
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2445
    const-string/jumbo v10, "mobileRadioPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    .line 2446
    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    .line 2445
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2447
    const-string/jumbo v10, "wifiPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    .line 2448
    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    .line 2447
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2449
    const-string v10, "bluetoothPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    .line 2450
    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    .line 2449
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2451
    const-string/jumbo v10, "gpsPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    .line 2452
    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    .line 2451
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2453
    const-string/jumbo v10, "sensorPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    .line 2454
    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    .line 2453
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2455
    const-string v10, "cameraPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    .line 2456
    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    .line 2455
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2457
    const-string v10, "flashlightPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    .line 2458
    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    .line 2457
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2459
    const-string/jumbo v10, "videoPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    .line 2460
    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    .line 2459
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2461
    const-string/jumbo v10, "powerConsumption"

    invoke-interface {v3, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2462
    sget-object v10, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2421
    :goto_3dc
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2d2

    .line 2465
    .end local v7    # "i":I
    :cond_3e0
    const/4 v7, 0x0

    .line 2466
    .local v7, "te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    iget-object v10, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3eb
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_43a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2467
    .local v11, "s":Ljava/lang/String;
    iget-object v14, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    move-object v7, v14

    .line 2468
    iget-wide v14, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    cmp-long v12, v14, v12

    if-nez v12, :cond_409

    .line 2469
    goto :goto_3eb

    .line 2472
    :cond_409
    const-string/jumbo v12, "kernelWakeLocks"

    invoke-interface {v3, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2473
    const-string/jumbo v12, "name"

    iget-object v13, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    invoke-interface {v3, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2474
    const-string/jumbo v12, "time"

    iget-wide v13, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2475
    const-string v12, "count"

    iget v13, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2476
    const-string/jumbo v12, "kernelWakeLocks"

    invoke-interface {v3, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2477
    sget-object v12, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2478
    .end local v11    # "s":Ljava/lang/String;
    goto :goto_3eb

    .line 2480
    :cond_43a
    const/4 v7, 0x0

    .line 2481
    iget-object v10, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasons:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_445
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_495

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2482
    .restart local v11    # "s":Ljava/lang/String;
    iget-object v14, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasons:Ljava/util/HashMap;

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    move-object v7, v14

    .line 2483
    iget-wide v14, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    cmp-long v14, v14, v12

    if-nez v14, :cond_461

    .line 2484
    goto :goto_492

    .line 2487
    :cond_461
    const-string/jumbo v14, "kernelWakeupReasons"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2488
    const-string/jumbo v14, "name"

    iget-object v15, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    invoke-interface {v3, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2489
    const-string/jumbo v14, "time"

    iget-wide v12, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v0, v14, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2490
    const-string v12, "count"

    iget v13, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2491
    const-string/jumbo v12, "kernelWakeupReasons"

    invoke-interface {v3, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2492
    sget-object v12, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2493
    .end local v11    # "s":Ljava/lang/String;
    nop

    .line 2481
    :goto_492
    const-wide/16 v12, 0x0

    goto :goto_445

    .line 2495
    :cond_495
    const-string v10, "OPCS"

    invoke-interface {v3, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2496
    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2498
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2499
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 2500
    iget-object v0, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4aa
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4aa} :catch_4ab

    .line 2507
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "pc":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    .end local v7    # "te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .end local v8    # "df":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    .end local v9    # "cf":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    goto :goto_4cd

    .line 2501
    :catch_4ab
    move-exception v0

    .line 2502
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "OPCS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "persistToDisk Exception e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2504
    if-eqz v4, :cond_4cd

    .line 2505
    iget-object v5, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    invoke-virtual {v5, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2508
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4cd
    :goto_4cd
    return-void
.end method

.method private persistToLocal(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V
    .registers 3
    .param p1, "data"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    .line 2281
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->persistToDisk(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    .line 2282
    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    if-eqz v0, :cond_a

    .line 2283
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->persistBaseDataToDisk()V

    .line 2285
    :cond_a
    return-void
.end method

.method private releaseWakeLock()V
    .registers 2

    .line 608
    const-string/jumbo v0, "releaseWakeLock"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 610
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 613
    :cond_1a
    return-void
.end method

.method private resetListener()V
    .registers 6

    .line 1657
    const-string/jumbo v0, "resetListener"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1658
    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    if-eqz v0, :cond_2d

    .line 1659
    const/4 v0, 0x0

    .line 1660
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mResetParamListener:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;

    if-eqz v1, :cond_15

    .line 1661
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mResetParamListener:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;

    invoke-interface {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;->resetParamForOPCS()Z

    move-result v0

    .line 1664
    :cond_15
    if-nez v0, :cond_2d

    .line 1665
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1666
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    .line 1667
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1669
    :cond_26
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1673
    .end local v0    # "ret":Z
    :cond_2d
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .registers 8
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 1088
    if-nez p1, :cond_9

    .line 1089
    const-string/jumbo v0, "resolveConfigFromJSON jsonArray is null, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1090
    return-void

    .line 1094
    :cond_9
    const/4 v0, 0x0

    move v1, v0

    .line 1094
    .local v1, "index":I
    :goto_b
    :try_start_b
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_126

    .line 1095
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1096
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1097
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1098
    .local v3, "jArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    .line 1099
    .local v4, "enable_t":Z
    sget-boolean v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    if-eq v4, v5, :cond_44

    .line 1100
    sput-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    .line 1101
    sget-boolean v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    if-eqz v5, :cond_3e

    .line 1102
    sget-object v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE_BAK:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    sput-object v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    goto :goto_41

    .line 1104
    :cond_3e
    const/4 v5, 0x0

    sput-object v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 1106
    :goto_41
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleException()V

    .line 1110
    .end local v3    # "jArray":Lorg/json/JSONArray;
    .end local v4    # "enable_t":Z
    :cond_44
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "reportIntervalThreshold"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 1111
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1112
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ReportTimePoint:J

    .line 1113
    sget-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    if-eqz v4, :cond_68

    .line 1114
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calibrateReportAlarm()V

    .line 1118
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_68
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "calculateIntervalThreshold"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 1119
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1120
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->CalculateIntervalThreshold:J

    .line 1121
    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1122
    sget-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    if-eqz v4, :cond_92

    .line 1123
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calibrateCalculateAlarm()V

    .line 1127
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_92
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bootDelayTime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 1128
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1129
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BootDelayTime:J

    .line 1132
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_ae
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "randomInterval"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 1133
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1134
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->RandomInterval:I

    .line 1137
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_cb
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "topSize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 1138
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1139
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopSize:I

    .line 1142
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_e8
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "topKernelWakeLocks"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_105

    .line 1143
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1144
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeLocks:I

    .line 1147
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_105
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "topKernelWakeupReasons"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_122

    .line 1148
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1149
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeupReasons:I
    :try_end_122
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_122} :catch_2ba
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_122} :catch_1eb
    .catchall {:try_start_b .. :try_end_122} :catchall_1e8

    .line 1094
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_122
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    .line 1160
    .end local v1    # "index":I
    :cond_126
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ReportTimePoint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ReportTimePoint:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON CalculateIntervalThreshold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->CalculateIntervalThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON BootDelayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BootDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON RandomInterval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->RandomInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopKernelWakeLocks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeLocks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1d5
    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopKernelWakeupReasons:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeupReasons:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    goto/16 :goto_389

    .line 1159
    :catchall_1e8
    move-exception v0

    goto/16 :goto_38a

    .line 1155
    :catch_1eb
    move-exception v0

    .line 1156
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1ec
    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_209
    .catchall {:try_start_1ec .. :try_end_209} :catchall_1e8

    .line 1160
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ReportTimePoint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ReportTimePoint:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON CalculateIntervalThreshold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->CalculateIntervalThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON BootDelayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BootDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON RandomInterval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->RandomInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopKernelWakeLocks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeLocks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1d5

    .line 1152
    :catch_2ba
    move-exception v0

    .line 1153
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2bb
    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2d8
    .catchall {:try_start_2bb .. :try_end_2d8} :catchall_1e8

    .line 1160
    .end local v0    # "e":Lorg/json/JSONException;
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ReportTimePoint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ReportTimePoint:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON CalculateIntervalThreshold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->CalculateIntervalThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON BootDelayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BootDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON RandomInterval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->RandomInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopKernelWakeLocks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeLocks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1d5

    .line 1184
    :goto_389
    return-void

    .line 1159
    :goto_38a
    nop

    .line 1160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ReportTimePoint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ReportTimePoint:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON CalculateIntervalThreshold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->CalculateIntervalThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON BootDelayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BootDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON RandomInterval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->RandomInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopKernelWakeLocks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeLocks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopKernelWakeupReasons:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeupReasons:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private toTrackImmediately()V
    .registers 2

    .line 1645
    const-string/jumbo v0, "toTrackImmediately"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1646
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->trackPowerData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    .line 1647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    .line 1648
    return-void
.end method

.method private trackPowerData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V
    .registers 5
    .param p1, "data"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    .line 4110
    const-string/jumbo v0, "trackPowerData"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 4111
    if-nez p1, :cond_f

    .line 4112
    const-string/jumbo v0, "trackPowerData data is null, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V

    .line 4113
    return-void

    .line 4116
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    if-nez v0, :cond_1e

    .line 4117
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    const-string v2, "NYNCG4I0TI"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 4120
    :cond_1e
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string v1, "OPCS"

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->makeDataToString(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 4121
    return-void
.end method


# virtual methods
.method public initPlugState(Ljava/lang/Boolean;IZ)Z
    .registers 8
    .param p1, "plug"    # Ljava/lang/Boolean;
    .param p2, "plugType"    # I
    .param p3, "isFastCharge"    # Z

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "initPlugState Plug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " |plugType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |isFastCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1353
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    .line 1354
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1355
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1353
    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1356
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1357
    const/4 v1, 0x1

    return v1
.end method

.method public notifyBatteryLevelEvent(I)V
    .registers 6
    .param p1, "level"    # I

    .line 1337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyBatteryLevelEvent Level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1338
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1339
    const-string/jumbo v0, "notifyBatteryLevelEvent not yet timing, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1340
    return-void

    .line 1343
    :cond_22
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1345
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1346
    return-void
.end method

.method public notifyDozeEvent(ZLjava/lang/String;)V
    .registers 6
    .param p1, "idle"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyDozeEvent idle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1388
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1389
    const-string/jumbo v0, "notifyDozeEvent not yet timing, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1390
    return-void

    .line 1393
    :cond_2a
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    .line 1394
    const/4 v2, 0x0

    .line 1393
    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1395
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1396
    return-void
.end method

.method public notifyFastChargeEvent(Z)V
    .registers 4
    .param p1, "isFastCharge"    # Z

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyFastChargeEvent isFastCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1375
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1376
    const-string/jumbo v0, "notifyFastChargeEvent not yet timing, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1377
    return-void

    .line 1380
    :cond_22
    if-eqz p1, :cond_2a

    .line 1381
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    .line 1382
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1384
    :cond_2a
    return-void
.end method

.method public notifyPkgEvent(Lcom/android/server/am/ActivityRecord;Z)V
    .registers 7
    .param p1, "component"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resumed"    # Z

    .line 1305
    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    if-nez v0, :cond_5

    .line 1307
    return-void

    .line 1310
    :cond_5
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1311
    const-string/jumbo v0, "notifyPkgEvent not yet timing, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1312
    return-void

    .line 1315
    :cond_12
    if-eqz p2, :cond_28

    .line 1316
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1318
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1316
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1319
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1321
    .end local v0    # "msg":Landroid/os/Message;
    :cond_28
    return-void
.end method

.method public notifyPlugEvent(Ljava/lang/Boolean;IZ)V
    .registers 8
    .param p1, "plug"    # Ljava/lang/Boolean;
    .param p2, "plugType"    # I
    .param p3, "isFastCharge"    # Z

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyPlugEvent Plug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " |plugType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |isFastCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1363
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1364
    const-string/jumbo v0, "notifyPlugEvent not yet timing, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1365
    return-void

    .line 1368
    :cond_32
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 1369
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, ""

    .line 1368
    invoke-virtual {v0, v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1370
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1371
    return-void
.end method

.method public notifyScreenEvent(Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "on"    # Ljava/lang/Boolean;

    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyScreenEvent Screen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1325
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1326
    const-string/jumbo v0, "notifyScreenEvent not yet timing, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 1327
    return-void

    .line 1330
    :cond_22
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    .line 1331
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1330
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1333
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1334
    return-void
.end method

.method public registerResetParamListener(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;)V
    .registers 3
    .param p1, "rl"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;

    .line 4261
    const-string/jumbo v0, "registerResetParamListener"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    .line 4262
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mResetParamListener:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;

    .line 4263
    return-void
.end method
