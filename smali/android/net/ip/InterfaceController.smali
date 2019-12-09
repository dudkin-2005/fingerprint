.class public Landroid/net/ip/InterfaceController;
.super Ljava/lang/Object;
.source "InterfaceController.java"


# static fields
.field private static final DBG:Z = false


# instance fields
.field private final mIfName:Ljava/lang/String;

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mNMS:Landroid/os/INetworkManagementService;

.field private final mNetd:Landroid/net/INetd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/INetworkManagementService;Landroid/net/INetd;Landroid/net/util/SharedLog;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Landroid/net/ip/InterfaceController;->mNMS:Landroid/os/INetworkManagementService;

    .line 51
    iput-object p3, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    .line 52
    iput-object p4, p0, Landroid/net/ip/InterfaceController;->mLog:Landroid/net/util/SharedLog;

    .line 53
    return-void
.end method

.method private varargs logError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 160
    iget-object v0, p0, Landroid/net/ip/InterfaceController;->mLog:Landroid/net/util/SharedLog;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 161
    return-void
.end method


# virtual methods
.method public addAddress(Landroid/net/LinkAddress;)Z
    .locals 1

    .line 126
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/net/ip/InterfaceController;->addAddress(Ljava/net/InetAddress;I)Z

    move-result p1

    return p1
.end method

.method public addAddress(Ljava/net/InetAddress;I)Z
    .locals 5

    .line 131
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    nop

    .line 136
    return v0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    const-string v2, "failed to add %s/%d: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const/4 p1, 0x2

    aput-object v1, v3, p1

    invoke-direct {p0, v2, v3}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    return v4
.end method

.method public clearAllAddresses()Z
    .locals 4

    .line 151
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    nop

    .line 156
    return v0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    const-string v2, "Failed to clear addresses: %s"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    return v3
.end method

.method public clearIPv4Address()Z
    .locals 6

    .line 70
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Landroid/net/InterfaceConfiguration;

    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 71
    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "0.0.0.0/0"

    invoke-direct {v2, v3}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 72
    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    nop

    .line 77
    return v0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    const-string v2, "Failed to clear IPv4 address on interface %s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    aput-object v1, v3, v0

    invoke-direct {p0, v2, v3}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    return v5
.end method

.method public disableIPv6()Z
    .locals 4

    .line 92
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    nop

    .line 97
    return v0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    const-string v2, "disabling IPv6 failed: %s"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    return v3
.end method

.method public enableIPv6()Z
    .locals 4

    .line 82
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    nop

    .line 87
    return v0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    const-string v2, "enabling IPv6 failed: %s"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return v3
.end method

.method public removeAddress(Ljava/net/InetAddress;I)Z
    .locals 5

    .line 141
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    nop

    .line 146
    return v0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    const-string v2, "failed to remove %s/%d: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const/4 p1, 0x2

    aput-object v1, v3, p1

    invoke-direct {p0, v2, v3}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    return v4
.end method

.method public setIPv4Address(Landroid/net/LinkAddress;)Z
    .locals 3

    .line 56
    new-instance v0, Landroid/net/InterfaceConfiguration;

    invoke-direct {v0}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 57
    invoke-virtual {v0, p1}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 59
    const/4 p1, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    nop

    .line 65
    return p1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v1, "IPv4 configuration failed: %s"

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    invoke-direct {p0, v1, p1}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return v2
.end method

.method public setIPv6AddrGenModeIfSupported(I)Z
    .locals 4

    .line 112
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/os/INetworkManagementService;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 116
    :catch_0
    move-exception p1

    .line 117
    iget v2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v3, Landroid/system/OsConstants;->EOPNOTSUPP:I

    if-eq v2, v3, :cond_0

    .line 118
    const-string v2, "Unable to set IPv6 addrgen mode: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-direct {p0, v2, v0}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    return v1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 113
    :catch_1
    move-exception p1

    .line 114
    const-string v2, "Unable to set IPv6 addrgen mode: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-direct {p0, v2, v0}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return v1
.end method

.method public setIPv6PrivacyExtensions(Z)Z
    .locals 3

    .line 102
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/os/INetworkManagementService;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    nop

    .line 107
    return v0

    .line 103
    :catch_0
    move-exception p1

    .line 104
    const-string v1, "error setting IPv6 privacy extensions: %s"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-direct {p0, v1, v0}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return v2
.end method
