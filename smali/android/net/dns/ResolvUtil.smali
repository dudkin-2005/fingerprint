.class public Landroid/net/dns/ResolvUtil;
.super Ljava/lang/Object;
.source "ResolvUtil.java"


# static fields
.field private static final NETID_USE_LOCAL_NAMESERVERS:J = 0x80000000L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockingResolveAllLocally(Landroid/net/Network;Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 47
    sget v0, Landroid/system/OsConstants;->AI_ADDRCONFIG:I

    invoke-static {p0, p1, v0}, Landroid/net/dns/ResolvUtil;->blockingResolveAllLocally(Landroid/net/Network;Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static blockingResolveAllLocally(Landroid/net/Network;Ljava/lang/String;I)[Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 52
    new-instance v0, Landroid/system/StructAddrinfo;

    invoke-direct {v0}, Landroid/system/StructAddrinfo;-><init>()V

    .line 53
    iput p2, v0, Landroid/system/StructAddrinfo;->ai_flags:I

    .line 55
    sget p2, Landroid/system/OsConstants;->AF_UNSPEC:I

    iput p2, v0, Landroid/system/StructAddrinfo;->ai_family:I

    .line 56
    sget p2, Landroid/system/OsConstants;->SOCK_STREAM:I

    iput p2, v0, Landroid/system/StructAddrinfo;->ai_socktype:I

    .line 58
    invoke-static {p0}, Landroid/net/dns/ResolvUtil;->getNetworkWithUseLocalNameserversFlag(Landroid/net/Network;)Landroid/net/Network;

    move-result-object p0

    .line 61
    :try_start_0
    sget-object p2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget p0, p0, Landroid/net/Network;->netId:I

    invoke-interface {p2, p1, v0, p0}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Landroid/system/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": TLS-bypass resolution failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/system/GaiException;->rethrowAsUnknownHostException(Ljava/lang/String;)Ljava/net/UnknownHostException;

    .line 64
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNetworkWithUseLocalNameserversFlag(Landroid/net/Network;)Landroid/net/Network;
    .locals 4

    .line 69
    iget p0, p0, Landroid/net/Network;->netId:I

    int-to-long v0, p0

    const-wide v2, 0x80000000L

    or-long/2addr v0, v2

    .line 70
    new-instance p0, Landroid/net/Network;

    long-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/net/Network;-><init>(I)V

    return-object p0
.end method

.method public static makeNetworkWithPrivateDnsBypass(Landroid/net/Network;)Landroid/net/Network;
    .locals 1

    .line 74
    new-instance v0, Landroid/net/dns/ResolvUtil$1;

    invoke-direct {v0, p0, p0}, Landroid/net/dns/ResolvUtil$1;-><init>(Landroid/net/Network;Landroid/net/Network;)V

    return-object v0
.end method
