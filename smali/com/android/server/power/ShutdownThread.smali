.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_DONE_POLL_WAIT_MS:I = 0x1f4

.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final METRICS_FILE_BASENAME:Ljava/lang/String; = "/data/system/shutdown-metrics"

.field private static METRIC_AM:Ljava/lang/String; = null

.field private static METRIC_PM:Ljava/lang/String; = null

.field private static METRIC_RADIO:Ljava/lang/String; = null

.field private static METRIC_RADIOS:Ljava/lang/String; = null

.field private static METRIC_SEND_BROADCAST:Ljava/lang/String; = null

.field private static METRIC_SHUTDOWN_TIME_START:Ljava/lang/String; = null

.field private static METRIC_SYSTEM_SERVER:Ljava/lang/String; = null

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static OEM_PACKAGE_MARKET:Ljava/lang/String; = null

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final RADIOS_STATE_POLL_SLEEP_MS:I = 0x64

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final RO_SAFEMODE_PROPERTY:Ljava/lang/String; = "ro.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final TRON_METRICS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final VENDOR_SUBSYS_MAX_WAIT_MS:I = 0x2710

.field private static final VENDOR_SUBSYS_STATE_CHECK_INTERVAL_MS:I = 0x64

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mNeedShutdownDialog:Z = false

.field private static mReason:Ljava/lang/String; = null

.field private static mReboot:Z = false

.field private static mRebootHasProgressBar:Z = false

.field private static mRebootSafeMode:Z = false

.field private static final mSpew:Z = true

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static final sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 119
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 121
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 122
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 123
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 127
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    .line 133
    const-string/jumbo v0, "shutdown_system_server"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    .line 134
    const-string/jumbo v0, "shutdown_send_shutdown_broadcast"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    .line 135
    const-string/jumbo v0, "shutdown_activity_manager"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    .line 136
    const-string/jumbo v0, "shutdown_package_manager"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    .line 137
    const-string/jumbo v0, "shutdown_radios"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    .line 138
    const-string/jumbo v0, "shutdown_radio"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    .line 139
    const-string v0, "begin_shutdown"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

    .line 143
    const-string v0, "com.oppo.market"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->OEM_PACKAGE_MARKET:Ljava/lang/String;

    .line 163
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mNeedShutdownDialog:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 166
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 167
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 76
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .line 76
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .line 76
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Landroid/util/TimingsTraceLog;
    .registers 1

    .line 76
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->newTimingsLog()Landroid/util/TimingsTraceLog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 76
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 76
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 76
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    return v0
.end method

.method static synthetic access$600()Lcom/android/server/power/ShutdownThread;
    .registers 1

    .line 76
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 76
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()Landroid/util/ArrayMap;
    .registers 1

    .line 76
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 456
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 457
    :try_start_3
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_10

    .line 458
    const-string v1, "ShutdownThread"

    const-string v2, "Shutdown sequence already running, returning."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    monitor-exit v0

    return-void

    .line 461
    :cond_10
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 462
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_c9

    .line 464
    new-array v0, v1, [I

    const/16 v2, 0x49

    const/4 v3, 0x0

    aput v2, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 465
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showShutdownAnimation()V

    .line 467
    :cond_24
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 468
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 469
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, v0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 472
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 474
    :try_start_42
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "ShutdownThread-cpu"

    invoke-virtual {v4, v1, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 476
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 477
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_5e
    .catch Ljava/lang/SecurityException; {:try_start_42 .. :try_end_5e} :catch_5f

    .line 481
    goto :goto_6b

    .line 478
    :catch_5f
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 485
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_6b
    const-string v0, "ShutdownThread"

    const-string/jumbo v1, "shutdown acquire partial WakeLock: cpu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, v0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 490
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 492
    :try_start_81
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "ShutdownThread-screen"

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 494
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 495
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_9f
    .catch Ljava/lang/SecurityException; {:try_start_81 .. :try_end_9f} :catch_a0

    .line 499
    goto :goto_ac

    .line 496
    :catch_a0
    move-exception v0

    .line 497
    .restart local v0    # "e":Ljava/lang/SecurityException;
    const-string v1, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, v1, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 502
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_ac
    :goto_ac
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 503
    const v0, 0x3345a

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 507
    :cond_ba
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v1, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$2;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 509
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread;->start()V

    .line 510
    return-void

    .line 462
    :catchall_c9
    move-exception v1

    :try_start_ca
    monitor-exit v0
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw v1
.end method

.method private static metricEnded(Ljava/lang/String;)V
    .registers 7
    .param p0, "metricKey"    # Ljava/lang/String;

    .line 688
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 689
    :try_start_3
    sget-object v1, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    .line 690
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v4, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v4, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    monitor-exit v0

    .line 692
    return-void

    .line 691
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private static metricShutdownStart()V
    .registers 5

    .line 695
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 696
    :try_start_3
    sget-object v1, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/server/power/ShutdownThread;->METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    monitor-exit v0

    .line 698
    return-void

    .line 697
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private static metricStarted(Ljava/lang/String;)V
    .registers 7
    .param p0, "metricKey"    # Ljava/lang/String;

    .line 682
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 683
    :try_start_3
    sget-object v1, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    const-wide/16 v2, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    monitor-exit v0

    .line 685
    return-void

    .line 684
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private static newTimingsLog()Landroid/util/TimingsTraceLog;
    .registers 4

    .line 678
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "ShutdownTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .line 295
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 296
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 297
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 298
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 301
    const-string v1, "ShutdownThread"

    const-string v2, "!!! Request to reboot !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 305
    .local v1, "stack":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    :goto_1b
    if-ge v0, v2, :cond_3c

    aget-object v3, v1, v0

    .line 307
    .local v3, "element":Ljava/lang/StackTraceElement;
    const-string v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    |----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v3    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 311
    .end local v1    # "stack":[Ljava/lang/StackTraceElement;
    :cond_3c
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 312
    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 796
    const-string/jumbo v0, "vendor.peripheral.shutdown_critical_list"

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "subsysProp":Ljava/lang/String;
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_d4

    .line 801
    const-string v1, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shutdown critical subsyslist is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v1, "ShutdownThread"

    const-string v4, "Waiting for a maximum of 10000ms"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 805
    .local v1, "subsysList":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 806
    .local v4, "wait_count":I
    const/4 v5, 0x1

    .line 808
    .local v5, "okToShutdown":Z
    array-length v6, v1

    .line 810
    .local v6, "subsysListLength":I
    :goto_3e
    const/4 v5, 0x1

    .line 811
    move v7, v5

    move v5, v2

    .line 811
    .local v5, "i":I
    .local v7, "okToShutdown":Z
    :goto_41
    if-ge v5, v6, :cond_6e

    .line 812
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "vendor.peripheral."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v1, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ERROR"

    .line 813
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 818
    .local v8, "subsysState":Ljava/lang/String;
    const-string v9, "ONLINE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 822
    const/4 v7, 0x0

    .line 811
    :cond_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 825
    .end local v5    # "i":I
    .end local v8    # "subsysState":Ljava/lang/String;
    :cond_6e
    if-nez v7, :cond_77

    .line 826
    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 827
    add-int/lit8 v4, v4, 0x1

    .line 829
    :cond_77
    if-eq v7, v3, :cond_80

    const/16 v5, 0x64

    if-lt v4, v5, :cond_7e

    goto :goto_80

    .line 808
    :cond_7e
    move v5, v7

    goto :goto_3e

    .line 831
    :cond_80
    :goto_80
    if-eq v7, v3, :cond_cd

    .line 832
    move v5, v2

    .line 832
    .restart local v5    # "i":I
    :goto_83
    array-length v8, v1

    if-ge v5, v8, :cond_d4

    .line 833
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "vendor.peripheral."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v1, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ERROR"

    .line 834
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 839
    .restart local v8    # "subsysState":Ljava/lang/String;
    const-string v9, "ONLINE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ca

    .line 840
    const-string v9, "ShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Subsystem "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v1, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "did not shut down within timeout"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_ca
    add-int/lit8 v5, v5, 0x1

    goto :goto_83

    .line 845
    .end local v5    # "i":I
    .end local v8    # "subsysState":Ljava/lang/String;
    :cond_cd
    const-string v5, "ShutdownThread"

    const-string v8, "Vendor subsystem(s) shutdown successful"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    .end local v1    # "subsysList":[Ljava/lang/String;
    .end local v4    # "wait_count":I
    .end local v6    # "subsysListLength":I
    .end local v7    # "okToShutdown":Z
    :cond_d4
    const-wide/16 v4, 0x1f4

    if-eqz p1, :cond_10b

    .line 849
    const-string v1, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rebooting, reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    new-array v1, v3, [I

    const/16 v3, 0x49

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 852
    :try_start_fa
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_fd
    .catch Ljava/lang/InterruptedException; {:try_start_fa .. :try_end_fd} :catch_fe

    .line 854
    goto :goto_ff

    .line 853
    :catch_fe
    move-exception v1

    .line 856
    :cond_ff
    :goto_ff
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 857
    const-string v1, "ShutdownThread"

    const-string v2, "Reboot failed, will attempt shutdown instead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/4 p2, 0x0

    goto :goto_125

    .line 859
    :cond_10b
    if-eqz p0, :cond_125

    .line 861
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 863
    .local v1, "vibrator":Landroid/os/Vibrator;
    :try_start_112
    sget-object v2, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_117} :catch_118

    .line 867
    goto :goto_120

    .line 864
    :catch_118
    move-exception v2

    .line 866
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ShutdownThread"

    const-string v6, "Failed to vibrate during shutdown."

    invoke-static {v3, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 871
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_120
    :try_start_120
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_123
    .catch Ljava/lang/InterruptedException; {:try_start_120 .. :try_end_123} :catch_124

    .line 873
    goto :goto_125

    .line 872
    :catch_124
    move-exception v2

    .line 876
    .end local v1    # "vibrator":Landroid/os/Vibrator;
    :cond_125
    :goto_125
    const-string v1, "ShutdownThread"

    const-string v2, "Performing low-level shutdown..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown(Ljava/lang/String;)V

    .line 878
    return-void
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .line 323
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 324
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 325
    return-void

    .line 328
    :cond_13
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 329
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 330
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 331
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 334
    const-string v1, "ShutdownThread"

    const-string/jumbo v2, "rebootSafeMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 337
    return-void
.end method

.method private static saveMetrics(ZLjava/lang/String;)V
    .registers 12
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 882
    .local v0, "metricValue":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "reboot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    if-eqz p0, :cond_11

    const-string/jumbo v1, "y"

    goto :goto_14

    :cond_11
    const-string/jumbo v1, "n"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    sget-object v1, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 886
    .local v1, "metricsSize":I
    const/4 v2, 0x0

    move v3, v2

    .line 886
    .local v3, "i":I
    :goto_2d
    if-ge v3, v1, :cond_74

    .line 887
    sget-object v4, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 888
    .local v4, "name":Ljava/lang/String;
    sget-object v5, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 889
    .local v5, "value":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_61

    .line 890
    const-string v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "metricEnded wasn\'t called for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    goto :goto_71

    .line 893
    :cond_61
    const/16 v7, 0x2c

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 886
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":J
    :goto_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 895
    .end local v3    # "i":I
    :cond_74
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/shutdown-metrics.tmp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 896
    .local v3, "tmp":Ljava/io/File;
    nop

    .line 897
    .local v2, "saved":Z
    :try_start_7c
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_81} :catch_a7

    .line 897
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 898
    :try_start_82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_8f} :catch_96
    .catchall {:try_start_82 .. :try_end_8f} :catchall_94

    .line 899
    const/4 v2, 0x1

    .line 900
    :try_start_90
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_a7

    .line 902
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_af

    .line 900
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_94
    move-exception v6

    goto :goto_98

    .line 897
    :catch_96
    move-exception v5

    :try_start_97
    throw v5
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_94

    .line 900
    :goto_98
    if-eqz v5, :cond_a3

    :try_start_9a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9d} :catch_9e
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_a7

    goto :goto_a6

    :catch_9e
    move-exception v7

    :try_start_9f
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a6

    :cond_a3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :goto_a6
    throw v6
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a7} :catch_a7

    .line 900
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_a7
    move-exception v4

    .line 901
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "ShutdownThread"

    const-string v6, "Cannot save shutdown metrics"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 903
    .end local v4    # "e":Ljava/io/IOException;
    :goto_af
    if-eqz v2, :cond_bb

    .line 904
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/shutdown-metrics.txt"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 906
    :cond_bb
    return-void
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 701
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$4;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 712
    return-void
.end method

.method public static setShutdownDialogEnabled(Z)V
    .registers 4
    .param p0, "shutdownDialogEnabled"    # Z

    .line 971
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Need shutdown dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mNeedShutdownDialog:Z

    .line 973
    return-void
.end method

.method private static showShutdownAnimation()V
    .registers 2

    .line 207
    const-string/jumbo v0, "service.bootanim.exit"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string/jumbo v0, "sys.shutingdown"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "ctl.start"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private static showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 343
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-static {p0}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_f0

    invoke-virtual {v1, v2}, Landroid/content/res/ThemeController;->getCorrectThemeResource([I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 374
    .local v0, "pd":Landroid/app/ProgressDialog;
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mNeedShutdownDialog:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_7e

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v1, :cond_7e

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const-string/jumbo v5, "recovery-update"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 382
    sget-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3b

    sget-object v1, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    .line 383
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3b

    move v1, v4

    goto :goto_3c

    :cond_3b
    move v1, v3

    :goto_3c
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 384
    const v1, 0x104059a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 385
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v1, :cond_69

    .line 386
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 387
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 388
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 389
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 391
    const v1, 0x1040598

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_df

    .line 394
    :cond_69
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 395
    return-object v2

    .line 397
    :cond_70
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 398
    const v1, 0x1040599

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_df

    .line 403
    :cond_7e
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mNeedShutdownDialog:Z

    const v5, 0x1040613

    const v6, 0x104057d

    if-eqz v1, :cond_c7

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v1, :cond_c7

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const-string/jumbo v7, "recovery"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 409
    invoke-static {}, Lcom/android/server/RescueParty;->isAttemptingFactoryReset()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 413
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 414
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 415
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_df

    .line 418
    :cond_af
    const v1, 0x1040596

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 419
    const v1, 0x1040595

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 421
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_df

    .line 424
    :cond_c7
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 425
    return-object v2

    .line 427
    :cond_ce
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 428
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 429
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 431
    :goto_df
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 432
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 434
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 435
    return-object v0

    nop

    :array_f0
    .array-data 4
        0x10302d2
        0x10302d1
    .end array-data
.end method

.method private static showSysuiReboot()Z
    .registers 3

    .line 439
    const-string v0, "ShutdownThread"

    const-string v1, "Attempting to use SysUI shutdown UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :try_start_7
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 443
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showShutdownUi(ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 445
    const-string v1, "ShutdownThread"

    const-string v2, "SysUI handling shutdown UI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_20} :catch_23

    .line 446
    const/4 v1, 0x1

    return v1

    .line 450
    .end local v0    # "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_22
    goto :goto_24

    .line 448
    :catch_23
    move-exception v0

    .line 451
    :goto_24
    const-string v0, "ShutdownThread"

    const-string v1, "SysUI is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v0, 0x0

    return v0
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .line 180
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 181
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 182
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 185
    const-string v1, "ShutdownThread"

    const-string v2, "!!! Request to shutdown !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 189
    .local v1, "stack":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    :goto_18
    if-ge v0, v2, :cond_39

    aget-object v3, v1, v0

    .line 191
    .local v3, "element":Ljava/lang/StackTraceElement;
    const-string v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    |----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v3    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 196
    .end local v1    # "stack":[Ljava/lang/StackTraceElement;
    :cond_39
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 197
    return-void
.end method

.method private static shutdownInner(Landroid/content/Context;Z)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 220
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_6
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_13

    .line 222
    const-string v1, "ShutdownThread"

    const-string v2, "Request to shutdown already running, returning."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    monitor-exit v0

    return-void

    .line 225
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_a7

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 229
    .local v0, "longPressBehavior":I
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v1, :cond_27

    .line 230
    const v1, 0x1040592

    goto :goto_31

    .line 231
    :cond_27
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2e

    .line 232
    const v1, 0x1040612

    goto :goto_31

    .line 233
    :cond_2e
    const v1, 0x1040611

    .line 235
    .local v1, "resourceId":I
    :goto_31
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-eqz p1, :cond_a3

    .line 238
    new-instance v2, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 239
    .local v2, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_57

    .line 240
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 242
    :cond_57
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 243
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v4, :cond_64

    .line 244
    const v4, 0x1040593

    goto :goto_67

    .line 245
    :cond_64
    const v4, 0x104057d

    .line 243
    :goto_67
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 246
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    new-instance v5, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v5, p0}, Lcom/android/server/power/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    .line 247
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    const/4 v5, 0x0

    .line 252
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 253
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 254
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 255
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 256
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 257
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 258
    .end local v2    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    goto :goto_a6

    .line 259
    :cond_a3
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    .line 261
    :goto_a6
    return-void

    .line 225
    .end local v0    # "longPressBehavior":I
    .end local v1    # "resourceId":I
    :catchall_a7
    move-exception v1

    :try_start_a8
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v1
.end method

.method private shutdownRadios(I)V
    .registers 12
    .param p1, "timeout"    # I

    .line 717
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 718
    .local v0, "endTime":J
    const/4 v2, 0x1

    new-array v2, v2, [Z

    .line 719
    .local v2, "done":[Z
    new-instance v3, Lcom/android/server/power/ShutdownThread$5;

    move-object v4, v3

    move-object v5, p0

    move-wide v6, v0

    move v8, p1

    move-object v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;JI[Z)V

    .line 776
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 778
    int-to-long v4, p1

    :try_start_17
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 780
    goto :goto_1c

    .line 779
    :catch_1b
    move-exception v4

    .line 781
    :goto_1c
    const/4 v4, 0x0

    aget-boolean v4, v2, v4

    if-nez v4, :cond_28

    .line 782
    const-string v4, "ShutdownThread"

    const-string v5, "Timed out waiting for Radio shutdown."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_28
    return-void
.end method

.method private uncrypt()V
    .registers 10

    .line 909
    const-string v0, "ShutdownThread"

    const-string v1, "Calling uncrypt and monitoring the progress..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    new-instance v0, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 932
    .local v0, "progressListener":Landroid/os/RecoverySystem$ProgressListener;
    const/4 v1, 0x1

    new-array v2, v1, [Z

    .line 933
    .local v2, "done":[Z
    const/4 v3, 0x0

    aput-boolean v3, v2, v3

    .line 934
    new-instance v4, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V

    .line 949
    .local v4, "t":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 952
    const-wide/32 v5, 0xdbba0

    :try_start_1d
    invoke-virtual {v4, v5, v6}, Ljava/lang/Thread;->join(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21

    .line 954
    goto :goto_22

    .line 953
    :catch_21
    move-exception v5

    .line 955
    :goto_22
    aget-boolean v5, v2, v3

    if-nez v5, :cond_57

    .line 956
    const-string v5, "ShutdownThread"

    const-string v6, "Timed out waiting for uncrypt."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/16 v5, 0x64

    .line 958
    .local v5, "uncryptTimeoutError":I
    const-string/jumbo v6, "uncrypt_time: %d\nuncrypt_error: %d\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v8, 0x384

    .line 959
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    .line 958
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 961
    .local v1, "timeoutMessage":Ljava/lang/String;
    :try_start_49
    sget-object v3, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    invoke-static {v3, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4e} :catch_4f

    .line 964
    goto :goto_57

    .line 962
    :catch_4f
    move-exception v3

    .line 963
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "ShutdownThread"

    const-string v7, "Failed to write timeout message to uncrypt status"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 966
    .end local v1    # "timeoutMessage":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "uncryptTimeoutError":I
    :cond_57
    :goto_57
    return-void
.end method


# virtual methods
.method actionDone()V
    .registers 3

    .line 513
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 515
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 516
    monitor-exit v0

    .line 517
    return-void

    .line 516
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public run()V
    .registers 25

    .line 524
    move-object/from16 v1, p0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->newTimingsLog()Landroid/util/TimingsTraceLog;

    move-result-object v2

    .line 525
    .local v2, "shutdownTimingLog":Landroid/util/TimingsTraceLog;
    const-string v0, "SystemServerShutdown"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 526
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->metricShutdownStart()V

    .line 527
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 529
    new-instance v7, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v7, v1}, Lcom/android/server/power/ShutdownThread$3;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 542
    .local v7, "br":Landroid/content/BroadcastReceiver;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v3, :cond_24

    const-string v3, "1"

    goto :goto_26

    :cond_24
    const-string v3, "0"

    :goto_26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v3, :cond_30

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    goto :goto_32

    :cond_30
    const-string v3, ""

    :goto_32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "reason":Ljava/lang/String;
    const-string/jumbo v3, "sys.shutdown.requested"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .end local v0    # "reason":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v0, :cond_4b

    .line 551
    const-string/jumbo v0, "persist.sys.safemode"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_4b
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 555
    const-string v0, "SendShutdownBroadcast"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 557
    const-string v0, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 561
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 562
    .local v13, "intent":Landroid/content/Intent;
    const/high16 v0, 0x50000000

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 563
    iget-object v3, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    iget-object v8, v1, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v13

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 567
    const/4 v3, 0x1

    new-array v0, v3, [I

    aput v12, v0, v12

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 568
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "oneplus.intent.action.OEM_SHUTDOWN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    .local v0, "oemIntent":Landroid/content/Intent;
    sget-object v4, Lcom/android/server/power/ShutdownThread;->OEM_PACKAGE_MARKET:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    iget-object v14, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v17, 0x0

    iget-object v4, v1, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v15, v0

    move-object/from16 v18, v7

    move-object/from16 v19, v4

    invoke-virtual/range {v14 .. v22}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 575
    .end local v0    # "oemIntent":Landroid/content/Intent;
    :cond_a8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long/2addr v4, v8

    .line 576
    .local v4, "endTime":J
    iget-object v6, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v6

    .line 577
    :goto_b2
    :try_start_b2
    iget-boolean v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    const/4 v10, 0x0

    if-nez v0, :cond_106

    .line 578
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14
    :try_end_bb
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_204

    sub-long v14, v4, v14

    .line 579
    .local v14, "delay":J
    const-wide/16 v16, 0x0

    cmp-long v0, v14, v16

    if-gtz v0, :cond_d3

    .line 580
    :try_start_c3
    const-string v0, "ShutdownThread"

    const-string v8, "Shutdown broadcast timed out"

    invoke-static {v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catchall {:try_start_c3 .. :try_end_ca} :catchall_ce

    .line 581
    nop

    .line 592
    move-object/from16 v23, v13

    goto :goto_108

    .line 592
    .end local v14    # "delay":J
    :catchall_ce
    move-exception v0

    move-object/from16 v23, v13

    goto/16 :goto_207

    .line 582
    .restart local v14    # "delay":J
    :cond_d3
    :try_start_d3
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z
    :try_end_d5
    .catchall {:try_start_d3 .. :try_end_d5} :catchall_204

    if-eqz v0, :cond_f2

    .line 583
    move-object/from16 v23, v13

    sub-long v12, v8, v14

    .line 583
    .end local v13    # "intent":Landroid/content/Intent;
    .local v23, "intent":Landroid/content/Intent;
    long-to-double v11, v12

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v11, v11, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v11, v11, v16

    const-wide v16, 0x40c3880000000000L    # 10000.0

    div-double v11, v11, v16

    double-to-int v0, v11

    .line 585
    .local v0, "status":I
    :try_start_ec
    sget-object v11, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-direct {v11, v0, v10}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_f1
    .catchall {:try_start_ec .. :try_end_f1} :catchall_209

    .line 585
    .end local v0    # "status":I
    goto :goto_f4

    .line 588
    .end local v23    # "intent":Landroid/content/Intent;
    .restart local v13    # "intent":Landroid/content/Intent;
    :cond_f2
    move-object/from16 v23, v13

    .line 588
    .end local v13    # "intent":Landroid/content/Intent;
    .restart local v23    # "intent":Landroid/content/Intent;
    :goto_f4
    :try_start_f4
    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v10, 0x1f4

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_ff
    .catch Ljava/lang/InterruptedException; {:try_start_f4 .. :try_end_ff} :catch_100
    .catchall {:try_start_f4 .. :try_end_ff} :catchall_209

    .line 590
    goto :goto_101

    .line 589
    :catch_100
    move-exception v0

    .line 591
    .end local v14    # "delay":J
    :goto_101
    nop

    .line 577
    move-object/from16 v13, v23

    const/4 v12, 0x0

    goto :goto_b2

    .line 592
    .end local v23    # "intent":Landroid/content/Intent;
    .restart local v13    # "intent":Landroid/content/Intent;
    :cond_106
    move-object/from16 v23, v13

    .line 592
    .end local v13    # "intent":Landroid/content/Intent;
    .restart local v23    # "intent":Landroid/content/Intent;
    :goto_108
    :try_start_108
    monitor-exit v6
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_209

    .line 593
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_113

    .line 594
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v6, 0x2

    invoke-direct {v0, v6, v10}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 596
    :cond_113
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 597
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 599
    const-string v0, "ShutdownThread"

    const-string v6, "Shutting down activity manager..."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const-string v0, "ShutdownActivityManager"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 601
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 603
    const-string v0, "activity"

    .line 604
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v6

    .line 605
    .local v6, "am":Landroid/app/IActivityManager;
    if-eqz v6, :cond_13f

    .line 607
    const/16 v0, 0x2710

    :try_start_13a
    invoke-interface {v6, v0}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_13d
    .catch Landroid/os/RemoteException; {:try_start_13a .. :try_end_13d} :catch_13e

    .line 609
    goto :goto_13f

    .line 608
    :catch_13e
    move-exception v0

    .line 611
    :cond_13f
    :goto_13f
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_149

    .line 612
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v8, 0x4

    invoke-direct {v0, v8, v10}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 614
    :cond_149
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 615
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 617
    const-string v0, "ShutdownThread"

    const-string v8, "Shutting down package manager..."

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v0, "ShutdownPackageManager"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 619
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 621
    const-string/jumbo v0, "package"

    .line 622
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 623
    .local v0, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v0, :cond_170

    .line 624
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    .line 626
    :cond_170
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v8, :cond_17a

    .line 627
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v9, 0x6

    invoke-direct {v8, v9, v10}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 629
    :cond_17a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 630
    sget-object v8, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 633
    const-string v8, "ShutdownRadios"

    invoke-virtual {v2, v8}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 634
    sget-object v8, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 638
    const-string v8, "ShutdownThread"

    const-string v9, "Shutting down radios..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/16 v8, 0x2ee0

    invoke-direct {v1, v8}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 641
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v8, :cond_1a3

    .line 642
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v9, 0x12

    invoke-direct {v8, v9, v10}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 644
    :cond_1a3
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 645
    sget-object v8, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 647
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v8, :cond_1b9

    .line 648
    sget-object v8, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v9, 0x14

    invoke-direct {v8, v9, v10}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 652
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    .line 655
    :cond_1b9
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 656
    sget-object v8, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 657
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v9, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/server/power/ShutdownThread;->saveMetrics(ZLjava/lang/String;)V

    .line 661
    const-string v8, "ShutdownThread"

    const-string v9, "MountService shut done..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-array v3, v3, [I

    const/16 v8, 0x5a

    const/4 v9, 0x0

    aput v8, v3, v9

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_1fa

    .line 666
    const-string v3, "ShutdownThread"

    const-string v8, "Call setUserComputeBrightnessConfiguration"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v3, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v8, "display"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 668
    .local v3, "dm":Landroid/hardware/display/DisplayManager;
    if-eqz v3, :cond_1f3

    .line 669
    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->setUserComputeBrightnessConfiguration()V

    goto :goto_1fa

    .line 671
    :cond_1f3
    const-string v8, "ShutdownThread"

    const-string v9, "DisplayManager is Null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    .end local v3    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_1fa
    :goto_1fa
    iget-object v3, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v9, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {v3, v8, v9}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 675
    return-void

    .line 592
    .end local v0    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v6    # "am":Landroid/app/IActivityManager;
    .end local v23    # "intent":Landroid/content/Intent;
    .restart local v13    # "intent":Landroid/content/Intent;
    :catchall_204
    move-exception v0

    move-object/from16 v23, v13

    .line 592
    .end local v13    # "intent":Landroid/content/Intent;
    .restart local v23    # "intent":Landroid/content/Intent;
    :goto_207
    :try_start_207
    monitor-exit v6
    :try_end_208
    .catchall {:try_start_207 .. :try_end_208} :catchall_209

    throw v0

    :catchall_209
    move-exception v0

    goto :goto_207
.end method
