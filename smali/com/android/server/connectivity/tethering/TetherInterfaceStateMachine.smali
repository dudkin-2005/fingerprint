.class public Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;,
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;,
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;,
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;,
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;
    }
.end annotation


# static fields
.field private static final BASE_IFACE:I = 0x50064

.field public static final CMD_INTERFACE_DOWN:I = 0x50068

.field public static final CMD_IPV6_TETHER_UPDATE:I = 0x50071

.field public static final CMD_IP_FORWARDING_DISABLE_ERROR:I = 0x5006c

.field public static final CMD_IP_FORWARDING_ENABLE_ERROR:I = 0x5006b

.field public static final CMD_SET_DNS_FORWARDERS_ERROR:I = 0x5006f

.field public static final CMD_START_TETHERING_ERROR:I = 0x5006d

.field public static final CMD_STOP_TETHERING_ERROR:I = 0x5006e

.field public static final CMD_TETHER_CONNECTION_CHANGED:I = 0x50070

.field public static final CMD_TETHER_REQUESTED:I = 0x50066

.field public static final CMD_TETHER_UNREQUESTED:I = 0x50067

.field private static final DBG:Z = false

.field private static final DOUG_ADAMS:B = 0x2at

.field private static final LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

.field private static final TAG:Ljava/lang/String; = "TetherInterfaceSM"

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z = false

.field private static final WIFI_HOST_IFACE_ADDR:Ljava/lang/String; = "192.168.43.1"

.field private static final WIFI_HOST_IFACE_PREFIX_LENGTH:I = 0x18

.field private static final messageClasses:[Ljava/lang/Class;

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

.field private final mIfaceName:Ljava/lang/String;

.field private final mInitialState:Lcom/android/internal/util/State;

.field private final mInterfaceCtrl:Landroid/net/ip/InterfaceController;

.field private mInterfaceParams:Landroid/net/util/InterfaceParams;

.field private final mInterfaceType:I

.field private mLastError:I

.field private mLastIPv6LinkProperties:Landroid/net/LinkProperties;

.field private mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

.field private final mLinkProperties:Landroid/net/LinkProperties;

.field private final mLocalHotspotState:Lcom/android/internal/util/State;

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mNetd:Landroid/net/INetd;

.field private mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

.field private mServingMode:I

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

.field private final mTetheredState:Lcom/android/internal/util/State;

.field private final mUnavailableState:Lcom/android/internal/util/State;

.field private mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    new-instance v0, Landroid/net/IpPrefix;

    const-string v1, "fe80::/64"

    invoke-direct {v0, v1}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->messageClasses:[Ljava/lang/Class;

    .line 82
    sget-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->messageClasses:[Ljava/lang/Class;

    .line 83
    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sMagicDecoderRing:Landroid/util/SparseArray;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/net/util/SharedLog;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Lcom/android/server/connectivity/tethering/IControlsTethering;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 145
    invoke-virtual {p4, p1}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    .line 146
    iput-object p5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    .line 147
    invoke-virtual {p8}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getNetdService()Landroid/net/INetd;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNetd:Landroid/net/INetd;

    .line 148
    iput-object p6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mStatsService:Landroid/net/INetworkStatsService;

    .line 149
    iput-object p7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

    .line 150
    new-instance p2, Landroid/net/ip/InterfaceController;

    iget-object p4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNetd:Landroid/net/INetd;

    iget-object p6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    invoke-direct {p2, p1, p5, p4, p6}, Landroid/net/ip/InterfaceController;-><init>(Ljava/lang/String;Landroid/os/INetworkManagementService;Landroid/net/INetd;Landroid/net/util/SharedLog;)V

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    .line 151
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    .line 152
    iput p3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    .line 153
    new-instance p1, Landroid/net/LinkProperties;

    invoke-direct {p1}, Landroid/net/LinkProperties;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 154
    iput-object p8, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    .line 155
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->resetLinkProperties()V

    .line 156
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    .line 157
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mServingMode:I

    .line 159
    new-instance p1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;

    invoke-direct {p1, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    .line 160
    new-instance p1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;

    invoke-direct {p1, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLocalHotspotState:Lcom/android/internal/util/State;

    .line 161
    new-instance p1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;

    invoke-direct {p1, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    .line 162
    new-instance p1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;

    invoke-direct {p1, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    .line 163
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 164
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLocalHotspotState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 165
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 166
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 168
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendInterfaceState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/State;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->logMessage(Lcom/android/internal/util/State;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->startIPv6()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv6()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv4()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->resetLinkProperties()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendLinkProperties()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/INetworkStatsService;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mStatsService:Landroid/net/INetworkStatsService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLocalHotspotState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->startIPv4()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    return-object p0
.end method

.method private configureIPv4(Z)Z
    .locals 6

    .line 204
    nop

    .line 205
    nop

    .line 206
    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 207
    const-string v0, "192.168.42.129"

    .line 208
    goto :goto_0

    .line 209
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    if-nez v0, :cond_5

    .line 210
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getRandomWifiIPv4Address()Ljava/lang/String;

    move-result-object v0

    .line 211
    nop

    .line 219
    :goto_0
    const/16 v2, 0x18

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v4

    .line 220
    if-nez v4, :cond_1

    .line 221
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string v0, "Received null interface config"

    invoke-virtual {p1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 222
    return v3

    .line 225
    :cond_1
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 226
    new-instance v5, Landroid/net/LinkAddress;

    invoke-direct {v5, v0, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 227
    invoke-virtual {v4, v5}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 228
    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    if-nez v0, :cond_2

    .line 232
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->ignoreInterfaceUpDownStatus()V

    goto :goto_1

    .line 234
    :cond_2
    if-eqz p1, :cond_3

    .line 235
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    goto :goto_1

    .line 237
    :cond_3
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    .line 240
    :goto_1
    const-string/jumbo v0, "running"

    invoke-virtual {v4, v0}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    nop

    .line 248
    new-instance v0, Landroid/net/RouteInfo;

    invoke-direct {v0, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;)V

    .line 249
    if-eqz p1, :cond_4

    .line 250
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v5}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 251
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_2

    .line 253
    :cond_4
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v5}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    .line 254
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    .line 256
    :goto_2
    return v1

    .line 242
    :catch_0
    move-exception p1

    .line 243
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error configuring interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 244
    return v3

    .line 214
    :cond_5
    return v1
.end method

.method private configureLocalIPv6Dns(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/net/Inet6Address;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNetd:Landroid/net/INetd;

    if-nez v0, :cond_1

    .line 395
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 396
    :cond_0
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string p2, "No netd service instance available; not setting local IPv6 addresses"

    invoke-virtual {p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 397
    return-void

    .line 401
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const/16 v1, 0x40

    if-nez v0, :cond_3

    .line 402
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    .line 403
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v2, v0, v1}, Landroid/net/ip/InterfaceController;->removeAddress(Ljava/net/InetAddress;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 404
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove local dns IP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 407
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    .line 408
    goto :goto_0

    .line 412
    :cond_3
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 413
    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    .line 414
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v0, :cond_4

    .line 415
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v0, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 418
    :cond_4
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    .line 419
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v2, v0, v1}, Landroid/net/ip/InterfaceController;->addAddress(Ljava/net/InetAddress;I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 420
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add local dns IP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 424
    :cond_5
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v3, Landroid/net/LinkAddress;

    invoke-direct {v3, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 425
    goto :goto_1

    .line 429
    :cond_6
    :try_start_0
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNetd:Landroid/net/INetd;

    invoke-interface {p1}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    goto :goto_2

    .line 430
    :catch_0
    move-exception p1

    .line 431
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string v0, "Failed to update local DNS caching server"

    invoke-virtual {p1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 432
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 434
    :cond_7
    :goto_2
    return-void
.end method

.method private configureLocalIPv6Routes(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .line 340
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    .line 342
    invoke-static {v0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object p1

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->removeRoutesFromLocalNetwork(Ljava/util/List;)I

    move-result v0

    .line 345
    if-lez v0, :cond_0

    .line 346
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string v2, "Failed to remove %d IPv6 routes from local table."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 347
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 346
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :cond_0
    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove IPv6 routes from local table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 353
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    goto :goto_1

    .line 357
    :cond_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 358
    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    .line 359
    iget-object p2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz p2, :cond_2

    .line 360
    iget-object p2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object p2, p2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 363
    :cond_2
    iget-object p2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object p2, p2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 370
    :cond_3
    sget-object p2, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_4
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 374
    iget-object p2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    .line 375
    invoke-static {p2, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object p1

    .line 381
    :try_start_1
    iget-object p2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Landroid/os/INetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 384
    goto :goto_2

    .line 382
    :catch_1
    move-exception p2

    .line 383
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add IPv6 routes to local table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 386
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/RouteInfo;

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_3

    .line 389
    :cond_5
    return-void
.end method

.method private static getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;
    .locals 6

    .line 772
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    .line 773
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v5

    aput-byte v5, v3, v4

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v5

    aput-byte v5, v3, v2

    const/16 v2, 0x2a

    invoke-static {v2, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getRandomSanitizedByte(B[B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 775
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, v0, v4}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    const-string v0, "TetherInterfaceSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to construct Inet6Address from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return-object v1
.end method

.method private static getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .line 763
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 764
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpPrefix;

    .line 765
    new-instance v2, Landroid/net/RouteInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, p0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    goto :goto_0

    .line 767
    :cond_0
    return-object v0
.end method

.method private static varargs getRandomSanitizedByte(B[B)B
    .locals 4

    .line 783
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-byte v0, v0

    .line 784
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    .line 785
    if-ne v0, v3, :cond_0

    return p0

    .line 784
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 787
    :cond_1
    return v0
.end method

.method private getRandomWifiIPv4Address()Ljava/lang/String;
    .locals 6

    .line 261
    :try_start_0
    const-string v0, "192.168.43.1"

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 262
    const/16 v1, 0x2a

    const/4 v2, 0x3

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v5

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v4}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v5

    aput-byte v5, v3, v4

    const/4 v4, 0x2

    sget-byte v5, Landroid/net/util/NetworkConstants;->FF:B

    aput-byte v5, v3, v4

    invoke-static {v1, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getRandomSanitizedByte(B[B)B

    move-result v1

    aput-byte v1, v0, v2

    .line 263
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    const-string v0, "192.168.43.1"

    return-object v0
.end method

.method private logMessage(Lcom/android/internal/util/State;I)V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method private resetLinkProperties()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 471
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method private sendInterfaceState(I)V
    .locals 2

    .line 458
    iput p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mServingMode:I

    .line 459
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

    iget v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/connectivity/tethering/IControlsTethering;->updateInterfaceState(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V

    .line 461
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendLinkProperties()V

    .line 462
    return-void
.end method

.method private sendLinkProperties()V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/server/connectivity/tethering/IControlsTethering;->updateLinkProperties(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V

    .line 467
    return-void
.end method

.method private setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 439
    invoke-static {v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->getDeprecatedRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    move-result-object v0

    .line 441
    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    .line 442
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    goto :goto_0

    .line 441
    :cond_0
    move-object v3, v2

    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->configureLocalIPv6Routes(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 444
    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    .line 445
    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    nop

    .line 444
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->configureLocalIPv6Dns(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 447
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v1, v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 450
    :cond_2
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 451
    return-void
.end method

.method private startIPv4()Z
    .locals 1

    .line 189
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->configureIPv4(Z)Z

    move-result v0

    return v0
.end method

.method private startIPv6()Z
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getInterfaceParams(Ljava/lang/String;)Landroid/net/util/InterfaceParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    .line 271
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string v2, "Failed to find InterfaceParams"

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv6()V

    .line 274
    return v1

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getRouterAdvertisementDaemon(Landroid/net/util/InterfaceParams;)Landroid/net/ip/RouterAdvertisementDaemon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 278
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->start()Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv6()V

    .line 280
    return v1

    .line 283
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private stopIPv4()V
    .locals 1

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->configureIPv4(Z)Z

    .line 195
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v0}, Landroid/net/ip/InterfaceController;->clearIPv4Address()Z

    .line 196
    return-void
.end method

.method private stopIPv6()V
    .locals 2

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    .line 288
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 290
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->stop()V

    .line 292
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 294
    :cond_0
    return-void
.end method

.method private updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V
    .locals 5

    .line 303
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    return-void

    .line 310
    :cond_1
    const/4 v0, 0x0

    .line 312
    if-eqz p1, :cond_4

    .line 313
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    invoke-direct {v0}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;-><init>()V

    .line 314
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    iput v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    .line 315
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    .line 317
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 318
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    const/16 v4, 0x40

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 320
    :cond_2
    new-instance v3, Landroid/net/IpPrefix;

    .line 321
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    invoke-direct {v3, v4, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 322
    iget-object v2, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;

    move-result-object v2

    .line 325
    if-eqz v2, :cond_3

    .line 326
    iget-object v3, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_3
    goto :goto_0

    .line 333
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    .line 334
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    .line 335
    return-void
.end method


# virtual methods
.method public interfaceName()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public interfaceType()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    return v0
.end method

.method public lastError()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    return v0
.end method

.method public linkProperties()Landroid/net/LinkProperties;
    .locals 2

    .line 179
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public servingMode()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mServingMode:I

    return v0
.end method

.method public stop()V
    .locals 1

    .line 181
    const v0, 0x50068

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    return-void
.end method

.method public unwanted()V
    .locals 1

    .line 183
    const v0, 0x50067

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    return-void
.end method
