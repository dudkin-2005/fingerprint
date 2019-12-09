.class public Lcom/android/server/connectivity/Nat464Xlat;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Nat464Xlat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Nat464Xlat$State;
    }
.end annotation


# static fields
.field private static final CLAT_PREFIX:Ljava/lang/String; = "v4-"

.field private static final NETWORK_STATES:[Landroid/net/NetworkInfo$State;

.field private static final NETWORK_TYPES:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBaseIface:Ljava/lang/String;

.field private mIface:Ljava/lang/String;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private mState:Lcom/android/server/connectivity/Nat464Xlat$State;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 44
    const-class v0, Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_TYPES:[I

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_STATES:[Landroid/net/NetworkInfo$State;

    return-void

    :array_20
    .array-data 4
        0x0
        0x1
        0x9
    .end array-data
.end method

.method public constructor <init>(Landroid/os/INetworkManagementService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 4
    .param p1, "nmService"    # Landroid/os/INetworkManagementService;
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 80
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 78
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 81
    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    .line 82
    iput-object p2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 83
    return-void
.end method

.method private enterIdleState()V
    .registers 5

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p0}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_6

    .line 195
    goto :goto_1f

    .line 193
    :catch_6
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unregistering clatd observer on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    .line 198
    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    .line 199
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 200
    return-void
.end method

.method private enterRunningState()V
    .registers 2

    .line 171
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->RUNNING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 172
    return-void
.end method

.method private enterStartingState(Ljava/lang/String;)V
    .registers 6
    .param p1, "baseIface"    # Ljava/lang/String;

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_3e

    .line 155
    nop

    .line 157
    :try_start_6
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->startClatd(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_b} :catch_c

    .line 160
    goto :goto_23

    .line 158
    :catch_c
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error starting clatd on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "v4-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    .line 163
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->STARTING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 164
    return-void

    .line 151
    :catch_3e
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startClat: Can\'t register interface observer for clat on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 153
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method private enterStoppingState()V
    .registers 5

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->stopClatd(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_8

    .line 182
    goto :goto_21

    .line 180
    :catch_8
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error stopping clatd on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_21
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->STOPPING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 185
    return-void
.end method

.method private getLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 285
    .local v0, "config":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 286
    .end local v0    # "config":Landroid/net/InterfaceConfiguration;
    :catch_b
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting link properties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 296
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_6b

    if-eqz p2, :cond_6b

    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_6b

    .line 300
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Nat464Xlat;->getLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v0

    .line 301
    .local v0, "clatAddress":Landroid/net/LinkAddress;
    if-nez v0, :cond_2e

    .line 302
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clatAddress was null for stacked iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void

    .line 306
    :cond_2e
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "interface %s is up, adding stacked link %s on top of %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->enterRunningState()V

    .line 309
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 310
    .local v1, "lp":Landroid/net/LinkProperties;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Nat464Xlat;->makeLinkProperties(Landroid/net/LinkAddress;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 311
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->connService()Lcom/android/server/ConnectivityService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 312
    return-void

    .line 297
    .end local v0    # "clatAddress":Landroid/net/LinkAddress;
    .end local v1    # "lp":Landroid/net/LinkProperties;
    :cond_6b
    :goto_6b
    return-void
.end method

.method private handleInterfaceRemoved(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 319
    return-void

    .line 321
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isRunning()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStopping()Z

    move-result v0

    if-nez v0, :cond_16

    .line 322
    return-void

    .line 325
    :cond_16
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStopping()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 329
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->enterStoppingState()V

    .line 331
    :cond_3b
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->enterIdleState()V

    .line 332
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 333
    .local v0, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->removeStackedLink(Ljava/lang/String;)Z

    .line 334
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->connService()Lcom/android/server/ConnectivityService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 335
    return-void
.end method

.method public static synthetic lambda$interfaceLinkStateChanged$0(Lcom/android/server/connectivity/Nat464Xlat;Ljava/lang/String;Z)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Nat464Xlat;->handleInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$interfaceRemoved$1(Lcom/android/server/connectivity/Nat464Xlat;Ljava/lang/String;)V
    .registers 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 344
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Nat464Xlat;->handleInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method private makeLinkProperties(Landroid/net/LinkAddress;)Landroid/net/LinkProperties;
    .registers 7
    .param p1, "clatAddress"    # Landroid/net/LinkAddress;

    .line 265
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 266
    .local v0, "stacked":Landroid/net/LinkProperties;
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 274
    new-instance v1, Landroid/net/RouteInfo;

    new-instance v2, Landroid/net/LinkAddress;

    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 276
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 277
    .local v1, "ipv4Default":Landroid/net/RouteInfo;
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 278
    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 279
    return-object v0
.end method

.method public static requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 11
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 93
    .local v0, "netType":I
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_TYPES:[I

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    .line 94
    .local v1, "supported":Z
    sget-object v2, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_STATES:[Landroid/net/NetworkInfo$State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 96
    .local v2, "connected":Z
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 97
    invoke-virtual {v3}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v3

    if-eqz v3, :cond_2e

    move v3, v5

    goto :goto_2f

    :cond_2e
    move v3, v4

    .line 102
    .local v3, "hasIPv4Address":Z
    :goto_2f
    const/4 v6, 0x1

    .line 103
    .local v6, "doXlat":Z
    sget-object v7, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Android Xlat enabled is doXlat="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-nez v6, :cond_4f

    .line 108
    sget-object v7, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string v8, "Android Xlat is disabled"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_4f
    if-eqz v1, :cond_63

    if-eqz v2, :cond_63

    if-nez v3, :cond_63

    sget-object v7, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_TYPES:[I

    .line 111
    invoke-static {v7, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    if-eqz v7, :cond_63

    if-nez v0, :cond_61

    if-eqz v6, :cond_63

    .line 110
    :cond_61
    move v4, v5

    goto :goto_64

    .line 111
    :cond_63
    nop

    .line 110
    :goto_64
    return v4
.end method


# virtual methods
.method public fixupLinkProperties(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .registers 7
    .param p1, "oldLp"    # Landroid/net/LinkProperties;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 248
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 249
    return-void

    .line 251
    :cond_7
    if-eqz p2, :cond_54

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_54

    .line 255
    :cond_16
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clatd running, updating NAI for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 257
    .local v1, "stacked":Landroid/net/LinkProperties;
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 258
    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 259
    return-void

    .line 261
    .end local v1    # "stacked":Landroid/net/LinkProperties;
    :cond_52
    goto :goto_36

    .line 262
    :cond_53
    return-void

    .line 252
    :cond_54
    :goto_54
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 339
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$40jKHQd7R0zgcegyEyc9zPHKXVA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$40jKHQd7R0zgcegyEyc9zPHKXVA;-><init>(Lcom/android/server/connectivity/Nat464Xlat;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$PACHOP9HoYvr_jzHtIwFDy31Ud4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$PACHOP9HoYvr_jzHtIwFDy31Ud4;-><init>(Lcom/android/server/connectivity/Nat464Xlat;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    return-void
.end method

.method public isRunning()Z
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->RUNNING:Lcom/android/server/connectivity/Nat464Xlat$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isStarted()Z
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isStarting()Z
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->STARTING:Lcom/android/server/connectivity/Nat464Xlat$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isStopping()Z
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->STOPPING:Lcom/android/server/connectivity/Nat464Xlat$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public start()V
    .registers 5

    .line 206
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 207
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startClat: already started"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void

    .line 211
    :cond_f
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_1e

    .line 212
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startClat: Can\'t start clat with null LinkProperties"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 216
    :cond_1e
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "baseIface":Ljava/lang/String;
    if-nez v0, :cond_31

    .line 218
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startClat: Can\'t start clat on null interface"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void

    .line 222
    :cond_31
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting clatd on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Nat464Xlat;->enterStartingState(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public stop()V
    .registers 4

    .line 230
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 231
    return-void

    .line 233
    :cond_7
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping clatd on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarting()Z

    move-result v0

    .line 236
    .local v0, "wasStarting":Z
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->enterStoppingState()V

    .line 237
    if-eqz v0, :cond_2b

    .line 238
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->enterIdleState()V

    .line 240
    :cond_2b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBaseIface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
