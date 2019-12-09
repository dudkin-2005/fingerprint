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
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z

.field public static sArpNudState:S


# instance fields
.field private final mConsumer:Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;

.field private final mLog:Landroid/net/util/SharedLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    const-class v0, Landroid/net/ip/IpNeighborMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ip/IpNeighborMonitor;->TAG:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    sput-short v0, Landroid/net/ip/IpNeighborMonitor;->sArpNudState:S

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/net/util/SharedLog;Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;)V
    .registers 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "log"    # Landroid/net/util/SharedLog;
    .param p3, "cb"    # Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;

    .line 155
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Landroid/net/util/PacketReader;-><init>(Landroid/os/Handler;I)V

    .line 156
    sget-object v0, Landroid/net/ip/IpNeighborMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpNeighborMonitor;->mLog:Landroid/net/util/SharedLog;

    .line 157
    if-eqz p3, :cond_11

    move-object v0, p3

    goto :goto_13

    :cond_11
    sget-object v0, Landroid/net/ip/-$$Lambda$IpNeighborMonitor$4TdKAwtCtq9Ri1cSdW1mKm0JycM;->INSTANCE:Landroid/net/ip/-$$Lambda$IpNeighborMonitor$4TdKAwtCtq9Ri1cSdW1mKm0JycM;

    :goto_13
    iput-object v0, p0, Landroid/net/ip/IpNeighborMonitor;->mConsumer:Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;

    .line 158
    return-void
.end method

.method private evaluateRtNetlinkNeighborMessage(Landroid/net/netlink/RtNetlinkNeighborMessage;J)V
    .registers 18
    .param p1, "neighMsg"    # Landroid/net/netlink/RtNetlinkNeighborMessage;
    .param p2, "whenMs"    # J

    move-object v0, p0

    .line 225
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v1

    iget-short v1, v1, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 226
    .local v1, "msgType":S
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getNdHeader()Landroid/net/netlink/StructNdMsg;

    move-result-object v10

    .line 227
    .local v10, "ndMsg":Landroid/net/netlink/StructNdMsg;
    if-nez v10, :cond_15

    .line 228
    iget-object v2, v0, Landroid/net/ip/IpNeighborMonitor;->mLog:Landroid/net/util/SharedLog;

    const-string v3, "RtNetlinkNeighborMessage without ND message header!"

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 229
    return-void

    .line 232
    :cond_15
    iget v11, v10, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    .line 233
    .local v11, "ifindex":I
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getDestination()Ljava/net/InetAddress;

    move-result-object v12

    .line 235
    .local v12, "destination":Ljava/net/InetAddress;
    const/16 v2, 0x1d

    if-ne v1, v2, :cond_22

    .line 236
    const/4 v2, 0x0

    .line 237
    :goto_20
    move v8, v2

    goto :goto_25

    :cond_22
    iget-short v2, v10, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    goto :goto_20

    .line 239
    .local v8, "nudState":S
    :goto_25
    new-instance v13, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;

    .line 241
    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getLinkLayerAddress()[B

    move-result-object v2

    invoke-static {v2}, Landroid/net/ip/IpNeighborMonitor;->getMacAddress([B)Landroid/net/MacAddress;

    move-result-object v9

    move-object v2, v13

    move-wide/from16 v3, p2

    move v5, v1

    move v6, v11

    move-object v7, v12

    invoke-direct/range {v2 .. v9}, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;-><init>(JSILjava/net/InetAddress;SLandroid/net/MacAddress;)V

    .line 250
    .local v2, "event":Landroid/net/ip/IpNeighborMonitor$NeighborEvent;
    iget-object v3, v0, Landroid/net/ip/IpNeighborMonitor;->mConsumer:Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;

    invoke-interface {v3, v2}, Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;->accept(Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V

    .line 251
    return-void
.end method

.method private static getMacAddress([B)Landroid/net/MacAddress;
    .registers 5
    .param p0, "linkLayerAddress"    # [B

    .line 254
    if-eqz p0, :cond_22

    .line 256
    :try_start_2
    invoke-static {p0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_6} :catch_7

    return-object v0

    .line 257
    :catch_7
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Landroid/net/ip/IpNeighborMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse link-layer address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$new$0(Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V
    .registers 1
    .param p0, "event"    # Landroid/net/ip/IpNeighborMonitor$NeighborEvent;

    .line 157
    return-void
.end method

.method private parseNetlinkMessageBuffer(Ljava/nio/ByteBuffer;J)V
    .registers 11
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "whenMs"    # J

    .line 196
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_99

    .line 197
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 198
    .local v0, "position":I
    invoke-static {p1}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v1

    .line 199
    .local v1, "nlMsg":Landroid/net/netlink/NetlinkMessage;
    if-eqz v1, :cond_7a

    invoke-virtual {v1}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_7a

    .line 205
    :cond_17
    invoke-virtual {v1}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v2

    iget v2, v2, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    .line 206
    .local v2, "srcPortId":I
    if-eqz v2, :cond_3b

    .line 207
    iget-object v3, p0, Landroid/net/ip/IpNeighborMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "non-kernel source portId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->uint32(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 208
    goto :goto_99

    .line 211
    :cond_3b
    instance-of v3, v1, Landroid/net/netlink/NetlinkErrorMessage;

    if-eqz v3, :cond_57

    .line 212
    iget-object v3, p0, Landroid/net/ip/IpNeighborMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "netlink error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 213
    goto :goto_0

    .line 214
    :cond_57
    instance-of v3, v1, Landroid/net/netlink/RtNetlinkNeighborMessage;

    if-nez v3, :cond_73

    .line 215
    iget-object v3, p0, Landroid/net/ip/IpNeighborMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "non-rtnetlink neighbor msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 216
    goto :goto_0

    .line 219
    :cond_73
    move-object v3, v1

    check-cast v3, Landroid/net/netlink/RtNetlinkNeighborMessage;

    invoke-direct {p0, v3, p2, p3}, Landroid/net/ip/IpNeighborMonitor;->evaluateRtNetlinkNeighborMessage(Landroid/net/netlink/RtNetlinkNeighborMessage;J)V

    .line 220
    .end local v0    # "position":I
    .end local v1    # "nlMsg":Landroid/net/netlink/NetlinkMessage;
    .end local v2    # "srcPortId":I
    goto :goto_0

    .line 200
    .restart local v0    # "position":I
    .restart local v1    # "nlMsg":Landroid/net/netlink/NetlinkMessage;
    :cond_7a
    :goto_7a
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 201
    iget-object v2, p0, Landroid/net/ip/IpNeighborMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unparsable netlink msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 202
    nop

    .line 221
    .end local v0    # "position":I
    .end local v1    # "nlMsg":Landroid/net/netlink/NetlinkMessage;
    :cond_99
    :goto_99
    return-void
.end method

.method public static startKernelNeighborProbe(ILjava/net/InetAddress;)I
    .registers 8
    .param p0, "ifIndex"    # I
    .param p1, "ip"    # Ljava/net/InetAddress;

    .line 82
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

    .line 85
    .local v0, "msgSnippet":Ljava/lang/String;
    const/4 v1, 0x1

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, p0, v3}, Landroid/net/netlink/RtNetlinkNeighborMessage;->newNewNeighborMessage(ILjava/net/InetAddress;SI[B)[B

    move-result-object v1

    .line 88
    .local v1, "msg":[B
    sget-short v2, Landroid/net/ip/IpNeighborMonitor;->sArpNudState:S

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-ne v2, v4, :cond_32

    instance-of v2, p1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_32

    .line 92
    return v3

    .line 97
    :cond_32
    :try_start_32
    sget v2, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    invoke-static {v2, v1}, Landroid/net/netlink/NetlinkSocket;->sendOneShotKernelMessage(I[B)V
    :try_end_37
    .catch Landroid/system/ErrnoException; {:try_start_32 .. :try_end_37} :catch_39

    .line 101
    nop

    .line 103
    return v3

    .line 98
    :catch_39
    move-exception v2

    .line 99
    .local v2, "e":Landroid/system/ErrnoException;
    sget-object v3, Landroid/net/ip/IpNeighborMonitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget v3, v2, Landroid/system/ErrnoException;->errno:I

    neg-int v3, v3

    return v3
.end method


# virtual methods
.method protected createFd()Ljava/io/FileDescriptor;
    .registers 6

    .line 162
    const/4 v0, 0x0

    move-object v1, v0

    .line 165
    .local v1, "fd":Ljava/io/FileDescriptor;
    :try_start_2
    sget v2, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    invoke-static {v2}, Landroid/net/netlink/NetlinkSocket;->forProto(I)Ljava/io/FileDescriptor;

    move-result-object v2

    move-object v1, v2

    .line 166
    new-instance v2, Landroid/system/NetlinkSocketAddress;

    sget v3, Landroid/system/OsConstants;->RTMGRP_NEIGH:I

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    invoke-static {v1, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 167
    new-instance v2, Landroid/system/NetlinkSocketAddress;

    invoke-direct {v2, v4, v4}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    invoke-static {v1, v2}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_1c} :catch_1e
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_1c} :catch_1e

    .line 180
    nop

    .line 182
    return-object v1

    .line 176
    :catch_1e
    move-exception v2

    .line 177
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed to create rtnetlink socket"

    invoke-virtual {p0, v3, v2}, Landroid/net/ip/IpNeighborMonitor;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 178
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 179
    return-object v0
.end method

.method protected handlePacket([BI)V
    .registers 7
    .param p1, "recvbuf"    # [B
    .param p2, "length"    # I

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 189
    .local v0, "whenMs":J
    const/4 v2, 0x0

    invoke-static {p1, v2, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 190
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 192
    invoke-direct {p0, v2, v0, v1}, Landroid/net/ip/IpNeighborMonitor;->parseNetlinkMessageBuffer(Ljava/nio/ByteBuffer;J)V

    .line 193
    return-void
.end method
