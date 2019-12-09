.class public Landroid/net/ip/IpNeighborMonitor;
.super Landroid/net/util/PacketReader;
.source "IpNeighborMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;,
        Landroid/net/ip/IpNeighborMonitor$NeighborEvent;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false


# instance fields
.field private final mConsumer:Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;

.field private final mLog:Landroid/net/util/SharedLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Landroid/net/ip/IpNeighborMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ip/IpNeighborMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/net/util/SharedLog;Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;)V
    .locals 1

    .line 142
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Landroid/net/util/PacketReader;-><init>(Landroid/os/Handler;I)V

    .line 143
    sget-object p1, Landroid/net/ip/IpNeighborMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object p1

    iput-object p1, p0, Landroid/net/ip/IpNeighborMonitor;->mLog:Landroid/net/util/SharedLog;

    .line 144
    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Landroid/net/ip/-$$Lambda$IpNeighborMonitor$4TdKAwtCtq9Ri1cSdW1mKm0JycM;->INSTANCE:Landroid/net/ip/-$$Lambda$IpNeighborMonitor$4TdKAwtCtq9Ri1cSdW1mKm0JycM;

    :goto_0
    iput-object p3, p0, Landroid/net/ip/IpNeighborMonitor;->mConsumer:Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;

    .line 145
    return-void
.end method

.method private evaluateRtNetlinkNeighborMessage(Landroid/net/netlink/RtNetlinkNeighborMessage;J)V
    .locals 9

    .line 212
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v0

    iget-short v4, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 213
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getNdHeader()Landroid/net/netlink/StructNdMsg;

    move-result-object v0

    .line 214
    if-nez v0, :cond_0

    .line 215
    iget-object p1, p0, Landroid/net/ip/IpNeighborMonitor;->mLog:Landroid/net/util/SharedLog;

    const-string p2, "RtNetlinkNeighborMessage without ND message header!"

    invoke-virtual {p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 216
    return-void

    .line 219
    :cond_0
    iget v5, v0, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    .line 220
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getDestination()Ljava/net/InetAddress;

    move-result-object v6

    .line 222
    const/16 v1, 0x1d

    if-ne v4, v1, :cond_1

    .line 223
    const/4 v0, 0x0

    .line 226
    :goto_0
    move v7, v0

    goto :goto_1

    .line 224
    :cond_1
    iget-short v0, v0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    goto :goto_0

    .line 226
    :goto_1
    new-instance v0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;

    .line 228
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getLinkLayerAddress()[B

    move-result-object p1

    invoke-static {p1}, Landroid/net/ip/IpNeighborMonitor;->getMacAddress([B)Landroid/net/MacAddress;

    move-result-object v8

    move-object v1, v0

    move-wide v2, p2

    invoke-direct/range {v1 .. v8}, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;-><init>(JSILjava/net/InetAddress;SLandroid/net/MacAddress;)V

    .line 237
    iget-object p1, p0, Landroid/net/ip/IpNeighborMonitor;->mConsumer:Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;

    invoke-interface {p1, v0}, Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;->accept(Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V

    .line 238
    return-void
.end method

.method private static getMacAddress([B)Landroid/net/MacAddress;
    .locals 3

    .line 241
    if-eqz p0, :cond_0

    .line 243
    :try_start_0
    invoke-static {p0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    sget-object v0, Landroid/net/ip/IpNeighborMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse link-layer address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$new$0(Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V
    .locals 0

    .line 144
    return-void
.end method

.method private parseNetlinkMessageBuffer(Ljava/nio/ByteBuffer;J)V
    .locals 4

    .line 183
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_5

    .line 184
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 185
    invoke-static {p1}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    invoke-virtual {v1}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v0

    iget v0, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    .line 193
    if-eqz v0, :cond_1

    .line 194
    iget-object p1, p0, Landroid/net/ip/IpNeighborMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "non-kernel source portId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint32(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 195
    goto :goto_2

    .line 198
    :cond_1
    instance-of v0, v1, Landroid/net/netlink/NetlinkErrorMessage;

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Landroid/net/ip/IpNeighborMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netlink error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 200
    goto :goto_0

    .line 201
    :cond_2
    instance-of v0, v1, Landroid/net/netlink/RtNetlinkNeighborMessage;

    if-nez v0, :cond_3

    .line 202
    iget-object v0, p0, Landroid/net/ip/IpNeighborMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "non-rtnetlink neighbor msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 203
    goto :goto_0

    .line 206
    :cond_3
    check-cast v1, Landroid/net/netlink/RtNetlinkNeighborMessage;

    invoke-direct {p0, v1, p2, p3}, Landroid/net/ip/IpNeighborMonitor;->evaluateRtNetlinkNeighborMessage(Landroid/net/netlink/RtNetlinkNeighborMessage;J)V

    .line 207
    goto :goto_0

    .line 187
    :cond_4
    :goto_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 188
    iget-object p2, p0, Landroid/net/ip/IpNeighborMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unparsable netlink msg: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 189
    nop

    .line 208
    :cond_5
    :goto_2
    return-void
.end method

.method public static startKernelNeighborProbe(ILjava/net/InetAddress;)I
    .locals 4

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "probing ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    const/4 v1, 0x1

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, p0, v3}, Landroid/net/netlink/RtNetlinkNeighborMessage;->newNewNeighborMessage(ILjava/net/InetAddress;SI[B)[B

    move-result-object p0

    .line 84
    :try_start_0
    sget p1, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    invoke-static {p1, p0}, Landroid/net/netlink/NetlinkSocket;->sendOneShotKernelMessage(I[B)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    nop

    .line 90
    const/4 p0, 0x0

    return p0

    .line 85
    :catch_0
    move-exception p0

    .line 86
    sget-object p1, Landroid/net/ip/IpNeighborMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    neg-int p0, p0

    return p0
.end method


# virtual methods
.method protected createFd()Ljava/io/FileDescriptor;
    .locals 5

    .line 149
    nop

    .line 152
    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    invoke-static {v1}, Landroid/net/netlink/NetlinkSocket;->forProto(I)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    :try_start_1
    new-instance v2, Landroid/system/NetlinkSocketAddress;

    sget v3, Landroid/system/OsConstants;->RTMGRP_NEIGH:I

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    invoke-static {v1, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 154
    new-instance v2, Landroid/system/NetlinkSocketAddress;

    invoke-direct {v2, v4, v4}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    invoke-static {v1, v2}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    nop

    .line 169
    return-object v1

    .line 163
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 164
    :goto_0
    const-string v3, "Failed to create rtnetlink socket"

    invoke-virtual {p0, v3, v2}, Landroid/net/ip/IpNeighborMonitor;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 165
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 166
    return-object v0
.end method

.method protected handlePacket([BI)V
    .locals 3

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 176
    const/4 v2, 0x0

    invoke-static {p1, v2, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 177
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 179
    invoke-direct {p0, p1, v0, v1}, Landroid/net/ip/IpNeighborMonitor;->parseNetlinkMessageBuffer(Ljava/nio/ByteBuffer;J)V

    .line 180
    return-void
.end method
