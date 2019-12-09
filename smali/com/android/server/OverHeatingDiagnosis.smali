.class public Lcom/android/server/OverHeatingDiagnosis;
.super Ljava/lang/Object;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OverHeatingDiagnosis$Stopwatch;,
        Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;,
        Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;,
        Lcom/android/server/OverHeatingDiagnosis$UidStat;,
        Lcom/android/server/OverHeatingDiagnosis$UidObserver;,
        Lcom/android/server/OverHeatingDiagnosis$CameraStat;,
        Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;,
        Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;,
        Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;,
        Lcom/android/server/OverHeatingDiagnosis$MyHandler;
    }
.end annotation


# static fields
.field public static final BATTERY_PLUGGED_FASTCHARGE:I = 0x8

.field static final COOLDOWN_AFTER_BOOT:J = 0x2bf20L

.field static final CRITICAL_CHARGING_DURATION:J = 0x2bf20L

.field static final CRITICAL_CHARGING_TEMPERATURE:I = 0x2c

.field static final CRITICAL_CPU_USAGE:I = 0x28

.field static final CRITICAL_FOREGROUND_DURATION:J = 0xea60L

.field static final CRITICAL_TEMPERATURE:I = 0x27

.field static final CRITICAL_TOTAL_CPU_USAGE:I = 0xc8

.field public static final DIAGNOSIS_HEATING_FILE:Ljava/lang/String; = "/data/system/power/diagnosis_heating.txt"

.field static final DROPBOX_MAX_SIZE:I = 0x40000

.field static final DROPBOX_TAG:Ljava/lang/String; = "overheat"

.field static final FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final ISSUE_HEAT_CAMERA:I = 0x1c

.field public static final ISSUE_HEAT_CAMERA_WHEN_CHARGE:I = 0x1b

.field public static final ISSUE_HEAT_CPU_LOAD:I = 0x19

.field public static final ISSUE_HEAT_PLAY_WHEN_CHARGE:I = 0x18

.field public static final ISSUE_HEAT_PLAY_WHEN_DASH:I = 0x17

.field public static final ISSUE_HEAT_UNKNOWN_REASON:I = 0x1a

.field static final LOGCAT_LINE_NUM:I = 0x800

.field static final MAX_RECORD_COUNT:I = 0x28

.field private static final MDM_APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final MDM_CPU_LOAD:Ljava/lang/String; = "cl"

.field private static final MDM_EVENT:Ljava/lang/String; = "overheat"

.field private static final MDM_HEAT_REASON:Ljava/lang/String; = "hr"

.field private static final MDM_HEAT_TYPE:Ljava/lang/String; = "ht"

.field private static final MDM_MAX_TEMP:Ljava/lang/String; = "mt"

.field static final MONITOR_FREQUENCY:J = 0xea60L

.field static final MONITOR_PERIOD_MILLIS:J = 0x493e0L

.field static final NUM_START_TO_MONITOR:I = 0x3

.field static final ONLINECONFIG_PROJECT_NAME:Ljava/lang/String; = "OverHeatingDiagnosis"

.field static final RESERVED_BYTES_PER_LOGCAT_LINE:I = 0x64

.field static final RES_THERMAL_ZONE_PATH:Ljava/lang/String; = "com.oneplus:string/config_overheat_thermal_zone_path"

.field static final RES_THERMAL_ZONE_PRECISION:Ljava/lang/String; = "com.oneplus:integer/config_overheat_thermal_zone_precision"

.field static final STATE_ARBITRATE:I = 0x2

.field static final STATE_MONITOR:I = 0x1

.field static final STATE_NORMAL:I = 0x0

.field static final STATE_REPORT:I = 0x3

.field static final TAG:Ljava/lang/String; = "OverHeatingDiagnosis"

.field static final THERMAL_ZONE_PATH:Ljava/lang/String; = "/sys/class/thermal/thermal_zone27/temp"

.field static final THERMAL_ZONE_PRECISION:I = 0x1

.field static final TRIGGER_MONITOR_TEMPERATURE:I = 0x23

.field static final TRIGGER_PERIOD_MILLIS:J = 0x927c0L

.field private static mPackageManager:Landroid/content/pm/PackageManager;


# instance fields
.field private mBatteryFilter:Landroid/content/IntentFilter;

.field mBatteryHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryReceiver:Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;

.field private mBootCompleteTime:J

.field private final mCameraStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/OverHeatingDiagnosis$CameraStat;",
            ">;"
        }
    .end annotation
.end field

.field private mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConfigUpdater:Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;

.field private mContext:Landroid/content/Context;

.field private mCriticalCharging:J

.field private mCriticalChargingTemp:I

.field private mCriticalCpu:I

.field private mCriticalForeground:J

.field private mCriticalTemp:I

.field private mCriticalTotalCpu:I

.field private mCurrentLevel:I

.field private mCurrentPlugType:I

.field private mCurrentTemp:I

.field private mDiagState:I

.field private mDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

.field private mEnabled:Z

.field private mEnabledBugreport:Z

.field private mEnabledMDM:Z

.field private mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

.field private mLastLevel:I

.field private final mLock:Ljava/lang/Object;

.field private mMaxMonitorTemp:I

.field private mMonitorForced:Z

.field private mMonitorFrequency:J

.field private mMonitorNum:I

.field private mMonitorPeriod:J

.field private mMonitorStart:J

.field private mMonitorTemp:I

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private mThermalZonePath:Ljava/lang/String;

.field private mThermalZonePrecision:I

.field private mTriggerPeriod:J

.field private final mUidObserver:Lcom/android/server/OverHeatingDiagnosis$UidObserver;

.field private final mUidStateStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/OverHeatingDiagnosis$UidStat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 104
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/OverHeatingDiagnosis;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 1528
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mLock:Ljava/lang/Object;

    .line 179
    new-instance v0, Lcom/android/server/OverHeatingDiagnosis$UidObserver;

    invoke-direct {v0, p0}, Lcom/android/server/OverHeatingDiagnosis$UidObserver;-><init>(Lcom/android/server/OverHeatingDiagnosis;)V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidObserver:Lcom/android/server/OverHeatingDiagnosis$UidObserver;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    .line 197
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    .line 198
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    .line 199
    new-instance v0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;-><init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$1;)V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    .line 202
    if-nez p1, :cond_38

    .line 203
    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "context cannot be null"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 206
    :cond_38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z

    .line 207
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledBugreport:Z

    .line 208
    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledMDM:Z

    .line 209
    iput-boolean v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    .line 210
    const-wide/32 v2, 0x493e0

    iput-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J

    .line 211
    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mTriggerPeriod:J

    .line 212
    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J

    .line 213
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    .line 214
    const/16 v4, 0x23

    iput v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I

    .line 216
    const-string v4, "/sys/class/thermal/thermal_zone27/temp"

    iput-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    .line 217
    iput v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    .line 218
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCpu:I

    .line 219
    const/16 v4, 0xc8

    iput v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTotalCpu:I

    .line 220
    const/16 v4, 0x27

    iput v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I

    .line 221
    const/16 v4, 0x2c

    iput v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I

    .line 222
    iput-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    .line 223
    const-wide/32 v2, 0x2bf20

    iput-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCharging:J

    .line 225
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    .line 226
    new-instance v2, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;

    invoke-direct {v2, p0, v1}, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;-><init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$1;)V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mConfigUpdater:Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;

    .line 227
    new-instance v2, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;-><init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$1;)V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryReceiver:Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;

    .line 228
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryFilter:Landroid/content/IntentFilter;

    .line 229
    new-instance v2, Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;-><init>(Lcom/android/server/OverHeatingDiagnosis;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    .line 231
    new-instance v2, Lcom/android/server/OnePlusDiagnosisUtil;

    const-string v3, "/data/system/power/diagnosis_heating.txt"

    invoke-direct {v2, v3, v0}, Lcom/android/server/OnePlusDiagnosisUtil;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    .line 233
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    const-string v3, "NYNCG4I0TI"

    invoke-direct {v0, v2, v3}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 237
    const/4 v0, -0x1

    .line 238
    .local v0, "resId":I
    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 239
    .local v2, "res":Landroid/content/res/Resources;
    const-string v3, "com.oneplus:string/config_overheat_thermal_zone_path"

    invoke-virtual {v2, v3, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 240
    if-eqz v0, :cond_e0

    .line 241
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    .line 242
    const-string v3, "OverHeatingDiagnosis"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "res com.oneplus:string/config_overheat_thermal_zone_path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e8

    .line 244
    :cond_e0
    const-string v3, "OverHeatingDiagnosis"

    const-string/jumbo v4, "res com.oneplus:string/config_overheat_thermal_zone_path not found"

    invoke-static {v3, v4}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_e8
    const/4 v0, -0x1

    .line 247
    const-string v3, "com.oneplus:integer/config_overheat_thermal_zone_precision"

    invoke-virtual {v2, v3, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 248
    if-eqz v0, :cond_111

    .line 249
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    .line 250
    const-string v1, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "res com.oneplus:integer/config_overheat_thermal_zone_precision : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_119

    .line 252
    :cond_111
    const-string v1, "OverHeatingDiagnosis"

    const-string/jumbo v3, "res com.oneplus:integer/config_overheat_thermal_zone_precision not found"

    invoke-static {v1, v3}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_119
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/OverHeatingDiagnosis;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/OverHeatingDiagnosis;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    invoke-direct {p0}, Lcom/android/server/OverHeatingDiagnosis;->triggerMonitor()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$MyHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/OverHeatingDiagnosis;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/OverHeatingDiagnosis;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/OverHeatingDiagnosis;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/OverHeatingDiagnosis;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mLastLevel:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/OverHeatingDiagnosis;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 93
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mLastLevel:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/OverHeatingDiagnosis;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledBugreport:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/OverHeatingDiagnosis;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledBugreport:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/OverHeatingDiagnosis;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledMDM:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/OverHeatingDiagnosis;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledMDM:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/OverHeatingDiagnosis;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/OverHeatingDiagnosis;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/server/OverHeatingDiagnosis;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/OverHeatingDiagnosis;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 93
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/OverHeatingDiagnosis;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/OverHeatingDiagnosis;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # Z

    .line 93
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/OverHeatingDiagnosis;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/OverHeatingDiagnosis;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 93
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/OverHeatingDiagnosis;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mTriggerPeriod:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/android/server/OverHeatingDiagnosis;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # J

    .line 93
    iput-wide p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mTriggerPeriod:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/android/server/OverHeatingDiagnosis;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/android/server/OverHeatingDiagnosis;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # J

    .line 93
    iput-wide p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/android/server/OverHeatingDiagnosis;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/server/OverHeatingDiagnosis;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # J

    .line 93
    iput-wide p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/server/OverHeatingDiagnosis;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/OverHeatingDiagnosis;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 93
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/OverHeatingDiagnosis;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCpu:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/OverHeatingDiagnosis;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 93
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCpu:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/OverHeatingDiagnosis;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTotalCpu:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/OverHeatingDiagnosis;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 93
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTotalCpu:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/OverHeatingDiagnosis;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/OverHeatingDiagnosis;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 93
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/internal/os/ProcessCpuTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/OverHeatingDiagnosis;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/OverHeatingDiagnosis;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 93
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/OverHeatingDiagnosis;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    return-wide v0
.end method

.method static synthetic access$3102(Lcom/android/server/OverHeatingDiagnosis;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # J

    .line 93
    iput-wide p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    return-wide p1
.end method

.method static synthetic access$3200(Lcom/android/server/OverHeatingDiagnosis;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCharging:J

    return-wide v0
.end method

.method static synthetic access$3202(Lcom/android/server/OverHeatingDiagnosis;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # J

    .line 93
    iput-wide p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCharging:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/android/server/OverHeatingDiagnosis;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/OverHeatingDiagnosis;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryReceiver:Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/OverHeatingDiagnosis;)Landroid/content/IntentFilter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/OverHeatingDiagnosis;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 93
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCurrentLevel:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/OverHeatingDiagnosis;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 93
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCurrentPlugType:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/OverHeatingDiagnosis;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 93
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCurrentPlugType:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/server/OverHeatingDiagnosis;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 93
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCurrentTemp:I

    return p1
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 7
    .param p1, "uid"    # I

    .line 1530
    sget-object v0, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_c

    .line 1531
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1533
    :cond_c
    sget-object v0, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_38

    .line 1534
    sget-object v0, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 1535
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_38

    .line 1536
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_1a
    array-length v3, v0

    if-ge v2, v3, :cond_38

    .line 1538
    :try_start_1d
    sget-object v3, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1539
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_30

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_30

    .line 1540
    aget-object v1, v0, v2
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_2f} :catch_34

    return-object v1

    .line 1544
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_30
    nop

    .line 1536
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1542
    :catch_34
    move-exception v1

    .line 1543
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, ""

    return-object v3

    .line 1548
    .end local v0    # "packages":[Ljava/lang/String;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "i":I
    :cond_38
    const-string v0, ""

    return-object v0
.end method

.method private getPackageVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1552
    const-string v0, ""

    .line 1553
    .local v0, "version":Ljava/lang/String;
    sget-object v1, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_e

    .line 1554
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1556
    :cond_e
    sget-object v1, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_34

    .line 1558
    :try_start_12
    sget-object v1, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1559
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_1b} :catch_1d

    move-object v0, v2

    .line 1563
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_34

    .line 1560
    :catch_1d
    move-exception v1

    .line 1561
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1565
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_34
    :goto_34
    return-object v0
.end method

.method private isIncrease([II)Z
    .registers 7
    .param p1, "data"    # [I
    .param p2, "size"    # I

    .line 296
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 297
    return v0

    .line 299
    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_15

    .line 300
    add-int/lit8 v2, p2, -0x1

    aget v2, p1, v2

    add-int/lit8 v3, p2, -0x2

    aget v3, p1, v3

    if-lt v2, v3, :cond_13

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    return v0

    .line 302
    :cond_15
    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/OverHeatingDiagnosis;->isIncrease([II)Z

    move-result v2

    if-eqz v2, :cond_28

    add-int/lit8 v2, p2, -0x1

    aget v2, p1, v2

    add-int/lit8 v3, p2, -0x2

    aget v3, p1, v3

    if-lt v2, v3, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0
.end method

.method private triggerMonitor()Z
    .registers 9

    .line 311
    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 312
    return v1

    .line 315
    :cond_6
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    if-lt v0, v2, :cond_81

    .line 316
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    new-array v0, v0, [I

    .line 319
    .local v0, "tempData":[I
    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    invoke-virtual {v2}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->getTime()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    .line 320
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    invoke-virtual {v5}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->getTime()J

    move-result-wide v5

    sub-long/2addr v2, v5

    .line 322
    .local v2, "deltaTime":J
    move v5, v1

    .line 322
    .local v5, "i":I
    :goto_32
    array-length v6, v0

    if-ge v5, v6, :cond_46

    .line 323
    iget-object v6, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    invoke-virtual {v6}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->getTemp()I

    move-result v6

    aput v6, v0, v5

    .line 322
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 325
    .end local v5    # "i":I
    :cond_46
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 327
    iget-boolean v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    if-eqz v5, :cond_50

    .line 328
    return v4

    .line 334
    :cond_50
    iget-wide v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mTriggerPeriod:J

    cmp-long v5, v2, v5

    if-lez v5, :cond_57

    .line 335
    return v1

    .line 338
    :cond_57
    const-string v5, "OverHeatingDiagnosis"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "last temp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v0

    sub-int/2addr v7, v4

    aget v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    array-length v5, v0

    sub-int/2addr v5, v4

    aget v4, v0, v5

    iget v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I

    if-ge v4, v5, :cond_7b

    .line 342
    return v1

    .line 345
    :cond_7b
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/server/OverHeatingDiagnosis;->isIncrease([II)Z

    move-result v1

    return v1

    .line 347
    .end local v0    # "tempData":[I
    .end local v2    # "deltaTime":J
    :cond_81
    return v1
.end method


# virtual methods
.method addRecord(IIIZ)V
    .registers 12
    .param p1, "level"    # I
    .param p2, "temp"    # I
    .param p3, "chargePlug"    # I
    .param p4, "charging"    # Z

    .line 701
    new-instance v6, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;-><init>(Lcom/android/server/OverHeatingDiagnosis;IIZI)V

    .line 702
    .local v0, "record":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add new record, and total size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    .line 706
    .local v2, "br":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    const-string v3, "OverHeatingDiagnosis"

    invoke-virtual {v2}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .end local v2    # "br":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    goto :goto_32

    .line 708
    :cond_48
    return-void
.end method

.method arbitrate(ILjava/lang/String;JJJLjava/lang/String;)V
    .registers 34
    .param p1, "uid"    # I
    .param p2, "procName"    # Ljava/lang/String;
    .param p3, "cpuUsage"    # J
    .param p5, "totalCpuUsage"    # J
    .param p7, "foreground"    # J
    .param p9, "version"    # Ljava/lang/String;

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v0, p3

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    .line 361
    move-object/from16 v14, p9

    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arbitrate: uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " procName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cpuUsage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " totalCpuUsage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " foreground="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v2, 0x1

    .line 369
    .local v2, "needReport":Z
    const/4 v3, 0x0

    .line 370
    .local v3, "overheat":Z
    const/16 v4, 0x1a

    .line 371
    .local v4, "type":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v5

    .line 373
    .local v15, "reason":Ljava/lang/StringBuilder;
    const-wide/16 v5, 0x0

    .line 374
    .local v5, "totalCameraTime":J
    move-wide/from16 v16, v5

    .line 374
    .end local v5    # "totalCameraTime":J
    .local v16, "totalCameraTime":J
    const/4 v5, 0x0

    .line 374
    .local v5, "i":I
    :goto_5b
    iget-object v6, v7, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_b0

    .line 375
    iget-object v6, v7, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OverHeatingDiagnosis$CameraStat;

    .line 376
    .local v6, "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    invoke-virtual {v6}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->getUseTime()J

    move-result-wide v18

    add-long v16, v16, v18

    .line 377
    move/from16 v20, v2

    const-string v2, "OverHeatingDiagnosis"

    .line 377
    .end local v2    # "needReport":Z
    .local v20, "needReport":Z
    move/from16 v21, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .line 377
    .end local v3    # "overheat":Z
    .local v21, "overheat":Z
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v4

    const-string v4, "Camera "

    .line 377
    .end local v4    # "type":I
    .local v22, "type":I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " use="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->getUseTime()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " idle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v6}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->getIdleTime()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .end local v6    # "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move-wide/from16 v10, p5

    goto :goto_5b

    .line 382
    .end local v5    # "i":I
    .end local v20    # "needReport":Z
    .end local v21    # "overheat":Z
    .end local v22    # "type":I
    .restart local v2    # "needReport":Z
    .restart local v3    # "overheat":Z
    .restart local v4    # "type":I
    :cond_b0
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    .line 382
    .end local v2    # "needReport":Z
    .end local v3    # "overheat":Z
    .end local v4    # "type":I
    .restart local v20    # "needReport":Z
    .restart local v21    # "overheat":Z
    .restart local v22    # "type":I
    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Charging time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    invoke-virtual {v4}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v2, v7, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    invoke-virtual {v2}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->getTime()J

    move-result-wide v2

    iget-wide v4, v7, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCharging:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_100

    .line 384
    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Critical temp is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget v2, v7, Lcom/android/server/OverHeatingDiagnosis;->mMaxMonitorTemp:I

    iget v3, v7, Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I

    if-lt v2, v3, :cond_120

    .line 386
    const/4 v3, 0x1

    .line 395
    .end local v21    # "overheat":Z
    .restart local v3    # "overheat":Z
    :goto_fd
    move/from16 v21, v3

    goto :goto_120

    .line 389
    .end local v3    # "overheat":Z
    .restart local v21    # "overheat":Z
    :cond_100
    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Critical temp is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget v2, v7, Lcom/android/server/OverHeatingDiagnosis;->mMaxMonitorTemp:I

    iget v3, v7, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I

    if-lt v2, v3, :cond_120

    .line 391
    const/4 v3, 0x1

    goto :goto_fd

    .line 395
    :cond_120
    :goto_120
    if-nez v21, :cond_12c

    iget-boolean v2, v7, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    if-eqz v2, :cond_127

    goto :goto_12c

    .line 460
    :cond_127
    const/4 v8, 0x0

    move-wide/from16 v10, p5

    goto/16 :goto_1ff

    .line 396
    :cond_12c
    :goto_12c
    iget v2, v7, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCpu:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_179

    .line 397
    const/16 v2, 0x3e8

    if-ne v8, v2, :cond_13e

    .line 399
    const-string/jumbo v2, "system:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_151

    .line 401
    :cond_13e
    iget-wide v2, v7, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    cmp-long v2, v12, v2

    if-gez v2, :cond_154

    .line 404
    const-string v2, "bg:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-wide v2, v7, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    cmp-long v2, v16, v2

    if-lez v2, :cond_151

    .line 410
    const/4 v2, 0x0

    goto :goto_15a

    .line 421
    :cond_151
    :goto_151
    move/from16 v2, v20

    goto :goto_15a

    .line 416
    :cond_154
    const-string v2, "fg:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const/4 v2, 0x0

    .line 421
    .end local v20    # "needReport":Z
    .restart local v2    # "needReport":Z
    :goto_15a
    iget v3, v7, Lcom/android/server/OverHeatingDiagnosis;->mCurrentPlugType:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_163

    .line 422
    const/16 v3, 0x17

    .line 422
    .end local v22    # "type":I
    .local v3, "type":I
    :goto_162
    goto :goto_16f

    .line 423
    .end local v3    # "type":I
    .restart local v22    # "type":I
    :cond_163
    iget v3, v7, Lcom/android/server/OverHeatingDiagnosis;->mCurrentPlugType:I

    and-int/lit8 v3, v3, 0x7

    if-eqz v3, :cond_16c

    .line 424
    const/16 v3, 0x18

    goto :goto_162

    .line 426
    :cond_16c
    const/16 v3, 0x19

    goto :goto_162

    .line 428
    .end local v22    # "type":I
    .restart local v3    # "type":I
    :goto_16f
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    move-wide/from16 v18, v0

    move/from16 v20, v2

    move/from16 v22, v3

    goto :goto_197

    .line 429
    .end local v2    # "needReport":Z
    .end local v3    # "type":I
    .restart local v20    # "needReport":Z
    .restart local v22    # "type":I
    :cond_179
    iget-wide v2, v7, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    cmp-long v2, v16, v2

    if-lez v2, :cond_19a

    .line 430
    const-string v2, "camera hardware"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    iget v2, v7, Lcom/android/server/OverHeatingDiagnosis;->mCurrentPlugType:I

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_18d

    .line 432
    const/16 v2, 0x1b

    .line 432
    .end local v22    # "type":I
    .local v2, "type":I
    :goto_18c
    goto :goto_190

    .line 434
    .end local v2    # "type":I
    .restart local v22    # "type":I
    :cond_18d
    const/16 v2, 0x1c

    goto :goto_18c

    .line 436
    .end local v22    # "type":I
    .restart local v2    # "type":I
    :goto_190
    const/4 v3, 0x0

    .line 454
    .end local v20    # "needReport":Z
    .local v3, "needReport":Z
    move-wide/from16 v18, v0

    move/from16 v22, v2

    move/from16 v20, v3

    .line 454
    .end local v2    # "type":I
    .end local v3    # "needReport":Z
    .end local p3    # "cpuUsage":J
    .local v18, "cpuUsage":J
    .restart local v20    # "needReport":Z
    .restart local v22    # "type":I
    :goto_197
    move-wide/from16 v10, p5

    goto :goto_1ce

    .line 437
    .end local v18    # "cpuUsage":J
    .restart local p3    # "cpuUsage":J
    :cond_19a
    iget v2, v7, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTotalCpu:I

    int-to-long v2, v2

    move-wide/from16 v10, p5

    cmp-long v2, v10, v2

    if-ltz v2, :cond_1c3

    .line 439
    iget v2, v7, Lcom/android/server/OverHeatingDiagnosis;->mCurrentPlugType:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1ac

    .line 440
    const/16 v2, 0x17

    .line 440
    .end local v22    # "type":I
    .restart local v2    # "type":I
    :goto_1ab
    goto :goto_1b8

    .line 441
    .end local v2    # "type":I
    .restart local v22    # "type":I
    :cond_1ac
    iget v2, v7, Lcom/android/server/OverHeatingDiagnosis;->mCurrentPlugType:I

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_1b5

    .line 442
    const/16 v2, 0x18

    goto :goto_1ab

    .line 444
    :cond_1b5
    const/16 v2, 0x19

    goto :goto_1ab

    .line 447
    .end local v22    # "type":I
    .restart local v2    # "type":I
    :goto_1b8
    move-wide v0, v10

    .line 448
    .end local p3    # "cpuUsage":J
    .local v0, "cpuUsage":J
    const-string v3, "fg:total_cpu_load"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    move-wide/from16 v18, v0

    move/from16 v22, v2

    goto :goto_1ce

    .line 451
    .end local v0    # "cpuUsage":J
    .end local v2    # "type":I
    .restart local v22    # "type":I
    .restart local p3    # "cpuUsage":J
    :cond_1c3
    const/4 v2, 0x0

    .line 452
    .end local v20    # "needReport":Z
    .local v2, "needReport":Z
    const-string/jumbo v3, "unknown"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    move-wide/from16 v18, v0

    move/from16 v20, v2

    .line 454
    .end local v2    # "needReport":Z
    .end local p3    # "cpuUsage":J
    .restart local v18    # "cpuUsage":J
    .restart local v20    # "needReport":Z
    :goto_1ce
    if-eqz v14, :cond_1ec

    const-string v0, ""

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ec

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_1ec
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v5, v7, Lcom/android/server/OverHeatingDiagnosis;->mMaxMonitorTemp:I

    move-object v0, v7

    move/from16 v1, v22

    move-wide/from16 v3, v18

    const/4 v8, 0x0

    move/from16 v6, v20

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/OverHeatingDiagnosis;->reportAbnormalHeating(ILjava/lang/String;JIZ)V

    .line 460
    move-wide/from16 v0, v18

    .line 460
    .end local v18    # "cpuUsage":J
    .restart local v0    # "cpuUsage":J
    :goto_1ff
    iget-object v2, v7, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 461
    iput v8, v7, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    .line 462
    return-void
.end method

.method convertIssueTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .line 1569
    packed-switch p1, :pswitch_data_18

    .line 1583
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1571
    :pswitch_6
    const-string v0, "ISSUE_HEAT_CAMERA"

    return-object v0

    .line 1579
    :pswitch_9
    const-string v0, "ISSUE_HEAT_CAMERA_WHEN_CHARGE"

    return-object v0

    .line 1581
    :pswitch_c
    const-string v0, "ISSUE_HEAT_UNKNOWN_REASON"

    return-object v0

    .line 1573
    :pswitch_f
    const-string v0, "ISSUE_HEAT_CPU_LOAD"

    return-object v0

    .line 1577
    :pswitch_12
    const-string v0, "ISSUE_HEAT_PLAY_WHEN_CHARGE"

    return-object v0

    .line 1575
    :pswitch_15
    const-string v0, "ISSUE_HEAT_PLAY_WHEN_DASH"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x17
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1589
    const-string v0, "**** OverHeatingDiagnosis ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEnabledBugreport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledBugreport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEnabledMDM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledMDM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mThermalZonePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mThermalZonePrecision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMonitorForced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMonitorNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMonitorPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTriggerPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mTriggerPeriod:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMonitorFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMonitorTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCriticalCpu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCpu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCriticalTotalCpu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTotalCpu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCriticalTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCriticalChargingTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCriticalForeground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1607
    const-string v0, "BatteryRecords:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1608
    const/4 v0, 0x0

    .line 1608
    .local v0, "i":I
    :goto_17b
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a6

    .line 1609
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    .line 1610
    .local v1, "br":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1608
    .end local v1    # "br":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_17b

    .line 1612
    .end local v0    # "i":I
    :cond_1a6
    return-void
.end method

.method public endMonitor()V
    .registers 3

    .line 664
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->removeMessages(I)V

    .line 665
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 666
    return-void
.end method

.method generateRatio(JJ)Ljava/lang/String;
    .registers 17
    .param p1, "numerator"    # J
    .param p3, "denominator"    # J

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 855
    .local v0, "ratio":Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-nez v3, :cond_e

    const-wide/16 v3, 0x1

    goto :goto_f

    :cond_e
    move-wide v3, p3

    .line 856
    .local v3, "totalTime":J
    :goto_f
    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, p1

    div-long/2addr v5, v3

    .line 857
    .local v5, "thousands":J
    const-wide/16 v7, 0xa

    div-long v9, v5, v7

    .line 859
    .local v9, "hundreds":J
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 861
    cmp-long v11, v9, v7

    if-gez v11, :cond_2d

    .line 862
    mul-long/2addr v7, v9

    sub-long v7, v5, v7

    .line 863
    .local v7, "remainder":J
    cmp-long v1, v7, v1

    if-eqz v1, :cond_2d

    .line 864
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 865
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 869
    .end local v7    # "remainder":J
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getDeviceTemp()I
    .registers 9

    .line 675
    const/16 v0, 0xa

    const/4 v1, 0x0

    :try_start_3
    new-array v2, v0, [C

    .line 676
    .local v2, "buffer":[C
    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_42

    .line 678
    .local v3, "file":Ljava/io/FileReader;
    :try_start_c
    invoke-virtual {v3, v2, v1, v0}, Ljava/io/FileReader;->read([CII)I

    move-result v0

    .line 679
    .local v0, "len":I
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v1, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 680
    .local v4, "deviceTemp":I
    iget v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    div-int v5, v4, v5

    move v4, v5

    .line 682
    const-string v5, "OverHeatingDiagnosis"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDeviceTemp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_3d

    .line 683
    nop

    .line 685
    :try_start_39
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 683
    return v4

    .line 685
    .end local v0    # "len":I
    .end local v4    # "deviceTemp":I
    :catchall_3d
    move-exception v0

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    throw v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_42} :catch_42

    .line 687
    .end local v2    # "buffer":[C
    .end local v3    # "file":Ljava/io/FileReader;
    :catch_42
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get device temp w "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method grabOnlineConfig()V
    .registers 4

    .line 1016
    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "[OnlineConfig] grabOnlineConfig"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    const-string v2, "OverHeatingDiagnosis"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1018
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mConfigUpdater:Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 1019
    return-void
.end method

.method handleOnUidStateChanged(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 1224
    const-string v0, "OverHeatingDiagnosis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUidStateChanged: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_32

    .line 1228
    new-instance v0, Lcom/android/server/OverHeatingDiagnosis$UidStat;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/OverHeatingDiagnosis$UidStat;-><init>(Lcom/android/server/OverHeatingDiagnosis;II)V

    .line 1229
    .local v0, "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1230
    .end local v0    # "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    goto :goto_42

    .line 1231
    :cond_32
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OverHeatingDiagnosis$UidStat;

    .line 1232
    .restart local v0    # "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    invoke-virtual {v0, p2}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->update(I)V

    .line 1233
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1235
    .end local v0    # "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    :goto_42
    return-void
.end method

.method initializeUidStats()V
    .registers 8

    .line 1171
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1176
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 1177
    .local v0, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1178
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1178
    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_4a

    .line 1179
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1180
    .local v3, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    invoke-virtual {p0, v4}, Lcom/android/server/OverHeatingDiagnosis;->isProcessStateForeground(I)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1181
    const-string v4, "OverHeatingDiagnosis"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is foreground"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    invoke-virtual {p0, v4, v5}, Lcom/android/server/OverHeatingDiagnosis;->handleOnUidStateChanged(II)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_47} :catch_4b

    .line 1178
    .end local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1186
    .end local v0    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_4a
    goto :goto_4c

    .line 1185
    :catch_4b
    move-exception v0

    .line 1187
    :goto_4c
    return-void
.end method

.method injectRegisterUidObserver(Landroid/app/IUidObserver;I)V
    .registers 6
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .param p2, "which"    # I

    .line 1194
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1197
    goto :goto_b

    .line 1196
    :catch_a
    move-exception v0

    .line 1198
    :goto_b
    return-void
.end method

.method injectUnregisterUidObserver(Landroid/app/IUidObserver;)V
    .registers 6
    .param p1, "observer"    # Landroid/app/IUidObserver;

    .line 1205
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1208
    goto :goto_20

    .line 1206
    :catch_8
    move-exception v0

    .line 1207
    .local v0, "shouldntHappen":Landroid/os/RemoteException;
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "injectUnregisterUidObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    .end local v0    # "shouldntHappen":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method isProcessStateForeground(I)Z
    .registers 3
    .param p1, "procState"    # I

    .line 1217
    const/4 v0, 0x2

    if-gt p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method monitorEndLocked()V
    .registers 28

    .line 771
    move-object/from16 v10, p0

    const-string v0, "OverHeatingDiagnosis"

    const-string/jumbo v1, "monitorEndLocked()"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget v0, v10, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    return-void

    .line 773
    :cond_10
    const/4 v0, 0x2

    iput v0, v10, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    .line 775
    iget-object v0, v10, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    invoke-virtual {v0}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->stop()V

    .line 777
    iget-object v0, v10, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 778
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 779
    .local v11, "current":J
    iget-object v0, v10, Lcom/android/server/OverHeatingDiagnosis;->mUidObserver:Lcom/android/server/OverHeatingDiagnosis$UidObserver;

    invoke-virtual {v10, v0}, Lcom/android/server/OverHeatingDiagnosis;->injectUnregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 782
    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "Dump of UID state stats:"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v0, 0x0

    move v1, v0

    .line 783
    .local v1, "i":I
    :goto_2f
    iget-object v2, v10, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 784
    iget-object v2, v10, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OverHeatingDiagnosis$UidStat;

    .line 785
    .local v2, "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    invoke-virtual {v2}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->update(I)V

    .line 786
    invoke-virtual {v2}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->dump()V

    .line 783
    .end local v2    # "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 789
    .end local v1    # "i":I
    :cond_4c
    move v1, v0

    .line 789
    .restart local v1    # "i":I
    :goto_4d
    iget-object v2, v10, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6a

    .line 790
    iget-object v2, v10, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OverHeatingDiagnosis$CameraStat;

    .line 791
    .local v2, "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    invoke-virtual {v2}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->getState()Z

    move-result v3

    .line 792
    .local v3, "available":Z
    invoke-virtual {v2, v3}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->update(Z)V

    .line 793
    invoke-virtual {v2}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->stop()V

    .line 789
    .end local v2    # "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    .end local v3    # "available":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 797
    .end local v1    # "i":I
    :cond_6a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v1

    .line 798
    .local v13, "info":Ljava/lang/StringBuilder;
    iget-object v1, v10, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1, v11, v12}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const-string v1, "OverHeatingDiagnosis"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\nprintCurrentLoad:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countStats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countWorkingStats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v1, v10, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v14

    .line 806
    .local v14, "working_num":I
    iget-object v1, v10, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getTotalCpuPercent()F

    move-result v1

    float-to-int v15, v1

    .line 808
    .local v15, "totalCpuUsage":I
    if-lez v14, :cond_19b

    .line 809
    const/4 v1, 0x0

    .line 811
    .local v1, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-object v2, v10, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v7

    .line 813
    .end local v1    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v7, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    if-eqz v7, :cond_19b

    .line 814
    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    .line 815
    .local v0, "totalTime":J
    iget v2, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v3, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v2, v3

    int-to-long v5, v2

    .line 817
    .local v5, "useTime":J
    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", CPU usage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {v10, v5, v6, v0, v1}, Lcom/android/server/OverHeatingDiagnosis;->generateRatio(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 817
    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget v8, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 822
    .local v8, "uid":I
    const-wide/16 v2, 0x0

    .line 823
    .local v2, "foreground":J
    iget-object v4, v10, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_14c

    .line 824
    iget-object v4, v10, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OverHeatingDiagnosis$UidStat;

    .line 825
    .local v4, "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    invoke-virtual {v4}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->getTotalTimeInForeground()J

    move-result-wide v2

    .line 827
    .end local v2    # "foreground":J
    .end local v4    # "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    .local v16, "foreground":J
    :cond_14c
    move-wide/from16 v16, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_156

    const-wide/16 v0, 0x1

    .line 828
    .end local v0    # "totalTime":J
    .local v18, "totalTime":J
    :cond_156
    move-wide/from16 v18, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v5

    div-long v0, v0, v18

    const-wide/16 v2, 0xa

    div-long v20, v0, v2

    .line 830
    .local v20, "cpuUsage":J
    iget-object v0, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 831
    .local v0, "procName":Ljava/lang/String;
    invoke-static {v8}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_176

    .line 832
    invoke-direct {v10, v8}, Lcom/android/server/OverHeatingDiagnosis;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 833
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_176

    .line 834
    move-object v0, v1

    .line 838
    .end local v0    # "procName":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    .local v3, "procName":Ljava/lang/String;
    :cond_176
    move-object v3, v0

    const/16 v0, 0x3e8

    if-ne v8, v0, :cond_17f

    .line 839
    const-string v0, ""

    .line 841
    .local v9, "version":Ljava/lang/String;
    :goto_17d
    move-object v9, v0

    goto :goto_184

    .line 841
    .end local v9    # "version":Ljava/lang/String;
    :cond_17f
    invoke-direct {v10, v3}, Lcom/android/server/OverHeatingDiagnosis;->getPackageVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17d

    .line 844
    .restart local v9    # "version":Ljava/lang/String;
    :goto_184
    int-to-long v1, v15

    move-object v0, v10

    move-wide/from16 v22, v1

    move v1, v8

    move-object v2, v3

    move-object/from16 v24, v3

    move-wide/from16 v3, v20

    .line 844
    .end local v3    # "procName":Ljava/lang/String;
    .local v24, "procName":Ljava/lang/String;
    move-wide/from16 v25, v5

    move-wide/from16 v5, v22

    .line 844
    .end local v5    # "useTime":J
    .local v25, "useTime":J
    move-object/from16 v22, v7

    move/from16 v23, v8

    move-wide/from16 v7, v16

    .line 844
    .end local v7    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v8    # "uid":I
    .local v22, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v23, "uid":I
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/OverHeatingDiagnosis;->arbitrate(ILjava/lang/String;JJJLjava/lang/String;)V

    .line 847
    .end local v9    # "version":Ljava/lang/String;
    .end local v16    # "foreground":J
    .end local v18    # "totalTime":J
    .end local v20    # "cpuUsage":J
    .end local v22    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v23    # "uid":I
    .end local v24    # "procName":Ljava/lang/String;
    .end local v25    # "useTime":J
    :cond_19b
    return-void
.end method

.method monitorStartLocked()V
    .registers 5

    .line 714
    const-string v0, "OverHeatingDiagnosis"

    const-string/jumbo v1, "monitorStartLocked()"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    .line 716
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMaxMonitorTemp:I

    .line 718
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorStart:J

    .line 719
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    if-nez v1, :cond_1f

    .line 720
    new-instance v1, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v1, v0}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 723
    :cond_1f
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 724
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis;->initializeUidStats()V

    .line 726
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidObserver:Lcom/android/server/OverHeatingDiagnosis$UidObserver;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->injectRegisterUidObserver(Landroid/app/IUidObserver;I)V

    .line 729
    nop

    .line 729
    .local v0, "i":I
    :goto_2e
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 730
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OverHeatingDiagnosis$CameraStat;

    .line 731
    .local v1, "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    invoke-virtual {v1}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->init()V

    .line 729
    .end local v1    # "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 735
    .end local v0    # "i":I
    :cond_44
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    invoke-virtual {v0}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->reset()V

    .line 736
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCurrentPlugType:I

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_54

    .line 737
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    invoke-virtual {v0}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->start()V

    .line 740
    :cond_54
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 741
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    iget-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 742
    return-void
.end method

.method monitorUpdateLocked()V
    .registers 8

    .line 748
    const-string v0, "OverHeatingDiagnosis"

    const-string/jumbo v1, "monitorUpdateLocked()"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    return-void

    .line 751
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis;->getDeviceTemp()I

    move-result v0

    .line 752
    .local v0, "deviceTemp":I
    iget v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMaxMonitorTemp:I

    if-le v0, v1, :cond_18

    .line 753
    iput v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMaxMonitorTemp:I

    .line 756
    :cond_18
    const-string v1, "OverHeatingDiagnosis"

    const-string/jumbo v2, "start to update process cpu info."

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 758
    .local v1, "current":J
    iget-wide v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorStart:J

    sub-long v3, v1, v3

    iget-wide v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_32

    .line 759
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis;->monitorEndLocked()V

    goto :goto_40

    .line 761
    :cond_32
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 762
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    iget-wide v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 764
    .end local v3    # "msg":Landroid/os/Message;
    :goto_40
    return-void
.end method

.method registerOnlineConfig()V
    .registers 6

    .line 1006
    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "[OnlineConfig] registerOnlineConfig"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mConfigUpdater:Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;

    const-string v4, "OverHeatingDiagnosis"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 1009
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 1010
    return-void
.end method

.method reportAbnormalHeating(ILjava/lang/String;JIZ)V
    .registers 13
    .param p1, "type"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cpuUsage"    # J
    .param p5, "maxTemp"    # I
    .param p6, "needReport"    # Z

    .line 471
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    .line 474
    const-string v0, "OverHeatingDiagnosis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportAbnormalHeating: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",temp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "moreInfo":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/OnePlusDiagnosisUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    invoke-virtual {v1}, Lcom/android/server/OnePlusDiagnosisUtil;->flushToFile()V

    .line 480
    iget-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledMDM:Z

    if-eqz v1, :cond_53

    if-nez p6, :cond_57

    :cond_53
    iget-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    if-eqz v1, :cond_9f

    .line 482
    :cond_57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 483
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "ht"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string v2, "cl"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string/jumbo v2, "mt"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const/4 v2, 0x0

    .line 487
    .local v2, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_8f

    .line 488
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 489
    .local v3, "index":I
    const-string/jumbo v4, "hr"

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .end local v3    # "index":I
    goto :goto_97

    .line 491
    :cond_8f
    const-string/jumbo v3, "hr"

    const-string v4, "NA"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :goto_97
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v4, "overheat"

    invoke-virtual {v3, v4, v1}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 497
    .end local v1    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_9f
    iget-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledBugreport:Z

    if-eqz v1, :cond_a5

    if-nez p6, :cond_a9

    :cond_a5
    iget-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    if-eqz v1, :cond_ac

    .line 499
    :cond_a9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/OverHeatingDiagnosis;->writeLogToDropbox(ILjava/lang/String;)V

    .line 501
    :cond_ac
    return-void
.end method

.method public setMonitorEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 601
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z

    .line 602
    return-void
.end method

.method public setMonitorForced(Z)V
    .registers 2
    .param p1, "forced"    # Z

    .line 612
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    .line 613
    return-void
.end method

.method public setMonitorNum(I)V
    .registers 2
    .param p1, "num"    # I

    .line 622
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    .line 623
    return-void
.end method

.method public setMonitorPeriod(J)V
    .registers 3
    .param p1, "time"    # J

    .line 641
    iput-wide p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J

    .line 642
    return-void
.end method

.method public setMonitorTemp(I)V
    .registers 2
    .param p1, "temp"    # I

    .line 632
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I

    .line 633
    return-void
.end method

.method public setThermalZonePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .line 592
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    .line 593
    return-void
.end method

.method public start()V
    .registers 10

    .line 265
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 266
    .local v1, "cameraManager":Landroid/hardware/camera2/CameraManager;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "cameraList":[Ljava/lang/String;
    array-length v3, v2

    move v4, v0

    :goto_11
    if-ge v4, v3, :cond_26

    aget-object v5, v2, v4

    .line 269
    .local v5, "camera":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 270
    .local v6, "cameraId":I
    iget-object v7, p0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/OverHeatingDiagnosis$CameraStat;

    invoke-direct {v8, p0, v6}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;-><init>(Lcom/android/server/OverHeatingDiagnosis;I)V

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    .end local v5    # "camera":Ljava/lang/String;
    .end local v6    # "cameraId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 273
    :cond_26
    new-instance v3, Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;

    invoke-direct {v3, p0}, Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;-><init>(Lcom/android/server/OverHeatingDiagnosis;)V

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    :try_end_30
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_30} :catch_31

    .line 276
    .end local v1    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    .end local v2    # "cameraList":[Ljava/lang/String;
    goto :goto_3b

    .line 274
    :catch_31
    move-exception v1

    .line 275
    .local v1, "cae":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "OverHeatingDiagnosis"

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v1    # "cae":Landroid/hardware/camera2/CameraAccessException;
    :goto_3b
    iget-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    if-eqz v1, :cond_49

    .line 279
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_57

    .line 281
    :cond_49
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 282
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 285
    .end local v0    # "msg":Landroid/os/Message;
    :goto_57
    return-void
.end method

.method public startMonitor()V
    .registers 3

    .line 648
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 649
    return-void
.end method

.method public updateMonitor()V
    .registers 3

    .line 655
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 656
    return-void
.end method

.method writeLogToDropbox(ILjava/lang/String;)V
    .registers 16
    .param p1, "type"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 510
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    .line 511
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 512
    .local v0, "dbox":Landroid/os/DropBoxManager;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 514
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 518
    .local v10, "current":J
    new-instance v12, Lcom/android/server/OverHeatingDiagnosis$1;

    const-string v3, "Overheat dump: overheat"

    move-object v1, v12

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move-wide v7, v10

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/OverHeatingDiagnosis$1;-><init>(Lcom/android/server/OverHeatingDiagnosis;Ljava/lang/String;Ljava/lang/StringBuilder;ILjava/lang/String;JLandroid/os/DropBoxManager;)V

    .line 582
    .local v1, "worker":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 583
    return-void
.end method
