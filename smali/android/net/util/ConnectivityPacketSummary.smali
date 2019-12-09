.class public Landroid/net/util/ConnectivityPacketSummary;
.super Ljava/lang/Object;
.source "ConnectivityPacketSummary.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBytes:[B

.field private final mHwAddr:[B

.field private final mLength:I

.field private final mPacket:Ljava/nio/ByteBuffer;

.field private final mSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Landroid/net/util/ConnectivityPacketSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/util/ConnectivityPacketSummary;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/net/MacAddress;[BI)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/net/util/ConnectivityPacketSummary;->mHwAddr:[B

    .line 63
    iput-object p2, p0, Landroid/net/util/ConnectivityPacketSummary;->mBytes:[B

    .line 64
    iget-object p1, p0, Landroid/net/util/ConnectivityPacketSummary;->mBytes:[B

    array-length p1, p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/net/util/ConnectivityPacketSummary;->mLength:I

    .line 65
    iget-object p1, p0, Landroid/net/util/ConnectivityPacketSummary;->mBytes:[B

    iget p2, p0, Landroid/net/util/ConnectivityPacketSummary;->mLength:I

    const/4 p3, 0x0

    invoke-static {p1, p3, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 66
    iget-object p1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 68
    new-instance p1, Ljava/util/StringJoiner;

    const-string p2, " "

    invoke-direct {p1, p2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 70
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseEther(Ljava/util/StringJoiner;)V

    .line 71
    invoke-virtual {p1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/net/util/ConnectivityPacketSummary;->mSummary:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private static getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1

    .line 346
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/net/util/ConnectivityPacketSummary;->getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1

    .line 350
    const/16 v0, 0x10

    invoke-static {p0, v0}, Landroid/net/util/ConnectivityPacketSummary;->getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getIpAddressString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 2

    .line 354
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    new-array v0, p1, [B

    .line 357
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 359
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    .line 360
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 361
    :catch_0
    move-exception p0

    .line 362
    const-string/jumbo p0, "unknown"

    return-object p0

    .line 354
    :cond_1
    :goto_0
    const-string p0, "invalid"

    return-object p0
.end method

.method private static getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 7

    .line 367
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 369
    :cond_0
    new-array v0, v1, [B

    .line 370
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 371
    array-length p0, v0

    new-array p0, p0, [Ljava/lang/Object;

    .line 372
    nop

    .line 373
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v4, v0, v2

    add-int/lit8 v5, v3, 0x1

    new-instance v6, Ljava/lang/Byte;

    invoke-direct {v6, v4}, Ljava/lang/Byte;-><init>(B)V

    aput-object v6, p0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    .line 376
    :cond_1
    const-string v0, "%02x:%02x:%02x:%02x:%02x:%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 367
    :cond_2
    :goto_1
    const-string p0, "invalid"

    return-object p0
.end method

.method private parseARP(Ljava/util/StringJoiner;)V
    .locals 5

    .line 116
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 117
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 118
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v0

    const/16 v2, 0x800

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 129
    :cond_1
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v0

    .line 131
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 132
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Landroid/net/util/ConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 133
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 134
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/net/util/ConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    .line 136
    if-ne v0, v1, :cond_2

    .line 137
    const-string/jumbo v0, "who-has"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 138
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 139
    const-string/jumbo v0, "reply"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 141
    :cond_3
    const-string/jumbo v1, "unknown opcode"

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 143
    :goto_0
    return-void

    .line 125
    :cond_4
    :goto_1
    const-string/jumbo v0, "unexpected header"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 126
    return-void
.end method

.method private parseDHCPv4(Ljava/util/StringJoiner;)V
    .locals 3

    .line 338
    :try_start_0
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mBytes:[B

    iget v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mLength:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    :try_end_0
    .catch Landroid/net/dhcp/DhcpPacket$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parse error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 343
    :goto_0
    return-void
.end method

.method private parseEther(Ljava/util/StringJoiner;)V
    .locals 3

    .line 79
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 80
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 81
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 86
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mHwAddr:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "TX"

    goto :goto_0

    :cond_1
    const-string v2, "RX"

    :goto_0
    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 87
    invoke-static {v0}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 89
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 91
    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-static {v0}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 93
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v0

    .line 95
    const/16 v1, 0x800

    if-eq v0, v1, :cond_4

    const/16 v1, 0x806

    if-eq v0, v1, :cond_3

    const v1, 0x86dd

    if-eq v0, v1, :cond_2

    .line 110
    const-string v1, "ethtype"

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 105
    :cond_2
    const-string v0, "ipv6"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 106
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseIPv6(Ljava/util/StringJoiner;)V

    .line 107
    goto :goto_1

    .line 97
    :cond_3
    const-string v0, "arp"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 98
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseARP(Ljava/util/StringJoiner;)V

    .line 99
    goto :goto_1

    .line 101
    :cond_4
    const-string v0, "ipv4"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 102
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseIPv4(Ljava/util/StringJoiner;)V

    .line 103
    nop

    .line 113
    :goto_1
    return-void
.end method

.method private parseICMPv6(Ljava/util/StringJoiner;)V
    .locals 3

    .line 213
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 214
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 215
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v0

    .line 219
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v1

    .line 220
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 222
    packed-switch v0, :pswitch_data_0

    .line 240
    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 241
    const-string v0, "code"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    invoke-static {v1}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 236
    :pswitch_0
    const-string v0, "na"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 237
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V

    .line 238
    goto :goto_0

    .line 232
    :pswitch_1
    const-string v0, "ns"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 233
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V

    .line 234
    goto :goto_0

    .line 228
    :pswitch_2
    const-string/jumbo v0, "ra"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 229
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6RouterAdvertisement(Ljava/util/StringJoiner;)V

    .line 230
    goto :goto_0

    .line 224
    :pswitch_3
    const-string/jumbo v0, "rs"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 225
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6RouterSolicitation(Ljava/util/StringJoiner;)V

    .line 226
    nop

    .line 244
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x85
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V
    .locals 4

    .line 284
    :goto_0
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    .line 285
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v0

    .line 286
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v2

    .line 287
    mul-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x2

    .line 288
    if-ltz v2, :cond_2

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le v2, v1, :cond_0

    goto :goto_2

    .line 292
    :cond_0
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 294
    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 300
    :pswitch_0
    const-string/jumbo v0, "tlla"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 301
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 302
    goto :goto_1

    .line 296
    :pswitch_1
    const-string/jumbo v0, "slla"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 297
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/net/util/ConnectivityPacketSummary;->getMacAddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 298
    goto :goto_1

    .line 304
    :cond_1
    const-string v0, "mtu"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 305
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 306
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 307
    nop

    .line 313
    :goto_1
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 314
    goto :goto_0

    .line 289
    :cond_2
    :goto_2
    const-string v0, "<malformed>"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 290
    nop

    .line 315
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseICMPv6NeighborMessage(Ljava/util/StringJoiner;)V
    .locals 2

    .line 271
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 272
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 273
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 277
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/net/util/ConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 278
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    .line 279
    return-void
.end method

.method private parseICMPv6RouterAdvertisement(Ljava/util/StringJoiner;)V
    .locals 3

    .line 259
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 260
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 261
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 265
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    .line 266
    return-void
.end method

.method private parseICMPv6RouterSolicitation(Ljava/util/StringJoiner;)V
    .locals 3

    .line 248
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 249
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 250
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 254
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6NeighborDiscoveryOptions(Ljava/util/StringJoiner;)V

    .line 255
    return-void
.end method

.method private parseIPv4(Ljava/util/StringJoiner;)V
    .locals 6

    .line 146
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const-string/jumbo v0, "runt"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 148
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 152
    iget-object v1, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x4

    .line 153
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v1, :cond_6

    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    goto/16 :goto_2

    .line 158
    :cond_1
    add-int/2addr v1, v0

    .line 160
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 161
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v2

    .line 162
    and-int/lit16 v2, v2, 0x1fff

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 164
    :goto_0
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x9

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 165
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v3

    .line 167
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v0, 0xc

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 168
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/net/util/ConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    .line 170
    iget-object v5, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/net/util/ConnectivityPacketSummary;->getIPv4AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 175
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 176
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne v3, v0, :cond_4

    .line 177
    const-string/jumbo v0, "udp"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 178
    if-eqz v2, :cond_3

    const-string v0, "fragment"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 179
    :cond_3
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseUDP(Ljava/util/StringJoiner;)V

    goto :goto_1

    .line 181
    :cond_4
    const-string/jumbo v0, "proto"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    invoke-static {v3}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 182
    if-eqz v2, :cond_5

    const-string v0, "fragment"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 184
    :cond_5
    :goto_1
    return-void

    .line 155
    :cond_6
    :goto_2
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 156
    return-void
.end method

.method private parseIPv6(Ljava/util/StringJoiner;)V
    .locals 6

    .line 187
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    .line 188
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 189
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 194
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x6

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 195
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asUint(B)I

    move-result v2

    .line 197
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 198
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Landroid/net/util/ConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 199
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/net/util/ConnectivityPacketSummary;->getIPv6AddressString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-virtual {p1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v3

    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 203
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 204
    sget v0, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    if-ne v2, v0, :cond_1

    .line 205
    const-string v0, "icmp6"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 206
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseICMPv6(Ljava/util/StringJoiner;)V

    goto :goto_0

    .line 208
    :cond_1
    const-string/jumbo v0, "proto"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 210
    :goto_0
    return-void
.end method

.method private parseUDP(Ljava/util/StringJoiner;)V
    .locals 6

    .line 318
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 319
    const-string/jumbo v0, "runt:"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p1

    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 320
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 324
    iget-object v2, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v2

    .line 325
    iget-object v3, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Landroid/net/util/NetworkConstants;->asUint(S)I

    move-result v3

    .line 326
    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v4

    invoke-static {v3}, Landroid/net/util/NetworkConstants;->asString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 328
    iget-object v4, p0, Landroid/net/util/ConnectivityPacketSummary;->mPacket:Ljava/nio/ByteBuffer;

    add-int/2addr v0, v1

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 329
    const/16 v0, 0x44

    if-eq v2, v0, :cond_1

    if-ne v3, v0, :cond_2

    .line 330
    :cond_1
    const-string v0, "dhcp4"

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 331
    invoke-direct {p0, p1}, Landroid/net/util/ConnectivityPacketSummary;->parseDHCPv4(Ljava/util/StringJoiner;)V

    .line 333
    :cond_2
    return-void
.end method

.method public static summarize(Landroid/net/MacAddress;[B)Ljava/lang/String;
    .locals 1

    .line 50
    array-length v0, p1

    invoke-static {p0, p1, v0}, Landroid/net/util/ConnectivityPacketSummary;->summarize(Landroid/net/MacAddress;[BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static summarize(Landroid/net/MacAddress;[BI)Ljava/lang/String;
    .locals 1

    .line 56
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    array-length v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 58
    new-instance v0, Landroid/net/util/ConnectivityPacketSummary;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/util/ConnectivityPacketSummary;-><init>(Landroid/net/MacAddress;[BI)V

    invoke-virtual {v0}, Landroid/net/util/ConnectivityPacketSummary;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 56
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Landroid/net/util/ConnectivityPacketSummary;->mSummary:Ljava/lang/String;

    return-object v0
.end method
