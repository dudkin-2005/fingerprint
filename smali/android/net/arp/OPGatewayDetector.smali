.class public Landroid/net/arp/OPGatewayDetector;
.super Landroid/net/arp/OPArpPeer;
.source "OPGatewayDetector.java"


# static fields
.field private static final DUP_ARP_COUNT:I = 0x2

.field private static final IO_TIMEOUT:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "arp_OPGatewayDetector"


# instance fields
.field private mNextAvaibleMacIndex:I

.field private mProbeFinished:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Network;Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "callback"    # Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;

    .line 59
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/arp/OPArpPeer;-><init>(Landroid/content/Context;Landroid/net/Network;Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;I)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/arp/OPGatewayDetector;->mNextAvaibleMacIndex:I

    .line 54
    iput-boolean v0, p0, Landroid/net/arp/OPGatewayDetector;->mProbeFinished:Z

    .line 60
    return-void
.end method

.method private hasLeftAvaibleGateway()Z
    .registers 5

    .line 90
    const-string v0, "arp_OPGatewayDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in hasLeftAvaibleGateway the mDupTarget.size ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mNextAvaibleMacIndex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/arp/OPGatewayDetector;->mNextAvaibleMacIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-boolean v0, p0, Landroid/net/arp/OPGatewayDetector;->mProbeFinished:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_42

    .line 92
    iget-object v0, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_41

    iget v0, p0, Landroid/net/arp/OPGatewayDetector;->mNextAvaibleMacIndex:I

    iget-object v3, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_41

    move v1, v2

    nop

    :cond_41
    return v1

    .line 94
    :cond_42
    iget-object v0, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_56

    iget v0, p0, Landroid/net/arp/OPGatewayDetector;->mNextAvaibleMacIndex:I

    iget-object v3, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_56

    move v1, v2

    nop

    :cond_56
    return v1
.end method

.method private restoreGatwawayState()V
    .registers 5

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "mac":[B
    iget-object v1, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    monitor-enter v1

    .line 116
    :try_start_4
    iget-object v2, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    .line 117
    const/4 v2, 0x0

    iput v2, p0, Landroid/net/arp/OPGatewayDetector;->mNextAvaibleMacIndex:I

    .line 118
    iget-object v2, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    iget v3, p0, Landroid/net/arp/OPGatewayDetector;->mNextAvaibleMacIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    .line 120
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_23

    .line 122
    if-eqz v0, :cond_22

    .line 123
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/net/arp/OPGatewayDetector;->updateArpEntry([BS)V

    .line 125
    :cond_22
    return-void

    .line 120
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v2
.end method

.method private tryToRestoreGatewayState()V
    .registers 3

    .line 103
    invoke-virtual {p0}, Landroid/net/arp/OPGatewayDetector;->isOriginalNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 104
    invoke-direct {p0}, Landroid/net/arp/OPGatewayDetector;->restoreGatwawayState()V

    .line 106
    :cond_9
    iget-object v0, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    monitor-enter v0

    .line 107
    const/4 v1, 0x1

    :try_start_d
    iput-boolean v1, p0, Landroid/net/arp/OPGatewayDetector;->mProbeFinished:Z

    .line 108
    monitor-exit v0

    .line 109
    return-void

    .line 108
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_11

    throw v1
.end method

.method private updateArpEntry([BS)V
    .registers 12
    .param p1, "llAddr"    # [B
    .param p2, "newState"    # S

    .line 185
    iget-object v0, p0, Landroid/net/arp/OPGatewayDetector;->mTarget:Ljava/net/Inet4Address;

    iget-object v1, p0, Landroid/net/arp/OPGatewayDetector;->mIface:Ljava/net/NetworkInterface;

    .line 186
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    .line 185
    const/4 v2, 0x1

    invoke-static {v2, v0, p2, v1, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->newNewNeighborMessage(ILjava/net/InetAddress;SI[B)[B

    move-result-object v0

    .line 188
    .local v0, "msg":[B
    sget v1, Landroid/system/OsConstants;->EPROTO:I

    neg-int v1, v1

    .line 190
    .local v1, "errno":I
    const/4 v2, 0x0

    .line 191
    .local v2, "fd":Ljava/io/FileDescriptor;
    const/4 v3, 0x7

    const/4 v4, 0x5

    aput-byte v4, v0, v3

    .line 193
    const-string v3, "arp_OPGatewayDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update IP addr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/net/arp/OPGatewayDetector;->mTarget:Ljava/net/Inet4Address;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/net/arp/OPGatewayDetector;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :try_start_41
    sget v3, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    invoke-static {v3}, Landroid/net/netlink/NetlinkSocket;->forProto(I)Ljava/io/FileDescriptor;

    move-result-object v3

    move-object v2, v3

    .line 201
    invoke-static {v2}, Landroid/net/netlink/NetlinkSocket;->connectToKernel(Ljava/io/FileDescriptor;)V

    .line 202
    const/4 v5, 0x0

    array-length v6, v0

    const-wide/16 v7, 0x12c

    move-object v3, v2

    move-object v4, v0

    invoke-static/range {v3 .. v8}, Landroid/net/netlink/NetlinkSocket;->sendMessage(Ljava/io/FileDescriptor;[BIIJ)I

    .line 203
    const/16 v3, 0x5dc

    const-wide/16 v4, 0x12c

    invoke-static {v2, v3, v4, v5}, Landroid/net/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 206
    .local v3, "bytes":Ljava/nio/ByteBuffer;
    invoke-static {v3}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v4

    .line 207
    .local v4, "response":Landroid/net/netlink/NetlinkMessage;
    if-eqz v4, :cond_96

    instance-of v5, v4, Landroid/net/netlink/NetlinkErrorMessage;

    if-eqz v5, :cond_96

    move-object v5, v4

    check-cast v5, Landroid/net/netlink/NetlinkErrorMessage;

    .line 208
    invoke-virtual {v5}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v5

    if-eqz v5, :cond_96

    .line 209
    move-object v5, v4

    check-cast v5, Landroid/net/netlink/NetlinkErrorMessage;

    invoke-virtual {v5}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v5

    iget v5, v5, Landroid/net/netlink/StructNlMsgErr;->error:I

    move v1, v5

    .line 210
    if-eqz v1, :cond_cd

    .line 214
    const-string v5, "arp_OPGatewayDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Errmsg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    .line 218
    :cond_96
    if-nez v4, :cond_b3

    .line 219
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "raw bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "errmsg":Ljava/lang/String;
    goto :goto_b7

    .line 222
    .end local v5    # "errmsg":Ljava/lang/String;
    :cond_b3
    invoke-virtual {v4}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object v5

    .line 224
    .restart local v5    # "errmsg":Ljava/lang/String;
    :goto_b7
    const-string v6, "arp_OPGatewayDetector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Errmsg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_cd} :catch_d2
    .catchall {:try_start_41 .. :try_end_cd} :catchall_d0

    .line 230
    .end local v3    # "bytes":Ljava/nio/ByteBuffer;
    .end local v4    # "response":Landroid/net/netlink/NetlinkMessage;
    .end local v5    # "errmsg":Ljava/lang/String;
    :cond_cd
    :goto_cd
    if-eqz v2, :cond_e0

    goto :goto_dc

    :catchall_d0
    move-exception v3

    goto :goto_e1

    .line 226
    :catch_d2
    move-exception v3

    .line 227
    .local v3, "e":Ljava/lang/Exception;
    :try_start_d3
    const-string v4, "arp_OPGatewayDetector"

    const-string v5, "Error "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_da
    .catchall {:try_start_d3 .. :try_end_da} :catchall_d0

    .line 230
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_e0

    .line 232
    :goto_dc
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 233
    const/4 v2, 0x0

    .line 236
    :cond_e0
    return-void

    .line 230
    :goto_e1
    if-eqz v2, :cond_e7

    .line 232
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 233
    const/4 v2, 0x0

    :cond_e7
    throw v3
.end method


# virtual methods
.method public fetchGatewayMacFromRoute()[B
    .registers 9

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "macAddress":Ljava/lang/String;
    const/4 v1, 0x0

    .line 131
    .local v1, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 133
    .local v2, "macFromRoute":[B
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/net/arp"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    .line 136
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "line":Ljava/lang/String;
    :goto_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_3b

    .line 139
    const-string v4, "[ ]+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x6

    if-ge v5, v6, :cond_26

    .line 141
    goto :goto_14

    .line 146
    :cond_26
    const/4 v5, 0x0

    aget-object v5, v4, v5

    .line 147
    .local v5, "ip":Ljava/lang/String;
    const/4 v6, 0x3

    aget-object v6, v4, v6

    .line 149
    .local v6, "mac":Ljava/lang/String;
    iget-object v7, p0, Landroid/net/arp/OPGatewayDetector;->mTarget:Ljava/net/Inet4Address;

    invoke-virtual {v7}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 150
    move-object v0, v6

    .line 151
    goto :goto_3b

    .line 153
    .end local v4    # "tokens":[Ljava/lang/String;
    .end local v5    # "ip":Ljava/lang/String;
    .end local v6    # "mac":Ljava/lang/String;
    :cond_3a
    goto :goto_14

    .line 155
    :cond_3b
    :goto_3b
    if-eqz v0, :cond_5e

    .line 156
    invoke-static {v0}, Landroid/net/arp/OPGatewayDetector;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object v2, v4

    .line 157
    invoke-virtual {p0, v2}, Landroid/net/arp/OPGatewayDetector;->isValidPeerMac([B)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 158
    iget-object v4, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    monitor-enter v4
    :try_end_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_4b} :catch_96
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_4b} :catch_88
    .catchall {:try_start_3 .. :try_end_4b} :catchall_86

    .line 159
    :try_start_4b
    iget-object v5, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    invoke-virtual {p0, v5, v2}, Landroid/net/arp/OPGatewayDetector;->isDupTargetArp(Ljava/util/List;[B)I

    move-result v5

    if-gez v5, :cond_58

    .line 160
    iget-object v5, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_58
    monitor-exit v4

    goto :goto_5e

    :catchall_5a
    move-exception v5

    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_4b .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw v5

    .line 164
    :cond_5d
    const/4 v2, 0x0

    .line 167
    :cond_5e
    :goto_5e
    const-string v4, "arp_OPGatewayDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetchGatewayMacFromRoute gatway "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/net/arp/OPGatewayDetector;->mTarget:Ljava/net/Inet4Address;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "  mac "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_7e} :catch_96
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_7e} :catch_88
    .catchall {:try_start_5c .. :try_end_7e} :catchall_86

    .line 174
    .end local v3    # "line":Ljava/lang/String;
    nop

    .line 175
    :try_start_7f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_85

    .line 177
    :catch_83
    move-exception v3

    .line 180
    goto :goto_a4

    .line 179
    :cond_85
    :goto_85
    goto :goto_a4

    .line 173
    :catchall_86
    move-exception v3

    goto :goto_a5

    .line 170
    :catch_88
    move-exception v3

    .line 171
    .local v3, "e":Ljava/io/IOException;
    :try_start_89
    const-string v4, "arp_OPGatewayDetector"

    const-string v5, "Could not read /proc/net/arp to lookup mac address"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_86

    .line 174
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_85

    .line 175
    :try_start_92
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_83

    goto :goto_85

    .line 168
    :catch_96
    move-exception v3

    .line 169
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_97
    const-string v4, "arp_OPGatewayDetector"

    const-string v5, "Could not open /proc/net/arp to lookup mac address"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_97 .. :try_end_9e} :catchall_86

    .line 174
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_85

    .line 175
    :try_start_a0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_83

    goto :goto_85

    .line 181
    :goto_a4
    return-object v2

    .line 173
    :goto_a5
    nop

    .line 174
    if-eqz v1, :cond_ae

    .line 175
    :try_start_a8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_ae

    .line 177
    :catch_ac
    move-exception v4

    nop

    .line 179
    :cond_ae
    :goto_ae
    throw v3
.end method

.method public getMacAccount()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 240
    iget-object v0, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    monitor-enter v0

    .line 241
    :try_start_7
    iget-object v1, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 242
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1

    .line 244
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasDupGateway()Z
    .registers 3

    .line 63
    iget-object v0, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method protected onProbeFinished()V
    .registers 3

    .line 99
    const-string v0, "arp_OPGatewayDetector"

    const-string/jumbo v1, "onProbeFinished in GatewayDetector"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Landroid/net/arp/OPGatewayDetector;->tryToRestoreGatewayState()V

    .line 101
    return-void
.end method

.method public prepareNextAvailbeGateway([B)V
    .registers 8
    .param p1, "secondMac"    # [B

    .line 67
    move-object v0, p1

    .line 68
    .local v0, "mac":[B
    if-nez v0, :cond_4

    .line 69
    return-void

    .line 70
    :cond_4
    if-eqz v0, :cond_3b

    .line 71
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 72
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v1

    .line 73
    .local v1, "netd":Landroid/net/INetd;
    if-eqz v1, :cond_34

    iget-object v2, p0, Landroid/net/arp/OPGatewayDetector;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_34

    .line 75
    :try_start_13
    iget-object v2, p0, Landroid/net/arp/OPGatewayDetector;->mNetwork:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-interface {v1, v2}, Landroid/net/INetd;->resolveFlushCacheForNet(I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_33

    .line 76
    :catch_1b
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "arp_OPGatewayDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resolveFlushCacheForNet:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v1    # "netd":Landroid/net/INetd;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_33
    goto :goto_3b

    .line 80
    .restart local v1    # "netd":Landroid/net/INetd;
    :cond_34
    const-string v2, "arp_OPGatewayDetector"

    const-string v3, "No netd service instance available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v1    # "netd":Landroid/net/INetd;
    :cond_3b
    :goto_3b
    if-eqz v0, :cond_42

    .line 85
    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Landroid/net/arp/OPGatewayDetector;->updateArpEntry([BS)V

    .line 87
    :cond_42
    return-void
.end method
