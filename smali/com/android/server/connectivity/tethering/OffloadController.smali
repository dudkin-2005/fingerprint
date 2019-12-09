.class public Lcom/android/server/connectivity/tethering/OffloadController;
.super Ljava/lang/Object;
.source "OffloadController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;,
        Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;
    }
.end annotation


# static fields
.field private static final ANYIP:Ljava/lang/String; = "0.0.0.0"

.field private static final DBG:Z = false

.field private static final EMPTY_STATS:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfigInitialized:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mControlInitialized:Z

.field private final mDownstreams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field

.field private mExemptPrefixes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

.field private mInterfaceQuotas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastLocalPrefixStrs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Landroid/net/util/SharedLog;

.field private mNatUpdateCallbacksReceived:I

.field private mNatUpdateNetlinkErrors:I

.field private final mNms:Landroid/os/INetworkManagementService;

.field private final mStatsProvider:Landroid/net/ITetheringStatsProvider;

.field private mUpstreamLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/OffloadController;->TAG:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/tethering/OffloadController;->EMPTY_STATS:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;Landroid/content/ContentResolver;Landroid/os/INetworkManagementService;Landroid/net/util/SharedLog;)V
    .locals 4

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mInterfaceQuotas:Ljava/util/HashMap;

    .line 114
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    .line 116
    iput-object p3, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mContentResolver:Landroid/content/ContentResolver;

    .line 117
    iput-object p4, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNms:Landroid/os/INetworkManagementService;

    .line 118
    new-instance p1, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;-><init>(Lcom/android/server/connectivity/tethering/OffloadController;Lcom/android/server/connectivity/tethering/OffloadController$1;)V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mStatsProvider:Landroid/net/ITetheringStatsProvider;

    .line 119
    sget-object p1, Lcom/android/server/connectivity/tethering/OffloadController;->TAG:Ljava/lang/String;

    invoke-virtual {p5, p1}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    .line 120
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mDownstreams:Ljava/util/HashMap;

    .line 121
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mExemptPrefixes:Ljava/util/Set;

    .line 122
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLastLocalPrefixStrs:Ljava/util/Set;

    .line 125
    :try_start_0
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNms:Landroid/os/INetworkManagementService;

    iget-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mStatsProvider:Landroid/net/ITetheringStatsProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/os/INetworkManagementService;->registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_0

    .line 126
    :catch_0
    move-exception p1

    .line 127
    iget-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot register offload stats provider: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/tethering/OffloadController;)Z
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/os/Handler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/tethering/OffloadController;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/tethering/OffloadController;)Ljava/util/HashMap;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mInterfaceQuotas:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/tethering/OffloadController;Ljava/lang/String;)Z
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->maybeUpdateDataLimit(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/net/util/SharedLog;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/tethering/OffloadController;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->updateStatsForAllUpstreams()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/tethering/OffloadController;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->forceTetherStatsPoll()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/tethering/OffloadController;Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->computeAndPushLocalPrefixes(Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/tethering/OffloadController;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->pushAllDownstreamState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/tethering/OffloadController;Ljava/lang/String;)Z
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->pushUpstreamParameters(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/tethering/OffloadController;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->updateStatsForCurrentUpstream()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/tethering/OffloadController;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 71
    invoke-direct/range {p0 .. p5}, Lcom/android/server/connectivity/tethering/OffloadController;->updateNatTimeout(ILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method private computeAndPushLocalPrefixes(Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z
    .locals 3

    .line 503
    sget-object v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->FORCE:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 504
    move p1, v1

    goto :goto_0

    .line 503
    :cond_0
    const/4 p1, 0x0

    .line 504
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mExemptPrefixes:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v0, v2}, Lcom/android/server/connectivity/tethering/OffloadController;->computeLocalPrefixStrings(Ljava/util/Set;Landroid/net/LinkProperties;)Ljava/util/Set;

    move-result-object v0

    .line 506
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLastLocalPrefixStrs:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 508
    :cond_1
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLastLocalPrefixStrs:Ljava/util/Set;

    .line 509
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->setLocalPrefixes(Ljava/util/ArrayList;)Z

    move-result p1

    return p1
.end method

.method private static computeLocalPrefixStrings(Ljava/util/Set;Landroid/net/LinkProperties;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;",
            "Landroid/net/LinkProperties;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 516
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 527
    if-eqz p1, :cond_2

    .line 528
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/LinkAddress;

    .line 529
    invoke-virtual {p1}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    .line 531
    instance-of v1, p1, Ljava/net/Inet6Address;

    if-nez v1, :cond_1

    goto :goto_0

    .line 532
    :cond_1
    new-instance v1, Landroid/net/IpPrefix;

    const/16 v2, 0x80

    invoke-direct {v1, p1, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 533
    goto :goto_0

    .line 536
    :cond_2
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 537
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 538
    :cond_3
    return-object p0
.end method

.method private static connectionTimeoutUpdateSecondsFor(I)I
    .locals 1

    .line 655
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    if-ne p0, v0, :cond_0

    .line 657
    const p0, 0x69780

    return p0

    .line 660
    :cond_0
    const/16 p0, 0xb4

    return p0
.end method

.method private currentUpstreamInterface()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 299
    :goto_0
    return-object v0
.end method

.method private forceTetherStatsPoll()V
    .locals 4

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNms:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mStatsProvider:Landroid/net/ITetheringStatsProvider;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot report data limit reached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 359
    :goto_0
    return-void
.end method

.method private isOffloadDisabled()Z
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->getDefaultTetherOffloadDisabled()I

    move-result v0

    .line 438
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "tether_offload_disabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeUpdateDataLimit(Ljava/lang/String;)Z
    .locals 4

    .line 327
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->currentUpstreamInterface()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mInterfaceQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 332
    if-nez v0, :cond_1

    .line 333
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->setDataLimit(Ljava/lang/String;J)Z

    move-result p1

    return p1

    .line 328
    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private maybeUpdateStats(Ljava/lang/String;)V
    .locals 2

    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->getForwardedStats(Ljava/lang/String;)Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    .line 317
    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->add(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;)V

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    return-void
.end method

.method private static parseIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 1

    .line 623
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 630
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 631
    check-cast p0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 633
    :cond_0
    goto :goto_0

    :catch_0
    move-exception p0

    .line 634
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static protoNameFor(I)Ljava/lang/String;
    .locals 1

    .line 639
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne p0, v0, :cond_0

    .line 640
    const-string p0, "UDP"

    return-object p0

    .line 641
    :cond_0
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    if-ne p0, v0, :cond_1

    .line 642
    const-string p0, "TCP"

    return-object p0

    .line 644
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private pushAllDownstreamState()V
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mDownstreams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 420
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/connectivity/tethering/OffloadController;->pushDownstreamState(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 421
    goto :goto_0

    .line 422
    :cond_0
    return-void
.end method

.method private pushDownstreamState(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .locals 4

    .line 396
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 398
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 399
    :goto_0
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object p2

    .line 402
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 403
    invoke-static {v2}, Lcom/android/server/connectivity/tethering/OffloadController;->shouldIgnoreDownstreamRoute(Landroid/net/RouteInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 404
    :cond_1
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 405
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->removeDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 407
    :cond_2
    goto :goto_1

    .line 410
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 411
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/OffloadController;->shouldIgnoreDownstreamRoute(Landroid/net/RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 412
    :cond_4
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 413
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->addDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 415
    :cond_5
    goto :goto_2

    .line 416
    :cond_6
    return-void
.end method

.method private pushUpstreamParameters(Ljava/lang/String;)Z
    .locals 9

    .line 443
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->currentUpstreamInterface()Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    const-string v1, ""

    const-string v3, "0.0.0.0"

    const-string v4, "0.0.0.0"

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    .line 449
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->maybeUpdateStats(Ljava/lang/String;)V

    .line 450
    return v0

    .line 457
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 458
    nop

    .line 459
    nop

    .line 461
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 462
    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1

    .line 463
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 464
    goto :goto_1

    .line 466
    :cond_1
    goto :goto_0

    .line 469
    :cond_2
    move-object v3, v2

    :goto_1
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 470
    invoke-virtual {v6}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 472
    :cond_3
    invoke-virtual {v6}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 473
    invoke-virtual {v6}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 474
    nop

    .line 478
    move-object v5, v7

    goto :goto_3

    .line 475
    :cond_4
    invoke-virtual {v6}, Landroid/net/RouteInfo;->isIPv6Default()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 476
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_5
    :goto_3
    goto :goto_2

    .line 480
    :cond_6
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    .line 481
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 480
    move-object v1, v2

    :cond_7
    invoke-virtual {v4, v0, v3, v5, v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v1

    .line 483
    if-nez v1, :cond_8

    .line 484
    return v1

    .line 488
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->maybeUpdateStats(Ljava/lang/String;)V

    .line 491
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/OffloadController;->maybeUpdateDataLimit(Ljava/lang/String;)Z

    move-result p1

    .line 492
    if-nez p1, :cond_9

    .line 495
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting data limit for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed, disabling offload."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->stop()V

    .line 499
    :cond_9
    return p1
.end method

.method private static shouldIgnoreDownstreamRoute(Landroid/net/RouteInfo;)Z
    .locals 0

    .line 543
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getDestinationLinkAddress()Landroid/net/LinkAddress;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 545
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private started()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mConfigInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mControlInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateNatTimeout(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 7

    .line 571
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/OffloadController;->protoNameFor(I)Ljava/lang/String;

    move-result-object v0

    .line 572
    if-nez v0, :cond_0

    .line 573
    iget-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown NAT update callback protocol: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 574
    return-void

    .line 577
    :cond_0
    invoke-static {p2}, Lcom/android/server/connectivity/tethering/OffloadController;->parseIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v1

    .line 578
    if-nez v1, :cond_1

    .line 579
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to parse IPv4 address: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 580
    return-void

    .line 583
    :cond_1
    invoke-static {p3}, Landroid/net/util/IpUtils;->isValidUdpOrTcpPort(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 584
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid src port: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 585
    return-void

    .line 588
    :cond_2
    invoke-static {p4}, Lcom/android/server/connectivity/tethering/OffloadController;->parseIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v3

    .line 589
    if-nez v3, :cond_3

    .line 590
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to parse IPv4 address: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 591
    return-void

    .line 594
    :cond_3
    invoke-static {p5}, Landroid/net/util/IpUtils;->isValidUdpOrTcpPort(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 595
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid dst port: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 596
    return-void

    .line 599
    :cond_4
    iget v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateCallbacksReceived:I

    const/4 v6, 0x1

    add-int/2addr v2, v6

    iput v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateCallbacksReceived:I

    .line 600
    const-string v2, "%s (%s, %s) -> (%s, %s)"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object p2, v4, v6

    const/4 p2, 0x2

    .line 601
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p2

    const/4 p2, 0x3

    aput-object p4, v4, p2

    const/4 p2, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v4, p2

    .line 600
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 606
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/OffloadController;->connectionTimeoutUpdateSecondsFor(I)I

    move-result v5

    .line 607
    move v0, p1

    move v2, p3

    move v4, p5

    invoke-static/range {v0 .. v5}, Landroid/net/netlink/ConntrackMessage;->newIPv4TimeoutUpdateRequest(ILjava/net/Inet4Address;ILjava/net/Inet4Address;II)[B

    move-result-object p1

    .line 611
    :try_start_0
    sget p3, Landroid/system/OsConstants;->NETLINK_NETFILTER:I

    invoke-static {p3, p1}, Landroid/net/netlink/NetlinkSocket;->sendOneShotKernelMessage(I[B)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    goto :goto_0

    .line 612
    :catch_0
    move-exception p3

    .line 613
    iget p4, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateNetlinkErrors:I

    add-int/2addr p4, v6

    iput p4, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateNetlinkErrors:I

    .line 614
    iget-object p4, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error updating NAT conntrack entry >"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "<: "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", msg: "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-static {p1}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 614
    invoke-virtual {p4, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 616
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "NAT timeout update callbacks received: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateCallbacksReceived:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 617
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "NAT timeout update netlink errors: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateNetlinkErrors:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 619
    :goto_0
    return-void
.end method

.method private updateStatsForAllUpstreams()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 349
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/tethering/OffloadController;->maybeUpdateStats(Ljava/lang/String;)V

    .line 350
    goto :goto_0

    .line 351
    :cond_0
    return-void
.end method

.method private updateStatsForCurrentUpstream()V
    .locals 1

    .line 340
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->currentUpstreamInterface()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/OffloadController;->maybeUpdateStats(Ljava/lang/String;)V

    .line 341
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4

    .line 549
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->isOffloadDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    const-string v0, "Offload disabled"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 551
    return-void

    .line 553
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offload HALs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string/jumbo v2, "started"

    goto :goto_0

    :cond_1
    const-string v2, "not started"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    .line 556
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 557
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current upstream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exempt prefixes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLastLocalPrefixStrs:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NAT timeout update callbacks received during the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    if-eqz v0, :cond_3

    const-string v2, "current"

    goto :goto_2

    :cond_3
    const-string v2, "last"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " offload session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateCallbacksReceived:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NAT timeout update netlink errors during the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    if-eqz v0, :cond_4

    const-string v0, "current"

    goto :goto_3

    :cond_4
    const-string v0, "last"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " offload session: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateNetlinkErrors:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method public notifyDownstreamLinkProperties(Landroid/net/LinkProperties;)V
    .locals 3

    .line 387
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mDownstreams:Ljava/util/HashMap;

    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    .line 389
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 392
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->pushDownstreamState(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 393
    return-void
.end method

.method public removeDownstreamInterface(Ljava/lang/String;)V
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mDownstreams:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    .line 426
    if-nez v0, :cond_0

    return-void

    .line 428
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 430
    :cond_1
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 431
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/OffloadController;->shouldIgnoreDownstreamRoute(Landroid/net/RouteInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 432
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->removeDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 433
    goto :goto_0

    .line 434
    :cond_3
    return-void
.end method

.method public setLocalPrefixes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .line 380
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mExemptPrefixes:Ljava/util/Set;

    .line 382
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 383
    :cond_0
    sget-object p1, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->IF_NEEDED:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->computeAndPushLocalPrefixes(Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z

    .line 384
    return-void
.end method

.method public setUpstreamLinkProperties(Landroid/net/LinkProperties;)V
    .locals 3

    .line 362
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->currentUpstreamInterface()Ljava/lang/String;

    move-result-object v0

    .line 366
    if-eqz p1, :cond_1

    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    .line 368
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->currentUpstreamInterface()Ljava/lang/String;

    move-result-object p1

    .line 369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/android/server/connectivity/tethering/OffloadController;->EMPTY_STATS:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_2
    sget-object p1, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->IF_NEEDED:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->computeAndPushLocalPrefixes(Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z

    .line 376
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/OffloadController;->pushUpstreamParameters(Ljava/lang/String;)Z

    .line 377
    return-void

    .line 362
    :cond_3
    :goto_1
    return-void
.end method

.method public start()Z
    .locals 4

    .line 132
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->isOffloadDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "tethering offload disabled"

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 136
    return v1

    .line 139
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mConfigInitialized:Z

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->initOffloadConfig()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mConfigInitialized:Z

    .line 141
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mConfigInitialized:Z

    if-nez v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "tethering offload config not supported"

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->stop()V

    .line 144
    return v1

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadController$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/tethering/OffloadController$1;-><init>(Lcom/android/server/connectivity/tethering/OffloadController;)V

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->initOffloadControl(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mControlInitialized:Z

    .line 226
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    .line 227
    if-nez v0, :cond_3

    .line 228
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "tethering offload control not supported"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->stop()V

    goto :goto_0

    .line 231
    :cond_3
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v3, "tethering offload started"

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 232
    iput v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateCallbacksReceived:I

    .line 233
    iput v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateNetlinkErrors:I

    .line 235
    :goto_0
    return v0
.end method

.method public stop()V
    .locals 2

    .line 242
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    .line 243
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->updateStatsForCurrentUpstream()V

    .line 244
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    .line 245
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->stopOffloadControl()V

    .line 246
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mControlInitialized:Z

    .line 247
    iput-boolean v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mConfigInitialized:Z

    .line 248
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v1, "tethering offload stopped"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 249
    :cond_0
    return-void
.end method
