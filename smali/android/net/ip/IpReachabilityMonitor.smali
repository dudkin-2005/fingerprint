.class public Landroid/net/ip/IpReachabilityMonitor;
.super Ljava/lang/Object;
.source "IpReachabilityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpReachabilityMonitor$Dependencies;,
        Landroid/net/ip/IpReachabilityMonitor$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "IpReachabilityMonitor"

.field private static final VDBG:Z = false


# instance fields
.field private final mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

.field private final mDependencies:Landroid/net/ip/IpReachabilityMonitor$Dependencies;

.field private final mInterfaceParams:Landroid/net/util/InterfaceParams;

.field private final mIpNeighborMonitor:Landroid/net/ip/IpNeighborMonitor;

.field private volatile mLastProbeTimeMs:J

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private final mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

.field private mNeighborWatchList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "Landroid/net/ip/IpNeighborMonitor$NeighborEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/util/InterfaceParams;Landroid/os/Handler;Landroid/net/util/SharedLog;Landroid/net/ip/IpReachabilityMonitor$Callback;Landroid/net/util/MultinetworkPolicyTracker;)V
    .locals 8

    .line 185
    iget-object v0, p2, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/net/ip/IpReachabilityMonitor$Dependencies;->makeDefault(Landroid/content/Context;Ljava/lang/String;)Landroid/net/ip/IpReachabilityMonitor$Dependencies;

    move-result-object v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v7}, Landroid/net/ip/IpReachabilityMonitor;-><init>(Landroid/net/util/InterfaceParams;Landroid/os/Handler;Landroid/net/util/SharedLog;Landroid/net/ip/IpReachabilityMonitor$Callback;Landroid/net/util/MultinetworkPolicyTracker;Landroid/net/ip/IpReachabilityMonitor$Dependencies;)V

    .line 186
    return-void
.end method

.method constructor <init>(Landroid/net/util/InterfaceParams;Landroid/os/Handler;Landroid/net/util/SharedLog;Landroid/net/ip/IpReachabilityMonitor$Callback;Landroid/net/util/MultinetworkPolicyTracker;Landroid/net/ip/IpReachabilityMonitor$Dependencies;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v0}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 177
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    .line 191
    if-eqz p1, :cond_0

    .line 193
    iput-object p1, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    .line 194
    const-string p1, "IpReachabilityMonitor"

    invoke-virtual {p3, p1}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object p1

    iput-object p1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLog:Landroid/net/util/SharedLog;

    .line 195
    iput-object p4, p0, Landroid/net/ip/IpReachabilityMonitor;->mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

    .line 196
    iput-object p5, p0, Landroid/net/ip/IpReachabilityMonitor;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    .line 197
    iput-object p6, p0, Landroid/net/ip/IpReachabilityMonitor;->mDependencies:Landroid/net/ip/IpReachabilityMonitor$Dependencies;

    .line 199
    new-instance p1, Landroid/net/ip/IpNeighborMonitor;

    iget-object p3, p0, Landroid/net/ip/IpReachabilityMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance p4, Landroid/net/ip/-$$Lambda$IpReachabilityMonitor$5Sg30oRgfU2r5ogQj53SRYnnFiQ;

    invoke-direct {p4, p0}, Landroid/net/ip/-$$Lambda$IpReachabilityMonitor$5Sg30oRgfU2r5ogQj53SRYnnFiQ;-><init>(Landroid/net/ip/IpReachabilityMonitor;)V

    invoke-direct {p1, p2, p3, p4}, Landroid/net/ip/IpNeighborMonitor;-><init>(Landroid/os/Handler;Landroid/net/util/SharedLog;Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;)V

    iput-object p1, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpNeighborMonitor:Landroid/net/ip/IpNeighborMonitor;

    .line 213
    iget-object p1, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpNeighborMonitor:Landroid/net/ip/IpNeighborMonitor;

    invoke-virtual {p1}, Landroid/net/ip/IpNeighborMonitor;->start()V

    .line 214
    return-void

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null InterfaceParams"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Landroid/net/ip/IpReachabilityMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Landroid/net/ip/IpReachabilityMonitor;->describeWatchList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private avoidingBadLinks()Z
    .locals 1

    .line 333
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private describeWatchList()Ljava/lang/String;
    .locals 1

    .line 233
    const-string v0, " "

    invoke-direct {p0, v0}, Landroid/net/ip/IpReachabilityMonitor;->describeWatchList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private describeWatchList(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iface{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "},"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ntable=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, ""

    .line 240
    iget-object v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    goto :goto_0

    .line 244
    :cond_0
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getProbeWakeLockDuration()J
    .locals 2

    .line 371
    const-wide/16 v0, 0xdac

    return-wide v0
.end method

.method private handleNeighborLost(Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V
    .locals 6

    .line 295
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 297
    nop

    .line 298
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 302
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;

    iget-short v4, v4, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->nudState:S

    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 305
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 306
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 307
    invoke-virtual {v0, v4}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    .line 309
    :cond_1
    goto :goto_1

    .line 311
    :cond_2
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor;->avoidingBadLinks()Z

    move-result v3

    if-nez v3, :cond_3

    instance-of v3, v2, Ljava/net/Inet6Address;

    if-nez v3, :cond_4

    .line 313
    :cond_3
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->removeDnsServer(Ljava/net/InetAddress;)Z

    .line 315
    :cond_4
    goto :goto_0

    .line 317
    :cond_5
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v1, v0}, Landroid/net/LinkProperties;->compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    .line 320
    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v0, v1, :cond_6

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAILURE: LOST_PROVISIONING, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 322
    const-string v1, "IpReachabilityMonitor"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

    if-eqz v1, :cond_6

    .line 326
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

    invoke-interface {v1, v2, p1}, Landroid/net/ip/IpReachabilityMonitor$Callback;->notifyLost(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 329
    :cond_6
    invoke-direct {p0, v0}, Landroid/net/ip/IpReachabilityMonitor;->logNudFailed(Landroid/net/LinkProperties$ProvisioningChange;)V

    .line 330
    return-void
.end method

.method private static isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;",
            "Ljava/net/InetAddress;",
            ")Z"
        }
    .end annotation

    .line 249
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 250
    invoke-virtual {v0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/RouteInfo;->matches(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const/4 p0, 0x1

    return p0

    .line 253
    :cond_0
    goto :goto_0

    .line 254
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$new$0(Landroid/net/ip/IpReachabilityMonitor;Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V
    .locals 4

    .line 201
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget v0, v0, Landroid/net/util/InterfaceParams;->index:I

    iget v1, p1, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ifindex:I

    if-eq v0, v1, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    iget-object v1, p1, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    iget-object v1, p1, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;

    .line 208
    iget-short v1, p1, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->nudState:S

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 209
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALERT neighbor went from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->w(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, p1}, Landroid/net/ip/IpReachabilityMonitor;->handleNeighborLost(Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V

    .line 212
    :cond_2
    return-void
.end method

.method private logEvent(II)V
    .locals 2

    .line 375
    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    .line 376
    iget-object p2, p0, Landroid/net/ip/IpReachabilityMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget-object v0, v0, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    new-instance v1, Landroid/net/metrics/IpReachabilityEvent;

    invoke-direct {v1, p1}, Landroid/net/metrics/IpReachabilityEvent;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 377
    return-void
.end method

.method private logNudFailed(Landroid/net/LinkProperties$ProvisioningChange;)V
    .locals 4

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mLastProbeTimeMs:J

    sub-long/2addr v0, v2

    .line 381
    invoke-static {}, Landroid/net/ip/IpReachabilityMonitor;->getProbeWakeLockDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    .line 382
    move v0, v2

    goto :goto_0

    .line 381
    :cond_0
    nop

    .line 382
    move v0, v1

    :goto_0
    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne p1, v3, :cond_1

    .line 383
    move v1, v2

    goto :goto_1

    .line 382
    :cond_1
    nop

    .line 383
    :goto_1
    invoke-static {v0, v1}, Landroid/net/metrics/IpReachabilityEvent;->nudFailureEventType(ZZ)I

    move-result p1

    .line 384
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget-object v1, v1, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    new-instance v2, Landroid/net/metrics/IpReachabilityEvent;

    invoke-direct {v2, p1}, Landroid/net/metrics/IpReachabilityEvent;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/net/metrics/IpConnectivityLog;->log(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 385
    return-void
.end method


# virtual methods
.method public clearLinkProperties()V
    .locals 1

    .line 289
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 290
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 292
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 7

    .line 222
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpNeighborMonitor:Landroid/net/ip/IpNeighborMonitor;

    .line 223
    invoke-virtual {v0}, Landroid/net/ip/IpNeighborMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/net/ip/IpReachabilityMonitor$1;

    invoke-direct {v2, p0}, Landroid/net/ip/IpReachabilityMonitor$1;-><init>(Landroid/net/ip/IpReachabilityMonitor;)V

    const-string v4, ""

    .line 222
    const-wide/16 v5, 0x3e8

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 231
    return-void
.end method

.method public probeAll()V
    .locals 7

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 339
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mDependencies:Landroid/net/ip/IpReachabilityMonitor$Dependencies;

    invoke-static {}, Landroid/net/ip/IpReachabilityMonitor;->getProbeWakeLockDuration()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/net/ip/IpReachabilityMonitor$Dependencies;->acquireWakeLock(J)V

    .line 349
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 350
    iget-object v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget v2, v2, Landroid/net/util/InterfaceParams;->index:I

    invoke-static {v2, v1}, Landroid/net/ip/IpNeighborMonitor;->startKernelNeighborProbe(ILjava/net/InetAddress;)I

    move-result v2

    .line 351
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v4, "put neighbor %s into NUD_PROBE state (rval=%d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 352
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    .line 351
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 353
    const/16 v1, 0x100

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpReachabilityMonitor;->logEvent(II)V

    .line 354
    goto :goto_0

    .line 355
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLastProbeTimeMs:J

    .line 356
    return-void
.end method

.method public stop()V
    .locals 1

    .line 217
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpNeighborMonitor:Landroid/net/ip/IpNeighborMonitor;

    invoke-virtual {v0}, Landroid/net/ip/IpNeighborMonitor;->stop()V

    .line 218
    invoke-virtual {p0}, Landroid/net/ip/IpReachabilityMonitor;->clearLinkProperties()V

    .line 219
    return-void
.end method

.method public updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 6

    .line 258
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget-object v0, v0, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    const-string v0, "IpReachabilityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requested LinkProperties interface \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' does not match: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget-object p1, p1, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 265
    :cond_0
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 268
    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    .line 269
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 270
    invoke-virtual {v3}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 271
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    .line 272
    invoke-static {v1, v3}, Landroid/net/ip/IpReachabilityMonitor;->isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 273
    iget-object v5, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_1
    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 279
    invoke-static {v1, v2}, Landroid/net/ip/IpReachabilityMonitor;->isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 280
    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_3
    goto :goto_1

    .line 284
    :cond_4
    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    .line 286
    return-void
.end method
