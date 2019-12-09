.class public Lcom/android/server/net/NetworkStatsService;
.super Landroid/net/INetworkStatsService$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;,
        Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;,
        Lcom/android/server/net/NetworkStatsService$HandlerCallback;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_STATS_POLL:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_POLL"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final ACTION_NETWORK_STATS_UPDATED:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_UPDATED"

.field private static final DUMP_STATS_SESSION_COUNT:I = 0x14

.field private static final FLAG_PERSIST_ALL:I = 0x3

.field private static final FLAG_PERSIST_FORCE:I = 0x100

.field private static final FLAG_PERSIST_NETWORK:I = 0x1

.field private static final FLAG_PERSIST_UID:I = 0x2

.field static final LOGD:Z

.field static final LOGV:Z

.field private static final MSG_PERFORM_POLL:I = 0x1

.field private static final MSG_REGISTER_GLOBAL_ALERT:I = 0x3

.field private static final MSG_SET_UID_FOREGROUND:I = 0x1

.field private static final MSG_UPDATE_IFACES:I = 0x2

.field private static final POLL_RATE_LIMIT_MS:J = 0x3a98L

.field private static final PREFIX_DEV:Ljava/lang/String; = "dev"

.field private static final PREFIX_UID:Ljava/lang/String; = "uid"

.field private static final PREFIX_UID_TAG:Ljava/lang/String; = "uid_tag"

.field private static final PREFIX_XT:Ljava/lang/String; = "xt"

.field static final TAG:Ljava/lang/String; = "NetworkStats"

.field private static final TAG_NETSTATS_ERROR:Ljava/lang/String; = "netstats_error"

.field private static TYPE_RX_BYTES:I = 0x0

.field private static TYPE_RX_PACKETS:I = 0x0

.field private static TYPE_TCP_RX_PACKETS:I = 0x0

.field private static TYPE_TCP_TX_PACKETS:I = 0x0

.field private static TYPE_TX_BYTES:I = 0x0

.field private static TYPE_TX_PACKETS:I = 0x0

.field public static final VT_INTERFACE:Ljava/lang/String; = "vt_data0"


# instance fields
.field private mActiveIface:Ljava/lang/String;

.field private final mActiveIfaces:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveUidCounterSet:Landroid/util/SparseIntArray;

.field private final mActiveUidIfaces:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mBaseDir:Ljava/io/File;

.field private final mClock:Ljava/time/Clock;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultNetworks:[Landroid/net/Network;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation
.end field

.field private mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation
.end field

.field private mGlobalAlertBytes:J

.field private mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mLastStatsSessionPoll:J

.field private mMobileIfaces:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation
.end field

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

.field private final mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mOpenSessionCallsPerUid"
    .end annotation
.end field

.field private mPersistThreshold:J

.field private mPollIntent:Landroid/app/PendingIntent;

.field private mPollReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mSetUidForegroundHandler:Landroid/os/Handler;

.field private final mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsLock:Ljava/lang/Object;

.field private final mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

.field private final mSystemDir:Ljava/io/File;

.field private volatile mSystemReady:Z

.field private final mTeleManager:Landroid/telephony/TelephonyManager;

.field private mTetherReceiver:Landroid/content/BroadcastReceiver;

.field private mUidOperations:Landroid/net/NetworkStats;

.field private mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation
.end field

.field private mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation
.end field

.field private final mUseBpfTrafficStats:Z

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation
.end field

.field private mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 159
    const-string v0, "NetworkStats"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGD:Z

    .line 160
    const-string v0, "NetworkStats"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/AlarmManager;Landroid/os/PowerManager$WakeLock;Ljava/time/Clock;Landroid/telephony/TelephonyManager;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;Lcom/android/server/net/NetworkStatsObservers;Ljava/io/File;Ljava/io/File;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkManager"    # Landroid/os/INetworkManagementService;
    .param p3, "alarmManager"    # Landroid/app/AlarmManager;
    .param p4, "wakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p5, "clock"    # Ljava/time/Clock;
    .param p6, "teleManager"    # Landroid/telephony/TelephonyManager;
    .param p7, "settings"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    .param p8, "statsObservers"    # Lcom/android/server/net/NetworkStatsObservers;
    .param p9, "systemDir"    # Ljava/io/File;
    .param p10, "baseDir"    # Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 341
    invoke-direct {p0}, Landroid/net/INetworkStatsService$Stub;-><init>()V

    .line 241
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    .line 244
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    .line 248
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    .line 255
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    .line 259
    new-array v0, v0, [Landroid/net/Network;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDefaultNetworks:[Landroid/net/Network;

    .line 262
    new-instance v0, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;-><init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    .line 279
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    .line 282
    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    invoke-direct {v0, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    .line 289
    const-wide/32 v2, 0x200000

    iput-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    .line 297
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    .line 840
    new-instance v0, Lcom/android/server/net/NetworkStatsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$2;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSetUidForegroundHandler:Landroid/os/Handler;

    .line 1008
    new-instance v0, Lcom/android/server/net/NetworkStatsService$3;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$3;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    .line 1017
    new-instance v0, Lcom/android/server/net/NetworkStatsService$4;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$4;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    .line 1029
    new-instance v0, Lcom/android/server/net/NetworkStatsService$5;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$5;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 1049
    new-instance v0, Lcom/android/server/net/NetworkStatsService$6;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$6;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1069
    new-instance v0, Lcom/android/server/net/NetworkStatsService$7;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$7;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1082
    new-instance v0, Lcom/android/server/net/NetworkStatsService$8;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$8;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 342
    const-string/jumbo v0, "missing Context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 343
    const-string/jumbo v0, "missing INetworkManagementService"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 344
    const-string/jumbo v0, "missing AlarmManager"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 345
    const-string/jumbo v0, "missing Clock"

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Clock;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    .line 346
    const-string/jumbo v0, "missing NetworkStatsSettings"

    invoke-static {p7, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 347
    const-string/jumbo v0, "missing TelephonyManager"

    invoke-static {p6, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 348
    const-string/jumbo v0, "missing WakeLock"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 349
    const-string/jumbo v0, "missing NetworkStatsObservers"

    invoke-static {p8, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsObservers;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    .line 350
    const-string/jumbo v0, "missing systemDir"

    invoke-static {p9, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    .line 351
    const-string/jumbo v0, "missing baseDir"

    invoke-static {p10, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    .line 352
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/fs/bpf/traffic_uid_stats_map"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mUseBpfTrafficStats:Z

    .line 354
    const-class v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    new-instance v2, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;

    invoke-direct {v2, p0, v1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 356
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkStatsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 157
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 157
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkStatsService;[I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # [I

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkStatsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # I

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUserLocked(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkStatsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 157
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->shutdownLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 157
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 157
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)J
    .registers 8
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .line 157
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 7
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .line 157
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/net/NetworkStatsService;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # J

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->advisePersistThreshold(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->checkAccessLevel(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/net/NetworkStatsService;[Landroid/net/Network;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # [Landroid/net/Network;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->updateIfaces([Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 157
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 157
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 157
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;
    .registers 10
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # J
    .param p7, "x5"    # I
    .param p8, "x6"    # I

    .line 157
    invoke-direct/range {p0 .. p8}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .registers 7
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 157
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkStatsService;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 157
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkStatsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # I

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V

    return-void
.end method

.method private advisePersistThreshold(J)V
    .registers 9
    .param p1, "thresholdBytes"    # J

    .line 907
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 910
    const-wide/32 v2, 0x20000

    const-wide/32 v4, 0x200000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    .line 911
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    if-eqz v0, :cond_34

    .line 912
    const-string v0, "NetworkStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advisePersistThreshold() given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", clamped to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_34
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 918
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 919
    :try_start_3d
    iget-boolean v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v3, :cond_43

    monitor-exit v2

    return-void

    .line 921
    :cond_43
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholdsLocked()V

    .line 923
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 924
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 925
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 926
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 927
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_3d .. :try_end_5b} :catchall_5f

    .line 930
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    .line 931
    return-void

    .line 927
    :catchall_5f
    move-exception v3

    :try_start_60
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v3
.end method

.method private assertBandwidthControlEnabled()V
    .registers 3

    .line 1733
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1736
    return-void

    .line 1734
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bandwidth module disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertSystemReady()V
    .registers 3

    .line 1727
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-eqz v0, :cond_5

    .line 1730
    return-void

    .line 1728
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System not ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private bootstrapStatsLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation

    .line 1273
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1276
    .local v0, "currentTime":J
    :try_start_6
    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->recordSnapshotLocked(J)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_9} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1281
    :goto_9
    goto :goto_25

    .line 1279
    :catch_a
    move-exception v2

    goto :goto_25

    .line 1277
    :catch_c
    move-exception v2

    .line 1278
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "problem reading network stats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IllegalStateException;
    goto :goto_9

    .line 1282
    :goto_25
    return-void
.end method

.method private buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;
    .registers 14
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .param p3, "includeTags"    # Z

    .line 428
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 430
    .local v0, "dropBox":Landroid/os/DropBoxManager;
    new-instance v9, Lcom/android/server/net/NetworkStatsRecorder;

    new-instance v8, Lcom/android/internal/util/FileRotator;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    iget-wide v4, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->rotateAgeMillis:J

    iget-wide v6, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->deleteAgeMillis:J

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    iget-wide v6, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->bucketDuration:J

    move-object v1, v9

    move-object v2, v8

    move-object v4, v0

    move-object v5, p1

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/net/NetworkStatsRecorder;-><init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V

    return-object v9
.end method

.method private checkAccessLevel(Ljava/lang/String;)I
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 678
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 677
    invoke-static {v0, v1, p1}, Lcom/android/server/net/NetworkStatsAccess;->checkAccessLevel(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private checkBpfStatsEnable()Z
    .registers 2

    .line 988
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mUseBpfTrafficStats:Z

    return v0
.end method

.method public static create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;
    .registers 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkManager"    # Landroid/os/INetworkManagementService;

    move-object/from16 v11, p0

    .line 319
    const-string v0, "alarm"

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/AlarmManager;

    .line 320
    .local v12, "alarmManager":Landroid/app/AlarmManager;
    const-string/jumbo v0, "power"

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/PowerManager;

    .line 321
    .local v13, "powerManager":Landroid/os/PowerManager;
    const-string v0, "NetworkStats"

    .line 322
    const/4 v1, 0x1

    invoke-virtual {v13, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    .line 324
    .local v14, "wakeLock":Landroid/os/PowerManager$WakeLock;
    new-instance v15, Lcom/android/server/net/NetworkStatsService;

    .line 325
    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultClock()Ljava/time/Clock;

    move-result-object v5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    new-instance v7, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;

    invoke-direct {v7, v11}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/android/server/net/NetworkStatsObservers;

    invoke-direct {v8}, Lcom/android/server/net/NetworkStatsObservers;-><init>()V

    .line 327
    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v9

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultBaseDir()Ljava/io/File;

    move-result-object v10

    move-object v0, v15

    move-object v1, v11

    move-object/from16 v2, p1

    move-object v3, v12

    move-object v4, v14

    invoke-direct/range {v0 .. v10}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/AlarmManager;Landroid/os/PowerManager$WakeLock;Ljava/time/Clock;Landroid/telephony/TelephonyManager;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;Lcom/android/server/net/NetworkStatsObservers;Ljava/io/File;Ljava/io/File;)V

    .line 329
    .local v0, "service":Lcom/android/server/net/NetworkStatsService;
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NetworkStats"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    new-instance v2, Lcom/android/server/net/NetworkStatsService$HandlerCallback;

    invoke-direct {v2, v0}, Lcom/android/server/net/NetworkStatsService$HandlerCallback;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    .line 331
    .local v2, "callback":Landroid/os/Handler$Callback;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 332
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 333
    .local v3, "handler":Landroid/os/Handler;
    invoke-virtual {v0, v3, v2}, Lcom/android/server/net/NetworkStatsService;->setHandler(Landroid/os/Handler;Landroid/os/Handler$Callback;)V

    .line 334
    return-object v0
.end method

.method private static dumpInterfaces(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V
    .registers 10
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;)V"
        }
    .end annotation

    .line 1617
    .local p3, "ifaces":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 1618
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1620
    .local v1, "start":J
    const-wide v3, 0x10900000001L

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1621
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkIdentitySet;

    const-wide v4, 0x10b00000002L

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/server/net/NetworkIdentitySet;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1623
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1617
    .end local v1    # "start":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1625
    .end local v0    # "i":I
    :cond_2d
    return-void
.end method

.method private dumpProtoLocked(Ljava/io/FileDescriptor;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation

    .line 1601
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1605
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    const-wide v2, 0x20b00000001L

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/net/NetworkStatsService;->dumpInterfaces(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 1606
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    const-wide v2, 0x20b00000002L

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/net/NetworkStatsService;->dumpInterfaces(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 1607
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v2, 0x10b00000003L

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1608
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v2, 0x10b00000004L

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1609
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v2, 0x10b00000005L

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1610
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1612
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1613
    return-void
.end method

.method private static findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArrayMap<",
            "TK;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;TK;)",
            "Lcom/android/server/net/NetworkIdentitySet;"
        }
    .end annotation

    .line 1211
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;Lcom/android/server/net/NetworkIdentitySet;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkIdentitySet;

    .line 1212
    .local v0, "ident":Lcom/android/server/net/NetworkIdentitySet;
    if-nez v0, :cond_11

    .line 1213
    new-instance v1, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v1}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    move-object v0, v1

    .line 1214
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    :cond_11
    return-object v0
.end method

.method private static getDefaultBaseDir()Ljava/io/File;
    .registers 3

    .line 307
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "netstats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 308
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 309
    return-object v0
.end method

.method private static getDefaultClock()Ljava/time/Clock;
    .registers 5

    .line 313
    new-instance v0, Landroid/os/BestClock;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/time/Clock;

    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 314
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/os/BestClock;-><init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V

    .line 313
    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .registers 3

    .line 303
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNetworkStatsTethering(I)Landroid/net/NetworkStats;
    .registers 7
    .param p1, "how"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1688
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1689
    :catch_7
    move-exception v0

    .line 1690
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkStats"

    const-string/jumbo v2, "problem reading network stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1691
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v1
.end method

.method private getNetworkStatsUidDetail([Ljava/lang/String;)Landroid/net/NetworkStats;
    .registers 8
    .param p1, "ifaces"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1639
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, -0x1

    invoke-interface {v0, v1, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I[Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 1643
    .local v0, "uidSnapshot":Landroid/net/NetworkStats;
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1644
    .local v3, "tetherSnapshot":Landroid/net/NetworkStats;
    invoke-virtual {v3, v1, p1, v1}, Landroid/net/NetworkStats;->filter(I[Ljava/lang/String;I)V

    .line 1645
    invoke-static {v0, v3}, Lcom/android/internal/net/NetworkStatsFactory;->apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V

    .line 1646
    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1648
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 1652
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getVtDataUsage(I)Landroid/net/NetworkStats;

    move-result-object v2

    .line 1653
    .local v2, "vtStats":Landroid/net/NetworkStats;
    if-eqz v2, :cond_2f

    .line 1654
    invoke-virtual {v2, v1, p1, v1}, Landroid/net/NetworkStats;->filter(I[Ljava/lang/String;I)V

    .line 1655
    invoke-static {v0, v2}, Lcom/android/internal/net/NetworkStatsFactory;->apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V

    .line 1656
    invoke-virtual {v0, v2}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1659
    :cond_2f
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1661
    return-object v0
.end method

.method private getNetworkStatsXt()Landroid/net/NetworkStats;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1668
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v0

    .line 1670
    .local v0, "xtSnapshot":Landroid/net/NetworkStats;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1674
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getVtDataUsage(I)Landroid/net/NetworkStats;

    move-result-object v2

    .line 1675
    .local v2, "vtSnapshot":Landroid/net/NetworkStats;
    if-eqz v2, :cond_1b

    .line 1676
    invoke-virtual {v0, v2}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1679
    :cond_1b
    return-object v0
.end method

.method private getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 15
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 741
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertSystemReady()V

    .line 742
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 746
    nop

    .line 748
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 746
    const/4 v2, 0x4

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;

    move-result-object v0

    .line 748
    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v0

    .line 746
    return-wide v0
.end method

.method private getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 16
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 752
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertSystemReady()V

    .line 753
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 756
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 757
    :try_start_9
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v2

    .line 758
    .local v2, "uidComplete":Lcom/android/server/net/NetworkStatsCollection;
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1b

    .line 759
    const/4 v8, 0x3

    const/16 v9, 0x3e8

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0

    .line 758
    .end local v2    # "uidComplete":Lcom/android/server/net/NetworkStatsCollection;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .registers 23
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "flags"    # I
    .param p3, "fields"    # I
    .param p4, "accessLevel"    # I
    .param p5, "callingUid"    # I

    move-object/from16 v1, p0

    .line 732
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkStatsService;->resolveSubscriptionPlan(Landroid/net/NetworkTemplate;I)Landroid/telephony/SubscriptionPlan;

    move-result-object v15

    .line 733
    .local v15, "augmentPlan":Landroid/telephony/SubscriptionPlan;
    iget-object v14, v1, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v14

    .line 734
    :try_start_9
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_28

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide/high16 v9, -0x8000000000000000L

    const-wide v11, 0x7fffffffffffffffL

    move-object/from16 v3, p1

    move-object v4, v15

    move/from16 v8, p3

    move/from16 v13, p4

    move-object/from16 v16, v14

    move/from16 v14, p5

    :try_start_20
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    monitor-exit v16

    return-object v0

    .line 737
    :catchall_26
    move-exception v0

    goto :goto_2b

    :catchall_28
    move-exception v0

    move-object/from16 v16, v14

    :goto_2b
    monitor-exit v16
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_26

    throw v0
.end method

.method private internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;
    .registers 43
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "flags"    # I
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "accessLevel"    # I
    .param p8, "callingUid"    # I

    .line 711
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 714
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 715
    .local v1, "now":J
    const/4 v11, 0x0

    move-object v4, v0

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide v9, v1

    invoke-virtual/range {v4 .. v11}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v3

    .line 717
    .local v3, "entry":Landroid/net/NetworkStatsHistory$Entry;
    new-instance v4, Landroid/net/NetworkStats;

    sub-long v9, p5, p3

    const/4 v11, 0x1

    invoke-direct {v4, v9, v10, v11}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 718
    .local v4, "stats":Landroid/net/NetworkStats;
    new-instance v15, Landroid/net/NetworkStats$Entry;

    sget-object v10, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iget-wide v13, v3, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v3, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    move-wide/from16 v27, v13

    iget-wide v13, v3, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v29, v13

    iget-wide v13, v3, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    move-wide/from16 v31, v13

    iget-wide v13, v3, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    move-object v9, v15

    move-wide/from16 v22, v11

    move/from16 v11, v16

    move/from16 v12, v17

    move-wide/from16 v24, v27

    move-wide/from16 v26, v29

    move-wide/from16 v28, v31

    move-wide/from16 v30, v13

    move/from16 v13, v18

    move/from16 v14, v19

    move-object/from16 v33, v15

    move/from16 v15, v20

    move/from16 v16, v21

    move-wide/from16 v17, v24

    move-wide/from16 v19, v22

    move-wide/from16 v21, v26

    move-wide/from16 v23, v28

    move-wide/from16 v25, v30

    invoke-direct/range {v9 .. v26}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object/from16 v9, v33

    invoke-virtual {v4, v9}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 721
    return-object v4
.end method

.method private isBandwidthControlEnabled()Z
    .registers 5

    .line 1739
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1741
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_13
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1746
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1741
    return v2

    .line 1746
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1742
    :catch_13
    move-exception v2

    .line 1744
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 1746
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1744
    return v3
.end method

.method private isRateLimitedForPoll(I)Z
    .registers 11
    .param p1, "callingUid"    # I

    .line 531
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_6

    .line 532
    return v0

    .line 536
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 537
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    monitor-enter v3

    .line 538
    :try_start_d
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 539
    .local v4, "calls":I
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 540
    iget-wide v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastStatsSessionPoll:J

    .line 541
    .local v5, "lastCallTime":J
    iput-wide v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastStatsSessionPoll:J

    .line 542
    .end local v4    # "calls":I
    monitor-exit v3

    .line 544
    sub-long v3, v1, v5

    const-wide/16 v7, 0x3a98

    cmp-long v3, v3, v7

    if-gez v3, :cond_29

    const/4 v0, 0x1

    nop

    :cond_29
    return v0

    .line 542
    .end local v5    # "lastCallTime":J
    :catchall_2a
    move-exception v0

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method private maybeUpgradeLegacyStatsLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation

    .line 458
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "netstats.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 459
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 460
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyNetworkLocked(Ljava/io/File;)V

    .line 461
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 464
    :cond_18
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "netstats_xt.bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 465
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 466
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 469
    :cond_2c
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "netstats_uid.bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 470
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 471
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    .line 472
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    .line 473
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4a} :catch_55
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_4a} :catch_4b

    goto :goto_5e

    .line 477
    .end local v0    # "file":Ljava/io/File;
    :catch_4b
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v1, "NetworkStats"

    const-string/jumbo v2, "problem during legacy upgrade"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    goto :goto_5f

    .line 475
    :catch_55
    move-exception v0

    .line 476
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "NetworkStats"

    const-string/jumbo v2, "problem during legacy upgrade"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5e
    :goto_5e
    nop

    .line 480
    :goto_5f
    return-void
.end method

.method private static native nativeGetIfaceStat(Ljava/lang/String;IZ)J
.end method

.method private static native nativeGetTotalStat(IZ)J
.end method

.method private static native nativeGetUidStat(IIZ)J
.end method

.method private openSessionInternal(ILjava/lang/String;)Landroid/net/INetworkStatsSession;
    .registers 8
    .param p1, "flags"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 548
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 550
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 551
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->isRateLimitedForPoll(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 552
    and-int/lit8 v1, p1, -0x2

    goto :goto_11

    .line 553
    :cond_10
    move v1, p1

    .line 554
    .local v1, "usedFlags":I
    :goto_11
    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_26

    .line 556
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 558
    .local v2, "ident":J
    const/4 v4, 0x3

    :try_start_1a
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_21

    .line 560
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 561
    goto :goto_26

    .line 560
    :catchall_21
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 567
    .end local v2    # "ident":J
    :cond_26
    :goto_26
    new-instance v2, Lcom/android/server/net/NetworkStatsService$1;

    invoke-direct {v2, p0, v0, p2, v1}, Lcom/android/server/net/NetworkStatsService$1;-><init>(Lcom/android/server/net/NetworkStatsService;ILjava/lang/String;I)V

    return-object v2
.end method

.method private performPoll(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 1285
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1286
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1a

    .line 1289
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_13

    .line 1291
    :try_start_b
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1292
    nop

    .line 1293
    monitor-exit v0

    .line 1294
    return-void

    .line 1291
    :catchall_13
    move-exception v1

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1

    .line 1293
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private performPollLocked(I)V
    .registers 13
    .param p1, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation

    .line 1302
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v0, :cond_5

    return-void

    .line 1303
    :cond_5
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    if-eqz v0, :cond_29

    const-string v0, "NetworkStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performPollLocked(flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :cond_29
    const-string/jumbo v0, "performPollLocked"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1306
    and-int/lit8 v0, p1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3a

    move v0, v4

    goto :goto_3b

    :cond_3a
    move v0, v3

    .line 1307
    .local v0, "persistNetwork":Z
    :goto_3b
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_41

    move v5, v4

    goto :goto_42

    :cond_41
    move v5, v3

    .line 1308
    .local v5, "persistUid":Z
    :goto_42
    and-int/lit16 v6, p1, 0x100

    if-eqz v6, :cond_48

    move v3, v4

    nop

    .line 1311
    .local v3, "persistForce":Z
    :cond_48
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 1314
    .local v6, "currentTime":J
    :try_start_4e
    invoke-direct {p0, v6, v7}, Lcom/android/server/net/NetworkStatsService;->recordSnapshotLocked(J)V
    :try_end_51
    .catch Ljava/lang/IllegalStateException; {:try_start_4e .. :try_end_51} :catch_af
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_51} :catch_ad

    .line 1321
    nop

    .line 1324
    const-string v4, "[persisting]"

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1325
    if-eqz v3, :cond_6e

    .line 1326
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1327
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1328
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1329
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    goto :goto_86

    .line 1331
    :cond_6e
    if-eqz v0, :cond_7a

    .line 1332
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1333
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1335
    :cond_7a
    if-eqz v5, :cond_86

    .line 1336
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1337
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v4, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1340
    :cond_86
    :goto_86
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1342
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v4}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getSampleEnabled()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 1344
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->performSampleLocked()V

    .line 1348
    :cond_94
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1349
    .local v4, "updatedIntent":Landroid/content/Intent;
    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1350
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v10, "android.permission.READ_NETWORK_USAGE_HISTORY"

    invoke-virtual {v8, v4, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1353
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1354
    return-void

    .line 1318
    .end local v4    # "updatedIntent":Landroid/content/Intent;
    :catch_ad
    move-exception v1

    .line 1320
    .local v1, "e":Landroid/os/RemoteException;
    return-void

    .line 1315
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_af
    move-exception v1

    .line 1316
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "NetworkStats"

    const-string/jumbo v4, "problem reading network stats"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1317
    return-void
.end method

.method private performSampleLocked()V
    .registers 59
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation

    .line 1362
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v28

    .line 1370
    .local v28, "currentTime":J
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 1371
    .local v1, "template":Landroid/net/NetworkTemplate;
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v14

    .line 1372
    .local v14, "devTotal":Landroid/net/NetworkStats$Entry;
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v15

    .line 1373
    .local v15, "xtTotal":Landroid/net/NetworkStats$Entry;
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v12

    .line 1375
    .local v12, "uidTotal":Landroid/net/NetworkStats$Entry;
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v8, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v10, v15, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v30, v14

    iget-wide v13, v15, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .end local v14    # "devTotal":Landroid/net/NetworkStats$Entry;
    .local v30, "devTotal":Landroid/net/NetworkStats$Entry;
    move-object/from16 v32, v1

    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->txBytes:J

    .end local v1    # "template":Landroid/net/NetworkTemplate;
    .local v32, "template":Landroid/net/NetworkTemplate;
    move-wide/from16 v33, v0

    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v35, v0

    iget-wide v0, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v37, v0

    iget-wide v0, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v39, v0

    iget-wide v0, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v41, v0

    iget-wide v0, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v43, v12

    move-wide v12, v13

    .end local v12    # "uidTotal":Landroid/net/NetworkStats$Entry;
    .local v43, "uidTotal":Landroid/net/NetworkStats$Entry;
    move-object/from16 v44, v15

    move-wide/from16 v14, v33

    .end local v15    # "xtTotal":Landroid/net/NetworkStats$Entry;
    .local v44, "xtTotal":Landroid/net/NetworkStats$Entry;
    move-wide/from16 v16, v35

    move-wide/from16 v18, v37

    move-wide/from16 v20, v39

    move-wide/from16 v22, v41

    move-wide/from16 v24, v0

    move-wide/from16 v26, v28

    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsMobileSample(JJJJJJJJJJJJJ)V

    .line 1382
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 1383
    .end local v32    # "template":Landroid/net/NetworkTemplate;
    .local v0, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v14

    .line 1384
    .end local v30    # "devTotal":Landroid/net/NetworkStats$Entry;
    .restart local v14    # "devTotal":Landroid/net/NetworkStats$Entry;
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v15

    .line 1385
    .end local v44    # "xtTotal":Landroid/net/NetworkStats$Entry;
    .restart local v15    # "xtTotal":Landroid/net/NetworkStats$Entry;
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v12

    .line 1387
    .end local v43    # "uidTotal":Landroid/net/NetworkStats$Entry;
    .restart local v12    # "uidTotal":Landroid/net/NetworkStats$Entry;
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v8, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v10, v15, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v45, v0

    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .end local v0    # "template":Landroid/net/NetworkTemplate;
    .local v45, "template":Landroid/net/NetworkTemplate;
    move-wide/from16 v46, v0

    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v48, v0

    iget-wide v0, v15, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v50, v0

    iget-wide v0, v12, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v52, v0

    iget-wide v0, v12, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v54, v0

    iget-wide v0, v12, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v56, v0

    iget-wide v0, v12, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v30, v12

    move-wide/from16 v12, v46

    .end local v12    # "uidTotal":Landroid/net/NetworkStats$Entry;
    .local v30, "uidTotal":Landroid/net/NetworkStats$Entry;
    move-object/from16 v31, v14

    move-object/from16 v32, v15

    move-wide/from16 v14, v48

    .end local v14    # "devTotal":Landroid/net/NetworkStats$Entry;
    .end local v15    # "xtTotal":Landroid/net/NetworkStats$Entry;
    .local v31, "devTotal":Landroid/net/NetworkStats$Entry;
    .local v32, "xtTotal":Landroid/net/NetworkStats$Entry;
    move-wide/from16 v16, v50

    move-wide/from16 v18, v52

    move-wide/from16 v20, v54

    move-wide/from16 v22, v56

    move-wide/from16 v24, v0

    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsWifiSample(JJJJJJJJJJJJJ)V

    .line 1392
    return-void
.end method

.method private recordSnapshotLocked(J)V
    .registers 19
    .param p1, "currentTime"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1223
    const-string/jumbo v1, "snapshotUid"

    const-wide/32 v2, 0x200000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1224
    sget-object v1, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1225
    .local v1, "uidSnapshot":Landroid/net/NetworkStats;
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1226
    const-string/jumbo v4, "snapshotXt"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1227
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsXt()Landroid/net/NetworkStats;

    move-result-object v12

    .line 1228
    .local v12, "xtSnapshot":Landroid/net/NetworkStats;
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1229
    const-string/jumbo v4, "snapshotDev"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1230
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v13

    .line 1231
    .local v13, "devSnapshot":Landroid/net/NetworkStats;
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1235
    const-string/jumbo v4, "snapshotTether"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1236
    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v14

    .line 1237
    .local v14, "tetherSnapshot":Landroid/net/NetworkStats;
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1238
    invoke-virtual {v12, v14}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1239
    invoke-virtual {v13, v14}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1243
    const-string/jumbo v4, "recordDev"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1244
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v7, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    const/4 v8, 0x0

    move-object v6, v13

    move-wide/from16 v9, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1246
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1247
    const-string/jumbo v4, "recordXt"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1248
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v7, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object v6, v12

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1250
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1253
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    move-result-object v15

    .line 1254
    .local v15, "vpnArray":[Lcom/android/internal/net/VpnInfo;
    const-string/jumbo v4, "recordUid"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1255
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object v5, v1

    move-object v7, v15

    move-wide/from16 v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1256
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1257
    const-string/jumbo v4, "recordUidTag"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1258
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1259
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1263
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    new-instance v7, Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-direct {v7, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    new-instance v8, Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-direct {v8, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    move-object v5, v12

    move-object v6, v1

    move-object v9, v15

    move-wide/from16 v10, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/net/NetworkStatsObservers;->updateStats(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/util/ArrayMap;Landroid/util/ArrayMap;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1265
    return-void
.end method

.method private registerGlobalAlert()V
    .registers 5

    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->setGlobalAlert(J)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_3b

    .line 512
    :catch_8
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem registering for global alert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_3c

    .line 509
    :catch_21
    move-exception v0

    goto :goto_3b

    .line 507
    :catch_23
    move-exception v0

    .line 508
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem registering for global alert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_3b
    nop

    .line 516
    :goto_3c
    return-void
.end method

.method private registerPollAlarmLocked()V
    .registers 11

    .line 487
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_b

    .line 488
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 491
    :cond_b
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    .line 494
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 495
    .local v8, "currentRealtime":J
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 496
    invoke-interface {v0}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPollInterval()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    .line 495
    move-wide v3, v8

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 497
    return-void
.end method

.method private varargs removeUidsLocked([I)V
    .registers 5
    .param p1, "uids"    # [I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation

    .line 1399
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    if-eqz v0, :cond_1f

    const-string v0, "NetworkStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeUidsLocked() for UIDs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_1f
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1404
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    .line 1405
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    .line 1408
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2f
    if-ge v1, v0, :cond_39

    aget v2, p1, v1

    .line 1409
    .local v2, "uid":I
    invoke-static {v2}, Lcom/android/server/NetworkManagementSocketTagger;->resetKernelUidStats(I)V

    .line 1408
    .end local v2    # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 1411
    :cond_39
    return-void
.end method

.method private removeUserLocked(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation

    .line 1418
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    if-eqz v0, :cond_1b

    const-string v0, "NetworkStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeUserLocked() for userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_1b
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1422
    .local v0, "uids":[I
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0x400200

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 1425
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 1426
    .local v3, "app":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 1427
    .local v4, "uid":I
    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 1428
    .end local v3    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "uid":I
    goto :goto_2f

    .line 1430
    :cond_46
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    .line 1431
    return-void
.end method

.method private resolveSubscriptionPlan(Landroid/net/NetworkTemplate;I)Landroid/telephony/SubscriptionPlan;
    .registers 9
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "flags"    # I

    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "plan":Landroid/telephony/SubscriptionPlan;
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 689
    invoke-interface {v1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getAugmentEnabled()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 690
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOGD:Z

    if-eqz v1, :cond_27

    const-string v1, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolving plan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 693
    .local v1, "token":J
    :try_start_2b
    const-class v3, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 694
    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_57

    move-object v0, v3

    .line 696
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 697
    nop

    .line 698
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOGD:Z

    if-eqz v3, :cond_5c

    const-string v3, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resolved to plan "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "token":J
    goto :goto_5c

    .line 696
    .restart local v1    # "token":J
    :catchall_57
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 700
    .end local v1    # "token":J
    :cond_5c
    :goto_5c
    return-object v0
.end method

.method private shutdownLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 438
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 439
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 440
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 441
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 443
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 446
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 447
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 448
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 449
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 451
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    .line 452
    return-void
.end method

.method private updateIfaces([Landroid/net/Network;)V
    .registers 5
    .param p1, "defaultNetworks"    # [Landroid/net/Network;

    .line 1101
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1a

    .line 1104
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->updateIfacesLocked([Landroid/net/Network;)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_13

    .line 1106
    :try_start_b
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1107
    nop

    .line 1108
    monitor-exit v0

    .line 1109
    return-void

    .line 1106
    :catchall_13
    move-exception v1

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1

    .line 1108
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private updateIfacesLocked([Landroid/net/Network;)V
    .registers 24
    .param p1, "defaultNetworks"    # [Landroid/net/Network;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation

    move-object/from16 v1, p0

    .line 1119
    move-object/from16 v2, p1

    iget-boolean v0, v1, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v0, :cond_9

    return-void

    .line 1120
    :cond_9
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    if-eqz v0, :cond_15

    const-string v0, "NetworkStats"

    const-string/jumbo v3, "updateIfacesLocked()"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_15
    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1133
    :try_start_19
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v0

    .line 1134
    .local v0, "states":[Landroid/net/NetworkState;
    iget-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v3}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_25} :catch_11c

    .line 1138
    .local v3, "activeLink":Landroid/net/LinkProperties;
    nop

    .line 1137
    nop

    .line 1140
    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2f

    :cond_2e
    const/4 v4, 0x0

    :goto_2f
    iput-object v4, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    .line 1143
    iget-object v4, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1144
    iget-object v4, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1145
    if-eqz v2, :cond_3f

    .line 1147
    iput-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mDefaultNetworks:[Landroid/net/Network;

    .line 1150
    :cond_3f
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 1151
    .local v4, "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v5, v0

    const/4 v6, 0x0

    :goto_46
    if-ge v6, v5, :cond_10b

    aget-object v7, v0, v6

    .line 1152
    .local v7, "state":Landroid/net/NetworkState;
    iget-object v8, v7, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_103

    .line 1153
    iget-object v8, v7, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-static {v8}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v8

    .line 1154
    .local v8, "isMobile":Z
    iget-object v9, v1, Lcom/android/server/net/NetworkStatsService;->mDefaultNetworks:[Landroid/net/Network;

    iget-object v10, v7, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 1155
    .local v9, "isDefault":Z
    iget-object v10, v1, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v10, v7, v9}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;Z)Landroid/net/NetworkIdentity;

    move-result-object v10

    .line 1160
    .local v10, "ident":Landroid/net/NetworkIdentity;
    iget-object v11, v7, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    .line 1161
    .local v11, "baseIface":Ljava/lang/String;
    if-eqz v11, :cond_ce

    .line 1162
    iget-object v12, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-static {v12, v11}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1163
    iget-object v12, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-static {v12, v11}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1170
    iget-object v12, v7, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v12

    if-eqz v12, :cond_c9

    .line 1171
    invoke-virtual {v10}, Landroid/net/NetworkIdentity;->getMetered()Z

    move-result v12

    if-nez v12, :cond_c9

    .line 1174
    new-instance v12, Landroid/net/NetworkIdentity;

    invoke-virtual {v10}, Landroid/net/NetworkIdentity;->getType()I

    move-result v14

    .line 1175
    invoke-virtual {v10}, Landroid/net/NetworkIdentity;->getSubType()I

    move-result v15

    invoke-virtual {v10}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v10}, Landroid/net/NetworkIdentity;->getNetworkId()Ljava/lang/String;

    move-result-object v17

    .line 1176
    invoke-virtual {v10}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object v13, v12

    invoke-direct/range {v13 .. v20}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1178
    .local v12, "vtIdent":Landroid/net/NetworkIdentity;
    iget-object v13, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    const-string/jumbo v14, "vt_data0"

    invoke-static {v13, v14}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1179
    iget-object v13, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    const-string/jumbo v14, "vt_data0"

    invoke-static {v13, v14}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1182
    .end local v12    # "vtIdent":Landroid/net/NetworkIdentity;
    :cond_c9
    if-eqz v8, :cond_ce

    .line 1183
    invoke-virtual {v4, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1191
    :cond_ce
    iget-object v12, v7, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v12}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v12

    .line 1192
    .local v12, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_d8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_103

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/LinkProperties;

    .line 1193
    .local v14, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual {v14}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    .line 1194
    .local v15, "stackedIface":Ljava/lang/String;
    if-eqz v15, :cond_fe

    .line 1195
    move-object/from16 v21, v0

    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    .line 1195
    .end local v0    # "states":[Landroid/net/NetworkState;
    .local v21, "states":[Landroid/net/NetworkState;
    invoke-static {v0, v15}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1196
    if-eqz v8, :cond_fa

    .line 1197
    invoke-virtual {v4, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1200
    :cond_fa
    invoke-static {v15, v11}, Lcom/android/internal/net/NetworkStatsFactory;->noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    .end local v14    # "stackedLink":Landroid/net/LinkProperties;
    .end local v15    # "stackedIface":Ljava/lang/String;
    goto :goto_100

    .line 1202
    .end local v21    # "states":[Landroid/net/NetworkState;
    .restart local v0    # "states":[Landroid/net/NetworkState;
    :cond_fe
    move-object/from16 v21, v0

    .line 1192
    .end local v0    # "states":[Landroid/net/NetworkState;
    .restart local v21    # "states":[Landroid/net/NetworkState;
    :goto_100
    move-object/from16 v0, v21

    goto :goto_d8

    .line 1151
    .end local v7    # "state":Landroid/net/NetworkState;
    .end local v8    # "isMobile":Z
    .end local v9    # "isDefault":Z
    .end local v10    # "ident":Landroid/net/NetworkIdentity;
    .end local v11    # "baseIface":Ljava/lang/String;
    .end local v12    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    .end local v21    # "states":[Landroid/net/NetworkState;
    .restart local v0    # "states":[Landroid/net/NetworkState;
    :cond_103
    move-object/from16 v21, v0

    .line 1151
    .end local v0    # "states":[Landroid/net/NetworkState;
    .restart local v21    # "states":[Landroid/net/NetworkState;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v21

    goto/16 :goto_46

    .line 1206
    .end local v21    # "states":[Landroid/net/NetworkState;
    .restart local v0    # "states":[Landroid/net/NetworkState;
    :cond_10b
    move-object/from16 v21, v0

    .line 1206
    .end local v0    # "states":[Landroid/net/NetworkState;
    .restart local v21    # "states":[Landroid/net/NetworkState;
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    .line 1207
    return-void

    .line 1135
    .end local v3    # "activeLink":Landroid/net/LinkProperties;
    .end local v4    # "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v21    # "states":[Landroid/net/NetworkState;
    :catch_11c
    move-exception v0

    .line 1137
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method private updatePersistThresholdsLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation

    .line 998
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 999
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 1000
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 1001
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 1002
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getGlobalAlertBytes(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    .line 1003
    return-void
.end method


# virtual methods
.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .registers 3
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .line 365
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 366
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 30
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "rawWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    .line 1472
    move-object/from16 v9, p3

    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v2, "NetworkStats"

    invoke-static {v0, v2, v8}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 1474
    :cond_11
    const-wide/32 v2, 0x5265c00

    .line 1475
    .local v2, "duration":J
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v10, v0

    .line 1476
    .local v10, "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v4, v9

    const/4 v5, 0x0

    move-wide v11, v2

    move v2, v5

    .line 1476
    .end local v2    # "duration":J
    .local v11, "duration":J
    :goto_1e
    if-ge v2, v4, :cond_3e

    aget-object v3, v9, v2

    .line 1477
    .local v3, "arg":Ljava/lang/String;
    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1479
    const-string v0, "--duration="

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1481
    const/16 v0, 0xb

    :try_start_2f
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_37} :catch_3a

    .line 1483
    .end local v11    # "duration":J
    .local v6, "duration":J
    nop

    .line 1476
    move-wide v11, v6

    goto :goto_3b

    .line 1482
    .end local v6    # "duration":J
    .restart local v11    # "duration":J
    :catch_3a
    move-exception v0

    .line 1476
    .end local v3    # "arg":Ljava/lang/String;
    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1488
    :cond_3e
    const-string v0, "--poll"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_53

    const-string/jumbo v0, "poll"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_53

    :cond_51
    move v0, v5

    goto :goto_54

    :cond_53
    :goto_53
    move v0, v2

    :goto_54
    move v13, v0

    .line 1489
    .local v13, "poll":Z
    const-string v0, "--checkin"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    .line 1490
    .local v14, "checkin":Z
    const-string v0, "--full"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "full"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    goto :goto_6e

    :cond_6c
    move v0, v5

    goto :goto_6f

    :cond_6e
    :goto_6e
    move v0, v2

    :goto_6f
    move v15, v0

    .line 1491
    .local v15, "fullHistory":Z
    const-string v0, "--uid"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    const-string v0, "detail"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    goto :goto_83

    :cond_81
    move v0, v5

    goto :goto_84

    :cond_83
    :goto_83
    move v0, v2

    :goto_84
    move/from16 v16, v0

    .line 1492
    .local v16, "includeUid":Z
    const-string v0, "--tag"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    const-string v0, "detail"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    goto :goto_99

    :cond_97
    move v2, v5

    nop

    :cond_99
    :goto_99
    move/from16 v17, v2

    .line 1494
    .local v17, "includeTag":Z
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v0, v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v6, v0

    .line 1496
    .local v6, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v7, v1, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1497
    :try_start_a6
    array-length v0, v9
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_25e

    if-lez v0, :cond_c2

    :try_start_a9
    const-string v0, "--proto"

    aget-object v2, v9, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 1499
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkStatsService;->dumpProtoLocked(Ljava/io/FileDescriptor;)V

    .line 1500
    monitor-exit v7

    return-void

    .line 1596
    :catchall_b8
    move-exception v0

    move-object v9, v6

    move-object/from16 v22, v7

    .line 1596
    .end local v6    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "duration":J
    .local v9, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .local v23, "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v24, "duration":J
    :goto_bc
    move-object/from16 v23, v10

    move-wide/from16 v24, v11

    goto/16 :goto_266

    .line 1503
    .end local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v23    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "duration":J
    .restart local v6    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11    # "duration":J
    :cond_c2
    if-eqz v13, :cond_d0

    .line 1504
    const/16 v0, 0x103

    invoke-direct {v1, v0}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1505
    const-string v0, "Forced poll"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    monitor-exit v7
    :try_end_cf
    .catchall {:try_start_a9 .. :try_end_cf} :catchall_b8

    return-void

    .line 1509
    :cond_d0
    if-eqz v14, :cond_137

    .line 1510
    :try_start_d2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide/from16 v18, v2

    .line 1511
    .local v18, "end":J
    sub-long v20, v18, v11

    .line 1513
    .local v20, "start":J
    const-string/jumbo v0, "v1,"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1514
    const-wide/16 v2, 0x3e8

    div-long v4, v20, v2

    invoke-virtual {v6, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    const/16 v0, 0x2c

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    .line 1515
    div-long v2, v18, v2

    invoke-virtual {v6, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1517
    const-string/jumbo v0, "xt"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1518
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    :try_end_fc
    .catchall {:try_start_d2 .. :try_end_fc} :catchall_12d

    move-object v3, v8

    move-wide/from16 v4, v20

    move-object v9, v6

    move-object/from16 v22, v7

    move-wide/from16 v6, v18

    .line 1518
    .end local v6    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_104
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1520
    if-eqz v16, :cond_119

    .line 1521
    const-string/jumbo v0, "uid"

    invoke-virtual {v9, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object v3, v8

    move-wide/from16 v4, v20

    move-wide/from16 v6, v18

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1524
    :cond_119
    if-eqz v17, :cond_12b

    .line 1525
    const-string/jumbo v0, "tag"

    invoke-virtual {v9, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1526
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object v3, v8

    move-wide/from16 v4, v20

    move-wide/from16 v6, v18

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1528
    :cond_12b
    monitor-exit v22
    :try_end_12c
    .catchall {:try_start_104 .. :try_end_12c} :catchall_169

    return-void

    .line 1596
    .end local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v18    # "end":J
    .end local v20    # "start":J
    .restart local v6    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_12d
    move-exception v0

    move-object v9, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v10

    move-wide/from16 v24, v11

    .line 1596
    .end local v6    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    goto/16 :goto_266

    .line 1531
    .end local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v6    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_137
    move-object v9, v6

    move-object/from16 v22, v7

    .line 1531
    .end local v6    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_13a
    const-string v0, "Active interfaces:"

    invoke-virtual {v9, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1533
    move v0, v5

    .line 1533
    .local v0, "i":I
    :goto_143
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_149
    .catchall {:try_start_13a .. :try_end_149} :catchall_258

    if-ge v0, v2, :cond_16c

    .line 1534
    :try_start_14b
    const-string/jumbo v2, "iface"

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1535
    const-string/jumbo v2, "ident"

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1536
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_166
    .catchall {:try_start_14b .. :try_end_166} :catchall_169

    .line 1533
    add-int/lit8 v0, v0, 0x1

    goto :goto_143

    .line 1596
    .end local v0    # "i":I
    :catchall_169
    move-exception v0

    goto/16 :goto_bc

    .line 1538
    :cond_16c
    :try_start_16c
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1540
    const-string v0, "Active UID interfaces:"

    invoke-virtual {v9, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1542
    move v0, v5

    .line 1542
    .restart local v0    # "i":I
    :goto_178
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_17e
    .catchall {:try_start_16c .. :try_end_17e} :catchall_258

    if-ge v0, v2, :cond_19e

    .line 1543
    :try_start_180
    const-string/jumbo v2, "iface"

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1544
    const-string/jumbo v2, "ident"

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1545
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_19b
    .catchall {:try_start_180 .. :try_end_19b} :catchall_169

    .line 1542
    add-int/lit8 v0, v0, 0x1

    goto :goto_178

    .line 1547
    .end local v0    # "i":I
    :cond_19e
    :try_start_19e
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1551
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    monitor-enter v2
    :try_end_1a4
    .catchall {:try_start_19e .. :try_end_1a4} :catchall_258

    .line 1552
    :try_start_1a4
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1553
    .local v0, "calls":Landroid/util/SparseIntArray;
    monitor-exit v2
    :try_end_1ab
    .catchall {:try_start_1a4 .. :try_end_1ab} :catchall_24f

    .line 1555
    :try_start_1ab
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 1556
    .local v2, "N":I
    new-array v3, v2, [J

    .line 1557
    .local v3, "values":[J
    move v4, v5

    .line 1557
    .local v4, "j":I
    :goto_1b2
    const/16 v6, 0x20

    if-ge v4, v2, :cond_1d2

    .line 1558
    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    int-to-long v7, v7

    shl-long v6, v7, v6

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8
    :try_end_1c1
    .catchall {:try_start_1ab .. :try_end_1c1} :catchall_258

    move-object/from16 v23, v10

    move-wide/from16 v24, v11

    int-to-long v10, v8

    .end local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "duration":J
    .restart local v23    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24    # "duration":J
    or-long/2addr v6, v10

    :try_start_1c7
    aput-wide v6, v3, v4

    .line 1557
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v10, v23

    move-wide/from16 v11, v24

    move-object/from16 v8, p2

    goto :goto_1b2

    .line 1560
    .end local v4    # "j":I
    .end local v23    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "duration":J
    .restart local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11    # "duration":J
    :cond_1d2
    move-object/from16 v23, v10

    move-wide/from16 v24, v11

    .line 1560
    .end local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "duration":J
    .restart local v23    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24    # "duration":J
    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    .line 1562
    const-string v4, "Top openSession callers (uid=count):"

    invoke-virtual {v9, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1564
    add-int/lit8 v4, v2, -0x14

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1565
    .local v4, "end":I
    add-int/lit8 v5, v2, -0x1

    .line 1565
    .local v5, "j":I
    :goto_1e9
    if-lt v5, v4, :cond_203

    .line 1566
    aget-wide v7, v3, v5

    const-wide/16 v10, -0x1

    and-long/2addr v7, v10

    long-to-int v7, v7

    .line 1567
    .local v7, "uid":I
    aget-wide v10, v3, v5

    shr-long/2addr v10, v6

    long-to-int v8, v10

    .line 1568
    .local v8, "count":I
    invoke-virtual {v9, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v10, "="

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1565
    .end local v7    # "uid":I
    .end local v8    # "count":I
    add-int/lit8 v5, v5, -0x1

    goto :goto_1e9

    .line 1570
    .end local v5    # "j":I
    :cond_203
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1571
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1573
    const-string v5, "Dev stats:"

    invoke-virtual {v9, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1575
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v9, v15}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1576
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1578
    const-string v5, "Xt stats:"

    invoke-virtual {v9, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1580
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v9, v15}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1581
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1583
    if-eqz v16, :cond_23b

    .line 1584
    const-string v5, "UID stats:"

    invoke-virtual {v9, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1586
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v9, v15}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1587
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1590
    :cond_23b
    if-eqz v17, :cond_24d

    .line 1591
    const-string v5, "UID tag stats:"

    invoke-virtual {v9, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1593
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v9, v15}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1594
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1596
    .end local v0    # "calls":Landroid/util/SparseIntArray;
    .end local v2    # "N":I
    .end local v3    # "values":[J
    .end local v4    # "end":I
    :cond_24d
    monitor-exit v22
    :try_end_24e
    .catchall {:try_start_1c7 .. :try_end_24e} :catchall_268

    .line 1597
    return-void

    .line 1553
    .end local v23    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "duration":J
    .restart local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11    # "duration":J
    :catchall_24f
    move-exception v0

    move-object/from16 v23, v10

    move-wide/from16 v24, v11

    .line 1553
    .end local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "duration":J
    .restart local v23    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24    # "duration":J
    :goto_254
    :try_start_254
    monitor-exit v2
    :try_end_255
    .catchall {:try_start_254 .. :try_end_255} :catchall_256

    :try_start_255
    throw v0

    :catchall_256
    move-exception v0

    goto :goto_254

    .line 1596
    .end local v23    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "duration":J
    .restart local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11    # "duration":J
    :catchall_258
    move-exception v0

    move-object/from16 v23, v10

    move-wide/from16 v24, v11

    .line 1596
    .end local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "duration":J
    .restart local v23    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24    # "duration":J
    goto :goto_266

    .line 1596
    .end local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v23    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "duration":J
    .restart local v6    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11    # "duration":J
    :catchall_25e
    move-exception v0

    move-object v9, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v10

    move-wide/from16 v24, v11

    .line 1596
    .end local v6    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "duration":J
    .restart local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v23    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24    # "duration":J
    :goto_266
    monitor-exit v22
    :try_end_267
    .catchall {:try_start_255 .. :try_end_267} :catchall_268

    throw v0

    :catchall_268
    move-exception v0

    goto :goto_266
.end method

.method public forceUpdate()V
    .registers 4

    .line 895
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 898
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 900
    .local v0, "token":J
    const/4 v2, 0x3

    :try_start_11
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_19

    .line 902
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 903
    nop

    .line 904
    return-void

    .line 902
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public forceUpdateIfaces([Landroid/net/Network;)V
    .registers 5
    .param p1, "defaultNetworks"    # [Landroid/net/Network;

    .line 882
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 885
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 887
    .local v0, "token":J
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->updateIfaces([Landroid/net/Network;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_18

    .line 889
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 890
    nop

    .line 891
    return-void

    .line 889
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    .registers 9
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 765
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 766
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    :cond_f
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 772
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 775
    .local v0, "token":J
    :try_start_16
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    sget-object v3, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I[Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_4c

    .line 778
    .local v2, "networkLayer":Landroid/net/NetworkStats;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    nop

    .line 778
    nop

    .line 782
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v2, v3}, Landroid/net/NetworkStats;->spliceOperationsFrom(Landroid/net/NetworkStats;)V

    .line 784
    new-instance v3, Landroid/net/NetworkStats;

    .line 785
    invoke-virtual {v2}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/net/NetworkStats;->size()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 787
    .local v3, "dataLayer":Landroid/net/NetworkStats;
    const/4 v4, 0x0

    .line 788
    .local v4, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_37
    invoke-virtual {v2}, Landroid/net/NetworkStats;->size()I

    move-result v6

    if-ge v5, v6, :cond_4b

    .line 789
    invoke-virtual {v2, v5, v4}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v4

    .line 790
    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v6, v4, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 791
    invoke-virtual {v3, v4}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 788
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 794
    .end local v5    # "i":I
    :cond_4b
    return-object v3

    .line 778
    .end local v2    # "networkLayer":Landroid/net/NetworkStats;
    .end local v3    # "dataLayer":Landroid/net/NetworkStats;
    .end local v4    # "entry":Landroid/net/NetworkStats$Entry;
    :catchall_4c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDetailedUidStats([Ljava/lang/String;)Landroid/net/NetworkStats;
    .registers 7
    .param p1, "requiredIfaces"    # [Ljava/lang/String;

    .line 800
    nop

    .line 801
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/net/NetworkStatsFactory;->augmentWithStackedInterfaces([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "ifacesToQuery":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_a

    return-object v1

    .line 803
    .end local v0    # "ifacesToQuery":[Ljava/lang/String;
    :catch_a
    move-exception v0

    .line 804
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkStats"

    const-string v2, "Error compiling UID stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 805
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v1
.end method

.method public getIfaceStats(Ljava/lang/String;I)J
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 979
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->checkBpfStatsEnable()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/net/NetworkStatsService;->nativeGetIfaceStat(Ljava/lang/String;IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMobileIfaces()[Ljava/lang/String;
    .registers 2

    .line 811
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    return-object v0
.end method

.method public getTotalStats(I)J
    .registers 4
    .param p1, "type"    # I

    .line 984
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->checkBpfStatsEnable()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkStatsService;->nativeGetTotalStat(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUidStats(II)J
    .registers 5
    .param p1, "uid"    # I
    .param p2, "type"    # I

    .line 974
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->checkBpfStatsEnable()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/net/NetworkStatsService;->nativeGetUidStat(IIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementOperationCount(III)V
    .registers 27
    .param p1, "uid"    # I
    .param p2, "tag"    # I
    .param p3, "operationCount"    # I

    move-object/from16 v1, p0

    move/from16 v15, p1

    .line 816
    move/from16 v13, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, v15, :cond_15

    .line 817
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    const-string v3, "NetworkStats"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :cond_15
    if-ltz v13, :cond_6e

    .line 824
    if-eqz p2, :cond_64

    .line 828
    iget-object v14, v1, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v14

    .line 829
    :try_start_1c
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v15, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 830
    .local v5, "set":I
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_5c

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v16, 0x0

    int-to-long v11, v13

    move v4, v15

    move/from16 v6, p2

    move-wide/from16 v18, v11

    const-wide/16 v11, 0x0

    move-object/from16 v21, v14

    move-wide/from16 v13, v16

    move-wide/from16 v15, v18

    :try_start_3b
    invoke-virtual/range {v2 .. v16}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 832
    iget-object v6, v1, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    iget-object v7, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_58

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    move/from16 v2, p3

    int-to-long v3, v2

    move/from16 v8, p1

    move v9, v5

    move-wide/from16 v19, v3

    :try_start_53
    invoke-virtual/range {v6 .. v20}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 834
    .end local v5    # "set":I
    monitor-exit v21

    .line 835
    return-void

    .line 834
    :catchall_58
    move-exception v0

    move/from16 v2, p3

    goto :goto_60

    :catchall_5c
    move-exception v0

    move v2, v13

    move-object/from16 v21, v14

    :goto_60
    monitor-exit v21
    :try_end_61
    .catchall {:try_start_53 .. :try_end_61} :catchall_62

    throw v0

    :catchall_62
    move-exception v0

    goto :goto_60

    .line 825
    :cond_64
    move v2, v13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "operation count must have specific tag"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_6e
    move v2, v13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "operation count can only be incremented"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openSession()Landroid/net/INetworkStatsSession;
    .registers 3

    .line 522
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->openSessionInternal(ILjava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v0

    return-object v0
.end method

.method public openSessionForUsageStats(ILjava/lang/String;)Landroid/net/INetworkStatsSession;
    .registers 4
    .param p1, "flags"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 527
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->openSessionInternal(ILjava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v0

    return-object v0
.end method

.method public registerUsageCallback(Ljava/lang/String;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/DataUsageRequest;
    .registers 15
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/net/DataUsageRequest;
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;

    .line 936
    const-string v0, "calling package is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    const-string v0, "DataUsageRequest is null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    iget-object v0, p2, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    const-string v1, "NetworkTemplate is null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    const-string/jumbo v0, "messenger is null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    const-string v0, "binder is null"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 943
    .local v0, "callingUid":I
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->checkAccessLevel(Ljava/lang/String;)I

    move-result v7

    .line 945
    .local v7, "accessLevel":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-wide v8, v1

    .line 947
    .local v8, "token":J
    :try_start_29
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, v0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkStatsObservers;->register(Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)Landroid/net/DataUsageRequest;

    move-result-object v1
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_4b

    .line 950
    .local v1, "normalizedRequest":Landroid/net/DataUsageRequest;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 951
    nop

    .line 950
    nop

    .line 954
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 956
    return-object v1

    .line 950
    .end local v1    # "normalizedRequest":Landroid/net/DataUsageRequest;
    :catchall_4b
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method setHandler(Landroid/os/Handler;Landroid/os/Handler$Callback;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Landroid/os/Handler$Callback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 360
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    .line 361
    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 362
    return-void
.end method

.method setUidForeground(IZ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 865
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSetUidForegroundHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 878
    return-void
.end method

.method public systemReady()V
    .registers 9

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    .line 371
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    .line 372
    const-string v0, "NetworkStats"

    const-string v1, "bandwidth controls disabled, unable to track stats"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void

    .line 376
    :cond_11
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 378
    :try_start_14
    const-string v2, "dev"

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 379
    const-string/jumbo v2, "xt"

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v3

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 380
    const-string/jumbo v2, "uid"

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v3

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 381
    const-string/jumbo v2, "uid_tag"

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 383
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholdsLocked()V

    .line 386
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->maybeUpgradeLegacyStatsLocked()V

    .line 390
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    .line 393
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->bootstrapStatsLocked()V

    .line 394
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_14 .. :try_end_62} :catchall_c3

    .line 397
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "tetherFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 401
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 402
    .local v1, "pollFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 405
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.UID_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 406
    .local v2, "removedFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 409
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 410
    .local v3, "userFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v3, v4, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 413
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 414
    .local v4, "shutdownFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 417
    :try_start_b3
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_ba} :catch_bb

    .line 420
    goto :goto_bc

    .line 418
    :catch_bb
    move-exception v5

    .line 422
    :goto_bc
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerPollAlarmLocked()V

    .line 423
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    .line 424
    return-void

    .line 394
    .end local v0    # "tetherFilter":Landroid/content/IntentFilter;
    .end local v1    # "pollFilter":Landroid/content/IntentFilter;
    .end local v2    # "removedFilter":Landroid/content/IntentFilter;
    .end local v3    # "userFilter":Landroid/content/IntentFilter;
    .end local v4    # "shutdownFilter":Landroid/content/IntentFilter;
    :catchall_c3
    move-exception v0

    :try_start_c4
    monitor-exit v1
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v0
.end method

.method public unregisterUsageRequest(Landroid/net/DataUsageRequest;)V
    .registers 6
    .param p1, "request"    # Landroid/net/DataUsageRequest;

    .line 961
    const-string v0, "DataUsageRequest is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 964
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 966
    .local v1, "token":J
    :try_start_d
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/net/NetworkStatsObservers;->unregister(Landroid/net/DataUsageRequest;I)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_17

    .line 968
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 969
    nop

    .line 970
    return-void

    .line 968
    :catchall_17
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
