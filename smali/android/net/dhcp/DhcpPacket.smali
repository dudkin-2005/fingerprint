.class public abstract Landroid/net/dhcp/DhcpPacket;
.super Ljava/lang/Object;
.source "DhcpPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/DhcpPacket$ParseException;
    }
.end annotation


# static fields
.field protected static final CLIENT_ID_ETHER:B = 0x1t

.field protected static final DHCP_BOOTREPLY:B = 0x2t

.field protected static final DHCP_BOOTREQUEST:B = 0x1t

.field protected static final DHCP_BROADCAST_ADDRESS:B = 0x1ct

.field static final DHCP_CLIENT:S = 0x44s

.field protected static final DHCP_CLIENT_IDENTIFIER:B = 0x3dt

.field protected static final DHCP_DNS_SERVER:B = 0x6t

.field protected static final DHCP_DOMAIN_NAME:B = 0xft

.field protected static final DHCP_HOST_NAME:B = 0xct

.field protected static final DHCP_LEASE_TIME:B = 0x33t

.field private static final DHCP_MAGIC_COOKIE:I = 0x63825363

.field protected static final DHCP_MAX_MESSAGE_SIZE:B = 0x39t

.field protected static final DHCP_MESSAGE:B = 0x38t

.field protected static final DHCP_MESSAGE_TYPE:B = 0x35t

.field protected static final DHCP_MESSAGE_TYPE_ACK:B = 0x5t

.field protected static final DHCP_MESSAGE_TYPE_DECLINE:B = 0x4t

.field protected static final DHCP_MESSAGE_TYPE_DISCOVER:B = 0x1t

.field protected static final DHCP_MESSAGE_TYPE_INFORM:B = 0x8t

.field protected static final DHCP_MESSAGE_TYPE_NAK:B = 0x6t

.field protected static final DHCP_MESSAGE_TYPE_OFFER:B = 0x2t

.field protected static final DHCP_MESSAGE_TYPE_REQUEST:B = 0x3t

.field protected static final DHCP_MTU:B = 0x1at

.field protected static final DHCP_OPTION_END:B = -0x1t

.field protected static final DHCP_OPTION_PAD:B = 0x0t

.field protected static final DHCP_OPTION_RAPID_COMMIT:B = 0x50t

.field protected static final DHCP_PARAMETER_LIST:B = 0x37t

.field protected static final DHCP_REBINDING_TIME:B = 0x3bt

.field protected static final DHCP_RENEWAL_TIME:B = 0x3at

.field protected static final DHCP_REQUESTED_IP:B = 0x32t

.field protected static final DHCP_ROUTER:B = 0x3t

.field static final DHCP_SERVER:S = 0x43s

.field protected static final DHCP_SERVER_IDENTIFIER:B = 0x36t

.field protected static final DHCP_SUBNET_MASK:B = 0x1t

.field protected static final DHCP_VENDOR_CLASS_ID:B = 0x3ct

.field protected static final DHCP_VENDOR_INFO:B = 0x2bt

.field public static final ENCAP_BOOTP:I = 0x2

.field public static final ENCAP_L2:I = 0x0

.field public static final ENCAP_L3:I = 0x1

.field public static final ETHER_BROADCAST:[B

.field public static final HWADDR_LEN:I = 0x10

.field public static final INADDR_ANY:Ljava/net/Inet4Address;

.field public static final INADDR_BROADCAST:Ljava/net/Inet4Address;

.field public static final INFINITE_LEASE:I = -0x1

.field private static final IP_FLAGS_OFFSET:S = 0x4000s

.field private static final IP_TOS_LOWDELAY:B = 0x10t

.field private static final IP_TTL:B = 0x40t

.field private static final IP_TYPE_UDP:B = 0x11t

.field private static final IP_VERSION_HEADER_LEN:B = 0x45t

.field protected static final MAX_LENGTH:I = 0x5dc

.field private static final MAX_MTU:I = 0x5dc

.field public static final MAX_OPTION_LEN:I = 0xff

.field public static final MINIMUM_LEASE:I = 0x3c

.field private static final MIN_MTU:I = 0x500

.field public static final MIN_PACKET_LENGTH_BOOTP:I = 0xec

.field public static final MIN_PACKET_LENGTH_L2:I = 0x116

.field public static final MIN_PACKET_LENGTH_L3:I = 0x108

.field protected static final TAG:Ljava/lang/String; = "DhcpPacket"

.field static testOverrideHostname:Ljava/lang/String;

.field static testOverrideVendorId:Ljava/lang/String;


# instance fields
.field protected mBroadcast:Z

.field protected mBroadcastAddress:Ljava/net/Inet4Address;

.field protected final mClientIp:Ljava/net/Inet4Address;

.field protected final mClientMac:[B

.field protected mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mDomainName:Ljava/lang/String;

.field protected mGateways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected mHostName:Ljava/lang/String;

.field protected mLeaseTime:Ljava/lang/Integer;

.field protected mMaxMessageSize:Ljava/lang/Short;

.field protected mMessage:Ljava/lang/String;

.field protected mMtu:Ljava/lang/Short;

.field private final mNextIp:Ljava/net/Inet4Address;

.field protected mRapidCommit:Z

.field private final mRelayIp:Ljava/net/Inet4Address;

.field protected mRequestedIp:Ljava/net/Inet4Address;

.field protected mRequestedParams:[B

.field protected final mSecs:S

.field protected mServerIdentifier:Ljava/net/Inet4Address;

.field protected mSubnetMask:Ljava/net/Inet4Address;

.field protected mT1:Ljava/lang/Integer;

.field protected mT2:Ljava/lang/Integer;

.field protected final mTransId:I

.field protected mVendorId:Ljava/lang/String;

.field protected mVendorInfo:Ljava/lang/String;

.field protected final mYourIp:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 42
    sget-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    .line 321
    const/4 v0, 0x0

    sput-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    .line 322
    sput-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideHostname:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method protected constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V
    .locals 10

    .line 341
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZZ)V

    .line 343
    return-void
.end method

.method protected constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZZ)V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput p1, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    .line 328
    iput-short p2, p0, Landroid/net/dhcp/DhcpPacket;->mSecs:S

    .line 329
    iput-object p3, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    .line 330
    iput-object p4, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    .line 331
    iput-object p5, p0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    .line 332
    iput-object p6, p0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    .line 333
    iput-object p7, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    .line 334
    iput-boolean p8, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    .line 335
    iput-boolean p9, p0, Landroid/net/dhcp/DhcpPacket;->mRapidCommit:Z

    .line 336
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;B)V
    .locals 0

    .line 545
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 546
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 547
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BB)V
    .locals 0

    .line 553
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 554
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 555
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 556
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V
    .locals 0

    .line 617
    if-eqz p2, :cond_0

    .line 618
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 619
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 620
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 622
    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V
    .locals 0

    .line 606
    if-eqz p2, :cond_0

    .line 607
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 608
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 609
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 611
    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V
    .locals 1

    .line 629
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    nop

    .line 633
    return-void

    .line 630
    :catch_0
    move-exception p0

    .line 631
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "String is not US-ASCII: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V
    .locals 0

    .line 577
    if-eqz p2, :cond_0

    .line 578
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 580
    :cond_0
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "B",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;)V"
        }
    .end annotation

    .line 586
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 588
    :cond_0
    const/4 v0, 0x4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v0, v1

    .line 589
    const/16 v1, 0xff

    if-gt v0, v1, :cond_2

    .line 594
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 595
    int-to-byte p1, v0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 597
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/net/Inet4Address;

    .line 598
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 599
    goto :goto_0

    .line 600
    :cond_1
    return-void

    .line 590
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DHCP option too long: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " vs. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 586
    :cond_3
    :goto_1
    return-void
.end method

.method protected static addTlv(Ljava/nio/ByteBuffer;B[B)V
    .locals 2

    .line 562
    if-eqz p2, :cond_1

    .line 563
    array-length v0, p2

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 567
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 568
    array-length p1, p2

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 569
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 564
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DHCP option too long: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " vs. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 571
    :cond_1
    :goto_0
    return-void
.end method

.method protected static addTlvEnd(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 639
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 640
    return-void
.end method

.method public static buildAckPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .line 1243
    new-instance v8, Landroid/net/dhcp/DhcpAckPacket;

    sget-object v5, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v2, 0x0

    move-object v0, v8

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1245
    move-object/from16 v0, p9

    iput-object v0, v8, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    .line 1246
    move-object/from16 v0, p10

    iput-object v0, v8, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    .line 1247
    move-object v0, p6

    iput-object v0, v8, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 1248
    move-object/from16 v0, p12

    iput-object v0, v8, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    .line 1249
    move-object/from16 v0, p7

    iput-object v0, v8, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    .line 1250
    move-object/from16 v0, p11

    iput-object v0, v8, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1251
    move-object/from16 v0, p8

    iput-object v0, v8, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1252
    const/16 v0, 0x44

    const/16 v1, 0x43

    move v2, p0

    invoke-virtual {v8, v2, v0, v1}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static buildDiscoverPacket(IIS[BZ[B)Ljava/nio/ByteBuffer;
    .locals 7

    .line 1202
    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Landroid/net/dhcp/DhcpPacket;->buildDiscoverPacket(IIS[BZ[BZ)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static buildDiscoverPacket(IIS[BZ[BZ)Ljava/nio/ByteBuffer;
    .locals 7

    .line 1208
    new-instance v6, Landroid/net/dhcp/DhcpDiscoverPacket;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZZ)V

    .line 1210
    iput-object p5, v6, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    .line 1211
    const/16 p1, 0x43

    const/16 p2, 0x44

    invoke-virtual {v6, p0, p1, p2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static buildNakPacket(IILjava/net/Inet4Address;Ljava/net/Inet4Address;[B)Ljava/nio/ByteBuffer;
    .locals 9

    .line 1260
    new-instance v8, Landroid/net/dhcp/DhcpNakPacket;

    const/4 v2, 0x0

    move-object v0, v8

    move v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p2

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1262
    const-string/jumbo p1, "requested address not available"

    iput-object p1, v8, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    .line 1263
    iput-object p3, v8, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    .line 1264
    const/16 p1, 0x44

    const/16 p2, 0x43

    invoke-virtual {v8, p0, p1, p2}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static buildOfferPacket(IIZLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/Integer;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/util/List;Ljava/util/List;Ljava/net/Inet4Address;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "[B",
            "Ljava/lang/Integer;",
            "Ljava/net/Inet4Address;",
            "Ljava/net/Inet4Address;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .line 1223
    new-instance v8, Landroid/net/dhcp/DhcpOfferPacket;

    sget-object v5, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v2, 0x0

    move-object v0, v8

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1225
    move-object/from16 v0, p9

    iput-object v0, v8, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    .line 1226
    move-object/from16 v0, p10

    iput-object v0, v8, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    .line 1227
    move-object v0, p6

    iput-object v0, v8, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 1228
    move-object/from16 v0, p12

    iput-object v0, v8, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    .line 1229
    move-object/from16 v0, p11

    iput-object v0, v8, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1230
    move-object/from16 v0, p7

    iput-object v0, v8, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    .line 1231
    move-object/from16 v0, p8

    iput-object v0, v8, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1232
    const/16 v0, 0x44

    const/16 v1, 0x43

    move v2, p0

    invoke-virtual {v8, v2, v0, v1}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static buildRequestPacket(IISLjava/net/Inet4Address;Z[BLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 7

    .line 1274
    new-instance v6, Landroid/net/dhcp/DhcpRequestPacket;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    .line 1276
    move-object v0, p6

    iput-object v0, v6, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    .line 1277
    move-object v0, p7

    iput-object v0, v6, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1278
    move-object/from16 v0, p9

    iput-object v0, v6, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    .line 1279
    move-object v0, p8

    iput-object v0, v6, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    .line 1280
    const/16 v0, 0x43

    const/16 v1, 0x44

    move v2, p0

    invoke-virtual {v6, v2, v0, v1}, Landroid/net/dhcp/DhcpPacket;->buildPacket(ISS)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1281
    return-object v0
.end method

.method private checksum(Ljava/nio/ByteBuffer;III)I
    .locals 4

    .line 503
    nop

    .line 504
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 508
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 509
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 512
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 514
    sub-int v0, p4, p3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    .line 515
    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 517
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-short v3, v0, v2

    .line 518
    invoke-static {v3}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v3

    add-int/2addr p2, v3

    .line 517
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    :cond_0
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    .line 524
    if-eq p4, p3, :cond_2

    .line 525
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    int-to-short p1, p1

    .line 528
    if-gez p1, :cond_1

    .line 529
    add-int/lit16 p1, p1, 0x100

    int-to-short p1, p1

    .line 532
    :cond_1
    mul-int/lit16 p1, p1, 0x100

    add-int/2addr p2, p1

    .line 535
    :cond_2
    shr-int/lit8 p1, p2, 0x10

    const p3, 0xffff

    and-int/2addr p1, p3

    and-int/2addr p2, p3

    add-int/2addr p1, p2

    .line 536
    shr-int/lit8 p2, p1, 0x10

    and-int/2addr p2, p3

    add-int/2addr p1, p2

    and-int/2addr p1, p3

    .line 537
    not-int p1, p1

    .line 538
    int-to-short p1, p1

    invoke-static {p1}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result p1

    return p1
.end method

.method static decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;
    .locals 38
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/dhcp/DhcpPacket$ParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 769
    move/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 770
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 771
    nop

    .line 772
    nop

    .line 773
    nop

    .line 774
    nop

    .line 775
    nop

    .line 776
    nop

    .line 777
    nop

    .line 778
    nop

    .line 779
    nop

    .line 780
    nop

    .line 781
    nop

    .line 782
    nop

    .line 788
    nop

    .line 789
    nop

    .line 790
    nop

    .line 791
    nop

    .line 792
    nop

    .line 795
    nop

    .line 797
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 800
    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_2

    .line 801
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    const/16 v9, 0x116

    if-lt v8, v9, :cond_1

    .line 806
    new-array v8, v4, [B

    .line 807
    new-array v9, v4, [B

    .line 809
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 810
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 812
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 814
    sget v9, Landroid/system/OsConstants;->ETH_P_IP:I

    if-ne v8, v9, :cond_0

    goto :goto_0

    .line 815
    :cond_0
    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v1, Landroid/net/metrics/DhcpErrorEvent;->L2_WRONG_ETH_TYPE:I

    new-array v2, v5, [Ljava/lang/Object;

    .line 816
    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v7

    sget v3, Landroid/system/OsConstants;->ETH_P_IP:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "Unexpected L2 type 0x%04x, expected 0x%04x"

    invoke-direct {v0, v1, v3, v2}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 802
    :cond_1
    new-instance v1, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v2, Landroid/net/metrics/DhcpErrorEvent;->L2_TOO_SHORT:I

    new-array v3, v5, [Ljava/lang/Object;

    .line 803
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const-string v0, "L2 packet too short, %d < %d"

    invoke-direct {v1, v2, v0, v3}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 820
    :cond_2
    :goto_0
    const/16 v8, 0xf

    const/4 v9, 0x4

    const/4 v10, 0x0

    if-gt v1, v6, :cond_8

    .line 821
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    const/16 v12, 0x108

    if-lt v11, v12, :cond_7

    .line 826
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    .line 827
    and-int/lit16 v12, v11, 0xf0

    shr-int/2addr v12, v9

    .line 828
    if-ne v12, v9, :cond_6

    .line 834
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 835
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 836
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 837
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 838
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 839
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 840
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    .line 841
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 843
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v13

    .line 844
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    .line 846
    const/16 v14, 0x11

    if-ne v12, v14, :cond_5

    .line 854
    and-int/2addr v11, v8

    add-int/lit8 v11, v11, -0x5

    .line 855
    move v12, v7

    :goto_1
    if-ge v12, v11, :cond_3

    .line 856
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 855
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 860
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    .line 861
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    .line 862
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 863
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 868
    invoke-static {v11, v12}, Landroid/net/dhcp/DhcpPacket;->isPacketToOrFromClient(SS)Z

    move-result v14

    if-nez v14, :cond_9

    .line 869
    invoke-static {v11, v12}, Landroid/net/dhcp/DhcpPacket;->isPacketServerToServer(SS)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_2

    .line 874
    :cond_4
    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v1, Landroid/net/metrics/DhcpErrorEvent;->L4_WRONG_PORT:I

    new-array v2, v5, [Ljava/lang/Object;

    .line 875
    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "Unexpected UDP ports %d->%d"

    invoke-direct {v0, v1, v3, v2}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 847
    :cond_5
    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v1, Landroid/net/metrics/DhcpErrorEvent;->L4_NOT_UDP:I

    new-array v2, v6, [Ljava/lang/Object;

    .line 848
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Protocol not UDP: %d"

    invoke-direct {v0, v1, v3, v2}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 829
    :cond_6
    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v1, Landroid/net/metrics/DhcpErrorEvent;->L3_NOT_IPV4:I

    new-array v2, v6, [Ljava/lang/Object;

    .line 830
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Invalid IP version %d"

    invoke-direct {v0, v1, v3, v2}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 822
    :cond_7
    new-instance v1, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v2, Landroid/net/metrics/DhcpErrorEvent;->L3_TOO_SHORT:I

    new-array v3, v5, [Ljava/lang/Object;

    .line 823
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const-string v0, "L3 packet too short, %d < %d"

    invoke-direct {v1, v2, v0, v3}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 880
    :cond_8
    move-object v13, v10

    :cond_9
    :goto_2
    const/16 v11, 0xec

    if-gt v1, v5, :cond_1e

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v11, :cond_1e

    .line 886
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 887
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 888
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 889
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 890
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    .line 891
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    .line 892
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    .line 893
    const v14, 0x8000

    and-int/2addr v12, v14

    if-eqz v12, :cond_a

    .line 894
    move v12, v6

    goto :goto_3

    .line 893
    :cond_a
    nop

    .line 894
    move v12, v7

    :goto_3
    new-array v14, v9, [B

    .line 897
    :try_start_0
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 898
    invoke-static {v14}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v16

    move-object/from16 v17, v16

    check-cast v17, Ljava/net/Inet4Address;

    .line 899
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 900
    invoke-static {v14}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v16

    move-object/from16 v18, v16

    check-cast v18, Ljava/net/Inet4Address;

    .line 901
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 902
    invoke-static {v14}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v16

    move-object/from16 v19, v16

    check-cast v19, Ljava/net/Inet4Address;

    .line 903
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 904
    invoke-static {v14}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v16

    move-object/from16 v20, v16

    check-cast v20, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    .line 908
    nop

    .line 916
    const/16 v14, 0x10

    if-le v1, v14, :cond_b

    .line 917
    sget-object v1, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    array-length v1, v1

    .line 920
    :cond_b
    new-array v5, v1, [B

    .line 921
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 924
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    sub-int/2addr v14, v1

    add-int v16, v16, v14

    add-int/lit8 v1, v16, 0x40

    add-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 929
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v9, :cond_1d

    .line 933
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 934
    const v14, 0x63825363

    if-ne v1, v14, :cond_1c

    .line 941
    nop

    .line 943
    const/4 v1, -0x1

    move v14, v1

    move-object/from16 v22, v10

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move v10, v6

    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    if-ge v9, v7, :cond_19

    if-eqz v10, :cond_19

    .line 944
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 946
    if-ne v7, v1, :cond_c

    .line 947
    nop

    .line 1057
    const/4 v10, 0x0

    goto/16 :goto_c

    .line 948
    :cond_c
    if-nez v7, :cond_d

    goto/16 :goto_c

    .line 951
    :cond_d
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    .line 952
    nop

    .line 954
    const/4 v1, 0x3

    if-eq v7, v6, :cond_16

    if-eq v7, v1, :cond_15

    if-eq v7, v4, :cond_14

    const/16 v4, 0xc

    if-eq v7, v4, :cond_13

    if-eq v7, v8, :cond_12

    const/16 v4, 0x1a

    if-eq v7, v4, :cond_11

    const/16 v4, 0x1c

    if-eq v7, v4, :cond_10

    const/16 v4, 0x2b

    if-eq v7, v4, :cond_f

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    .line 1039
    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_5
    if-ge v4, v9, :cond_e

    .line 1040
    add-int/lit8 v16, v16, 0x1

    .line 1041
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 1039
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1045
    :cond_e
    move/from16 v4, v16

    goto/16 :goto_b

    .line 1028
    :pswitch_0
    new-array v4, v9, [B

    .line 1029
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1030
    nop

    .line 1031
    goto/16 :goto_7

    .line 1023
    :pswitch_1
    nop

    .line 1025
    invoke-static {v0, v9, v6}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v35

    .line 1026
    goto/16 :goto_7

    .line 1019
    :pswitch_2
    nop

    .line 1020
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    .line 1021
    goto/16 :goto_a

    .line 1015
    :pswitch_3
    nop

    .line 1016
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    .line 1017
    goto/16 :goto_a

    .line 1011
    :pswitch_4
    nop

    .line 1012
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v32

    .line 1013
    goto :goto_6

    .line 1007
    :pswitch_5
    nop

    .line 1008
    const/4 v4, 0x0

    invoke-static {v0, v9, v4}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v26

    .line 1009
    goto :goto_7

    .line 1002
    :pswitch_6
    new-array v4, v9, [B

    .line 1003
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1004
    nop

    .line 1005
    nop

    .line 1045
    move-object/from16 v29, v4

    goto :goto_7

    .line 998
    :pswitch_7
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v30

    .line 999
    nop

    .line 1000
    goto :goto_a

    .line 994
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    .line 995
    nop

    .line 996
    nop

    .line 1045
    move v4, v6

    goto :goto_b

    .line 990
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 991
    nop

    .line 992
    goto :goto_a

    .line 986
    :pswitch_a
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v28

    .line 987
    nop

    .line 988
    goto :goto_a

    .line 1033
    :cond_f
    nop

    .line 1035
    invoke-static {v0, v9, v6}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v36

    .line 1036
    goto :goto_7

    .line 982
    :cond_10
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v22

    .line 983
    nop

    .line 984
    goto :goto_a

    .line 974
    :cond_11
    nop

    .line 975
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v27

    .line 976
    nop

    .line 1045
    :goto_6
    const/4 v4, 0x2

    goto :goto_b

    .line 978
    :cond_12
    nop

    .line 979
    const/4 v4, 0x0

    invoke-static {v0, v9, v4}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v23

    .line 980
    goto :goto_7

    .line 970
    :cond_13
    const/4 v4, 0x0

    .line 971
    invoke-static {v0, v9, v4}, Landroid/net/dhcp/DhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v24

    .line 972
    nop

    .line 1045
    :goto_7
    move v4, v9

    goto :goto_b

    .line 965
    :cond_14
    const/4 v4, 0x0

    :goto_8
    if-ge v4, v9, :cond_17

    .line 966
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    add-int/lit8 v4, v4, 0x4

    const/16 v8, 0xf

    goto :goto_8

    .line 960
    :cond_15
    const/4 v4, 0x0

    :goto_9
    if-ge v4, v9, :cond_17

    .line 961
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    add-int/lit8 v4, v4, 0x4

    goto :goto_9

    .line 956
    :cond_16
    invoke-static/range {p0 .. p0}, Landroid/net/dhcp/DhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v31

    .line 957
    nop

    .line 958
    nop

    .line 1045
    :goto_a
    const/4 v4, 0x4

    :cond_17
    :goto_b
    if-ne v4, v9, :cond_18

    .line 1057
    :goto_c
    nop

    .line 1058
    nop

    .line 943
    const/4 v1, -0x1

    const/4 v4, 0x6

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x4

    goto/16 :goto_4

    .line 1046
    :cond_18
    sget v0, Landroid/net/metrics/DhcpErrorEvent;->DHCP_INVALID_OPTION_LENGTH:I

    invoke-static {v0, v7}, Landroid/net/metrics/DhcpErrorEvent;->errorCodeWithOption(II)I

    move-result v0

    .line 1048
    new-instance v2, Landroid/net/dhcp/DhcpPacket$ParseException;

    const-string v3, "Invalid length %d for option %d, expected %d"

    new-array v1, v1, [Ljava/lang/Object;

    .line 1050
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v1, v8

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    invoke-direct {v2, v0, v3, v1}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v2
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1053
    :catch_0
    move-exception v0

    .line 1054
    sget v0, Landroid/net/metrics/DhcpErrorEvent;->BUFFER_UNDERFLOW:I

    invoke-static {v0, v7}, Landroid/net/metrics/DhcpErrorEvent;->errorCodeWithOption(II)I

    move-result v0

    .line 1056
    new-instance v1, Landroid/net/dhcp/DhcpPacket$ParseException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "BufferUnderflowException"

    invoke-direct {v1, v0, v3, v2}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1062
    :cond_19
    const/4 v0, -0x1

    if-eq v14, v0, :cond_1b

    const/16 v0, 0x8

    if-eq v14, v0, :cond_1a

    packed-switch v14, :pswitch_data_2

    .line 1098
    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v1, Landroid/net/metrics/DhcpErrorEvent;->DHCP_UNKNOWN_MSG_TYPE:I

    new-array v2, v6, [Ljava/lang/Object;

    .line 1099
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Unimplemented DHCP type %d"

    invoke-direct {v0, v1, v3, v2}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1088
    :pswitch_b
    new-instance v0, Landroid/net/dhcp/DhcpNakPacket;

    move-object v14, v0

    move/from16 v16, v11

    move-object/from16 v21, v5

    invoke-direct/range {v14 .. v21}, Landroid/net/dhcp/DhcpNakPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1091
    goto/16 :goto_d

    .line 1084
    :pswitch_c
    new-instance v0, Landroid/net/dhcp/DhcpAckPacket;

    move-object v4, v0

    move-object v1, v5

    move v5, v15

    move v6, v11

    move v7, v12

    move-object v8, v13

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object v11, v1

    invoke-direct/range {v4 .. v11}, Landroid/net/dhcp/DhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1086
    goto :goto_d

    .line 1079
    :pswitch_d
    move-object v1, v5

    new-instance v0, Landroid/net/dhcp/DhcpDeclinePacket;

    move-object v14, v0

    move/from16 v16, v11

    move-object/from16 v21, v1

    invoke-direct/range {v14 .. v21}, Landroid/net/dhcp/DhcpDeclinePacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1082
    goto :goto_d

    .line 1075
    :pswitch_e
    move-object v1, v5

    new-instance v0, Landroid/net/dhcp/DhcpRequestPacket;

    move-object v14, v0

    move/from16 v16, v11

    move-object/from16 v18, v1

    move/from16 v19, v12

    invoke-direct/range {v14 .. v19}, Landroid/net/dhcp/DhcpRequestPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    .line 1077
    goto :goto_d

    .line 1071
    :pswitch_f
    move-object v1, v5

    new-instance v0, Landroid/net/dhcp/DhcpOfferPacket;

    move-object v4, v0

    move v5, v15

    move v6, v11

    move v7, v12

    move-object v8, v13

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object v11, v1

    invoke-direct/range {v4 .. v11}, Landroid/net/dhcp/DhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1073
    goto :goto_d

    .line 1067
    :pswitch_10
    move-object v1, v5

    new-instance v0, Landroid/net/dhcp/DhcpDiscoverPacket;

    invoke-direct {v0, v15, v11, v1, v12}, Landroid/net/dhcp/DhcpDiscoverPacket;-><init>(IS[BZ)V

    .line 1069
    goto :goto_d

    .line 1093
    :cond_1a
    move-object v1, v5

    new-instance v0, Landroid/net/dhcp/DhcpInformPacket;

    move-object v14, v0

    move/from16 v16, v11

    move-object/from16 v21, v1

    invoke-direct/range {v14 .. v21}, Landroid/net/dhcp/DhcpInformPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1096
    nop

    .line 1102
    :goto_d
    move-object/from16 v10, v22

    iput-object v10, v0, Landroid/net/dhcp/DhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1103
    iput-object v2, v0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    .line 1104
    move-object/from16 v10, v23

    iput-object v10, v0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    .line 1105
    iput-object v3, v0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    .line 1106
    move-object/from16 v10, v24

    iput-object v10, v0, Landroid/net/dhcp/DhcpPacket;->mHostName:Ljava/lang/String;

    .line 1107
    move-object/from16 v10, v25

    iput-object v10, v0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 1108
    move-object/from16 v10, v26

    iput-object v10, v0, Landroid/net/dhcp/DhcpPacket;->mMessage:Ljava/lang/String;

    .line 1109
    move-object/from16 v10, v27

    iput-object v10, v0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    .line 1110
    move-object/from16 v10, v28

    iput-object v10, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    .line 1111
    move-object/from16 v10, v29

    iput-object v10, v0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    .line 1112
    move-object/from16 v10, v30

    iput-object v10, v0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1113
    move-object/from16 v10, v31

    iput-object v10, v0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    .line 1114
    move-object/from16 v10, v32

    iput-object v10, v0, Landroid/net/dhcp/DhcpPacket;->mMaxMessageSize:Ljava/lang/Short;

    .line 1115
    move-object/from16 v10, v33

    iput-object v10, v0, Landroid/net/dhcp/DhcpPacket;->mT1:Ljava/lang/Integer;

    .line 1116
    move-object/from16 v10, v34

    iput-object v10, v0, Landroid/net/dhcp/DhcpPacket;->mT2:Ljava/lang/Integer;

    .line 1117
    move-object/from16 v10, v35

    iput-object v10, v0, Landroid/net/dhcp/DhcpPacket;->mVendorId:Ljava/lang/String;

    .line 1118
    move-object/from16 v10, v36

    iput-object v10, v0, Landroid/net/dhcp/DhcpPacket;->mVendorInfo:Ljava/lang/String;

    .line 1119
    return-object v0

    .line 1064
    :cond_1b
    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v1, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_MSG_TYPE:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "No DHCP message type option"

    invoke-direct {v0, v1, v3, v2}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 935
    :cond_1c
    move v2, v7

    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v3, Landroid/net/metrics/DhcpErrorEvent;->DHCP_BAD_MAGIC_COOKIE:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 937
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    const-string v1, "Bad magic cookie 0x%08x, should be 0x%08x"

    invoke-direct {v0, v3, v1, v4}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 930
    :cond_1d
    move v2, v7

    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v1, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_COOKIE:I

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "not a DHCP message"

    invoke-direct {v0, v1, v3, v2}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 905
    :catch_1
    move-exception v0

    .line 906
    new-instance v0, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v1, Landroid/net/metrics/DhcpErrorEvent;->L3_INVALID_IP:I

    new-array v2, v6, [Ljava/lang/Object;

    .line 907
    invoke-static {v14}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Invalid IPv4 address: %s"

    invoke-direct {v0, v1, v3, v2}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 881
    :cond_1e
    new-instance v1, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget v2, Landroid/net/metrics/DhcpErrorEvent;->BOOTP_TOO_SHORT:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 883
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const-string v0, "Invalid type or BOOTP packet too short, %d < %d"

    invoke-direct {v1, v2, v0, v3}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public static decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/dhcp/DhcpPacket$ParseException;
        }
    .end annotation

    .line 1127
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 1129
    :try_start_0
    invoke-static {p0, p2}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/dhcp/DhcpPacket;

    move-result-object p0
    :try_end_0
    .catch Landroid/net/dhcp/DhcpPacket$ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1132
    :catch_0
    move-exception p0

    .line 1133
    new-instance p1, Landroid/net/dhcp/DhcpPacket$ParseException;

    sget p2, Landroid/net/metrics/DhcpErrorEvent;->PARSING_ERROR:I

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, p2, p0, v0}, Landroid/net/dhcp/DhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 1130
    :catch_1
    move-exception p0

    .line 1131
    throw p0
.end method

.method private getHostname()Ljava/lang/String;
    .locals 1

    .line 648
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideHostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideHostname:Ljava/lang/String;

    return-object v0

    .line 649
    :cond_0
    const-string v0, "net.hostname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVendorId()Ljava/lang/String;
    .locals 2

    .line 643
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/dhcp/DhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    return-object v0

    .line 644
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-dhcp-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static intAbs(S)I
    .locals 1

    .line 494
    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method private static isPacketServerToServer(SS)Z
    .locals 1

    .line 738
    const/16 v0, 0x43

    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isPacketToOrFromClient(SS)Z
    .locals 1

    .line 734
    const/16 v0, 0x44

    if-eq p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static macToString([B)Ljava/lang/String;
    .locals 4

    .line 669
    const-string v0, ""

    .line 671
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 678
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 671
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 683
    :cond_1
    return-object v0
.end method

.method private static readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    .locals 2

    .line 716
    new-array p1, p1, [B

    .line 717
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 718
    array-length p0, p1

    .line 719
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 724
    move p0, v0

    :goto_0
    array-length p2, p1

    if-ge p0, p2, :cond_1

    .line 725
    aget-byte p2, p1, p0

    if-nez p2, :cond_0

    .line 726
    goto :goto_1

    .line 724
    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 730
    :cond_1
    :goto_1
    new-instance p2, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v0, p0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p2
.end method

.method private static readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;
    .locals 1

    .line 697
    nop

    .line 698
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 699
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 702
    :try_start_0
    invoke-static {v0}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    goto :goto_0

    .line 703
    :catch_0
    move-exception p0

    .line 706
    const/4 p0, 0x0

    .line 709
    :goto_0
    return-object p0
.end method


# virtual methods
.method protected addCommonClientTlvs(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 659
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const/16 v1, 0x39

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V

    .line 660
    invoke-direct {p0}, Landroid/net/dhcp/DhcpPacket;->getVendorId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 661
    invoke-direct {p0}, Landroid/net/dhcp/DhcpPacket;->getHostname()Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 663
    :cond_0
    return-void
.end method

.method public abstract buildPacket(ISS)Ljava/nio/ByteBuffer;
.end method

.method protected fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    .line 377
    invoke-virtual/range {p2 .. p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v3

    .line 378
    invoke-virtual/range {p3 .. p3}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v4

    .line 379
    nop

    .line 380
    nop

    .line 381
    nop

    .line 382
    nop

    .line 383
    nop

    .line 384
    nop

    .line 385
    nop

    .line 387
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 388
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 390
    if-nez v1, :cond_0

    .line 391
    sget-object v5, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 392
    iget-object v5, v0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 393
    sget v5, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 399
    :cond_0
    const/16 v5, 0x11

    const/16 v6, 0x40

    const/16 v7, 0x10

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-gt v1, v8, :cond_1

    .line 400
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 401
    const/16 v11, 0x45

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 402
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 403
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    .line 404
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 405
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 406
    const/16 v12, 0x4000

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 407
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 408
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 409
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    .line 410
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 412
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 413
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 414
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 417
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 418
    move/from16 v13, p5

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 419
    move/from16 v13, p4

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 420
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .line 421
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 422
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    .line 423
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 427
    :cond_1
    move v3, v9

    move v4, v3

    move v10, v4

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_0
    invoke-virtual/range {p6 .. p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 428
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 429
    iget-object v15, v0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v15, v15

    int-to-byte v15, v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 430
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 431
    iget v15, v0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 432
    iget-short v15, v0, Landroid/net/dhcp/DhcpPacket;->mSecs:S

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 434
    if-eqz p8, :cond_2

    .line 435
    const/16 v15, -0x8000

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 437
    :cond_2
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 440
    :goto_1
    iget-object v15, v0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    invoke-virtual {v15}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 441
    iget-object v15, v0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v15}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 442
    iget-object v15, v0, Landroid/net/dhcp/DhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    invoke-virtual {v15}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 443
    iget-object v15, v0, Landroid/net/dhcp/DhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    invoke-virtual {v15}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 444
    iget-object v15, v0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 445
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    iget-object v5, v0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v5, v5

    sub-int/2addr v7, v5

    add-int/2addr v15, v7

    add-int/2addr v15, v6

    add-int/lit16 v15, v15, 0x80

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 449
    const v5, 0x63825363

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 450
    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpPacket;->finishPacket(Ljava/nio/ByteBuffer;)V

    .line 453
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_3

    .line 454
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 459
    :cond_3
    if-gt v1, v8, :cond_4

    .line 461
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v4

    int-to-short v1, v1

    .line 462
    invoke-virtual {v2, v13, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 465
    nop

    .line 469
    add-int/lit8 v5, v12, 0x2

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    invoke-static {v5}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v5

    add-int/2addr v5, v9

    .line 470
    add-int/lit8 v6, v12, 0x4

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-static {v6}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v6

    add-int/2addr v5, v6

    .line 471
    add-int/lit8 v6, v12, 0x6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-static {v6}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v6

    add-int/2addr v5, v6

    .line 472
    add-int/lit8 v6, v12, 0x8

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-static {v6}, Landroid/net/dhcp/DhcpPacket;->intAbs(S)I

    move-result v6

    add-int/2addr v5, v6

    .line 475
    const/16 v6, 0x11

    add-int/2addr v5, v6

    .line 476
    add-int/2addr v5, v1

    .line 478
    nop

    .line 480
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 478
    invoke-direct {v0, v2, v5, v4, v1}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v14, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 482
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v10

    int-to-short v1, v1

    invoke-virtual {v2, v11, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 484
    nop

    .line 485
    invoke-direct {v0, v2, v9, v10, v3}, Landroid/net/dhcp/DhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v0

    int-to-short v0, v0

    .line 484
    invoke-virtual {v2, v12, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 487
    :cond_4
    return-void
.end method

.method abstract finishPacket(Ljava/nio/ByteBuffer;)V
.end method

.method public getClientId()[B
    .locals 5

    .line 363
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 364
    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 365
    iget-object v3, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    iget-object v4, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    array-length v4, v4

    invoke-static {v3, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 366
    return-object v0
.end method

.method public getClientMac()[B
    .locals 1

    .line 356
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    return-object v0
.end method

.method public getLeaseTimeMillis()J
    .locals 4

    .line 1187
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1189
    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1

    .line 1190
    const-wide/32 v0, 0xea60

    return-wide v0

    .line 1192
    :cond_1
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    .line 1188
    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTransactionId()I
    .locals 1

    .line 349
    iget v0, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    return v0
.end method

.method public toDhcpResults()Landroid/net/DhcpResults;
    .locals 5

    .line 1141
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    .line 1142
    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1143
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    .line 1144
    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1145
    return-object v2

    .line 1150
    :cond_0
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    if-eqz v1, :cond_1

    .line 1152
    :try_start_0
    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-static {v1}, Landroid/net/NetworkUtils;->netmaskToPrefixLength(Ljava/net/Inet4Address;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    goto :goto_0

    .line 1153
    :catch_0
    move-exception v0

    .line 1155
    return-object v2

    .line 1158
    :cond_1
    invoke-static {v0}, Landroid/net/NetworkUtils;->getImplicitNetmask(Ljava/net/Inet4Address;)I

    move-result v1

    .line 1161
    :goto_0
    new-instance v3, Landroid/net/DhcpResults;

    invoke-direct {v3}, Landroid/net/DhcpResults;-><init>()V

    .line 1163
    :try_start_1
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, v3, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1166
    nop

    .line 1168
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 1169
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mGateways:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iput-object v0, v3, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    .line 1172
    :cond_2
    iget-object v0, v3, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mDnsServers:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1173
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mDomainName:Ljava/lang/String;

    iput-object v0, v3, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    .line 1174
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    iput-object v0, v3, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    .line 1175
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mVendorInfo:Ljava/lang/String;

    iput-object v0, v3, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    .line 1176
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :goto_1
    iput v0, v3, Landroid/net/DhcpResults;->leaseDuration:I

    .line 1177
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    if-eqz v0, :cond_4

    const/16 v0, 0x500

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-gt v0, v2, :cond_4

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    const/16 v2, 0x5dc

    if-gt v0, v2, :cond_4

    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mMtu:Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    nop

    :cond_4
    iput v1, v3, Landroid/net/DhcpResults;->mtu:I

    .line 1179
    return-object v3

    .line 1164
    :catch_1
    move-exception v0

    .line 1165
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 687
    iget-object v0, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    invoke-static {v0}, Landroid/net/dhcp/DhcpPacket;->macToString([B)Ljava/lang/String;

    move-result-object v0

    .line 689
    return-object v0
.end method
