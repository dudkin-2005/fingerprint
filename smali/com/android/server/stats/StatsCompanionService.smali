.class public Lcom/android/server/stats/StatsCompanionService;
.super Landroid/os/IStatsCompanionService$Stub;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/StatsCompanionService$ThermalEventListener;,
        Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;,
        Lcom/android/server/stats/StatsCompanionService$Lifecycle;,
        Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;,
        Lcom/android/server/stats/StatsCompanionService$PeriodicAlarmReceiver;,
        Lcom/android/server/stats/StatsCompanionService$PullingAlarmReceiver;,
        Lcom/android/server/stats/StatsCompanionService$AnomalyAlarmReceiver;,
        Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;
    }
.end annotation


# static fields
.field public static final CODE_DATA_BROADCAST:I = 0x1

.field public static final CODE_SUBSCRIBER_BROADCAST:I = 0x1

.field public static final CONFIG_DIR:Ljava/lang/String; = "/data/misc/stats-service"

.field public static final DEATH_THRESHOLD:I = 0xa

.field static final DEBUG:Z = false

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field public static final EXTRA_LAST_REPORT_TIME:Ljava/lang/String; = "android.app.extra.LAST_REPORT_TIME"

.field private static final MILLIS_IN_A_DAY:J

.field public static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field static final TAG:Ljava/lang/String; = "StatsCompanionService"

.field private static sStatsd:Landroid/os/IStatsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStatsdLock"
    .end annotation
.end field

.field private static final sStatsdLock:Ljava/lang/Object;

.field private static sThermalService:Landroid/os/IThermalService;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAnomalyAlarmIntent:Landroid/app/PendingIntent;

.field private final mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDeathTimeMillis:Ljava/util/HashSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStatsdLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeletedFiles:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStatsdLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

.field private mKernelUidCpuActiveTimeReader:Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

.field private mKernelUidCpuClusterTimeReader:Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

.field private mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

.field private mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

.field private final mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

.field private final mPeriodicAlarmIntent:Landroid/app/PendingIntent;

.field private final mPullingAlarmIntent:Landroid/app/PendingIntent;

.field private final mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

.field private final mStatFsData:Landroid/os/StatFs;

.field private final mStatFsSystem:Landroid/os/StatFs;

.field private final mStatFsTemp:Landroid/os/StatFs;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private final mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

.field private final mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/IWifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 103
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/stats/StatsCompanionService;->MILLIS_IN_A_DAY:J

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 162
    invoke-direct {p0}, Landroid/os/IStatsCompanionService$Stub;-><init>()V

    .line 136
    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 137
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 139
    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 140
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mStatFsData:Landroid/os/StatFs;

    .line 141
    new-instance v1, Landroid/os/StatFs;

    .line 142
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mStatFsSystem:Landroid/os/StatFs;

    .line 143
    new-instance v1, Landroid/os/StatFs;

    .line 144
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mStatFsTemp:Landroid/os/StatFs;

    .line 145
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDeathTimeMillis:Ljava/util/HashSet;

    .line 147
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    .line 150
    new-instance v1, Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    .line 152
    new-instance v1, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    .line 154
    new-instance v1, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuActiveTimeReader:Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

    .line 156
    new-instance v1, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuClusterTimeReader:Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

    .line 163
    iput-object p1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    .line 164
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 166
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/server/stats/StatsCompanionService$AnomalyAlarmReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAnomalyAlarmIntent:Landroid/app/PendingIntent;

    .line 168
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/server/stats/StatsCompanionService$PullingAlarmReceiver;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mPullingAlarmIntent:Landroid/app/PendingIntent;

    .line 170
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/server/stats/StatsCompanionService$PeriodicAlarmReceiver;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mPeriodicAlarmIntent:Landroid/app/PendingIntent;

    .line 172
    new-instance v1, Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;

    invoke-direct {v1, v0}, Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;-><init>(Lcom/android/server/stats/StatsCompanionService$1;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    new-instance v1, Lcom/android/server/stats/StatsCompanionService$1;

    invoke-direct {v1, p0}, Lcom/android/server/stats/StatsCompanionService$1;-><init>(Lcom/android/server/stats/StatsCompanionService;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance v1, Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    invoke-direct {v1}, Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    .line 195
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v1}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result p1

    .line 197
    new-array v2, p1, [Lcom/android/internal/os/KernelCpuSpeedReader;

    iput-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    .line 198
    nop

    .line 199
    move v2, v3

    :goto_0
    if-ge v3, p1, :cond_0

    .line 200
    invoke-virtual {v1, v3}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v4

    .line 201
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    new-instance v6, Lcom/android/internal/os/KernelCpuSpeedReader;

    invoke-direct {v6, v2, v4}, Lcom/android/internal/os/KernelCpuSpeedReader;-><init>(II)V

    aput-object v6, v5, v3

    .line 203
    invoke-virtual {v1, v3}, Lcom/android/internal/os/PowerProfile;->getNumCoresInCpuCluster(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->setThrottleInterval(J)V

    .line 208
    iget-object p1, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    invoke-virtual {p1, v1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readFreqs(Lcom/android/internal/os/PowerProfile;)[J

    .line 209
    iget-object p1, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuClusterTimeReader:Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->setThrottleInterval(J)V

    .line 210
    iget-object p1, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuActiveTimeReader:Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->setThrottleInterval(J)V

    .line 214
    const-string/jumbo p1, "thermalservice"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 216
    if-eqz p1, :cond_1

    .line 217
    invoke-static {p1}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object p1

    sput-object p1, Lcom/android/server/stats/StatsCompanionService;->sThermalService:Landroid/os/IThermalService;

    .line 219
    :try_start_0
    sget-object p1, Lcom/android/server/stats/StatsCompanionService;->sThermalService:Landroid/os/IThermalService;

    new-instance v1, Lcom/android/server/stats/StatsCompanionService$ThermalEventListener;

    invoke-direct {v1, v0}, Lcom/android/server/stats/StatsCompanionService$ThermalEventListener;-><init>(Lcom/android/server/stats/StatsCompanionService$1;)V

    invoke-interface {p1, v1}, Landroid/os/IThermalService;->registerThermalEventListener(Landroid/os/IThermalEventListener;)V

    .line 221
    const-string p1, "StatsCompanionService"

    const-string/jumbo v0, "register thermal listener successfully"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 222
    :catch_0
    move-exception p1

    .line 224
    const-string p1, "StatsCompanionService"

    const-string/jumbo v0, "register thermal listener error"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_1
    goto :goto_2

    .line 227
    :cond_1
    const-string p1, "StatsCompanionService"

    const-string v0, "cannot find thermalservice, no throttling push notifications"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_2
    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 98
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000()J
    .locals 2

    .line 98
    sget-wide v0, Lcom/android/server/stats/StatsCompanionService;->MILLIS_IN_A_DAY:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashMap;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200()Landroid/os/IStatsManager;
    .locals 1

    .line 98
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    return-object v0
.end method

.method static synthetic access$202(Landroid/os/IStatsManager;)Landroid/os/IStatsManager;
    .locals 0

    .line 98
    sput-object p0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    return-object p0
.end method

.method static synthetic access$300()Landroid/os/IStatsManager;
    .locals 1

    .line 98
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->fetchStatsdService()Landroid/os/IStatsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/stats/StatsCompanionService;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/stats/StatsCompanionService;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/stats/StatsCompanionService;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->systemReady()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashSet;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/server/stats/StatsCompanionService;->mDeathTimeMillis:Ljava/util/HashSet;

    return-object p0
.end method

.method private addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;",
            "Landroid/net/NetworkStats;",
            "Z)V"
        }
    .end annotation

    .line 548
    invoke-virtual {p3}, Landroid/net/NetworkStats;->size()I

    move-result v0

    .line 549
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 550
    new-instance v3, Landroid/net/NetworkStats$Entry;

    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 551
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 552
    invoke-virtual {p3, v4, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 553
    new-instance v5, Landroid/os/StatsLogEventWrapper;

    if-eqz p4, :cond_0

    const/4 v6, 0x6

    goto :goto_1

    :cond_0
    const/4 v6, 0x5

    :goto_1
    invoke-direct {v5, v1, v2, p1, v6}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 554
    iget v6, v3, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 555
    if-eqz p4, :cond_1

    .line 556
    iget v6, v3, Landroid/net/NetworkStats$Entry;->set:I

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 558
    :cond_1
    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 559
    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 560
    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 561
    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 562
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 564
    :cond_2
    return-void
.end method

.method private static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    .line 605
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 606
    return-object v0

    .line 610
    :cond_0
    const-wide/16 v1, 0x7d0

    .line 611
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 612
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 614
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 616
    iget-object v1, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v2, "controller_activity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 618
    if-eqz v1, :cond_1

    .line 619
    return-object v1

    .line 622
    :cond_1
    const-string v1, "StatsCompanionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no controller energy info supplied for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    goto :goto_0

    .line 623
    :catch_0
    move-exception v1

    .line 624
    const-string v1, "StatsCompanionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeout reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " stats"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :goto_0
    return-object v0
.end method

.method private enforceCallingPermission()V
    .locals 3

    .line 1036
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1037
    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATSCOMPANION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    return-void
.end method

.method private static fetchStatsdService()Landroid/os/IStatsManager;
    .locals 1

    .line 1048
    const-string/jumbo v0, "stats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStatsManager;

    move-result-object v0

    return-object v0
.end method

.method private forgetEverythingLocked()V
    .locals 2

    .line 1181
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    .line 1182
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1183
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1184
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1185
    invoke-virtual {p0}, Lcom/android/server/stats/StatsCompanionService;->cancelAnomalyAlarm()V

    .line 1186
    invoke-virtual {p0}, Lcom/android/server/stats/StatsCompanionService;->cancelPullingAlarm()V

    .line 1187
    return-void
.end method

.method private final informAllUidsLocked(Landroid/content/Context;)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStatsdLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 298
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 304
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 305
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 308
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 309
    const v5, 0x402000

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 310
    invoke-virtual {p1, v5, v4}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v4

    .line 311
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 312
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    .line 313
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 318
    :cond_1
    goto :goto_0

    .line 319
    :cond_2
    sget-object p1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    invoke-static {v1}, Lcom/android/server/stats/StatsCompanionService;->toIntArray(Ljava/util/List;)[I

    move-result-object v0

    invoke-static {v2}, Lcom/android/server/stats/StatsCompanionService;->toLongArray(Ljava/util/List;)[J

    move-result-object v1

    .line 320
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 319
    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Landroid/os/IStatsManager;->informAllUidData([I[J[Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuActiveTime$3(JILjava/util/List;IJ)V
    .locals 2

    .line 798
    new-instance v0, Landroid/os/StatsLogEventWrapper;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 799
    invoke-virtual {v0, p4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 800
    invoke-virtual {v0, p5, p6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 801
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuClusterTime$2(JILjava/util/List;I[J)V
    .locals 4

    .line 785
    const/4 v0, 0x0

    :goto_0
    array-length v1, p5

    if-ge v0, v1, :cond_0

    .line 786
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, p2, v2}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 787
    invoke-virtual {v1, p4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 788
    invoke-virtual {v1, v0}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 789
    aget-wide v2, p5, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 790
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 792
    :cond_0
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuFreqTime$1(JILjava/util/List;I[J)V
    .locals 5

    .line 770
    const/4 v0, 0x0

    :goto_0
    array-length v1, p5

    if-ge v0, v1, :cond_1

    .line 771
    aget-wide v1, p5, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 772
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, p2, v2}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 773
    invoke-virtual {v1, p4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 774
    invoke-virtual {v1, v0}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 775
    aget-wide v2, p5, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 776
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 779
    :cond_1
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuTime$0(JILjava/util/List;IJJ)V
    .locals 2

    .line 759
    new-instance v0, Landroid/os/StatsLogEventWrapper;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 760
    invoke-virtual {v0, p4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 761
    invoke-virtual {v0, p5, p6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 762
    invoke-virtual {v0, p7, p8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 763
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    return-void
.end method

.method private pullBluetoothActivityInfo(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 857
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->pullBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    .line 858
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, p1, v4}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 859
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 860
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getBluetoothStackState()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 861
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 862
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 863
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 864
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 865
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    return-void
.end method

.method private pullBluetoothBytesTransfer(ILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 708
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->pullBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    .line 709
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 710
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 711
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 712
    new-instance v6, Landroid/os/StatsLogEventWrapper;

    const/4 v7, 0x3

    invoke-direct {v6, v1, v2, p1, v7}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 713
    invoke-virtual {v5}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 714
    invoke-virtual {v5}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 715
    invoke-virtual {v5}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 716
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 719
    :cond_0
    return-void
.end method

.method private declared-synchronized pullBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 3

    monitor-enter p0

    .line 869
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 870
    if-eqz v0, :cond_0

    .line 871
    new-instance v1, Landroid/os/SynchronousResultReceiver;

    const-string v2, "bluetooth"

    invoke-direct {v1, v2}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V

    .line 873
    invoke-static {v1}, Lcom/android/server/stats/StatsCompanionService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 875
    :cond_0
    :try_start_1
    const-string v0, "StatsCompanionService"

    const-string v1, "Failed to get bluetooth adapter!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 876
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 868
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private pullCpuTimePerFreq(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 741
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 742
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 743
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/os/KernelCpuSpeedReader;->readAbsolute()[J

    move-result-object v3

    .line 744
    if-eqz v3, :cond_0

    .line 745
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_0

    .line 746
    new-instance v5, Landroid/os/StatsLogEventWrapper;

    const/4 v6, 0x3

    invoke-direct {v5, v0, v1, p1, v6}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 747
    invoke-virtual {v5, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 748
    invoke-virtual {v5, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 749
    aget-wide v6, v3, v4

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 750
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 742
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 754
    :cond_1
    return-void
.end method

.method private pullDiskSpace(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 887
    new-instance v0, Landroid/os/StatsLogEventWrapper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 888
    iget-object p1, p0, Lcom/android/server/stats/StatsCompanionService;->mStatFsData:Landroid/os/StatFs;

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 889
    iget-object p1, p0, Lcom/android/server/stats/StatsCompanionService;->mStatFsSystem:Landroid/os/StatFs;

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 890
    iget-object p1, p0, Lcom/android/server/stats/StatsCompanionService;->mStatFsTemp:Landroid/os/StatFs;

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 891
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    return-void
.end method

.method private pullKernelUidCpuActiveTime(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 796
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 797
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuActiveTimeReader:Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

    new-instance v3, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$jXfS7_WmvALP_3l6Dg3O1qMWGdk;

    invoke-direct {v3, v0, v1, p1, p2}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$jXfS7_WmvALP_3l6Dg3O1qMWGdk;-><init>(JILjava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->readAbsolute(Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;)V

    .line 803
    return-void
.end method

.method private pullKernelUidCpuClusterTime(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 783
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 784
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuClusterTimeReader:Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

    new-instance v3, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$HnKmFmrhuaLvGqFujHXRVkF_MsY;

    invoke-direct {v3, v0, v1, p1, p2}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$HnKmFmrhuaLvGqFujHXRVkF_MsY;-><init>(JILjava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->readAbsolute(Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;)V

    .line 793
    return-void
.end method

.method private pullKernelUidCpuFreqTime(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 768
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 769
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    new-instance v3, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$YYl2ZbOgrYdj7ixbv8BOJznEAbA;

    invoke-direct {v3, v0, v1, p1, p2}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$YYl2ZbOgrYdj7ixbv8BOJznEAbA;-><init>(JILjava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    .line 780
    return-void
.end method

.method private pullKernelUidCpuTime(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 757
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 758
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    new-instance v3, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$huFrwWUJ-ABqZn7Xg215J22rAxY;

    invoke-direct {v3, v0, v1, p1, p2}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$huFrwWUJ-ABqZn7Xg215J22rAxY;-><init>(JILjava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/KernelUidCpuTimeReader;->readAbsolute(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V

    .line 765
    return-void
.end method

.method private pullKernelWakelock(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 631
    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v0

    .line 632
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 633
    invoke-virtual {v0}, Lcom/android/internal/os/KernelWakelockStats;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 634
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 635
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 636
    new-instance v5, Landroid/os/StatsLogEventWrapper;

    const/4 v6, 0x4

    invoke-direct {v5, v1, v2, p1, v6}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 637
    invoke-virtual {v5, v4}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 638
    iget v4, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    invoke-virtual {v5, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 639
    iget v4, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    invoke-virtual {v5, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 640
    iget-wide v3, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    invoke-virtual {v5, v3, v4}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 641
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    goto :goto_0

    .line 643
    :cond_0
    return-void
.end method

.method private pullMobileBytesTransfer(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 687
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 689
    :try_start_0
    const-class v2, Landroid/os/BatteryStatsInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStatsInternal;

    .line 690
    invoke-virtual {v2}, Landroid/os/BatteryStatsInternal;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 691
    array-length v3, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 703
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    return-void

    .line 694
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v3}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    .line 696
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 697
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v6, v5}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    .line 698
    invoke-virtual {v2}, Landroid/net/NetworkStats;->groupedByUid()Landroid/net/NetworkStats;

    move-result-object v2

    .line 699
    invoke-direct {p0, p1, p2, v2, v6}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 703
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 700
    :catch_0
    move-exception p1

    .line 701
    :try_start_2
    const-string p2, "StatsCompanionService"

    const-string v2, "Pulling netstats for mobile bytes has error"

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 703
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 704
    nop

    .line 705
    return-void

    .line 703
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private pullMobileBytesTransferByFgBg(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 722
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 724
    :try_start_0
    const-class v2, Landroid/os/BatteryStatsInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStatsInternal;

    .line 725
    invoke-virtual {v2}, Landroid/os/BatteryStatsInternal;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 726
    array-length v3, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 736
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 727
    return-void

    .line 729
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v3}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    .line 730
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 731
    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    .line 730
    invoke-direct {p0, v2}, Lcom/android/server/stats/StatsCompanionService;->rollupNetworkStatsByFGBG(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    .line 732
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 736
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 733
    :catch_0
    move-exception p1

    .line 734
    :try_start_2
    const-string p2, "StatsCompanionService"

    const-string v2, "Pulling netstats for mobile bytes w/ fg/bg has error"

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 736
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 737
    nop

    .line 738
    return-void

    .line 736
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private pullModemActivityInfo(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 833
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 834
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 838
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v1, "telephony"

    invoke-direct {v0, v1}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 839
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    .line 840
    invoke-static {v0}, Lcom/android/server/stats/StatsCompanionService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;

    .line 841
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, p1, v4}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 842
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 843
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 844
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 845
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object p1

    const/4 v2, 0x0

    aget p1, p1, v2

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 846
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object p1

    const/4 v2, 0x1

    aget p1, p1, v2

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 847
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object p1

    const/4 v2, 0x2

    aget p1, p1, v2

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 848
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object p1

    const/4 v2, 0x3

    aget p1, p1, v2

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 849
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object p1

    const/4 v2, 0x4

    aget p1, p1, v2

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 850
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getRxTimeMillis()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 851
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getEnergyUsed()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 852
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    :cond_1
    return-void
.end method

.method private pullProcessMemoryState(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 901
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 902
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 903
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v0

    .line 904
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 905
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ProcessMemoryState;

    .line 906
    new-instance v4, Landroid/os/StatsLogEventWrapper;

    const/16 v5, 0x8

    invoke-direct {v4, v1, v2, p1, v5}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 907
    iget v5, v3, Landroid/app/ProcessMemoryState;->uid:I

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 908
    iget-object v5, v3, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 909
    iget v5, v3, Landroid/app/ProcessMemoryState;->oomScore:I

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 910
    iget-wide v5, v3, Landroid/app/ProcessMemoryState;->pgfault:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 911
    iget-wide v5, v3, Landroid/app/ProcessMemoryState;->pgmajfault:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 912
    iget-wide v5, v3, Landroid/app/ProcessMemoryState;->rssInBytes:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 913
    iget-wide v5, v3, Landroid/app/ProcessMemoryState;->cacheInBytes:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 914
    iget-wide v5, v3, Landroid/app/ProcessMemoryState;->swapInBytes:J

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 915
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    goto :goto_0

    .line 917
    :cond_0
    return-void
.end method

.method private pullSystemElapsedRealtime(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 881
    new-instance v0, Landroid/os/StatsLogEventWrapper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 882
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 883
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    return-void
.end method

.method private pullSystemUpTime(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 895
    new-instance v0, Landroid/os/StatsLogEventWrapper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 896
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 897
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    return-void
.end method

.method private pullWifiActivityInfo(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 806
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 807
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-nez v2, :cond_0

    .line 808
    const-string/jumbo v2, "wifi"

    .line 809
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 811
    :cond_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-eqz v2, :cond_1

    .line 813
    :try_start_0
    new-instance v2, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v3, "wifi"

    invoke-direct {v2, v3}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 814
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v3, v2}, Landroid/net/wifi/IWifiManager;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    .line 815
    invoke-static {v2}, Lcom/android/server/stats/StatsCompanionService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 816
    new-instance v3, Landroid/os/StatsLogEventWrapper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    const/4 v6, 0x6

    invoke-direct {v3, v4, v5, p1, v6}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 817
    invoke-virtual {v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 818
    invoke-virtual {v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->getStackState()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 819
    invoke-virtual {v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 820
    invoke-virtual {v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 821
    invoke-virtual {v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 822
    invoke-virtual {v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 823
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 827
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 824
    :catch_0
    move-exception p1

    .line 825
    :try_start_1
    const-string p2, "StatsCompanionService"

    const-string v2, "Pulling wifiManager for wifi controller activity energy info has error"

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 828
    goto :goto_2

    .line 827
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 830
    :cond_1
    :goto_2
    return-void
.end method

.method private pullWifiBytesTransfer(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 646
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 649
    :try_start_0
    const-class v2, Landroid/os/BatteryStatsInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStatsInternal;

    .line 650
    invoke-virtual {v2}, Landroid/os/BatteryStatsInternal;->getWifiIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 651
    array-length v3, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 663
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 652
    return-void

    .line 654
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v3}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    .line 656
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 657
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v6, v5}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    .line 658
    invoke-virtual {v2}, Landroid/net/NetworkStats;->groupedByUid()Landroid/net/NetworkStats;

    move-result-object v2

    .line 659
    invoke-direct {p0, p1, p2, v2, v6}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 663
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 660
    :catch_0
    move-exception p1

    .line 661
    :try_start_2
    const-string p2, "StatsCompanionService"

    const-string v2, "Pulling netstats for wifi bytes has error"

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 663
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    nop

    .line 665
    return-void

    .line 663
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private pullWifiBytesTransferByFgBg(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 668
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 670
    :try_start_0
    const-class v2, Landroid/os/BatteryStatsInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStatsInternal;

    .line 671
    invoke-virtual {v2}, Landroid/os/BatteryStatsInternal;->getWifiIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 672
    array-length v3, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 682
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 673
    return-void

    .line 675
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v3}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    .line 676
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 677
    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    .line 676
    invoke-direct {p0, v2}, Lcom/android/server/stats/StatsCompanionService;->rollupNetworkStatsByFGBG(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    .line 678
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 682
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 679
    :catch_0
    move-exception p1

    .line 680
    :try_start_2
    const-string p2, "StatsCompanionService"

    const-string v2, "Pulling netstats for wifi bytes w/ fg/bg has error"

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 682
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 683
    nop

    .line 684
    return-void

    .line 682
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private rollupNetworkStatsByFGBG(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 7

    .line 571
    new-instance v0, Landroid/net/NetworkStats;

    invoke-virtual {p1}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 573
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 574
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 575
    const/4 v2, 0x0

    iput v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 576
    const/4 v3, -0x1

    iput v3, v1, Landroid/net/NetworkStats$Entry;->metered:I

    .line 577
    iput v3, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 579
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    .line 580
    new-instance v4, Landroid/net/NetworkStats$Entry;

    invoke-direct {v4}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 581
    :goto_0
    if-ge v2, v3, :cond_1

    .line 582
    invoke-virtual {p1, v2, v4}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 585
    iget v5, v4, Landroid/net/NetworkStats$Entry;->tag:I

    if-eqz v5, :cond_0

    goto :goto_1

    .line 587
    :cond_0
    iget v5, v4, Landroid/net/NetworkStats$Entry;->set:I

    iput v5, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 588
    iget v5, v4, Landroid/net/NetworkStats$Entry;->uid:I

    iput v5, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 589
    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 590
    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 591
    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 592
    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 594
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 581
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 596
    :cond_1
    return-object v0
.end method

.method private sayHiToStatsd()V
    .locals 17

    .line 1090
    move-object/from16 v1, p0

    sget-object v2, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1091
    :try_start_0
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    if-eqz v0, :cond_0

    .line 1092
    const-string v0, "StatsCompanionService"

    const-string v1, "Trying to fetch statsd, but it was already fetched"

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "sStatsd is not null when being fetched"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1094
    monitor-exit v2

    return-void

    .line 1096
    :cond_0
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->fetchStatsdService()Landroid/os/IStatsManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    .line 1097
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    if-nez v0, :cond_1

    .line 1098
    const-string v0, "StatsCompanionService"

    const-string v1, "Could not yet find statsd to tell it that StatsCompanion is alive."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 1103
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    invoke-interface {v0}, Landroid/os/IStatsManager;->statsCompanionReady()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1106
    :try_start_2
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    invoke-interface {v0}, Landroid/os/IStatsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v3, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;-><init>(Lcom/android/server/stats/StatsCompanionService;Lcom/android/server/stats/StatsCompanionService$1;)V

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1110
    goto :goto_0

    .line 1107
    :catch_0
    move-exception v0

    .line 1108
    :try_start_3
    const-string v3, "StatsCompanionService"

    const-string v4, "linkToDeath(StatsdDeathRecipient) failed"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1109
    invoke-direct/range {p0 .. p0}, Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V

    .line 1112
    :goto_0
    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1113
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1114
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1115
    const-string/jumbo v0, "package"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1116
    iget-object v5, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/server/stats/StatsCompanionService;->mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1121
    new-instance v14, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v14, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1122
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1123
    iget-object v11, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/stats/StatsCompanionService;->mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1127
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.REBOOT"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1128
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1129
    iget-object v3, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/server/stats/StatsCompanionService;->mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1134
    :try_start_4
    iget-object v0, v1, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1136
    :try_start_5
    invoke-static {v3, v4}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    .line 1137
    nop

    .line 1138
    const-string v0, "StatsCompanionService"

    const-string v3, "Told statsd that StatsCompanionService is alive."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    goto :goto_1

    .line 1136
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    throw v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1139
    :catch_1
    move-exception v0

    .line 1140
    :try_start_6
    const-string v3, "StatsCompanionService"

    const-string v4, "Failed to inform statsd that statscompanion is ready"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1141
    invoke-direct/range {p0 .. p0}, Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V

    .line 1143
    :goto_1
    monitor-exit v2

    .line 1144
    return-void

    .line 1143
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method private systemReady()V
    .locals 0

    .line 1083
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->sayHiToStatsd()V

    .line 1084
    return-void
.end method

.method private static final toIntArray(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 278
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 279
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 280
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_0
    return-object v0
.end method

.method private static final toLongArray(Ljava/util/List;)[J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 286
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 287
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 288
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_0
    return-object v0
.end method


# virtual methods
.method public cancelAlarmForSubscriberTriggering()V
    .locals 4

    .line 506
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 509
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 511
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mPeriodicAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 514
    nop

    .line 515
    return-void

    .line 513
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public cancelAnomalyAlarm()V
    .locals 4

    .line 478
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 480
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 482
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mAnomalyAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 485
    nop

    .line 486
    return-void

    .line 484
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public cancelPullingAlarm()V
    .locals 4

    .line 535
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 538
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 540
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mPullingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 543
    nop

    .line 544
    return-void

    .line 542
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1191
    iget-object p1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-string p3, "StatsCompanionService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1193
    :cond_0
    sget-object p1, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1194
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number of configuration files deleted: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1195
    iget-object p3, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p3

    if-lez p3, :cond_1

    .line 1196
    const-string p3, "  timestamp, deleted file name"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1199
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1200
    iget-object p3, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1201
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v0

    .line 1202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1203
    goto :goto_0

    .line 1204
    :cond_2
    monitor-exit p1

    .line 1205
    return-void

    .line 1204
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public pullData(I)[Landroid/os/StatsLogEventWrapper;
    .locals 3

    .line 924
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 927
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 928
    packed-switch p1, :pswitch_data_0

    .line 1002
    :pswitch_0
    const-string v0, "StatsCompanionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such tagId data as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/4 p1, 0x0

    return-object p1

    .line 994
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullDiskSpace(ILjava/util/List;)V

    .line 995
    goto :goto_0

    .line 966
    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuClusterTime(ILjava/util/List;)V

    .line 967
    goto :goto_0

    .line 970
    :pswitch_3
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuActiveTime(ILjava/util/List;)V

    .line 971
    goto :goto_0

    .line 986
    :pswitch_4
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullSystemUpTime(ILjava/util/List;)V

    .line 987
    goto :goto_0

    .line 990
    :pswitch_5
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullSystemElapsedRealtime(ILjava/util/List;)V

    .line 991
    goto :goto_0

    .line 998
    :pswitch_6
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullProcessMemoryState(ILjava/util/List;)V

    .line 999
    goto :goto_0

    .line 978
    :pswitch_7
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullModemActivityInfo(ILjava/util/List;)V

    .line 979
    goto :goto_0

    .line 974
    :pswitch_8
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullWifiActivityInfo(ILjava/util/List;)V

    .line 975
    goto :goto_0

    .line 962
    :pswitch_9
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuFreqTime(ILjava/util/List;)V

    .line 963
    goto :goto_0

    .line 958
    :pswitch_a
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuTime(ILjava/util/List;)V

    .line 959
    goto :goto_0

    .line 954
    :pswitch_b
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullCpuTimePerFreq(ILjava/util/List;)V

    .line 955
    goto :goto_0

    .line 982
    :pswitch_c
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullBluetoothActivityInfo(ILjava/util/List;)V

    .line 983
    goto :goto_0

    .line 946
    :pswitch_d
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullBluetoothBytesTransfer(ILjava/util/List;)V

    .line 947
    goto :goto_0

    .line 950
    :pswitch_e
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullKernelWakelock(ILjava/util/List;)V

    .line 951
    goto :goto_0

    .line 942
    :pswitch_f
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullMobileBytesTransferByFgBg(ILjava/util/List;)V

    .line 943
    goto :goto_0

    .line 934
    :pswitch_10
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullMobileBytesTransfer(ILjava/util/List;)V

    .line 935
    goto :goto_0

    .line 938
    :pswitch_11
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullWifiBytesTransferByFgBg(ILjava/util/List;)V

    .line 939
    goto :goto_0

    .line 930
    :pswitch_12
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullWifiBytesTransfer(ILjava/util/List;)V

    .line 931
    nop

    .line 1005
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/os/StatsLogEventWrapper;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/StatsLogEventWrapper;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public sendDataBroadcast(Landroid/os/IBinder;J)V
    .locals 6

    .line 233
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 234
    new-instance v0, Landroid/content/IntentSender;

    invoke-direct {v0, p1}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    .line 235
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 236
    const-string p1, "android.app.extra.LAST_REPORT_TIME"

    invoke-virtual {v3, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    goto :goto_0

    .line 239
    :catch_0
    move-exception p1

    .line 240
    const-string p1, "StatsCompanionService"

    const-string p2, "Unable to send using IntentSender"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return-void
.end method

.method public sendSubscriberBroadcast(Landroid/os/IBinder;JJJJ[Ljava/lang/String;Landroid/os/StatsDimensionsValue;)V
    .locals 2

    .line 249
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 250
    new-instance v0, Landroid/content/IntentSender;

    invoke-direct {v0, p1}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    .line 251
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.app.extra.STATS_CONFIG_UID"

    .line 252
    invoke-virtual {p1, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.app.extra.STATS_CONFIG_KEY"

    .line 253
    invoke-virtual {p1, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const-string p4, "android.app.extra.STATS_SUBSCRIPTION_ID"

    .line 254
    invoke-virtual {p1, p4, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const-string p4, "android.app.extra.STATS_SUBSCRIPTION_RULE_ID"

    .line 255
    invoke-virtual {p1, p4, p8, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    const-string p4, "android.app.extra.STATS_DIMENSIONS_VALUE"

    .line 256
    invoke-virtual {p1, p4, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p7

    .line 258
    new-instance p1, Ljava/util/ArrayList;

    array-length p4, p10

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    array-length p4, p10

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_0

    aget-object p6, p10, p5

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 260
    :cond_0
    const-string p4, "android.app.extra.STATS_BROADCAST_SUBSCRIBER_COOKIES"

    invoke-virtual {p7, p4, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 270
    :try_start_0
    iget-object p5, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const/4 p6, 0x1

    const/4 p8, 0x0

    const/4 p9, 0x0

    move-object p4, v0

    invoke-virtual/range {p4 .. p9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    goto :goto_1

    .line 271
    :catch_0
    move-exception p1

    .line 272
    const-string p1, "StatsCompanionService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unable to send using IntentSender from uid "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "; presumably it had been cancelled."

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_1
    return-void
.end method

.method public setAlarmForSubscriberTriggering(J)V
    .locals 5

    .line 490
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 494
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 498
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mPeriodicAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, p1, p2, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 501
    nop

    .line 502
    return-void

    .line 500
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setAnomalyAlarm(J)V
    .locals 5

    .line 462
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 464
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 470
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mAnomalyAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, p1, p2, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 473
    nop

    .line 474
    return-void

    .line 472
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setPullingAlarm(J)V
    .locals 5

    .line 519
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 523
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 527
    :try_start_0
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mPullingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, p1, p2, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 530
    nop

    .line 531
    return-void

    .line 529
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public statsdReady()V
    .locals 4

    .line 1010
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 1012
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->sayHiToStatsd()V

    .line 1013
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.STATSD_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1015
    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v3, "android.permission.DUMP"

    .line 1013
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1018
    return-void
.end method

.method public triggerUidSnapshot()V
    .locals 6

    .line 1022
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 1023
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1024
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1026
    :try_start_1
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1030
    :goto_0
    :try_start_2
    invoke-static {v1, v2}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1031
    goto :goto_1

    .line 1030
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 1027
    :catch_0
    move-exception v3

    .line 1028
    :try_start_3
    const-string v4, "StatsCompanionService"

    const-string v5, "Failed to trigger uid snapshot."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1032
    :goto_1
    :try_start_4
    monitor-exit v0

    .line 1033
    return-void

    .line 1030
    :goto_2
    invoke-static {v1, v2}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    throw v3

    .line 1032
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
