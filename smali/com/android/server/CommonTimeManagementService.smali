.class Lcom/android/server/CommonTimeManagementService;
.super Landroid/os/Binder;
.source "CommonTimeManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;
    }
.end annotation


# static fields
.field private static final ALLOW_WIFI:Z

.field private static final ALLOW_WIFI_PROP:Ljava/lang/String; = "ro.common_time.allow_wifi"

.field private static final AUTO_DISABLE:Z

.field private static final AUTO_DISABLE_PROP:Ljava/lang/String; = "ro.common_time.auto_disable"

.field private static final BASE_SERVER_PRIO:B

.field private static final IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

.field private static final NATIVE_SERVICE_RECONNECT_TIMEOUT:I = 0x1388

.field private static final NO_INTERFACE_TIMEOUT:I

.field private static final NO_INTERFACE_TIMEOUT_PROP:Ljava/lang/String; = "ro.common_time.no_iface_timeout"

.field private static final SERVER_PRIO_PROP:Ljava/lang/String; = "ro.common_time.server_prio"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCTConfig:Landroid/os/CommonTimeConfig;

.field private mCTServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

.field private mConnectivityMangerObserver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurIface:Ljava/lang/String;

.field private mDetectedAtStartup:Z

.field private mEffectivePrio:B

.field private mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mLock:Ljava/lang/Object;

.field private mNetMgr:Landroid/os/INetworkManagementService;

.field private mNoInterfaceHandler:Landroid/os/Handler;

.field private mNoInterfaceRunnable:Ljava/lang/Runnable;

.field private mReconnectHandler:Landroid/os/Handler;

.field private mReconnectRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 52
    const-class v0, Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "ro.common_time.auto_disable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/CommonTimeManagementService;->AUTO_DISABLE:Z

    .line 67
    const-string/jumbo v0, "ro.common_time.allow_wifi"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/server/CommonTimeManagementService;->ALLOW_WIFI:Z

    .line 68
    const-string/jumbo v0, "ro.common_time.server_prio"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 69
    const-string/jumbo v3, "ro.common_time.no_iface_timeout"

    const v4, 0xea60

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    .line 71
    if-ge v0, v1, :cond_2

    .line 72
    sput-byte v1, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    goto :goto_2

    .line 74
    :cond_2
    const/16 v3, 0x1e

    if-le v0, v3, :cond_3

    .line 75
    sput-byte v3, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    goto :goto_2

    .line 77
    :cond_3
    int-to-byte v0, v0

    sput-byte v0, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    .line 79
    :goto_2
    sget-boolean v0, Lcom/android/server/CommonTimeManagementService;->ALLOW_WIFI:Z

    const/4 v3, 0x2

    if-eqz v0, :cond_4

    .line 80
    new-array v0, v3, [Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    new-instance v4, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    const-string/jumbo v5, "wlan"

    invoke-direct {v4, v5, v1}, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;-><init>(Ljava/lang/String;B)V

    aput-object v4, v0, v2

    new-instance v2, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    const-string v4, "eth"

    invoke-direct {v2, v4, v3}, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;-><init>(Ljava/lang/String;B)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/CommonTimeManagementService;->IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    goto :goto_3

    .line 85
    :cond_4
    new-array v0, v1, [Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    new-instance v1, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    const-string v4, "eth"

    invoke-direct {v1, v4, v3}, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;-><init>(Ljava/lang/String;B)V

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/CommonTimeManagementService;->IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    .line 89
    :goto_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 143
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/CommonTimeManagementService;->mDetectedAtStartup:Z

    .line 102
    sget-byte v0, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    iput-byte v0, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    .line 107
    new-instance v0, Lcom/android/server/CommonTimeManagementService$1;

    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$1;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    .line 126
    new-instance v0, Lcom/android/server/CommonTimeManagementService$2;

    invoke-direct {v0, p0}, Lcom/android/server/CommonTimeManagementService$2;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mConnectivityMangerObserver:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v0, Lcom/android/server/-$$Lambda$CommonTimeManagementService$2pDf0xdhqutmGymQBZY0XdP5zLg;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$CommonTimeManagementService$2pDf0xdhqutmGymQBZY0XdP5zLg;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    .line 136
    new-instance v0, Lcom/android/server/-$$Lambda$CommonTimeManagementService$o7NVT2DAE8gGyUPocEDzMJMp3rY;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$CommonTimeManagementService$o7NVT2DAE8gGyUPocEDzMJMp3rY;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectRunnable:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/android/server/-$$Lambda$CommonTimeManagementService$G4hdVfmKjXahO1EZQGCi66JNtFI;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$CommonTimeManagementService$G4hdVfmKjXahO1EZQGCi66JNtFI;-><init>(Lcom/android/server/CommonTimeManagementService;)V

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    .line 144
    iput-object p1, p0, Lcom/android/server/CommonTimeManagementService;->mContext:Landroid/content/Context;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/CommonTimeManagementService;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->reevaluateServiceState()V

    return-void
.end method

.method private cleanupTimeConfig()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    invoke-virtual {v0}, Landroid/os/CommonTimeConfig;->release()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    .line 221
    :cond_0
    return-void
.end method

.method private connectToTimeConfig()V
    .locals 4

    .line 227
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->cleanupTimeConfig()V

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :try_start_1
    new-instance v1, Landroid/os/CommonTimeConfig;

    invoke-direct {v1}, Landroid/os/CommonTimeConfig;-><init>()V

    iput-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    .line 231
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mCTServerDiedListener:Landroid/os/CommonTimeConfig$OnServerDiedListener;

    invoke-virtual {v1, v2}, Landroid/os/CommonTimeConfig;->setServerDiedListener(Landroid/os/CommonTimeConfig$OnServerDiedListener;)V

    .line 232
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    invoke-virtual {v1}, Landroid/os/CommonTimeConfig;->getInterfaceBinding()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    sget-boolean v2, Lcom/android/server/CommonTimeManagementService;->AUTO_DISABLE:Z

    invoke-virtual {v1, v2}, Landroid/os/CommonTimeConfig;->setAutoDisable(Z)I

    .line 234
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    iget-byte v2, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    invoke-virtual {v1, v2}, Landroid/os/CommonTimeConfig;->setMasterElectionPriority(B)I

    .line 235
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :try_start_2
    sget v0, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    if-ltz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->reevaluateServiceState()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 244
    goto :goto_0

    .line 235
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    .line 245
    :goto_0
    return-void
.end method

.method private handleNoInterfaceTimeout()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-eqz v0, :cond_0

    .line 257
    sget-object v0, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v1, "Timeout waiting for interface to come up.  Forcing networkless master mode."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v0, -0x7

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    invoke-virtual {v1}, Landroid/os/CommonTimeConfig;->forceNetworklessMasterMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    .line 262
    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/CommonTimeManagementService;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/CommonTimeManagementService;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->connectToTimeConfig()V

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/server/CommonTimeManagementService;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->handleNoInterfaceTimeout()V

    return-void
.end method

.method private reevaluateServiceState()V
    .locals 14

    .line 265
    nop

    .line 266
    nop

    .line 291
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v3

    .line 292
    if-eqz v3, :cond_6

    .line 293
    array-length v4, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v7, v0

    move-object v6, v1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_5

    :try_start_1
    aget-object v8, v3, v5

    .line 295
    nop

    .line 296
    sget-object v9, Lcom/android/server/CommonTimeManagementService;->IFACE_SCORE_RULES:[Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;

    array-length v10, v9

    move v11, v2

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 297
    iget-object v13, v12, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;->mPrefix:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 298
    iget-byte v9, v12, Lcom/android/server/CommonTimeManagementService$InterfaceScoreRule;->mScore:B

    .line 299
    goto :goto_2

    .line 296
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 303
    :cond_1
    move v9, v0

    :goto_2
    if-gt v9, v7, :cond_2

    .line 304
    goto :goto_3

    .line 306
    :cond_2
    iget-object v10, p0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    invoke-interface {v10, v8}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v10

    .line 307
    if-nez v10, :cond_3

    .line 308
    goto :goto_3

    .line 310
    :cond_3
    invoke-virtual {v10}, Landroid/net/InterfaceConfiguration;->isActive()Z

    move-result v10
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v10, :cond_4

    .line 311
    nop

    .line 312
    nop

    .line 293
    move-object v6, v8

    move v7, v9

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    move v0, v7

    goto :goto_5

    .line 323
    :cond_5
    move v0, v7

    goto :goto_4

    :cond_6
    move-object v6, v1

    :goto_4
    goto :goto_6

    .line 317
    :catch_1
    move-exception v3

    .line 322
    :goto_5
    nop

    .line 325
    move-object v6, v1

    .line 326
    :goto_6
    iget-object v3, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 327
    const/4 v4, 0x1

    if-eqz v6, :cond_7

    :try_start_2
    iget-object v5, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 328
    sget-object v1, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v5, "Binding common time service to %s."

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v2

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iput-object v6, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    goto :goto_7

    .line 342
    :catchall_0
    move-exception v0

    goto/16 :goto_b

    .line 331
    :cond_7
    if-nez v6, :cond_8

    iget-object v5, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 332
    sget-object v2, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v5, "Unbinding common time service."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iput-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    goto :goto_7

    .line 335
    :cond_8
    if-eqz v6, :cond_9

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 336
    sget-object v1, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v5, "Switching common time service binding from %s to %s."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    aput-object v8, v7, v2

    aput-object v6, v7, v4

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iput-object v6, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    .line 342
    :goto_7
    move v2, v4

    goto :goto_8

    .line 340
    :cond_9
    nop

    .line 342
    :goto_8
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    if-eqz v2, :cond_d

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-eqz v1, :cond_d

    .line 345
    if-lez v0, :cond_a

    .line 346
    sget-byte v1, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    goto :goto_9

    .line 347
    :cond_a
    sget-byte v0, Lcom/android/server/CommonTimeManagementService;->BASE_SERVER_PRIO:B

    .line 348
    :goto_9
    iget-byte v1, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    if-eq v0, v1, :cond_b

    .line 349
    iput-byte v0, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    .line 350
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    iget-byte v1, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    invoke-virtual {v0, v1}, Landroid/os/CommonTimeConfig;->setMasterElectionPriority(B)I

    .line 353
    :cond_b
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/CommonTimeConfig;->setNetworkBinding(Ljava/lang/String;)I

    move-result v0

    .line 354
    if-eqz v0, :cond_c

    .line 355
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V

    goto :goto_a

    .line 357
    :cond_c
    sget v0, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    if-ltz v0, :cond_d

    .line 358
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 360
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mNoInterfaceRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 363
    :cond_d
    :goto_a
    return-void

    .line 342
    :goto_b
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private scheduleTimeConfigReconnect()V
    .locals 5

    .line 248
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->cleanupTimeConfig()V

    .line 249
    sget-object v0, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v1, "Native service died, will reconnect in %d mSec"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 250
    const/16 v3, 0x1388

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 249
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mReconnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 177
    iget-object p1, p0, Lcom/android/server/CommonTimeManagementService;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 179
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/CommonTimeManagementService;->mDetectedAtStartup:Z

    if-nez p1, :cond_1

    .line 180
    const-string p1, "Native Common Time service was not detected at startup.  Service is unavailable"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    return-void

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/android/server/CommonTimeManagementService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 186
    :try_start_0
    const-string p3, "Current Common Time Management Service Config:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    const-string p3, "  Native service     : %s"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 188
    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mCTConfig:Landroid/os/CommonTimeConfig;

    if-nez v2, :cond_2

    const-string/jumbo v2, "reconnecting"

    goto :goto_0

    .line 189
    :cond_2
    const-string v2, "alive"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 187
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    const-string p3, "  Bound interface    : %s"

    new-array v1, v0, [Ljava/lang/Object;

    .line 191
    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string/jumbo v2, "unbound"

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mCurIface:Ljava/lang/String;

    :goto_1
    aput-object v2, v1, v3

    .line 190
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    const-string p3, "  Allow WiFi         : %s"

    new-array v1, v0, [Ljava/lang/Object;

    sget-boolean v2, Lcom/android/server/CommonTimeManagementService;->ALLOW_WIFI:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "yes"

    goto :goto_2

    :cond_4
    const-string v2, "no"

    :goto_2
    aput-object v2, v1, v3

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    const-string p3, "  Allow Auto Disable : %s"

    new-array v1, v0, [Ljava/lang/Object;

    sget-boolean v2, Lcom/android/server/CommonTimeManagementService;->AUTO_DISABLE:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "yes"

    goto :goto_3

    :cond_5
    const-string v2, "no"

    :goto_3
    aput-object v2, v1, v3

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    const-string p3, "  Server Priority    : %d"

    new-array v1, v0, [Ljava/lang/Object;

    iget-byte v2, p0, Lcom/android/server/CommonTimeManagementService;->mEffectivePrio:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    const-string p3, "  No iface timeout   : %d"

    new-array v0, v0, [Ljava/lang/Object;

    sget v1, Lcom/android/server/CommonTimeManagementService;->NO_INTERFACE_TIMEOUT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    monitor-exit p1

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method systemRunning()V
    .locals 3

    .line 148
    const-string v0, "common_time.config"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    sget-object v0, Lcom/android/server/CommonTimeManagementService;->TAG:Ljava/lang/String;

    const-string v1, "No common time service detected on this platform.  Common time services will be unavailable."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/CommonTimeManagementService;->mDetectedAtStartup:Z

    .line 156
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 157
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService;->mNetMgr:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mIfaceObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    :catch_0
    move-exception v0

    .line 167
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/server/CommonTimeManagementService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/CommonTimeManagementService;->mConnectivityMangerObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    invoke-direct {p0}, Lcom/android/server/CommonTimeManagementService;->connectToTimeConfig()V

    .line 173
    return-void
.end method
