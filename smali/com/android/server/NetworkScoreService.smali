.class public Lcom/android/server/NetworkScoreService;
.super Landroid/net/INetworkScoreService$Stub;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkScoreService$ServiceHandler;,
        Lcom/android/server/NetworkScoreService$ScoringServiceConnection;,
        Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;,
        Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;,
        Lcom/android/server/NetworkScoreService$ScanResultsSupplier;,
        Lcom/android/server/NetworkScoreService$WifiInfoSupplier;,
        Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;,
        Lcom/android/server/NetworkScoreService$DispatchingContentObserver;,
        Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;,
        Lcom/android/server/NetworkScoreService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NetworkScoreService"

.field private static final VERBOSE:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLocationModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

.field private mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPackageMonitorLock"
    .end annotation
.end field

.field private final mPackageMonitorLock:Ljava/lang/Object;

.field private final mRecommendationSettingsObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

.field private final mScoreCaches:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mScoreCaches"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/INetworkScoreCache;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mServiceConnProducer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/net/NetworkScorerAppData;",
            "Lcom/android/server/NetworkScoreService$ScoringServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServiceConnectionLock"
    .end annotation
.end field

.field private final mServiceConnectionLock:Ljava/lang/Object;

.field private final mUseOpenWifiPackageObserver:Landroid/database/ContentObserver;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 87
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    .line 88
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "NetworkScoreService"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    nop

    :cond_1
    sput-boolean v1, Lcom/android/server/NetworkScoreService;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 266
    new-instance v0, Lcom/android/server/NetworkScorerAppManager;

    invoke-direct {v0, p1}, Lcom/android/server/NetworkScorerAppManager;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/server/-$$Lambda$QTLvklqCTz22VSzZPEWJs-o0bv4;->INSTANCE:Lcom/android/server/-$$Lambda$QTLvklqCTz22VSzZPEWJs-o0bv4;

    .line 267
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 266
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager;Ljava/util/function/Function;Landroid/os/Looper;)V

    .line 268
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager;Ljava/util/function/Function;Landroid/os/Looper;)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/NetworkScorerAppManager;",
            "Ljava/util/function/Function<",
            "Landroid/net/NetworkScorerAppData;",
            "Lcom/android/server/NetworkScoreService$ScoringServiceConnection;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 273
    invoke-direct {p0}, Landroid/net/INetworkScoreService$Stub;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitorLock:Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/android/server/NetworkScoreService$1;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkScoreService$1;-><init>(Lcom/android/server/NetworkScoreService;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v0, Lcom/android/server/NetworkScoreService$2;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkScoreService$2;-><init>(Lcom/android/server/NetworkScoreService;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    .line 274
    iput-object p1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 275
    iput-object p2, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    .line 276
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    .line 277
    new-instance v3, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v3, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 282
    new-instance p2, Lcom/android/server/NetworkScoreService$ServiceHandler;

    invoke-direct {p2, p0, p4}, Lcom/android/server/NetworkScoreService$ServiceHandler;-><init>(Lcom/android/server/NetworkScoreService;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/NetworkScoreService;->mHandler:Landroid/os/Handler;

    .line 283
    new-instance v3, Landroid/content/IntentFilter;

    const-string p2, "android.location.MODE_CHANGED"

    invoke-direct {v3, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/NetworkScoreService;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 287
    new-instance p2, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    iget-object p4, p0, Lcom/android/server/NetworkScoreService;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p1, p4}, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/NetworkScoreService;->mRecommendationSettingsObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    .line 288
    iput-object p3, p0, Lcom/android/server/NetworkScoreService;->mServiceConnProducer:Ljava/util/function/Function;

    .line 289
    new-instance p1, Lcom/android/server/NetworkScoreService$3;

    iget-object p2, p0, Lcom/android/server/NetworkScoreService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/NetworkScoreService$3;-><init>(Lcom/android/server/NetworkScoreService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/NetworkScoreService;->mUseOpenWifiPackageObserver:Landroid/database/ContentObserver;

    .line 304
    iget-object p1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "use_open_wifi_package"

    .line 305
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/NetworkScoreService;->mUseOpenWifiPackageObserver:Landroid/database/ContentObserver;

    .line 304
    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 309
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    new-instance p2, Lcom/android/server/NetworkScoreService$4;

    invoke-direct {p2, p0}, Lcom/android/server/NetworkScoreService$4;-><init>(Lcom/android/server/NetworkScoreService;)V

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManagerInternal;->setUseOpenWifiAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 321
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 85
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/NetworkScoreService;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->refreshBinding()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/NetworkScoreService;)Lcom/android/server/NetworkScorerAppManager;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/NetworkScoreService;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/NetworkScoreService;Landroid/net/NetworkScorerAppData;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/NetworkScoreService;)Landroid/content/Context;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 85
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->VERBOSE:Z

    return v0
.end method

.method private bindToScoringServiceIfNeeded()V
    .locals 2

    .line 398
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    const-string v1, "bindToScoringServiceIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    .line 400
    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppData;)V

    .line 401
    return-void
.end method

.method private bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppData;)V
    .locals 3

    .line 411
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToScoringServiceIfNeeded("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    if-eqz p1, :cond_3

    .line 413
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 416
    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/NetworkScorerAppData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-nez v1, :cond_2

    .line 422
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnProducer:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    iput-object p1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 426
    :cond_2
    iget-object p1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->bind(Landroid/content/Context;)V

    .line 427
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 429
    :cond_3
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    .line 431
    :goto_0
    return-void
.end method

.method private clearInternal()V
    .locals 2

    .line 814
    new-instance v0, Lcom/android/server/NetworkScoreService$5;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkScoreService$5;-><init>(Lcom/android/server/NetworkScoreService;)V

    .line 825
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getScoreCacheLists()Ljava/util/Collection;

    move-result-object v1

    .line 814
    invoke-direct {p0, v0, v1}, Lcom/android/server/NetworkScoreService;->sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V

    .line 826
    return-void
.end method

.method private enforceSystemOnly()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REQUEST_NETWORK_SCORES"

    const-string v2, "Caller must be granted REQUEST_NETWORK_SCORES."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method private enforceSystemOrHasScoreNetworks()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REQUEST_NETWORK_SCORES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SCORE_NETWORKS"

    .line 745
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 747
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is neither the system process or a network scorer."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_1
    :goto_0
    return-void
.end method

.method private enforceSystemOrIsActiveScorer(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REQUEST_NETWORK_SCORES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScoreService;->isCallerActiveScorer(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 756
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Caller is neither the system process or the active network scorer."

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 759
    :cond_1
    :goto_0
    return-void
.end method

.method private getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;
    .locals 2

    .line 966
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 967
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v1, :cond_0

    .line 968
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 970
    :cond_0
    monitor-exit v0

    .line 971
    const/4 v0, 0x0

    return-object v0

    .line 970
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getScoreCacheLists()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/INetworkScoreCache;",
            ">;>;"
        }
    .end annotation

    .line 942
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v0

    .line 943
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 944
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private refreshBinding()V
    .locals 2

    .line 341
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    const-string/jumbo v1, "refreshBinding()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->updateState()V

    .line 344
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->migrateNetworkScorerAppSettingIfNeeded()V

    .line 345
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->registerPackageMonitorIfNeeded()V

    .line 346
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded()V

    .line 347
    return-void
.end method

.method private registerPackageMonitorIfNeeded()V
    .locals 6

    .line 367
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    const-string/jumbo v1, "registerPackageMonitorIfNeeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    iget-object v4, v4, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 374
    :cond_1
    sget-boolean v2, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v2, :cond_2

    .line 375
    const-string v2, "NetworkScoreService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unregistering package monitor for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    iget-object v5, v5, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_2
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    invoke-virtual {v2}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->unregister()V

    .line 379
    iput-object v3, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 383
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    if-nez v2, :cond_4

    .line 384
    new-instance v2, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 385
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;-><init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;Lcom/android/server/NetworkScoreService$1;)V

    iput-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 387
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 389
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_4

    .line 390
    const-string v0, "NetworkScoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered package monitor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    iget-object v3, v3, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_4
    monitor-exit v1

    .line 395
    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private registerRecommendationSettingsObserver()V
    .locals 3

    .line 350
    const-string v0, "network_recommendations_package"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mRecommendationSettingsObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;->observe(Landroid/net/Uri;I)V

    .line 354
    const-string v0, "network_recommendations_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mRecommendationSettingsObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;->observe(Landroid/net/Uri;I)V

    .line 357
    return-void
.end method

.method private sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/net/INetworkScoreCache;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/INetworkScoreCache;",
            ">;>;)V"
        }
    .end annotation

    .line 949
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 950
    monitor-enter v0

    .line 951
    :try_start_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 953
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    .line 954
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkScoreCache;

    .line 955
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    .line 954
    invoke-interface {p1, v3, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 953
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 958
    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 959
    nop

    .line 960
    monitor-exit v0

    .line 961
    goto :goto_0

    .line 960
    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 962
    :cond_1
    return-void
.end method

.method private unbindFromScoringServiceIfNeeded()V
    .locals 4

    .line 434
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    const-string/jumbo v1, "unbindFromScoringServiceIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->unbind(Landroid/content/Context;)V

    .line 438
    sget-boolean v1, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NetworkScoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 439
    invoke-virtual {v3}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 442
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V

    .line 444
    return-void

    .line 442
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearScores()Z
    .locals 3

    .line 706
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->enforceSystemOrIsActiveScorer(I)V

    .line 707
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 709
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    const/4 v2, 0x1

    .line 712
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 710
    return v2

    .line 712
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public disableScoring()V
    .locals 1

    .line 808
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->enforceSystemOrIsActiveScorer(I)V

    .line 810
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 901
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkScoreService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 902
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 904
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v2}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v2

    .line 905
    if-nez v2, :cond_1

    .line 906
    const-string p1, "Scoring is disabled."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 931
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 907
    return-void

    .line 909
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current scorer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    new-instance v2, Lcom/android/server/NetworkScoreService$6;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/android/server/NetworkScoreService$6;-><init>(Lcom/android/server/NetworkScoreService;Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 920
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getScoreCacheLists()Ljava/util/Collection;

    move-result-object v3

    .line 911
    invoke-direct {p0, v2, v3}, Lcom/android/server/NetworkScoreService;->sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V

    .line 922
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 923
    :try_start_2
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v3, :cond_2

    .line 924
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 926
    :cond_2
    const-string p1, "ScoringServiceConnection: null"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 929
    :try_start_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 931
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 932
    nop

    .line 933
    return-void

    .line 928
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 931
    :catchall_1
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getActiveScorer()Landroid/net/NetworkScorerAppData;
    .locals 2

    .line 784
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOnly()V

    .line 785
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 786
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v1, :cond_0

    .line 787
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 789
    :cond_0
    monitor-exit v0

    .line 791
    const/4 v0, 0x0

    return-object v0

    .line 789
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getActiveScorerPackage()Ljava/lang/String;
    .locals 2

    .line 769
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOrHasScoreNetworks()V

    .line 770
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 771
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getPackageName()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 774
    :cond_0
    monitor-exit v0

    .line 775
    const/4 v0, 0x0

    return-object v0

    .line 774
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllValidScorers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation

    .line 801
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOnly()V

    .line 802
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->getAllValidScorers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isCallerActiveScorer(I)Z
    .locals 2

    .line 730
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 732
    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    move-result-object v1

    iget v1, v1, Landroid/net/NetworkScorerAppData;->packageUid:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    .line 731
    return p1

    .line 733
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method onUserUnlocked(I)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 336
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->refreshBinding()V

    .line 338
    return-void
.end method

.method public registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V
    .locals 6

    .line 832
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOnly()V

    .line 833
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 835
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 836
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    .line 837
    if-nez v3, :cond_0

    .line 838
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 839
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v3, p2, p3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 842
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p2

    if-nez p2, :cond_1

    .line 843
    iget-object p2, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    :cond_1
    const-string p2, "NetworkScoreService"

    const/4 p3, 0x2

    invoke-static {p2, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 846
    const-string p2, "NetworkScoreService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to register NetworkScoreCache for type "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 851
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 852
    nop

    .line 853
    return-void

    .line 849
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 851
    :catchall_1
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public requestScores([Landroid/net/NetworkKey;)Z
    .locals 4

    .line 878
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOnly()V

    .line 879
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 881
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    if-eqz v2, :cond_0

    .line 884
    :try_start_1
    invoke-interface {v2, p1}, Landroid/net/INetworkRecommendationProvider;->requestScores([Landroid/net/NetworkKey;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    const/4 p1, 0x1

    .line 895
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 887
    return p1

    .line 888
    :catch_0
    move-exception p1

    .line 889
    :try_start_2
    const-string v2, "NetworkScoreService"

    const-string v3, "Failed to request scores."

    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 893
    :cond_0
    const/4 p1, 0x0

    .line 895
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 893
    return p1

    .line 895
    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .locals 1

    .line 718
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOrHasScoreNetworks()V

    .line 719
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0, p1}, Lcom/android/server/NetworkScorerAppManager;->setActiveScorer(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method systemReady()V
    .locals 2

    .line 325
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->registerRecommendationSettingsObserver()V

    .line 327
    return-void
.end method

.method systemRunning()V
    .locals 2

    .line 331
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    const-string/jumbo v1, "systemRunning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    return-void
.end method

.method public unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .locals 5

    .line 857
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOnly()V

    .line 858
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 860
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 861
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    .line 862
    if-eqz v3, :cond_1

    invoke-virtual {v3, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 867
    :cond_0
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p2

    if-nez p2, :cond_2

    .line 868
    iget-object p2, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 863
    :cond_1
    :goto_0
    const-string p2, "NetworkScoreService"

    const/4 v3, 0x2

    invoke-static {p2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 864
    const-string p2, "NetworkScoreService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to unregister NetworkScoreCache for type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 872
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 873
    nop

    .line 874
    return-void

    .line 870
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 872
    :catchall_1
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public updateScores([Landroid/net/ScoredNetwork;)Z
    .locals 9

    .line 448
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScoreService;->isCallerActiveScorer(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 453
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 456
    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 457
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, p1, v5

    .line 458
    iget-object v7, v6, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget v7, v7, Landroid/net/NetworkKey;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 459
    if-nez v7, :cond_0

    .line 460
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 461
    iget-object v8, v6, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget v8, v8, Landroid/net/NetworkKey;->type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :cond_0
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 467
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 470
    iget-object v5, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 471
    :try_start_1
    iget-object v6, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RemoteCallbackList;

    .line 472
    if-eqz v6, :cond_4

    .line 473
    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 474
    :cond_3
    move v3, v4

    goto :goto_3

    .line 473
    :cond_4
    :goto_2
    nop

    .line 474
    :goto_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    if-eqz v3, :cond_5

    .line 477
    :try_start_2
    const-string v3, "NetworkScoreService"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 478
    const-string v3, "NetworkScoreService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No scorer registered for type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", discarding"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 484
    :cond_5
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 485
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 486
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 485
    invoke-static {v3, v5, v2}, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->create(Landroid/content/Context;Ljava/util/List;I)Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;

    move-result-object v2

    .line 487
    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/NetworkScoreService;->sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 488
    goto :goto_1

    .line 474
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 490
    :cond_6
    nop

    .line 492
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 490
    return v3

    .line 492
    :catchall_1
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 449
    :cond_7
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller with UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not the active scorer."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
