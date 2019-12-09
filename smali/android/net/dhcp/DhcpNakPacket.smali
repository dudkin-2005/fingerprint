.class Landroid/net/dhcp/DhcpNakPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpNakPacket.java"


# direct methods
.method constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .locals 9

    .line 32
    sget-object v3, Landroid/net/dhcp/DhcpNakPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v4, Landroid/net/dhcp/DhcpNakPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    .line 34
    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 10

    .line 45
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 46
    iget-object v3, p0, Landroid/net/dhcp/DhcpNakPacket;->mClientIp:Ljava/net/Inet4Address;

    .line 47
    iget-object v4, p0, Landroid/net/dhcp/DhcpNakPacket;->mYourIp:Ljava/net/Inet4Address;

    .line 49
    iget-boolean v9, p0, Landroid/net/dhcp/DhcpNakPacket;->mBroadcast:Z

    const/4 v8, 0x2

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Landroid/net/dhcp/DhcpNakPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 51
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 52
    return-object v0
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 59
    const/16 v0, 0x35

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpNakPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 60
    iget-object v0, p0, Landroid/net/dhcp/DhcpNakPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    const/16 v1, 0x36

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpNakPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 61
    iget-object v0, p0, Landroid/net/dhcp/DhcpNakPacket;->mMessage:Ljava/lang/String;

    const/16 v1, 0x38

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpNakPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 62
    invoke-static {p1}, Landroid/net/dhcp/DhcpNakPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " NAK, reason "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/net/dhcp/DhcpNakPacket;->mMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "(none)"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpNakPacket;->mMessage:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
