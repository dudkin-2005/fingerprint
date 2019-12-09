.class Landroid/net/dhcp/DhcpInformPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpInformPacket.java"


# direct methods
.method constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .locals 9

    .line 32
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    .line 33
    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 10

    .line 44
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 46
    iget-object v3, p0, Landroid/net/dhcp/DhcpInformPacket;->mClientIp:Ljava/net/Inet4Address;

    iget-object v4, p0, Landroid/net/dhcp/DhcpInformPacket;->mYourIp:Ljava/net/Inet4Address;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Landroid/net/dhcp/DhcpInformPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 48
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 49
    return-object v0
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 56
    const/16 v0, 0x35

    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpInformPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 57
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpInformPacket;->getClientId()[B

    move-result-object v0

    const/16 v1, 0x3d

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpInformPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 58
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpInformPacket;->addCommonClientTlvs(Ljava/nio/ByteBuffer;)V

    .line 59
    iget-object v0, p0, Landroid/net/dhcp/DhcpInformPacket;->mRequestedParams:[B

    const/16 v1, 0x37

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpInformPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 60
    invoke-static {p1}, Landroid/net/dhcp/DhcpInformPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " INFORM"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
